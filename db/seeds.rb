# Create a buyer with five buy posts and one sale post
User.create name: 'Gazelle', email: 'gazelle@ffs.com', password: 'password', photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/templates/__custom/images/logo.svg', city: 'Boston, MA'
BuyPost.create name: 'iPhone 5 16GB', user_id: 1, price: 169, filled: false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/179/images/1245/zambezi-iphone5_black-standard__85345.1434158262.190.250.jpg'
BuyPost.create name: 'iPhone 5 32GB', user_id: 1, price: 189, filled: false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/179/images/1245/zambezi-iphone5_black-standard__85345.1434158262.190.250.jpg'
BuyPost.create name: 'iPhone 5 64GB', user_id: 1, price: 209, filled: false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/179/images/1245/zambezi-iphone5_black-standard__85345.1434158262.190.250.jpg'
BuyPost.create name: 'iPhone 5C 16GB', user_id: 1, price: 169, filled: false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/321/images/945/zambezi-iphone5c_white-standard__08900.1434157057.190.250.jpg'
BuyPost.create name: 'iPhone 5C 8GB', user_id: 1, price: 138, filled: false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/321/images/945/zambezi-iphone5c_white-standard__08900.1434157057.190.250.jpg'
SalePost.create name: 'iPhone 6S 128GB', user_id: 1, price: 498, sold:false, photo: 'http://cdn3.bigcommerce.com/s-ndqvi4q/products/525/images/1478/zambezi-iphone6_grey-standard__85633.1450311520.190.250.jpg'

# Create a seller with one buy post and five sale posts
User.create name: 'Craiglist', email: 'craigslist@ffs.com', password: 'password', photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Craigslist.svg/208px-Craigslist.svg.png', city: 'San Francisco, CA'
SalePost.create name: 'M&A microfridge', user_id: 2, price: 129, sold: false, photo: 'https://images.craigslist.org/00E0E_lKaVLtOlKYc_300x300.jpg'
SalePost.create name: 'GE washing machine', user_id: 2, price: 25, sold: false, photo: 'https://images.craigslist.org/00O0O_al16qo28Jyf_300x300.jpg'
SalePost.create name: 'Nescafe Dolce gusto kit', user_id: 2, price: 85, sold: false, photo: 'https://images.craigslist.org/01515_9Ra0MBICZ2n_300x300.jpg'
SalePost.create name: 'M&A Gas dryer', user_id: 2, price: 499, sold: false, photo: 'https://images.craigslist.org/00s0s_4yiqqM2VJQo_300x300.jpg'
SalePost.create name: 'Dodge Charger transmission', user_id: 2, price: 600, sold: false, photo: 'https://images.craigslist.org/01616_8u0vUhWfy1o_300x300.jpg'
BuyPost.create name: 'La-Z-Boy recliner sofa chair', user_id: 2, price: 45, filled: false, photo: 'https://images.craigslist.org/01414_7Mmbm5oHvSN_300x300.jpg'