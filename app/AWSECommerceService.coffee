accessKeyId = 'AKIAISU75MH7Z3VYMWAQ'
secretAccessKey = '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'
unsignedUrl = 'http://ecs.amazonaws.com/onca/xml?Service=AWSECommerceService&Version=2011-08-01&AssociateTag=PutYourAssociateTagHere&Operation=ItemSearch&SearchIndex=Books&Keywords=harry+potter'

AWSECommerceService = ->
  signedUrl: ->
    # find host and query portions
    urlregex = new RegExp('^http:\\/\\/(.*)\\/onca\\/xml\\?(.*)$')
    matches = urlregex.exec(unsignedUrl)
    unless matches?
      alert 'Could not find PA-API end-point in the URL. Please ensure the URL looks like the example provided.'
      return
    host = matches[1].toLowerCase()
    query = matches[2]
    
    # split the query into its constituent parts
    pairs = query.split('&')
    
    # remove signature if already there
    # remove access key id if already present 
    #  and replace with the one user provided above
    # add timestamp if not already present
    pairs = cleanupRequest(pairs)
    
    # encode the name and value in each pair
    pairs = encodeNameValuePairs(pairs)
    
    # sort them and put them back together to get the canonical query string
    pairs.sort()
    canonicalQuery = pairs.join('&')
    stringToSign = 'GET\n' + host + '\n/onca/xml\n' + canonicalQuery
    
    # calculate the signature
    secret = secretAccessKey
    signature = sign(secret, stringToSign)
    
    # assemble the signed url
    # signedUrl = 'http://' + host + '/onca/xml?' + canonicalQuery + '&Signature=' + signature
    url = '/onca/xml?' + canonicalQuery + '&Signature=' + signature

encodeNameValuePairs = (pairs) ->
  i = 0

  while i < pairs.length
    name = ''
    value = ''
    pair = pairs[i]
    index = pair.indexOf('=')
    
    # take care of special cases like '&foo&', '&foo=&' and '&=foo&' 
    if index is -1
      name = pair
    else if index is 0
      value = pair
    else
      name = pair.substring(0, index)
      value = pair.substring(index + 1)  if index < pair.length - 1
    
    # decode and encode to make sure we undo any incorrect encoding
    name = encodeURIComponent(decodeURIComponent(name))
    value = value.replace(/\+/g, '%20')
    value = encodeURIComponent(decodeURIComponent(value))
    pairs[i] = name + '=' + value
    i++
  pairs

cleanupRequest = (pairs) ->
  haveTimestamp = false
  haveAwsId = false
  nPairs = pairs.length
  i = 0
  while i < nPairs
    p = pairs[i]
    unless p.search(/^Timestamp=/) is -1
      haveTimestamp = true
    else unless p.search(/^(AWSAccessKeyId|SubscriptionId)=/) is -1
      pairs.splice i, 1, 'AWSAccessKeyId=' + accessKeyId
      haveAwsId = true
    else unless p.search(/^Signature=/) is -1
      pairs.splice i, 1
      i--
      nPairs--
    i++
  pairs.push 'Timestamp=' + getNowTimeStamp()  unless haveTimestamp
  pairs.push 'AWSAccessKeyId=' + accessKeyId  unless haveAwsId
  pairs

sign = (secret, message) ->
  messageBytes = str2binb(message)
  secretBytes = str2binb(secret)
  secretBytes = core_sha256(secretBytes, secret.length * chrsz)  if secretBytes.length > 16
  ipad = Array(16)
  opad = Array(16)
  i = 0

  while i < 16
    ipad[i] = secretBytes[i] ^ 0x36363636
    opad[i] = secretBytes[i] ^ 0x5C5C5C5C
    i++
  imsg = ipad.concat(messageBytes)
  ihash = core_sha256(imsg, 512 + message.length * chrsz)
  omsg = opad.concat(ihash)
  ohash = core_sha256(omsg, 512 + 256)
  b64hash = binb2b64(ohash)
  urlhash = encodeURIComponent(b64hash)
  urlhash

addZero = (n) ->
  ((if n < 0 or n > 9 then '' else '0')) + n

getNowTimeStamp = ->
  time = new Date()
  gmtTime = new Date(time.getTime() + (time.getTimezoneOffset() * 60000))
  gmtTime.toISODate()

Date::toISODate = new Function("with (this)\n    return " +
     "getFullYear()+'-'+addZero(getMonth()+1)+'-'" +
     "+addZero(getDate())+'T'+addZero(getHours())+':'" +
     "+addZero(getMinutes())+':'+addZero(getSeconds())+'.000Z'")


`export default AWSECommerceService`