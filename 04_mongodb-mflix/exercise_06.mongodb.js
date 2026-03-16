use('sample_mflix');

//db.movies.aggregate([{$match:{countries:{$in:['USA']},year:{$gte:1950,$lte:1970}}}]);

//db.movies.aggregate([{$match:{genres:{$all:["Drama",'History']},year:{$gte:1970}}},{$count:'total'}]);

//db.movies.aggregate([{$match:{cast:"Roy L. McCardell"}},{$count:'total'}]);

//db.movies.aggregate([{$match:{directors: "Hal Roach"}},{$count:'total'}]);

//db.movies.aggregate([{$match:{directors: {$in : ["Hal Roach"]}}},{$count:'total'}]);

//db.movies.aggregate([{$match:{directors: {$in : ["Hal Roach"]}}},{$group: { _id: null, totalWins: { $sum: "$awards.wins" } } }]);

db.movies.aggregate([{$match:{directors: {$in : ["Hal Roach"]}}},{$group: { _id: null, totalWins: { $sum: {$cond:[{$gt:["$awards.wins",0]},1,0]}}}}]);