/// @description Insert description here
// You can write your code in this editor
good = false;
i= currentGun+1;
while(!good){
	if(i > array_length_1d(unlockedWeps)){
		i = 1
	}
	if(unlockedWeps[i-1] == 0){
		i++;
	}
	else{
		good = true;
	}
}
currentGun = i;