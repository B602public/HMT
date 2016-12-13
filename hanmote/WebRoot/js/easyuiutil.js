/**
 * @author 
 * 
 * @requires jQuery,EasyUI
 * 
 * 扩展validatebox，添加验证两次密码功能
 */
$.extend($.fn.validatebox.defaults.rules, {
	eqPwd : {
		validator : function(value, param) {
			return value == $(param[0]).val();
		},
		message : '密码不一致！'
	}
});

/**
 * layout折叠后显示标题
 */
$.extend($.fn.layout.paneldefaults, { 
    onCollapse : function () { 
        //获取layout容器 
        var layout = $(this).parents("div.layout"); 
        //获取当前region的配置属性 
        var opts = $(this).panel("options"); 
        //获取key 
        var expandKey = "expand" + opts.region.substring(0, 1).toUpperCase() + opts.region.substring(1); 
        //从layout的缓存对象中取得对应的收缩对象 
        var expandPanel = layout.data("layout").panels[expandKey]; 
        //针对横向和竖向的不同处理方式 
        if (opts.region == "west" || opts.region == "east") { 
            //竖向的文字打竖,其实就是切割文字加br 
            var split = []; 
            for (var i = 0; i < opts.title.length; i++) {
                split.push(opts.title.substring(i, i + 1)); 
            } 
            expandPanel.panel("body").addClass("panel-title").css("text-align", "center").html(split.join("<br>")); 
        }
        else
        { 
            expandPanel.panel("setTitle", opts.title); 
        }
    } 
});
/**
 * 修改默认的easyui的loadFilter
 */
$.fn.tree.defaults.loadFilter = function(data, parent) {
	var opt = $(this).data().tree.options;
	var idFiled, textFiled, parentField;
	if (opt.parentField) {
		idFiled = opt.idField || 'id';
		textFiled = opt.textField || 'text';
		parentField = opt.parentField ;
		var i, l, treeData = [], tmpMap = [];
		for (i = 0, l = data.length; i < l; i++) {
			tmpMap[data[i][idFiled]] = data[i];
		}
		for (i = 0, l = data.length; i < l; i++) {
			if (tmpMap[data[i][parentField]] && data[i][idFiled] != data[i][parentField]) {
				if (!tmpMap[data[i][parentField]]['children'])
					tmpMap[data[i][parentField]]['children'] = [];
				data[i]['text'] = data[i][textFiled];
				tmpMap[data[i][parentField]]['children'].push(data[i]);
			} else {
				data[i]['text'] = data[i][textFiled];
				treeData.push(data[i]);
			}
		}
		return treeData;
	}
	return data;
};

/**
 * @author 
 * 
 * @requires jQuery,EasyUI
 * 
 * 防止panel/window/dialog组件超出浏览器边界
 * @param left
 * @param top
 */
var easyuiPanelOnMove = function(left, top) {
	var l = left;
	var t = top;
	if (l < 1) {
		l = 1;
	}
	if (t < 1) {
		t = 1;
	}
	var width = parseInt($(this).parent().css('width')) + 14;
	var height = parseInt($(this).parent().css('height')) + 14;
	var right = l + width;
	var buttom = t + height;
	var browserWidth = $(window).width();
	var browserHeight = $(window).height();
	if (right > browserWidth) {
		l = browserWidth - width;
	}
	if (buttom > browserHeight) {
		t = browserHeight - height;
	}
	$(this).parent().css({/* 修正面板位置 */
		left : l,
		top : t
	});
};
$.fn.dialog.defaults.onMove = easyuiPanelOnMove;
$.fn.window.defaults.onMove = easyuiPanelOnMove;
$.fn.panel.defaults.onMove = easyuiPanelOnMove;
