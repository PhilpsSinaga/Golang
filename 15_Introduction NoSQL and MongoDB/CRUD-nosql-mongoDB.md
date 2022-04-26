use alta_online_shop show dbs db db.createCollection('operators') // CREATE / INSERT

// a db.operators.insertMany([ { _id: 1, name: "philips", created_at: ISODate(), updated_at: ISODate() }, { _id: 2, name: "tono", created_at: ISODate(), updated_at: ISODate() }, { _id: 3, name: "wira", created_at: ISODate(), updated_at: ISODate() }, { _id: 4, name: "muda", created_at: ISODate(), updated_at: ISODate() }, { _id: 5, name: "pakpahan", created_at: ISODate(), updated_at: ISODate() } ]) db.operators.find()

// b db.product_types.insertMany([ { _id: 1, name: "food", created_at: ISODate(), updated_at: ISODate() }, { _id: 2, name: "drink", created_at: ISODate(), updated_at: ISODate() }, { _id: 3, name: "snack", created_at: ISODate(), updated_at: ISODate() } ])

// c db.products.insertMany([ { _id: 1, product_type_id: 1, operators_id: 3, code: "f1", name: "burger", status: 1, created_at: ISODate(), updated_at: ISODate() }, { _id: 2, product_type_id: 1, operators_id: 3, code: "f2", name: "sandwich", status: 1, created_at: ISODate(), updated_at: ISODate() },

// d { _id: 3, product_type_id: 2, operators_id: 1, code: "d1", name: "fanta", status: 1, created_at: ISODate(), updated_at: ISODate() }, { _id: 4, product_type_id: 2, operators_id: 1, code: "d2", name: "coca-cola", status: 1, created_at: ISODate(), updated_at: ISODate() }, { _id: 5, product_type_id: 2, operators_id: 1, code: "d3", name: "boba", status: 1, created_at: ISODate(), updated_at: ISODate() },

// e { _id: 6, product_type_id: 3, operators_id: 4, code: "s1", name: "taro", status: 1, created_at: ISODate(), updated_at: ISODate() },{ _id: 7, product_type_id: 3, operators_id: 4, code: "s2", name: "nabati", status: 1, created_at: ISODate(), updated_at: ISODate() }, { _id: 8, product_type_id: 3, operators_id: 4, code: "s3", name: "goodtime", status: 1, created_at: ISODate(), updated_at: ISODate() }, ]) db.products.find()

// f db.product_description.insertMany([ { id_product : 1, description : "burger enak", created_at: ISODate(), updated_at: ISODate() }, { id_product : 2, description : "sandwitch sehat", created_at: ISODate(), updated_at: ISODate() }, { id_product : 3, description : "Fanta segar", created_at: ISODate(), updated_at: ISODate() }, { id_product : 4, description : "coca cola sehat", created_at: ISODate(), updated_at: ISODate() }, { id_product : 5, description : "minuman dari thailand", created_at: ISODate(), updated_at: ISODate() }, { id_product : 6, description : "jajanan ringan", created_at: ISODate(), updated_at: ISODate() }, { id_product : 7, description : "snack kaya keju", created_at: ISODate(), updated_at: ISODate() }, { id_product : 8, description : "kookies pake coklat", created_at: ISODate(), updated_at: ISODate() }, ])

// g db.payment_methods.insertMany([ { _id: 1, name: "Linkaja", created_at: ISODate(), updated_at: ISODate() }, { _id: 2, name: "ATM transfer", created_at: ISODate(), updated_at: ISODate() }, { _id: 3, name: "Gopay", created_at: ISODate(), updated_at: ISODate() }, ])

// h db.user.insertMany([ { _id: 1, name: "john", status: 1, dob: new Date("2002-02-01"), gender: "M", created_at: ISODate(), updated_at: ISODate() }, { _id: 2, name: "irvandi", status: 1, dob: new Date("2001-02-04"), gender: "M", created_at: ISODate(), updated_at: ISODate() }, { _id: 3, name: "gabriela", status: 1, dob: new Date("2002-01-24"), gender: "F", created_at: ISODate(), updated_at: ISODate() }, { _id: 4, name: "jack", status: 1, dob: new Date("2004-05-10"), gender: "M", created_at: ISODate(), updated_at: ISODate() }, { _id: 5, name: "tiny", status: 1, dob: new Date("2001-07-28"), gender: "M", created_at: ISODate(), updated_at: ISODate() }, ])

// i db.transactions.insertMany([ { _id: 1, user_id: 1, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 2, user_id: 1, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 3, user_id: 1, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 4, user_id: 2, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 5, user_id: 2, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 6, user_id: 2, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 7, user_id: 3, payment_id: 3, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 8, user_id: 3, payment_id: 3, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 9, user_id: 3, payment_id: 3, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 10, user_id: 4, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 11, user_id: 4, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 12, user_id: 4, payment_id: 1, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 13, user_id: 5, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 14, user_id: 5, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 15, user_id: 5, payment_id: 2, status: 1, qty: 3, total_price: 3000, created_at: ISODate(), updated_at: ISODate() }, ]) 


// j db.transactions_detail.insertMany([ { _id: 1, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 2, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 3, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 4, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 5, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 6, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 7, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 8, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 9, transacation_id: 1, product_id: 1, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 10, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 11, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 12, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 13, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 14, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 15, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 16, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 17, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 18, transacation_id: 2, product_id: 2, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 19, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 20, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 21, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 22, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 23, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 24, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 25, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 26, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 27, transacation_id: 3, product_id: 3, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 28, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() },
{ _id: 29, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 30, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 31, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 32, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 33, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 34, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 35, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 36, transacation_id: 4, product_id: 4, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 37, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 38, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 39, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 40, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 41, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 42, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 43, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 44, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, 
{ _id: 45, transacation_id: 5, product_id: 5, status: 1, qty: 1, price: 1000, created_at: ISODate(), updated_at: ISODate() }, ])

// READ / FIND //

 a db.user.find({gender: "M"})

 b db.products.find({_id: 3})

 c db.user.find({gender: "F"}).count()

 d db.user.find().sort({name: 1})

e db.products.find().limit(5)

UPDATE // a db.getCollection("products").updateOne({_id: new NumberInt("1")}, {"$set": {name: "product dummy"}});

 b db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("1")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("2")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("3")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("4")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("5")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("5")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("7")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("8")}, {"$set": {qty: 3}}); db.getCollection("transactions_detail").updateOne({product_id: new NumberInt("9")}, {"$set": {qty: 3}});

 b db.getCollection("transactions_detail").updateOne({_id: new NumberInt("1")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("2")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("3")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("4")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("5")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("6")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("7")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("8")}, {"$set": {qty: new NumberInt("3")}}); db.getCollection("transactions_detail").updateOne({_id: new NumberInt("9")}, {"$set": {qty: new NumberInt("3")}});

// DELETE // a 
db.getCollection("products").deleteOne({_id: new NumberInt("1")});

// b 
db.getCollection("products").deleteOne({product_type_id: new NumberInt("1")});