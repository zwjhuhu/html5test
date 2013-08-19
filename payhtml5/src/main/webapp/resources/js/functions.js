$(function(){
	mobile_menu();
	init_menu();
	//init_tweets();
	init_fancybox();
	portfolio_filter();
	contact_form();
	goto_top();
	
	tabs_ui();
	accordion_ui();
})

function mobile_menu() {
	
	selectnav('nav', { label: 'Menu', nested: true, indent: '-' });
}

function init_menu() {
	
	$('ul.sf-menu').superfish(); 
}

function init_tweets() {
	$(".latest_tweets #tweets").tweet({
        username: "mojothemes",
        join_text: "auto",
        avatar_size: 0,
        count: 3,
        auto_join_text_default: "we said,",
        auto_join_text_ed: "we",
        auto_join_text_ing: "we were",
        auto_join_text_reply: "we replied to",
        auto_join_text_url: "we were checking out",
        loading_text: "loading tweets..."
    });
}

function init_fancybox() {
	$('.fancybox').fancybox({
                'transitionIn' : 'fade',
                'transitionOut' : 'fade',
                'speedIn' : '800',
                'speedOut' : '400',
                'overlayShow' : true,
				'overlayColor' : '#fcfcfc',
				'padding' : '3',
                'hideOnContentClick' : true,
                'titlePosition' : 'outside',
                'titleFormat' : null
    });
}

function portfolio_filter() {
	
	$('.portfolio ul.sort li').eq(0).addClass('current');
	
	$('.portfolio ul.sort a').click(function() {
		$(this).css('outline','none');
		$('ul.sort .current').removeClass('current');
		$(this).parent().addClass('current');
		
		var filterVal = $(this).text().toLowerCase().replace(' ','-');
				
		if(filterVal == 'all') {
			$('ul.portfolio_sort li.hidden').fadeIn('slow').removeClass('hidden');
		} else {
			
			$('ul.portfolio_sort li').each(function() {
				if(!$(this).hasClass(filterVal)) {
					$(this).fadeOut('normal').addClass('hidden');
				} else {
					$(this).fadeIn('slow').removeClass('hidden');
				}
			});
		}
		
		return false;
	});
	
}

function contact_form() {
	
	$("#contact_send").click(function() {
		var name    = $("input#name").val();
		var email   = $("input#email").val();
		var subject = $("input#subject").val();
		var text    = $("textarea#text").val();
		var post    = 'name=' + name + '&email=' + email + '&subject=' + subject + '&text=' + text;
/*		$.post('sendmail.php', post, function(data) {
			$("div#responce").html(data);
		});*/
		alert("参数："+post);
	});
	
}

function goto_top() {
	
	$("a#goto_top").click(function(){
		$('html, body').animate({scrollTop:0}, 400); 
		return false; 
	});
}

function tabs_ui()
{
	$(".tab_content").hide();
	$("ul.tabs_nav li:first").addClass("active").show();
	$(".tab_content:first").show();
	$("ul.tabs_nav li").click(function() {
		$("ul.tabs_nav li").removeClass("active");
		$(this).addClass("active");
		$(".tab_content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn(1000);
		return false;
	});	
}

function accordion_ui()
{
	$(".accordion h3").eq(0).addClass("active");
	$(".acc_content").eq(0).show();

	$(".accordion h3").click(function(){
		$(this).next(".acc_content").slideToggle("slow")
		.siblings(".acc_content:visible").slideUp("slow");
		$(this).toggleClass("active");
		$(this).siblings("h3").removeClass("active");
	});	
}

/** * 对Date的扩展，将 Date 转化为指定格式的String * 月(M)、日(d)、12小时(h)、24小时(H)、分(m)、秒(s)、周(E)、季度(q)
    可以用 1-2 个占位符 * 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字) * eg: * (new
    Date()).pattern("yyyy-MM-dd hh:mm:ss.S")==> 2006-07-02 08:09:04.423      
 * (new Date()).pattern("yyyy-MM-dd E HH:mm:ss") ==> 2009-03-10 二 20:09:04      
 * (new Date()).pattern("yyyy-MM-dd EE hh:mm:ss") ==> 2009-03-10 周二 08:09:04      
 * (new Date()).pattern("yyyy-MM-dd EEE hh:mm:ss") ==> 2009-03-10 星期二 08:09:04      
 * (new Date()).pattern("yyyy-M-d h:m:s.S") ==> 2006-7-2 8:9:4.18      
 */        
Date.prototype.pattern=function(fmt) {         
    var o = {         
    "M+" : this.getMonth()+1, //月份         
    "d+" : this.getDate(), //日         
    "h+" : this.getHours()%12 == 0 ? 12 : this.getHours()%12, //小时         
    "H+" : this.getHours(), //小时         
    "m+" : this.getMinutes(), //分         
    "s+" : this.getSeconds(), //秒         
    "q+" : Math.floor((this.getMonth()+3)/3), //季度         
    "S" : this.getMilliseconds() //毫秒         
    };         
    var week = {         
    "0" : "日",         
    "1" : "一",         
    "2" : "二",         
    "3" : "三",         
    "4" : "四",         
    "5" : "五",         
    "6" : "六"        
    };         
    if(/(y+)/.test(fmt)){         
        fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));         
    }         
    if(/(E+)/.test(fmt)){         
        fmt=fmt.replace(RegExp.$1, ((RegExp.$1.length>1) ? (RegExp.$1.length>2 ? "星期" : "周") : "")+week[this.getDay()+""]);         
    }         
    for(var k in o){         
        if(new RegExp("("+ k +")").test(fmt)){         
            fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));         
        }         
    }         
    return fmt;         
}       