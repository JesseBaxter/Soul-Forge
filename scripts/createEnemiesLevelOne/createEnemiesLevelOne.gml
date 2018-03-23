id_enemy1 = instance_create_layer(300,925,"Instances",objEnemy);
id_enemy2 = instance_create_layer(300,925,"Instances",objEnemy);
id_enemy3 = instance_create_layer(300,925,"Instances",objEnemy);
id_enemy4 = instance_create_layer(300,925,"Instances",objEnemy);
id_enemy5 = instance_create_layer(300,925,"Instances",objEnemy);

pathTest = path1;

id_enemy1.path = pathTest;
id_enemy2.path = path2;
id_enemy3.path = path3;
id_enemy4.path = path4;
id_enemy5.path = path5;


id_enemy1.persistent = true;
id_enemy2.persistent = true;
id_enemy3.persistent = true;
id_enemy4.persistent = true;
id_enemy5.persistent = true;




global.boolStart = true;
