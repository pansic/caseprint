<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理系统</title>
    <meta name="keyword" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="Author" content="zifan">
    <meta name="copyright" content="胡桃夹子。All Rights Reserved">
	<script language="javascript" src="${ctx}/static/js/lodopPrint/lodopFuncs.js"></script>
    <link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/static/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="${ctx}/static/css/plugins/multiselect/tree-multiselect.min.css" rel="stylesheet">
    <link href="${ctx}/static/css/animate.css" rel="stylesheet">
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
    <style type="text/css">
    .wrapper-content {
    	padding: 15% 10px 0px 40px;
	}
    </style>
</head>

<body class="fixed-sidebar">
    <div id="wrapper" style="height:100%">
        <!----左侧导航开始----->
        <nav class="navbar-default navbar-static-side animated fadeInLeft" role="navigation" id="leftnav"></nav>
        <!----左侧导航结束----->

        <!---右侧内容区开始---->
        <div id="page-wrapper" class="gray-bg" style="height:100%">
            <!---顶部状态栏 star-->
            <div class="row ">
              <nav class="navbar navbar-fixed-top" role="navigation" id="topnav"></nav>
            </div>
            <!---顶部状态栏 end-->

            <!--------当前位置----->


            <!-----内容区域---->
            <div class=" wrapper wrapper-content " style="padding:0;height: calc(100% - 42px); display: flex;justify-content: center;flex-direction: column;">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center m-t-lg">
                        

<div id="div01" >
    <style>
        h1 {
            text-align: center;
        }
        #div01 {
            width: 100%;
            border: 1px solid red;
            padding-bottom: 20px;
            position: relative;
        }
        .price {
            color: red;

        }
        table {
            width: 80%;
            margin: 20px auto;
        }
        table,td,th {border: 1px solid black;border-collapse: collapse}
        table,td {
            text-align: center;
        }
        .remarks {
            text-align: center;
        }
        footer {
            text-align: center;
            margin-top: 20px;
        }
        .f_left {
            float: left;
        }
        .f_right {
            float: right;
        }
        .bottom {
            position: absolute;
            bottom: 0;
            text-align: center;
            width: 100%;
        }
    </style>
    <h1>lodop打印演示</h1>

    <div class="f_left">左边</div>
    <div class="f_right">右边</div>
    <table>
        <thead>
            <tr>
                <th>品名</th>
                <th>价格($)</th>
                <th>数量(个)</th>
                <th>总价($)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>苹果</td>
                <td>10</td>
                <td>1</td>
                <td class="price"></td>
            </tr>
            <tr>
                <td>香蕉</td>
                <td>10</td>
                <td>2</td>
                <td class="price"></td>
            </tr>
            <tr>
                <td>橘子</td>
                <td>10</td>
                <td>3</td>
                <td class="price"></td>
            </tr>
            <tr>
                <td>柠檬</td>
                <td>10</td>
                <td>4</td>
                <td class="price"></td>
            </tr>

        </tbody>
    </table>
    <div class="remarks">打印说明:引入lodopFuncs.js用来检测本地的打印服务</div>
    <div class="bottom">底边</div>
</div>
                        
                            <h1>
                            <button id="printId">打印预览</button>
                                欢迎登陆系统<br>
                               
                        </div>
                    </div>
                </div>
            </div>
            <!-----内容结束----->

            <!----版权信息----->
            <div class="footer">
                <div class="pull-right">
                     <strong>版权所有</strong> 违法必究.
                </div>
                <div>
                    <strong>Copyright</strong> Example Company &copy; 2019-2020
                </div>
            </div>

        </div>
        <!---右侧内容区结束----->


<!-- 全局 scripts -->
<script src="${ctx}/static/js/jquery-2.1.1.js"></script>
<script src="${ctx}/static/js/bootstrap.js"></script>
<script src="${ctx}/static/js/wuling.js"></script>
<script src="${ctx}/static/js/plugins/pace/pace.min.js"></script>
<script src="${ctx}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${ctx}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${ctx}/static/js/plugins/multiselect/tree-multiselect.min.js"></script>
    <script src="${ctx}/static/js/plugins/validate/jquery.validate.min.js"></script>  <!---表单验证--->
    <script src="${ctx}/static/js/plugins/validate/validate-cn.js" ></script> <!---validate 自定义方法--->

