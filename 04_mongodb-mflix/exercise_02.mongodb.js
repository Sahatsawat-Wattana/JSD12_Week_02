use('sample_mflix');

//db.movies.aggregate([{$match:{type:'movie',rated:'TV-G'}}]);

db.movies.aggregate([{$match:{type:'movie',rated:'TV-G'}},{$count:'total' }]);