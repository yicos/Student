<button id="start">开始</button>


	<div id="timer1" style="color: red; font-size: 80; text-align: center;">距离结束还有</div>
	<div id="timer" style="color: red; font-size: 80; text-align: center;"></div>
<script LANGUAGE="JavaScript">
	var maxtime = 60 * 5 //一个小时，按秒计算，自己调整!   
	function CountDown() {
		if (maxtime >= 0) {
			minutes = Math.floor(maxtime / 60);
			seconds = Math.floor(maxtime % 60);
			msg = minutes + "分" + seconds + "秒";
			document.all["timer"].innerHTML = msg;
			if (maxtime == 20 * 60)
				alert('注意，还有20分钟!');
			--maxtime;
		} else {
			clearInterval(timer);
			alert("时间到，结束!");
		}
	}
	function start() {

	}

	timer = setInterval("CountDown()", 1000);
</script>