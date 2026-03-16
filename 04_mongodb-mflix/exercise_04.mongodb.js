use('sample_mflix');

//db.movies.aggregate([{$match:{plot:{$regex:"American",$options:"i"}}},{$count:'total'}]);

//db.movies.aggregate([{$match:{plot:{$regex:"street.$",$options:"i"}}},{$count:'total'}]);

db.movies.aggregate([{$match:{plot:{$regex:"street.$",$options:"i"}}},{$limit:1}]);