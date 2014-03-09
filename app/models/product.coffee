attr      = DS.attr
hasMany   = DS.hasMany
belongsTo = DS.belongsTo

product = DS.Model.extend
  type:         attr()
  title:        attr()
  description:  attr()
  author:       attr()
  imageUri:     attr()
  price:        attr()

  fullImageUri: (->
    uri = @get('imageUri')
    'http://homework.powerdms.com/' + uri 
  ).property('imageUri')

product.reopenClass
  FIXTURES: [
    {
      "id": 1,
      "type": "book",
      "title": "Hyperbole and a Half",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "Allie Brosh",
      "imageUri": "/images/products/brosh.jpg",
      "price": 37.58
    },
    {
      "id": 2,
      "type": "book",
      "title": "Purely Functional Data Structures",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "Chris Okasaki",
      "imageUri": "/images/products/okasaki.jpg",
      "price": 153.21
    },
    {
      "id": 3,
      "type": "book",
      "title": "Lord of the Rings",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "J. R. R. Tolkien",
      "imageUri": "/images/products/tolkien.jpg",
      "price": 19.26
    },
    {
      "id": 4,
      "type": "book",
      "title": "A Game of Thrones",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "George R. R. Martin",
      "imageUri": "/images/products/martin.jpg",
      "price": 6.89
    },
    {
      "id": 5,
      "type": "book",
      "title": "Grimm Fairy Tales",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "The Brothers Grimm",
      "imageUri": "/images/products/grimm.jpg",
      "price": 108.28
    },
    {
      "id": 6,
      "type": "book",
      "title": "Geek Love",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "Katherine  Dunn",
      "imageUri": "/images/products/dunn.jpg",
      "price": 77.8
    },
    {
      "id": 7,
      "type": "book",
      "title": "Man's Search for Meaning",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "Viktor E. Frankl",
      "imageUri": "/images/products/frankl.jpg",
      "price": 33.3
    },
    {
      "id": 8,
      "type": "book",
      "title": "The Magician's Nephew",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ut tincidunt nunc. Nam porta diam in elit condimentum gravida. In eu mi ut lacus gravida elementum vehicula eu elit. Curabitur tristique sed tortor at eleifend. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris pulvinar nulla orci, quis sollicitudin lorem aliquet id. Mauris in malesuada sem, eget dapibus diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse porttitor rhoncus lorem, non tempor justo blandit vitae. Proin quis nulla molestie, tempus mi ac, rutrum nulla. Etiam sit amet mattis odio. Sed in elementum diam, id hendrerit libero. Sed id risus vel ipsum dignissim pulvinar et in turpis. Cras tempor vestibulum porttitor. Etiam tincidunt imperdiet tellus id interdum. Suspendisse facilisis felis nibh.",
      "author": "C. S. Lewis",
      "imageUri": "/images/products/lewis.jpg",
      "price": 52.34
    }
  ]

`export default product`