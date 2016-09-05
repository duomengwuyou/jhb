/*
*转换日期(将任意格式转换成日期字符串)
*time:任意date格式，
*hasTime:是否输出时分秒
* */
function formatDate(time, hasTime){
	if(!time || time == "undefined" || time == "null"){
		return "";
	}
    var tempDate=new Date(time),
        dateStr='',
        dataObj={};
    if(!tempDate){return "";}
    dataObj._year=tempDate.getFullYear();
    dataObj._month=tempDate.getMonth()+1;
    dataObj._day=tempDate.getDate();
    dataObj._hour=tempDate.getHours();
    dataObj._minute=tempDate.getMinutes();
    dataObj._second=tempDate.getSeconds();
    var _d_array=['_year','_month','_day','_hour','_minute','_second'];
    //补零
    for(var i=0;i< _d_array.length;i++){
        var t_v=dataObj[_d_array[i]];
        if(t_v<10){dataObj[_d_array[i]]="0"+t_v};
    }

    dateStr=dataObj._year+"-"+dataObj._month+"-"+dataObj._day;
    if(hasTime){
        dateStr+=" "+dataObj._hour+":"+dataObj._minute+":"+dataObj._second;
    }
    return dateStr;
}