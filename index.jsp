
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>9.30作业</title>
  </head>
  <style>
    *{
      text-align: center;
    }
  </style>
  <body>
  <header>9.30作业</header>
  <nav>
    <button id="a001">随机单词</button>
    <button id="a002">首个单词</button>
    <button id="a003">下个单词</button>
    <button id="a004">上个单词</button>
  </nav>
  <main>
    <p id="yw">单词英文</p>
    <p id="dy">单词读音</p>
    <p id="zs">单词注释</p>
  </main>
  <footer>9.30java web作业</footer>
  </body>
<script>
  function select(selector){
  let dom = document.querySelector(selector) ;
  return dom ;
  }
  let CET6=[];
  let cet6String = "a	/ei/	art.一(个);每一(个);(同类事物中)任一个\r\nabandon	/ə'bændən/	vt.离弃,丢弃;弃,抛弃;放弃\r\nabdomen	/æb'dəumen/	n.腹,下腹(胸部到腿部的部分)\r\nabatement	/ə'beitmənt/	n.减(免)税,打折扣,冲销\r\nabide	/ə'baid/	vi.(abode,abided)(by)遵守;坚持;vt.忍受,容忍\r\nability	/ə'biliti/	n.能力;本领;才能,才干;专门技能,天资\r\nable	/'eibl/	a.有(能力、时间、知识等)做某事,有本事的\r\nabnormal	/æb'nɔ:məl/	a.反常的,不正常的,不规则的\r\naboard	/ə'bɔ:d/	ad.&prep.在船(飞机、车)上;ad.上船(飞机、车)\r\nabolish	/ə'bɔliʃ/	vt.废除(法律、习惯等);取消\r\nabound	/ə'baund/	vi.大量存在;(~in,~with)充满,富于\r\nabout	/ə'baut/	ad.在周围;大约prep.关于;在周围a.准备\r\nabove	/ə'bʌv/	a.上述的ad.在上面,在前文prep.在..之上,高于\r\nabroad	/ə'brɔ:d/	ad.到国外,在国外;在传播,在流传\r\n";
  let arr=cet6String.split('\r\n');
  for (let i=0;i<arr.length-1;i++){
    let obj={};
    let aarr=arr[i].split('\t');
    obj.yw=aarr[0];
    obj.dy=aarr[1];
    obj.zs=aarr[2];
    CET6.push(obj);
  }
  let Model = {
    pos : 0 ,
    printWord: function() {
      select('p#yw').textContent = CET6[Model.pos].yw;
      select('p#dy').textContent = CET6[Model.pos].dy;
      select('p#zs').textContent = CET6[Model.pos].zs;
    } ,
  }
  select('button#a001').onclick = function(){
    let r = Math.floor(CET6.length * Math.random()) ;
    Model.pos = r ;
    Model.printWord() ;
  }
  select('button#a002').onclick = function(){
    if( Model.pos < CET6.length -1){
      Model.pos ++ ;
    }else{
      Model.pos = 0 ;
    }
    Model.printWord() ;
  }
  select('button#a003').onclick = function(){
    Model.pos = CET6.length - 1  ;
    Model.printWord() ;
  }
  select('button#a004').onclick = function(){
    Model.pos = CET6.length + 1  ;
    Model.printWord() ;
  }
</script>
</html>
