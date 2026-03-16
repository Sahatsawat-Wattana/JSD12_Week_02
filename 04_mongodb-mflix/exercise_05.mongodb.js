use('sample_mflix');

//db.movies.aggregate([{$sort:{runtime:-1}},{$limit:5}]);

//db.movies.aggregate([{$match:{runtime:{$lt:60}}},{$sort:{runtime:-1}},{$limit:5}]);

//db.movies.aggregate([{$match:{year:{$gt:1954,$lt:1966}}},{$sort:{year:1}},{$limit:3}]);

db.movies.aggregate([{$match:{year:{$gte:1990,$lte:2000}}},{$count:'total'}]);