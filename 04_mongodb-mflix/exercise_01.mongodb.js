use('sample_mflix');

//db.comments.aggregate([]);

//db.comments.aggregate([{$match:{_id:ObjectId("5a9427648b0beebeb69579f5")}},{$limit:1}]);

//db.comments.aggregate([{$match:{email:'john_bishop@fakegmail.com'}},{$limit:1}]);

db.comments.aggregate([{$match:{name:'John Bishop'}},{$limit:1}]);