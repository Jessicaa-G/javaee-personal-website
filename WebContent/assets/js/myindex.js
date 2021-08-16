let list = document.getElementsByClassName("like");
var flag = new Array();
for(let i in list){
	flag.push([0]);
}
for (let i in list) {
	list[i].onclick = function() {
		if(flag[i]==0){
			list[i].style.backgroundImage ="url(assets/images/heart.png)";
			flag[i]=1;
		}
		else{
			list[i].style.backgroundImage ="url(assets/images/blank.png)";
			flag[i]=0;
		}
	};
}
