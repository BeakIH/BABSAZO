function checkValue() {
	if (!document.info.name.value) {
		alert("이름을 입력하세요.");
		return false;
	}

	if (!document.info.sNo.value) {
		alert("매장번호를 입력하세요.");
		return false;
	}

	if (document.info.position.value=="") {
		alert("직위를 선택하세요.");
		return false;
	}
}
