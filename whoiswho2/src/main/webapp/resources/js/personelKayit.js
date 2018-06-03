function showMe() {

		var x = document.getElementById("departman").value;
		var div1 = document.getElementById("1");
		var div2 = document.getElementById("2");
		var div3 = document.getElementById("3");
		var div4 = document.getElementById("4");
		if (x == 1) {
			div1.style.display = "block";
			div2.style.display = "none";
			div3.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 2) {
			div2.style.display = "block";
			div1.style.display = "none";
			div3.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 3) {
			div3.style.display = "block";
			div1.style.display = "none";
			div2.style.display = "none";
			div4.style.display = "none";
		}
		if (x == 4) {
			div4.style.display = "block";
			div1.style.display = "none";
			div3.style.display = "none";
			div2.style.display = "none";
		}

		//all checkbox checked false
		var w = document.getElementsByTagName('input');
		for (var i = 0; i < w.length; i++) {
			if (w[i].type == 'checkbox') {
				w[i].checked = false;
			}
		}

	}
