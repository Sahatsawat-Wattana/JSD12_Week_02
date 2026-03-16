use('sample_mflix');

//db.theaters.aggregate([{$match:{'location.address.state':'AL'}},{$count:'total'}]);

//db.theaters.aggregate([{$match:{'location.address.city':'La Quinta'}},{$count:'total'}]);

db.theaters.aggregate([{$match:{'location.address.city':'La Quinta'}}]);