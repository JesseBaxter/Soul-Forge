/// @description Insert description here
// You can write your code in this editor

blood = instance_create_layer(x,y,"Instances", objEnemyBlood)
blood.image_angle = image_angle + random_range(0, 180);
instance_destroy();