<!-- 插件 scripts -->
<script src="${ctx}/static/js/plugins/toastr/toastr.min.js" async></script>
<!---顶部弹出提示--->


<script>

    $(document).ready(function () {
    //loadPrintObj();
        function a() {
            $("select#demo1").treeMultiselect(c)
        }

        var c = {
            sortable:false,
            allowBatchSelection:true,
            collapsible:true,
            hideSidePanel:false, //Hide the right panel showing all the selected items
            sectionDelimiter:'/',	//Separator between sections in the select option data-section attribute
            showSectionOnSelected:true,//Show section name on the selected items
            startCollapsed:true
        };
        a();

        $("#printId").bind("click",function(e){
       // onBtnPrintDetailViewClick();
        //CreatePrintPage();
prn_preview1();
        })
        
        

    function prn_preview1() {
        CreateOnePage();
        LODOP.SET_PREVIEW_WINDOW(1,0,0,0,0,"");
        LODOP.PREVIEW();
//        LODOP.PREVIEW();
//        LODOP.PRINT();
//        LODOP.PRINT_SETUP();
    };
    function CreateOnePage(){
        LODOP=getLodop();
        LODOP.PRINT_INIT("打印控件功能演示_Lodop功能_整页缩放打印输出");
        LODOP.ADD_PRINT_HTM(0,0,"100%","100%",document.getElementById('div01').innerHTML);
        LODOP.SET_PREVIEW_WINDOW(0,0,0,0,0,"");
    };
    
    
    
    
        
        
        
        
        
        
        //打印预览
    function onBtnPrintDetailViewClick(){
    	var me = this;
    	var topa = 0,
    	topb = 0,
    	topc = 0,
    	pageSize = 1,
    	supplierSname='',
    	majorName='',
    	materialName='';
		

    			printObj.NewPage();

				createPrint(me,pageSize,1,'2020-12-01','2020-12-04','仓库');
				//createPrintData(me,result[i].data,topa,topb,topc,i+1);
	
    	printObj.SET_PRINT_PAGESIZE(2, 0, 0, "A4");
    	printObj.PREVIEW();
    };
    //打印框架
    function createPrint(me,pageSize,num,createTime1,createTime2,storeName){
		var page = "第"+pageSize+"页,  共"+num+"页"; //页数
		var topA = String(5) + "mm";
		var topB = String(15) + "mm";
		var topC = String(20) + "mm";
		var topD = String(21) + "mm";
		var topE = String(23) + "mm";
		
    	printObj.SET_PRINT_STYLE("FontSize",12);
    	printObj.SET_PRINT_STYLE("Bold",1);
    	printObj.ADD_PRINT_TEXT(topA,"120mm","60mm","7mm","来料检验汇总打印");
    	printObj.SET_PRINT_STYLE("Bold",0);
    	
    	printObj.SET_PRINT_STYLE("FontSize",10);
    	printObj.ADD_PRINT_TEXT("200mm","130mm","35mm","7mm",page);
    	
    	printObj.ADD_PRINT_TEXT(topB,"85mm","35mm","7mm","收货仓库:");
    	printObj.ADD_PRINT_TEXT(topB,"100mm","35mm","7mm",storeName);//仓库
    	printObj.ADD_PRINT_TEXT(topB,"165mm","35mm","7mm","收货时间:");
    	printObj.ADD_PRINT_TEXT(topB,"182mm","35mm","7mm",createTime1);//时间
    	printObj.ADD_PRINT_TEXT(topB,"210mm","35mm","7mm","至:");
    	printObj.ADD_PRINT_TEXT(topB,"217mm","35mm","7mm",createTime2);//至
    	
    	/**画网格表头**/
    	//画横线
    	printObj.ADD_PRINT_LINE("20mm","5mm","20mm","286mm",0,1);
    	printObj.ADD_PRINT_LINE("30mm","5mm","30mm","286mm",0,1);
    	
    	//画竖线
    	printObj.ADD_PRINT_LINE(topC,"5mm","30mm","5mm",0,1);

    	printObj.ADD_PRINT_TEXT(topE,"6mm","25mm","7mm","序号");
    	printObj.ADD_PRINT_LINE(topC,"14mm","30mm","14mm",0,1);//序号
    	
    	printObj.ADD_PRINT_TEXT(topD,"16mm","12mm","7mm","收货日期");
    	printObj.ADD_PRINT_LINE(topC,"25mm","30mm","25mm",0,1);//收货日期
    	
    	printObj.ADD_PRINT_TEXT(topE,"28mm","25mm","7mm","送货单号");
    	printObj.ADD_PRINT_LINE(topC,"44mm","30mm","44mm",0,1);//送货单号
    	
    	printObj.ADD_PRINT_TEXT(topE,"46mm","25mm","7mm","供应商");
    	printObj.ADD_PRINT_LINE(topC,"58mm","30mm","58mm",0,1);//供应商
    	
    	printObj.ADD_PRINT_TEXT(topE,"60mm","25mm","7mm","大类");
    	printObj.ADD_PRINT_LINE(topC,"69mm","30mm","69mm",0,1);//大类
    	
    	printObj.ADD_PRINT_TEXT(topD,"74mm","16mm","7mm","检验通知单号");
    	printObj.ADD_PRINT_LINE(topC,"89mm","30mm","89mm",0,1);//检验通知单号
    	
    	printObj.ADD_PRINT_TEXT(topE,"91mm","25mm","7mm","物料编码");
    	printObj.ADD_PRINT_LINE(topC,"107mm","30mm","107mm",0,1);//物料编码
    	
    	printObj.ADD_PRINT_TEXT(topE,"115mm","25mm","7mm","物料名称");
    	printObj.ADD_PRINT_LINE(topC,"137mm","30mm","137mm",0,1);//物料名称
    	
    	printObj.ADD_PRINT_TEXT(topD,"139mm","12mm","7mm","基本单位");
    	printObj.ADD_PRINT_LINE(topC,"148mm","30mm","148mm",0,1);//单位-6mm
    	
    	printObj.ADD_PRINT_TEXT(topE,"150mm","25mm","7mm","尺码");
    	printObj.ADD_PRINT_LINE(topC,"159mm","30mm","159mm",0,1);//尺码
    	
    	printObj.ADD_PRINT_TEXT(topE,"163mm","25mm","7mm","批次号");
    	printObj.ADD_PRINT_LINE(topC,"177mm","30mm","177mm",0,1);//批次号
    	
    	printObj.ADD_PRINT_TEXT(topD,"179mm","12mm","7mm","通知数量");
    	printObj.ADD_PRINT_LINE(topC,"188mm","30mm","188mm",0,1);//通知数量
    	
    	printObj.ADD_PRINT_TEXT(topD,"190mm","12mm","7mm","待检数量");
    	printObj.ADD_PRINT_LINE(topC,"199mm","30mm","199mm",0,1);//待检数量
    	
    	printObj.ADD_PRINT_TEXT(topD,"201mm","12mm","7mm","合格数量");
    	printObj.ADD_PRINT_LINE(topC,"210mm","30mm","210mm",0,1);//合格数量
    	
    	printObj.ADD_PRINT_TEXT(topD,"212mm","16mm","7mm","不合格数量");
    	printObj.ADD_PRINT_LINE(topC,"224mm","30mm","224mm",0,1);//不合格数量
    	
    	printObj.ADD_PRINT_TEXT(topD,"226mm","12mm","7mm","打折数量");
    	printObj.ADD_PRINT_LINE(topC,"235mm","30mm","235mm",0,1);//打折数量
    	
    	printObj.ADD_PRINT_TEXT(topE,"248mm","25mm","7mm","问题描述");
    	printObj.ADD_PRINT_LINE(topC,"275mm","30mm","275mm",0,1);//问题描述

    	printObj.ADD_PRINT_TEXT(topD,"277mm","12mm","7mm","质检结果");
    	printObj.ADD_PRINT_LINE(topC,"286mm","30mm","286mm",0,1);//问题描述
    	
    };
    //获取打印数据
    function createPrintData(me,list,topa,topb,topc,i){
    	var createTime = list.createTime.substr(5,list.createTime.size);//收货日期
    	var receiptNo = list.receiptNo;//收货单号
    	var appNo = -list.appNo;//序号
    	var supplierSname = list.supplierSname;//供应商
    	var majorName = list.majorName;//大类
    	var billNo = list.billNo;//检验通知单号
    	var materialCode = list.materialCode;//物料编码
    	var materialName = list.materialName;//物料名称
    	var unitName = list.unitName;//单位
    	var sizeNo = list.sizeNo;//配码
    	var batchNo = list.batchNo;//批次号
    	var noticeQty = list.noticeQty;//通知数量
    	var qty = list.qty;//待检数量
    	var storeName = list.storeName;
    	receiptNoLength = list.receiptNo.length;
    	majorNameLength = list.majorName.length;
    	batchNoLenght = list.batchNo.length;
    	materialNameLength = list.materialName.match(/[\u4e00-\u9fa5\uFF00-\uFFFF]/ig).length*2+list.materialName.length-list.materialName.match(/[\u4e00-\u9fa5\uFF00-\uFFFF]/ig).length;
    	/**动态画网格*/
      	//画网格内容
    	var height = 40;//初始纵坐标
    	var topA = String(30+6*(topa-1)) + "mm";//竖线起始纵坐标
    	var topB = String(30+4*(topb+1.5)) + "mm";//竖线终点纵坐标(横线纵坐标)
    	var topC = String(32+6*(topc)) + "mm";//竖线终点纵坐标(横线纵坐标)
    	var topD = String(31+4*(topc)) + "mm";
    	var topF = String(30.5+4*(topc)) + "mm";
    	
    	printObj.SET_PRINT_STYLE("Alignment",1);

    	//画横线
    	printObj.ADD_PRINT_LINE(topB,"5mm",topB,"286mm",0,1);
    	//画竖线
    	printObj.ADD_PRINT_LINE(topA,"5mm",topB,"5mm",0,1);//边框竖线
    	printObj.ADD_PRINT_LINE(topA,"14mm",topB,"14mm",0,1);//序号
    	printObj.ADD_PRINT_LINE(topA,"25mm",topB,"25mm",0,1);//收货日期
    	printObj.ADD_PRINT_LINE(topA,"44mm",topB,"44mm",0,1);//收货单号
    	printObj.ADD_PRINT_LINE(topA,"58mm",topB,"58mm",0,1);//供应商
    	printObj.ADD_PRINT_LINE(topA,"69mm",topB,"69mm",0,1);//大类
    	printObj.ADD_PRINT_LINE(topA,"89mm",topB,"89mm",0,1);//检验通知单号
    	printObj.ADD_PRINT_LINE(topA,"107mm",topB,"107mm",0,1);//物料编码
    	printObj.ADD_PRINT_LINE(topA,"137mm",topB,"137mm",0,1);//物料名称
    	printObj.ADD_PRINT_LINE(topA,"148mm",topB,"148mm",0,1);//单位
    	printObj.ADD_PRINT_LINE(topA,"159mm",topB,"159mm",0,1);//配码
    	printObj.ADD_PRINT_LINE(topA,"177mm",topB,"177mm",0,1);//批次号
    	printObj.ADD_PRINT_LINE(topA,"188mm",topB,"188mm",0,1);//通知数量
    	printObj.ADD_PRINT_LINE(topA,"199mm",topB,"199mm",0,1);//待检数量
    	printObj.ADD_PRINT_LINE(topA,"210mm",topB,"210mm",0,1);//合格数量
    	printObj.ADD_PRINT_LINE(topA,"224mm",topB,"224mm",0,1);//不合格数量
    	printObj.ADD_PRINT_LINE(topA,"235mm",topB,"235mm",0,1);//打折数量
    	printObj.ADD_PRINT_LINE(topA,"275mm",topB,"275mm",0,1);//问题描述
    	printObj.ADD_PRINT_LINE(topA,"286mm",topB,"286mm",0,1);//质量问题
    	
    	/*********/
    	
    	/**打印数据**/
    	//网格数据
    	printObj.SET_PRINT_STYLE("FontSize",8);
    	printObj.ADD_PRINT_TEXT(topD,"8mm","23mm","7mm",i);//序号
    	printObj.ADD_PRINT_TEXT(topD,"15mm","20mm","7mm",createTime);//收货日期
    	
    	if(receiptNoLength>11){
    		printObj.SET_PRINT_STYLE("FontSize",7);
        	printObj.ADD_PRINT_TEXT(topF,"26mm","20mm","7mm",receiptNo);//收货单号
    	}else{
    		printObj.SET_PRINT_STYLE("FontSize",8);
        	printObj.ADD_PRINT_TEXT(topD,"26mm","20mm","7mm",receiptNo);//收货单号
    	}

    	if(supplierSname.length>3){
    		printObj.SET_PRINT_STYLE("FontSize",7);
        	printObj.ADD_PRINT_TEXT(topF,"45mm","15mm","14mm",supplierSname);//供应商
    	}else{
    		printObj.SET_PRINT_STYLE("FontSize",8);
        	printObj.ADD_PRINT_TEXT(topD,"45mm","15mm","14mm",supplierSname);//供应商
    	}
    	
    	if(majorNameLength>3){
        	printObj.SET_PRINT_STYLE("FontSize",7);
    	}else{
        	printObj.SET_PRINT_STYLE("FontSize",8);
    	}
    	printObj.ADD_PRINT_TEXT(topD,"59mm","14mm","7mm",majorName);//大类

    	
    	printObj.SET_PRINT_STYLE("FontSize",7);
    	printObj.ADD_PRINT_TEXT(topD,"70mm","23mm","7mm",billNo);//检验通知单号
    	printObj.SET_PRINT_STYLE("FontSize",8);
    	printObj.ADD_PRINT_TEXT(topD,"90mm","25mm","7mm",materialCode);//物料编码
    	
    	if(materialNameLength>19){
    		printObj.SET_PRINT_STYLE("FontSize",7);
        	printObj.ADD_PRINT_TEXT(topF,"108mm","32mm","14mm",materialName);//物料名称
    	}else{
    		printObj.SET_PRINT_STYLE("FontSize",8);
        	printObj.ADD_PRINT_TEXT(topD,"108mm","32mm","14mm",materialName);//物料名称
    	}
    	
    	printObj.SET_PRINT_STYLE("FontSize",8);
    	printObj.ADD_PRINT_TEXT(topD,"139mm","25mm","7mm",unitName);//单位 -18
    	printObj.ADD_PRINT_TEXT(topD,"150mm","25mm","7mm",sizeNo);//配码

    	if(batchNoLenght>11){
        	printObj.SET_PRINT_STYLE("FontSize",7);
        	printObj.ADD_PRINT_TEXT(topF,"160mm","20mm","7mm",batchNo);//批次号
    	}else{
        	printObj.SET_PRINT_STYLE("FontSize",8);
        	printObj.ADD_PRINT_TEXT(topD,"160mm","20mm","7mm",batchNo);//批次号
    	}
		
		printObj.SET_PRINT_STYLE("FontSize",7);
    	printObj.ADD_PRINT_TEXT(topD,"178mm","28mm","7mm",noticeQty);//通知数量
    	printObj.ADD_PRINT_TEXT(topD,"189mm","13mm","7mm",qty);//待检数量

    	printObj.SET_PRINT_STYLE("Alignment",1);
    }
    
    
    
    
    
    function CreatePrintPage() {

var whichOne='jx';
var num=2;
    var fenyeSize=0;
   
    var printNum;//序号
    printObj.PRINT_INITA(0,0,1800,1460,"套打EMS的模板");
    if(whichOne=="bz"||whichOne=="hn"){
         printObj.SET_PRINT_PAGESIZE(0,0,0,"A4");
         fenyeSize=1070;
    }else if(whichOne=="jx"){
         printObj.SET_PRINT_PAGESIZE(0,'210mm','140mm',"A4");//一开始用的是像素，后来都改成用mm为单位
         fenyeSize=140;
    }if(whichOne=="zj"){
          printObj.PRINT_INITA(100,11,800,1460,"套打EMS的模板");
         fenyeSize=470;
        printObj.SET_PRINT_PAGESIZE(0,1900,1300,"A4");
        printObj.SET_PRINT_MODE("PRINT_PAGE_PERCENT", "Width:80%;Height:80%");
    }
   
        for(var i=0;i<1;i++){

            
            var lastheght=2;
            //上面的信息
            if(num!=1){//标准单据有标题，  num==1浙江单据没有
            printObj.ADD_PRINT_TEXT("3.39mm","64.4mm","77.55mm","9.6mm","XXXXX平台销售出库单");
                printObj.SET_PRINT_STYLEA(0, "ItemType", 0);
                printObj.SET_PRINT_STYLEA(0, "FontSize", 14);
                printObj.SET_PRINT_STYLEA(0, "Bold", 1);
            }
           
            var size =19;     
            
            var extendSize=0;
            var table_hegth=(size+1)*25;
            var fonsize=4;
            //上面的信息
            var lsous="11121额鹅鹅鹅"
            var shohuor="111"
            if(whichOne=="hn"||whichOne=="jx"){
                
                printObj.ADD_PRINT_TEXT("15.29mm","12.54mm","20.13mm","5.37mm","订单编号：");
                printObj.ADD_PRINT_TEXT("15.29mm","28.18mm","45.56mm","5.37mm","1111111111111111");
                printObj.ADD_PRINT_TEXT("15.29mm","73.37mm","20.13mm","5.37mm","下单日期：");
                printObj.ADD_PRINT_TEXT("15.29mm","88.66mm","20.13mm","5.37mm","2017-0909");
                printObj.ADD_PRINT_TEXT("15.29mm","109.03mm","20.13mm","5.37mm","发货日期：");
                printObj.ADD_PRINT_TEXT("15.29mm","124.65mm","20.13mm","5.37mm","2017-0909");
                printObj.ADD_PRINT_TEXT("6.03mm","154.28mm","27.54mm","14.1mm","1234");
                printObj.SET_PRINT_STYLEA(0, "ItemType", 0);
                printObj.SET_PRINT_STYLEA(0, "FontSize", 32);
                printObj.SET_PRINT_STYLEA(0, "Bold", 1);
                printObj.ADD_PRINT_TEXT("21.11mm","12.54mm","20.13mm","5.37mm","零售商：");
                printObj.ADD_PRINT_TEXT("21.11mm","24.98mm",3+getByteLen(lsous)*1.7+"mm","5.37mm",lsous);
                printObj.ADD_PRINT_TEXT("21.11mm",24.98+3+getByteLen(lsous)*1.7+"mm","20.13mm","5.37mm","收货人：");
                printObj.ADD_PRINT_TEXT("21.11mm",38+3+getByteLen(lsous)*1.7+"mm","20.13mm","5.37mm",shohuor);
                printObj.ADD_PRINT_TEXT("21.11mm",58+3+getByteLen(lsous)*1.7+"mm","20.13mm","5.37mm","联系电话：");
                printObj.ADD_PRINT_TEXT("21.11mm",73+3+getByteLen(lsous)*1.7+"mm","20.13mm","5.37mm","19765663427");
                printObj.ADD_PRINT_TEXT("26.41mm","12.81mm","20.13mm","5.37mm","收货地址：");
                printObj.ADD_PRINT_TEXT("26.41mm","28.68mm","139.99mm","5.37mm","北京天安门广场");
            }
    
            //标题等
            printObj.ADD_PRINT_TEXT("33.02mm","15.72mm","9.55mm","5.37mm","行号");
             printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
            printObj.ADD_PRINT_TEXT("33.02mm","49.85mm","13.52mm","5.37mm","供货商");
            printObj.ADD_PRINT_TEXT("33.02mm","91.65mm","9.55mm","5.37mm","型号");
            printObj.ADD_PRINT_TEXT("33.02mm","120.5mm","9.55mm","5.37mm","颜色");
            printObj.ADD_PRINT_TEXT("33.02mm","144.57mm","20.13mm","5.37mm","单价（元）");
            printObj.ADD_PRINT_TEXT("33.02mm","162.56mm","9.55mm","5.37mm","数量");
            printObj.ADD_PRINT_TEXT("33.02mm","171.82mm","27.81mm","5.37mm","应付金额（元）");
            
            //表格线
            printObj.ADD_PRINT_LINE("31.31mm","13mm","31.31mm","193.00mm",0,1);// 最上条标题横线            
            printObj.ADD_PRINT_LINE("37.31mm","13mm","37.31mm","193.00mm",0,1);// 标题下横线        
            printObj.ADD_PRINT_LINE("31.31mm","13mm", "37.11mm", "13mm", 0, 1);// 最左竖线
            printObj.ADD_PRINT_LINE("31.31mm","25mm", "37.11mm", "25mm", 0, 1);// 行号后竖线
            printObj.ADD_PRINT_LINE("31.31mm","83mm", "37.11mm", "83mm", 0, 1);// 供货商后竖线
            printObj.ADD_PRINT_LINE("31.31mm","110mm", "37.11mm", "110mm", 0, 1);// 型号后竖线
            printObj.ADD_PRINT_LINE("31.31mm","140mm", "37.11mm", "140mm", 0, 1);// 颜色后竖线
            printObj.ADD_PRINT_LINE("31.31mm","160mm", "37.11mm", "160mm", 0, 1);// 单价后竖线
            printObj.ADD_PRINT_LINE("31.31mm","170mm", "37.11mm", "170mm", 0, 1);// 数量后竖线
            printObj.ADD_PRINT_LINE("31.31mm","193mm", "37.11mm", "193mm", 0, 1);// 最右竖线
    
            //动态列表信息
            var trheight=37.31;//用于每个竖线距离上面的固定长度
            var thHeight=37.98;//用于每行商品距离上面的固定长度
            var newHeight=0;//用于动态增加一行的长度
            var lastSize=0;//分页前的那个下标
            var allProductNumber=0;
            for(var k=0;k<size;k++){
            var aaa="12345678901234567";
            var bbb="12345678901";
            var ccc="1234567";
                newHeight=(k-lastSize)*5.37+extendSize*fonsize;
                var SizeTmpt=parseInt(getByteLen(aaa)/35);
           
                if(parseInt(getByteLen(bbb)/16)>SizeTmpt){
                     SizeTmpt=parseInt(getByteLen(bbb)/16);
                }
               
                if(parseInt(getByteLen(ccc)/17)>SizeTmpt){
                    SizeTmpt=parseInt(getByteLen(ccc)/17);
                }
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","15.72mm","9.55mm","5.37mm",k+1);
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","25mm","58mm",5.3+SizeTmpt*fonsize+"mm",aaa);
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","83mm","27mm",5.3+SizeTmpt*fonsize+"mm",bbb);
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","110mm","30mm",5.3+SizeTmpt*fonsize+"mm",ccc);
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","140mm","20mm","5.37mm",'1234');
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","160mm","10mm","5.37mm",'2333');
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                printObj.ADD_PRINT_TEXT(thHeight+newHeight+"mm","170mm","23mm","5.37mm",'2323');
                printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
                
                extendSize+=SizeTmpt;
                newHeight=(k-lastSize)*5.37+extendSize*fonsize;
          if(k==lastSize+1&&k!=1){
              printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","13mm",trheight+newHeight-SizeTmpt*fonsize+"mm","193mm",0,1);//每条数据后加一横线
          }
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","13mm",trheight+newHeight+5.37+"mm","13mm",0,1);//最左竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","25mm",trheight+newHeight+5.37+"mm","25mm",0,1);//行号后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","83mm",trheight+newHeight+5.37+"mm","83mm",0,1);//供货商后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","110mm",trheight+newHeight+5.37+"mm",'110mm',0,1);//型号后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","140mm",trheight+newHeight+5.37+"mm","140mm",0,1);//颜色后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","160mm",trheight+newHeight+5.37+"mm","160mm",0,1);//单价后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","170mm",trheight+newHeight+5.37+"mm","170mm",0,1);//数量后竖线
                printObj.ADD_PRINT_LINE(trheight+newHeight-SizeTmpt*fonsize+"mm","193mm",trheight+newHeight+5.37+"mm","193mm",0,1);//最右竖线
                
                printObj.ADD_PRINT_LINE(trheight+newHeight+5.57+"mm","13mm",trheight+newHeight+5.57+"mm","193mm",0,1);//每条数据后加一横线

                if((trheight+newHeight+5.57)%fenyeSize<=fenyeSize&&(trheight+5.57+newHeight)%fenyeSize>=(fenyeSize-15)){
                 
                        printObj.NewPage();
                        thHeight=0.67;
                       lastSize=k;
                       trheight=0;
                    extendSize=0;

                }

             
            }

            table_hegth=trheight+newHeight+5.57;
    
      if(whichOne=="hn"||whichOne=="jx"){
          lastheght+=9.4;
            printObj.ADD_PRINT_TEXT(1+table_hegth+"mm","91.65mm","9.55mm","5.37mm","合计");
            printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
            printObj.ADD_PRINT_TEXT(1+table_hegth+"mm","160mm","10mm","5.37mm",'3333');
            printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
            printObj.ADD_PRINT_TEXT(1+table_hegth+"mm","170mm","23mm","5.37mm",'999999');
            printObj.SET_PRINT_STYLEA(0, "Alignment", 2);
            printObj.ADD_PRINT_LINE(4.7+table_hegth+"mm","13mm",4.7+table_hegth+"mm","193mm",0,1);//备注上横线
            printObj.ADD_PRINT_LINE(9.4+table_hegth+"mm","13mm",9.4+table_hegth+"mm","193mm",0,1);//最后一横线
            printObj.ADD_PRINT_LINE(table_hegth+"mm", "13mm", table_hegth+9.4+"mm", "13mm", 0, 1);// 最左竖线
            printObj.ADD_PRINT_LINE(table_hegth+"mm", "160mm", 4.7+table_hegth+"mm", "160mm", 0, 1);// 单价后竖线
            printObj.ADD_PRINT_LINE(table_hegth+"mm", "170mm", 4.7+table_hegth+"mm", "170mm", 0, 1);// 数量后竖线
            printObj.ADD_PRINT_LINE(table_hegth+"mm", "193mm", table_hegth+9.4+"mm", "193mm", 0, 1);// 最右竖线
            
               if((trheight+9.4+newHeight)%fenyeSize<=fenyeSize&&(trheight+newHeight+9.4)%fenyeSize>=(fenyeSize-6)){                     
                        printObj.NewPage();
                       lastheght=0;
                       table_hegth=0;
                        
              }
      }

           
            // 最下显示订单信息
            

            var moneyWeight=0;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm","12.54mm","27.81mm","5.37mm","订单总金额：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm","30mm","27.81mm","5.37mm",'555666'+"元");
            moneyWeight+=getByteLen('555666')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+moneyWeight+"mm","3mm","5.37mm","-");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+3+moneyWeight+"mm","18.55mm","5.37mm","价保返利：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+17+moneyWeight+"mm","27.81mm","5.37mm","7667元");
                moneyWeight+=getByteLen('7667')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+17+moneyWeight+"mm","3mm","5.37mm","-");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+20+moneyWeight+"mm","17.81mm","5.37mm","预付款：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+31+moneyWeight+"mm","27.81mm","5.37mm","7887元");
               moneyWeight+=getByteLen('7887')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+31+moneyWeight+"mm","3mm","5.37mm","-");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+34+moneyWeight+"mm","17.81mm","5.37mm","账期：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+43+moneyWeight+"mm","17.81mm","5.37mm","999元");
            moneyWeight+=getByteLen('787')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+43+moneyWeight+"mm","3mm","5.37mm","-");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+46+moneyWeight+"mm","17.81mm","5.37mm","优惠券：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+57+moneyWeight+"mm","17.81mm","5.37mm","888元");
        moneyWeight+=getByteLen('787')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+57+moneyWeight+"mm","3mm","5.37mm","-");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+60+moneyWeight+"mm","17.81mm","5.37mm","预定金：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+71+moneyWeight+"mm","17.81mm","5.37mm","555元");
        moneyWeight+=getByteLen('788')*1.7+4;
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+71+moneyWeight+"mm","3mm","5.37mm","=");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+74+moneyWeight+"mm","18.55mm","5.37mm","线上支付：");
            printObj.ADD_PRINT_TEXT(lastheght+table_hegth+"mm",30+88+moneyWeight+"mm","17.81mm","5.37mm","555元");
            
            if(whichOne=="hn"||whichOne=="jx"){
               if((lastheght+table_hegth+5)%fenyeSize<=fenyeSize&&(lastheght+table_hegth+5)%fenyeSize>=(fenyeSize-6)){                     
                        printObj.NewPage();
                       lastheght=0;
                       table_hegth=0;
                        
              }
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+5+"mm","12.54mm","27.81mm","5.37mm","制单人：");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+5+"mm","62.54mm","27.81mm","5.37mm","配货员：");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+5+"mm","112.54mm","27.81mm","5.37mm","检验员：");
                printObj.ADD_PRINT_TEXT(lastheght+table_hegth+5+"mm","162.54mm","27.81mm","5.37mm","包装员："); 
            }
             printObj.NewPage();
        }
printObj.PRINT_SETUP();


};  

function getByteLen(val) {
    var len = 0;
    for (var i = 0; i < val.length; i++) {
        if (val[i].match(/[^\x00-\xff]/ig) != null) //全角
            len += 2;
        else
            len += 1;
    }
    return len;
}
    
    });

    


</script>
</body>
</html>
