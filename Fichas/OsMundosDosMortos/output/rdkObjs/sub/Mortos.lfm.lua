require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newOsMundosDosMortosfrm()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("OsMundosDosMortosfrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.OsMundosDosMortos");
    obj:setTitle("Ficha Os Mundos Dos Mortos");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Base");
    obj.tab1:setName("tab1");

    obj.OsMundosDosMortos1 = gui.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos1:setParent(obj.tab1);
    obj.OsMundosDosMortos1:setName("OsMundosDosMortos1");
    obj.OsMundosDosMortos1:setAlign("client");
    obj.OsMundosDosMortos1:setTheme("dark");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.OsMundosDosMortos1);
    obj.image1:setAlign("client");
    obj.image1:setField("backgroundimg");
    obj.image1:setStyle("stretch");
    obj.image1:setSRC("");
    obj.image1:setName("image1");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.OsMundosDosMortos1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(373);
    obj.rectangle1:setTop(33);
    obj.rectangle1:setWidth(135);
    obj.rectangle1:setHeight(135);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setLeft(401);
    obj.label1:setTop(65);
    obj.label1:setWidth(80);
    obj.label1:setHeight(60);
    obj.label1:setText("Sem Avatar");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setSRC("");
    obj.image2:setLeft(373);
    obj.image2:setTop(33);
    obj.image2:setWidth(135);
    obj.image2:setHeight(135);
    obj.image2:setName("image2");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("gray");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(8);
    obj.label2:setTop(5);
    obj.label2:setWidth(138);
    obj.label2:setHeight(20);
    obj.label2:setText("Dados do Personagem");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setLeft(780);
    obj.button1:setTop(2);
    obj.button1:setWidth(40);
    obj.button1:setHeight(25);
    obj.button1:setHint("Bloqueia a ficha.");
    obj.button1:setText("Lock");
    obj.button1:setCanFocus(false);
    obj.button1:setName("button1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(830);
    obj.button2:setTop(2);
    obj.button2:setWidth(40);
    obj.button2:setHeight(25);
    obj.button2:setText("BG");
    obj.button2:setHitTest(true);
    obj.button2:setCanFocus(false);
    obj.button2:setHint("Altera a imagem de fundo da ficha.");
    obj.button2:setName("button2");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(170);
    obj.layout2:setWidth(880);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("gray");
    obj.rectangle3:setName("rectangle3");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(8);
    obj.label3:setTop(5);
    obj.label3:setWidth(138);
    obj.label3:setHeight(20);
    obj.label3:setText("Tendências");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(640);
    obj.label4:setTop(5);
    obj.label4:setWidth(138);
    obj.label4:setHeight(20);
    obj.label4:setText("Pontos de Experiência:");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(780);
    obj.edit1:setTop(2);
    obj.edit1:setWidth(40);
    obj.edit1:setHeight(25);
    obj.edit1:setType("number");
    obj.edit1:setField("exptotal");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setLeft(830);
    obj.edit2:setTop(2);
    obj.edit2:setWidth(40);
    obj.edit2:setHeight(25);
    obj.edit2:setType("number");
    obj.edit2:setField("expatual");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(415);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("gray");
    obj.rectangle4:setName("rectangle4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(8);
    obj.label5:setTop(5);
    obj.label5:setWidth(168);
    obj.label5:setHeight(20);
    obj.label5:setText("Habilidades");
    obj.label5:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(38);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(125);
    obj.layout4:setName("layout4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(5);
    obj.layout5:setTop(5);
    obj.layout5:setWidth(290);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout5);
    obj.label6:setLeft(8);
    obj.label6:setTop(5);
    obj.label6:setWidth(77);
    obj.label6:setHeight(20);
    obj.label6:setText("Nome");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(13);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout5);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("nome");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(580);
    obj.layout6:setTop(5);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(80);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setLeft(8);
    obj.label7:setTop(5);
    obj.label7:setWidth(77);
    obj.label7:setHeight(20);
    obj.label7:setText("Classe");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(13);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout6);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("classe");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(5);
    obj.layout7:setTop(35);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout7);
    obj.label8:setLeft(8);
    obj.label8:setTop(5);
    obj.label8:setWidth(77);
    obj.label8:setHeight(20);
    obj.label8:setText("Natureza");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(13);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout7);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("natureza");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(580);
    obj.layout8:setTop(35);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout8);
    obj.label9:setLeft(8);
    obj.label9:setTop(5);
    obj.label9:setWidth(77);
    obj.label9:setHeight(20);
    obj.label9:setText("Nv da Classe");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(12);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout8);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("nvclasse");
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(5);
    obj.layout9:setTop(65);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(8);
    obj.label10:setTop(5);
    obj.label10:setWidth(77);
    obj.label10:setHeight(20);
    obj.label10:setText("Conceito");
    obj.label10:setHorzTextAlign("leading");
    obj.label10:setFontSize(13);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout9);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("conceito");
    obj.edit7:setType("text");
    obj.edit7:setName("edit7");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout4);
    obj.layout10:setLeft(580);
    obj.layout10:setTop(65);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout10);
    obj.label11:setLeft(8);
    obj.label11:setTop(5);
    obj.label11:setWidth(77);
    obj.label11:setHeight(20);
    obj.label11:setText("Tribo");
    obj.label11:setHorzTextAlign("leading");
    obj.label11:setFontSize(13);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout10);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("tribo");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout4);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(95);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout11);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout11);
    obj.label12:setLeft(8);
    obj.label12:setTop(5);
    obj.label12:setWidth(77);
    obj.label12:setHeight(20);
    obj.label12:setText("Recurso");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(13);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout11);
    obj.edit9:setLeft(90);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(200);
    obj.edit9:setHeight(25);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("recurso");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout4);
    obj.layout12:setLeft(580);
    obj.layout12:setTop(95);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout12);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout12);
    obj.label13:setLeft(8);
    obj.label13:setTop(5);
    obj.label13:setWidth(77);
    obj.label13:setHeight(20);
    obj.label13:setText("Idade");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(13);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout12);
    obj.edit10:setLeft(90);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(200);
    obj.edit10:setHeight(25);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setField("idade");
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setTop(211);
    obj.layout13:setWidth(880);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout13);
    obj.rectangle13:setLeft(8);
    obj.rectangle13:setColor("Silver");
    obj.rectangle13:setWidth(235);
    obj.rectangle13:setName("rectangle13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout13);
    obj.label14:setLeft(23);
    obj.label14:setTop(2);
    obj.label14:setWidth(220);
    obj.label14:setHeight(20);
    obj.label14:setText("======= Tendências =======");
    obj.label14:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout13);
    obj.rectangle14:setLeft(254);
    obj.rectangle14:setColor("Silver");
    obj.rectangle14:setWidth(370);
    obj.rectangle14:setName("rectangle14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout13);
    obj.label15:setLeft(267);
    obj.label15:setTop(2);
    obj.label15:setWidth(355);
    obj.label15:setHeight(20);
    obj.label15:setText("================ Limites ================");
    obj.label15:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setName("label15");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout13);
    obj.rectangle15:setLeft(635);
    obj.rectangle15:setColor("Silver");
    obj.rectangle15:setWidth(235);
    obj.rectangle15:setName("rectangle15");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout13);
    obj.label16:setLeft(650);
    obj.label16:setTop(2);
    obj.label16:setWidth(235);
    obj.label16:setHeight(20);
    obj.label16:setText("======================");
    obj.label16:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setName("label16");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(8);
    obj.layout14:setTop(245);
    obj.layout14:setWidth(235);
    obj.layout14:setHeight(160);
    obj.layout14:setName("layout14");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout14);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setName("rectangle16");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setLeft(86);
    obj.label17:setTop(11);
    obj.label17:setWidth(65);
    obj.label17:setHeight(20);
    obj.label17:setText("Músculos");
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontSize(14);
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.checkBox1 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout14);
    obj.checkBox1:setField("musc1");
    obj.checkBox1:setLeft(17);
    obj.checkBox1:setTop(30);
    obj.checkBox1:setName("checkBox1");

    obj.checkBox2 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox2:setParent(obj.layout14);
    obj.checkBox2:setField("musc2");
    obj.checkBox2:setLeft(37);
    obj.checkBox2:setTop(30);
    obj.checkBox2:setName("checkBox2");

    obj.checkBox3 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox3:setParent(obj.layout14);
    obj.checkBox3:setField("musc3");
    obj.checkBox3:setLeft(57);
    obj.checkBox3:setTop(30);
    obj.checkBox3:setName("checkBox3");

    obj.checkBox4 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox4:setParent(obj.layout14);
    obj.checkBox4:setField("musc4");
    obj.checkBox4:setLeft(77);
    obj.checkBox4:setTop(30);
    obj.checkBox4:setName("checkBox4");

    obj.checkBox5 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox5:setParent(obj.layout14);
    obj.checkBox5:setField("musc5");
    obj.checkBox5:setLeft(97);
    obj.checkBox5:setTop(30);
    obj.checkBox5:setName("checkBox5");

    obj.checkBox6 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox6:setParent(obj.layout14);
    obj.checkBox6:setField("musc6");
    obj.checkBox6:setLeft(117);
    obj.checkBox6:setTop(30);
    obj.checkBox6:setName("checkBox6");

    obj.checkBox7 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox7:setParent(obj.layout14);
    obj.checkBox7:setField("musc7");
    obj.checkBox7:setLeft(137);
    obj.checkBox7:setTop(30);
    obj.checkBox7:setName("checkBox7");

    obj.checkBox8 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox8:setParent(obj.layout14);
    obj.checkBox8:setField("musc8");
    obj.checkBox8:setLeft(157);
    obj.checkBox8:setTop(30);
    obj.checkBox8:setName("checkBox8");

    obj.checkBox9 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox9:setParent(obj.layout14);
    obj.checkBox9:setField("musc9");
    obj.checkBox9:setLeft(177);
    obj.checkBox9:setTop(30);
    obj.checkBox9:setName("checkBox9");

    obj.checkBox10 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox10:setParent(obj.layout14);
    obj.checkBox10:setField("musc10");
    obj.checkBox10:setLeft(197);
    obj.checkBox10:setTop(30);
    obj.checkBox10:setName("checkBox10");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout14);
    obj.label18:setLeft(91);
    obj.label18:setTop(56);
    obj.label18:setWidth(60);
    obj.label18:setHeight(20);
    obj.label18:setText("Cérebro");
    obj.label18:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontSize(14);
    obj.label18:setFontColor("black");
    obj.label18:setName("label18");

    obj.checkBox11 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox11:setParent(obj.layout14);
    obj.checkBox11:setField("cereb1");
    obj.checkBox11:setLeft(17);
    obj.checkBox11:setTop(75);
    obj.checkBox11:setName("checkBox11");

    obj.checkBox12 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox12:setParent(obj.layout14);
    obj.checkBox12:setField("cereb2");
    obj.checkBox12:setLeft(37);
    obj.checkBox12:setTop(75);
    obj.checkBox12:setName("checkBox12");

    obj.checkBox13 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox13:setParent(obj.layout14);
    obj.checkBox13:setField("cereb3");
    obj.checkBox13:setLeft(57);
    obj.checkBox13:setTop(75);
    obj.checkBox13:setName("checkBox13");

    obj.checkBox14 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox14:setParent(obj.layout14);
    obj.checkBox14:setField("cereb4");
    obj.checkBox14:setLeft(77);
    obj.checkBox14:setTop(75);
    obj.checkBox14:setName("checkBox14");

    obj.checkBox15 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox15:setParent(obj.layout14);
    obj.checkBox15:setField("cereb5");
    obj.checkBox15:setLeft(97);
    obj.checkBox15:setTop(75);
    obj.checkBox15:setName("checkBox15");

    obj.checkBox16 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox16:setParent(obj.layout14);
    obj.checkBox16:setField("cereb6");
    obj.checkBox16:setLeft(117);
    obj.checkBox16:setTop(75);
    obj.checkBox16:setName("checkBox16");

    obj.checkBox17 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox17:setParent(obj.layout14);
    obj.checkBox17:setField("cereb7");
    obj.checkBox17:setLeft(137);
    obj.checkBox17:setTop(75);
    obj.checkBox17:setName("checkBox17");

    obj.checkBox18 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox18:setParent(obj.layout14);
    obj.checkBox18:setField("cereb8");
    obj.checkBox18:setLeft(157);
    obj.checkBox18:setTop(75);
    obj.checkBox18:setName("checkBox18");

    obj.checkBox19 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox19:setParent(obj.layout14);
    obj.checkBox19:setField("cereb9");
    obj.checkBox19:setLeft(177);
    obj.checkBox19:setTop(75);
    obj.checkBox19:setName("checkBox19");

    obj.checkBox20 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox20:setParent(obj.layout14);
    obj.checkBox20:setField("cereb10");
    obj.checkBox20:setLeft(197);
    obj.checkBox20:setTop(75);
    obj.checkBox20:setName("checkBox20");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout14);
    obj.label19:setLeft(91);
    obj.label19:setTop(101);
    obj.label19:setWidth(60);
    obj.label19:setHeight(20);
    obj.label19:setText("Coração");
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontSize(14);
    obj.label19:setFontColor("black");
    obj.label19:setName("label19");

    obj.checkBox21 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox21:setParent(obj.layout14);
    obj.checkBox21:setField("corac1");
    obj.checkBox21:setLeft(17);
    obj.checkBox21:setTop(120);
    obj.checkBox21:setName("checkBox21");

    obj.checkBox22 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox22:setParent(obj.layout14);
    obj.checkBox22:setField("corac2");
    obj.checkBox22:setLeft(37);
    obj.checkBox22:setTop(120);
    obj.checkBox22:setName("checkBox22");

    obj.checkBox23 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox23:setParent(obj.layout14);
    obj.checkBox23:setField("corac3");
    obj.checkBox23:setLeft(57);
    obj.checkBox23:setTop(120);
    obj.checkBox23:setName("checkBox23");

    obj.checkBox24 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox24:setParent(obj.layout14);
    obj.checkBox24:setField("corac4");
    obj.checkBox24:setLeft(77);
    obj.checkBox24:setTop(120);
    obj.checkBox24:setName("checkBox24");

    obj.checkBox25 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox25:setParent(obj.layout14);
    obj.checkBox25:setField("corac5");
    obj.checkBox25:setLeft(97);
    obj.checkBox25:setTop(120);
    obj.checkBox25:setName("checkBox25");

    obj.checkBox26 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox26:setParent(obj.layout14);
    obj.checkBox26:setField("corac6");
    obj.checkBox26:setLeft(117);
    obj.checkBox26:setTop(120);
    obj.checkBox26:setName("checkBox26");

    obj.checkBox27 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox27:setParent(obj.layout14);
    obj.checkBox27:setField("corac7");
    obj.checkBox27:setLeft(137);
    obj.checkBox27:setTop(120);
    obj.checkBox27:setName("checkBox27");

    obj.checkBox28 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox28:setParent(obj.layout14);
    obj.checkBox28:setField("corac8");
    obj.checkBox28:setLeft(157);
    obj.checkBox28:setTop(120);
    obj.checkBox28:setName("checkBox28");

    obj.checkBox29 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox29:setParent(obj.layout14);
    obj.checkBox29:setField("corac9");
    obj.checkBox29:setLeft(177);
    obj.checkBox29:setTop(120);
    obj.checkBox29:setName("checkBox29");

    obj.checkBox30 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox30:setParent(obj.layout14);
    obj.checkBox30:setField("corac10");
    obj.checkBox30:setLeft(197);
    obj.checkBox30:setTop(120);
    obj.checkBox30:setName("checkBox30");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setLeft(254);
    obj.layout15:setTop(245);
    obj.layout15:setWidth(370);
    obj.layout15:setHeight(160);
    obj.layout15:setName("layout15");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout15);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setName("rectangle17");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout15);
    obj.label20:setLeft(38);
    obj.label20:setTop(11);
    obj.label20:setWidth(70);
    obj.label20:setHeight(20);
    obj.label20:setText("Sanidade");
    obj.label20:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontSize(15);
    obj.label20:setFontColor("black");
    obj.label20:setName("label20");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout15);
    obj.edit11:setField("sanidade");
    obj.edit11:setLeft(50);
    obj.edit11:setTop(32);
    obj.edit11:setWidth(40);
    obj.edit11:setHeight(40);
    obj.edit11:setFontSize(16);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setType("number");
    obj.edit11:setMax(999);
    obj.edit11:setTransparent(true);
    obj.edit11:setFontColor("black");
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setName("edit11");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout15);
    obj.label21:setLeft(25);
    obj.label21:setTop(81);
    obj.label21:setWidth(100);
    obj.label21:setHeight(20);
    obj.label21:setText("Autocontrole");
    obj.label21:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontSize(15);
    obj.label21:setFontColor("black");
    obj.label21:setName("label21");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout15);
    obj.edit12:setField("autocontrole");
    obj.edit12:setLeft(50);
    obj.edit12:setTop(102);
    obj.edit12:setWidth(40);
    obj.edit12:setHeight(40);
    obj.edit12:setFontSize(16);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setType("number");
    obj.edit12:setMax(999);
    obj.edit12:setTransparent(true);
    obj.edit12:setFontColor("black");
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout15);
    obj.label22:setLeft(125);
    obj.label22:setTop(46);
    obj.label22:setWidth(130);
    obj.label22:setHeight(20);
    obj.label22:setText("Força de Vontade");
    obj.label22:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontSize(15);
    obj.label22:setFontColor("black");
    obj.label22:setName("label22");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout15);
    obj.edit13:setField("forcadevontade");
    obj.edit13:setLeft(165);
    obj.edit13:setTop(67);
    obj.edit13:setWidth(40);
    obj.edit13:setHeight(40);
    obj.edit13:setFontSize(16);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setType("number");
    obj.edit13:setMax(999);
    obj.edit13:setTransparent(true);
    obj.edit13:setFontColor("black");
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setName("edit13");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout15);
    obj.label23:setLeft(273);
    obj.label23:setTop(11);
    obj.label23:setWidth(70);
    obj.label23:setHeight(20);
    obj.label23:setText("Energia");
    obj.label23:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontSize(15);
    obj.label23:setFontColor("black");
    obj.label23:setName("label23");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout15);
    obj.edit14:setField("energia");
    obj.edit14:setLeft(280);
    obj.edit14:setTop(32);
    obj.edit14:setWidth(40);
    obj.edit14:setHeight(40);
    obj.edit14:setFontSize(16);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setType("number");
    obj.edit14:setMax(999);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontColor("black");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout15);
    obj.label24:setLeft(248);
    obj.label24:setTop(81);
    obj.label24:setWidth(130);
    obj.label24:setHeight(20);
    obj.label24:setText("Pontos de Vida");
    obj.label24:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontSize(15);
    obj.label24:setFontColor("black");
    obj.label24:setName("label24");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout15);
    obj.edit15:setField("pontosdevida");
    obj.edit15:setLeft(280);
    obj.edit15:setTop(102);
    obj.edit15:setWidth(40);
    obj.edit15:setHeight(40);
    obj.edit15:setFontSize(16);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setType("number");
    obj.edit15:setMax(999);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontColor("black");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(635);
    obj.layout16:setTop(245);
    obj.layout16:setWidth(235);
    obj.layout16:setHeight(160);
    obj.layout16:setName("layout16");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout16);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setName("rectangle18");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(10);
    obj.layout17:setTop(457);
    obj.layout17:setWidth(860);
    obj.layout17:setHeight(320);
    obj.layout17:setName("layout17");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout17);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setName("rectangle19");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Verso");
    obj.tab2:setName("tab2");

    obj.OsMundosDosMortos2 = gui.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortos2:setParent(obj.tab2);
    obj.OsMundosDosMortos2:setName("OsMundosDosMortos2");
    obj.OsMundosDosMortos2:setAlign("client");
    obj.OsMundosDosMortos2:setTheme("dark");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.OsMundosDosMortos2);
    obj.image3:setAlign("client");
    obj.image3:setField("backgroundimg");
    obj.image3:setStyle("stretch");
    obj.image3:setSRC("");
    obj.image3:setName("image3");

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.OsMundosDosMortos2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Créditos");
    obj.tab3:setName("tab3");

    obj.OsMundosDosMortosC = gui.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortosC:setParent(obj.tab3);
    obj.OsMundosDosMortosC:setName("OsMundosDosMortosC");
    obj.OsMundosDosMortosC:setAlign("client");
    obj.OsMundosDosMortosC:setTheme("dark");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.OsMundosDosMortosC);
    obj.rectangle20:setAlign("top");
    obj.rectangle20:setHeight(30);
    obj.rectangle20:setColor("gray");
    obj.rectangle20:setName("rectangle20");

    obj.flowLayout1 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.OsMundosDosMortosC);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(500);
    obj.flowPart1:setMaxWidth(510);
    obj.flowPart1:setHeight(350);
    obj.flowPart1:setName("flowPart1");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.flowPart1);
    obj.rectangle21:setTop(10);
    obj.rectangle21:setWidth(500);
    obj.rectangle21:setHeight(200);
    obj.rectangle21:setColor("Gray");
    obj.rectangle21:setXradius(10);
    obj.rectangle21:setYradius(10);
    obj.rectangle21:setName("rectangle21");

    obj.path1 = gui.fromHandle(_obj_newObject("path"));
    obj.path1:setParent(obj.flowPart1);
    obj.path1:setLeft(10);
    obj.path1:setTop(20);
    obj.path1:setWidth(150);
    obj.path1:setHeight(177);
    obj.path1:setRoundToPixel(true);
    obj.path1:setRotationAngle(180.0);
    obj.path1:setMargins({left=10, right=10, bottom=10, top=10});
    obj.path1:setMode("fit");
    obj.path1:setColor("Black");
    obj.path1:setPathData("M360 2430 c0 -5 -6 -9 -12 -7 -8 1 -12 -6 -10 -17 2 -10 0 -16 -5 -13 -5 3 -9 -2 -10 -11 -1 -26 -76 -191 -84 -186 -4 2 -5 -6 -1 -18 4 -16 2 -19 -8 -13 -10 6 -12 3 -8 -13 4 -13 -3 -40 -14 -63 -38 -79 -106 -449 -96 -525 2 -16 7 7 12 51 4 44 20 143 34 220 l27 140 6 -210 c4 -115 11 -221 17 -235 6 -14 11 -18 11 -10 1 16 53 -88 54 -107 0 -7 4 -10 9 -7 4 3 8 -3 8 -13 0 -33 -28 -188 -39 -216 -15 -39 -13 -47 4 -15 16 28 64 254 67 310 0 18 4 -7 8 -57 10 -130 21 -185 31 -160 l8 20 1 -20 c2 -17 3 -16 10 5 7 21 8 22 9 5 2 -19 2 -19 12 -1 10 16 14 12 33 -35 12 -30 28 -54 35 -54 8 0 18 -13 22 -28 6 -23 5 -26 -6 -17 -7 6 -16 7 -19 2 -12 -20 -7 -110 8 -152 32 -85 65 -185 62 -188 -6 -6 -45 68 -56 105 -13 46 -39 94 -40 73 0 -13 -1 -13 -11 0 -19 28 2 -31 38 -105 18 -38 44 -81 57 -95 20 -21 26 -43 36 -133 7 -59 18 -133 25 -163 12 -53 11 -58 -11 -97 -13 -23 -24 -54 -24 -69 0 -46 -16 -40 -37 15 -59 146 -74 231 -81 431 -3 101 -9 178 -17 192 -9 18 -11 -4 -9 -119 3 -202 45 -411 109 -549 14 -29 25 -69 25 -88 0 -19 8 -70 17 -112 l16 -78 744 0 743 0 0 1060 c0 1062 -2 1116 -34 1104 -20 -8 -64 120 -45 132 5 3 9 14 9 25 0 23 -52 129 -56 114 -1 -5 -5 -23 -9 -40 -7 -27 -8 -28 -15 -10 -12 28 -12 37 0 30 6 -3 7 1 4 9 -8 21 -31 20 -42 0 -8 -15 -10 -15 -15 0 -6 14 -37 16 -273 16 l-266 0 7 -27 c4 -16 3 -25 -1 -21 -4 4 -13 0 -20 -10 -12 -16 -13 -16 -14 0 0 9 5 20 10 23 6 3 10 13 10 21 0 11 -25 14 -144 14 -142 0 -145 0 -149 -22 l-4 -23 -2 23 c0 12 -7 22 -15 22 -9 0 -12 -7 -10 -18 3 -9 1 -28 -5 -42 -9 -23 -10 -21 -10 18 l-1 42 -205 0 c-171 0 -203 -2 -199 -14 3 -8 1 -17 -5 -21 -7 -3 -11 3 -11 15 0 19 -5 21 -52 18 -45 -3 -52 -6 -53 -25 -2 -21 -34 -67 -42 -59 -2 2 1 16 7 32 14 35 5 27 -26 -23 -32 -52 -30 -27 2 31 l26 46 -26 0 c-14 0 -26 -4 -26 -10z m343 -442 c4 -62 3 -68 -14 -68 -11 0 -19 -5 -19 -11 0 -6 8 -8 19 -4 38 12 30 -13 -12 -39 -36 -22 -39 -25 -18 -26 19 0 21 -3 12 -14 -10 -12 -6 -15 18 -21 35 -7 40 -18 36 -74 l-4 -44 59 6 c59 7 130 33 130 50 0 4 -9 6 -19 2 -16 -5 -18 -2 -14 16 5 18 3 21 -11 16 -10 -4 -15 -3 -11 3 3 6 12 10 19 10 8 0 16 10 19 21 5 19 11 21 38 15 44 -9 46 -12 18 -42 l-24 -26 25 7 c14 4 41 22 60 41 20 19 40 34 46 34 6 0 21 -34 34 -76 23 -72 48 -118 30 -52 -14 45 -4 47 10 2 24 -72 0 -297 -44 -429 -4 -11 0 -7 10 10 21 36 44 119 44 160 0 23 3 27 10 15 5 -8 10 -53 11 -100 2 -79 2 -82 9 -35 5 28 9 86 10 130 l2 80 14 -50 13 -50 -5 55 c-3 30 -9 89 -13 130 -5 41 -7 76 -6 78 6 7 35 -31 30 -39 -4 -5 -1 -9 4 -9 7 0 11 -37 11 -103 0 -106 -26 -239 -55 -280 -7 -11 -11 -26 -8 -34 3 -8 0 -13 -7 -11 -6 2 -19 -8 -27 -22 l-15 -25 21 24 c28 31 26 19 -5 -35 -14 -24 -31 -41 -36 -37 -7 3 -8 1 -4 -6 4 -6 2 -20 -4 -29 -7 -9 3 0 21 20 75 82 159 287 159 389 0 45 17 42 29 -6 12 -47 15 -224 5 -297 -6 -43 -9 -46 -83 -91 -180 -109 -433 -181 -595 -170 -44 3 -61 27 -99 143 -90 274 -105 346 -69 333 9 -4 -7 16 -35 43 -29 28 -53 55 -53 62 0 6 27 41 60 77 42 47 61 77 65 103 9 50 13 61 14 35 1 -12 5 -24 10 -27 4 -3 6 6 3 19 -3 20 -1 24 12 19 12 -4 22 7 40 48 l24 53 2 -50 3 -50 7 40 c34 180 52 244 73 257 15 9 14 13 20 -64z m-438 -106 c1 -126 5 -182 18 -229 17 -61 21 -223 6 -223 -18 0 -66 171 -75 270 -7 77 8 219 33 296 9 30 17 54 17 54 1 0 1 -75 1 -168z m1000 -871 c-14 -56 -35 -124 -46 -153 -11 -28 -18 -52 -16 -55 7 -7 47 96 65 165 17 66 17 66 20 27 5 -53 -15 -171 -39 -241 -11 -31 -17 -65 -14 -77 5 -16 4 -18 -3 -8 -8 11 -14 6 -27 -24 -8 -22 -23 -47 -32 -57 -9 -10 -13 -18 -10 -18 4 0 20 19 37 42 16 22 30 36 30 30 0 -13 -112 -182 -120 -182 -13 0 -45 87 -105 291 -9 30 -32 77 -51 105 l-34 49 33 28 c17 15 61 41 97 58 112 53 209 103 205 108 -3 2 3 10 13 17 9 7 18 9 20 4 2 -4 -9 -53 -23 -109z");
    obj.path1:setName("path1");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.flowPart1);
    obj.layout18:setLeft(140);
    obj.layout18:setTop(28);
    obj.layout18:setWidth(250);
    obj.layout18:setHeight(200);
    obj.layout18:setName("layout18");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout18);
    obj.label25:setLeft(0);
    obj.label25:setTop(30);
    obj.label25:setWidth(250);
    obj.label25:setFontColor("silver");
    obj.label25:setHeight(20);
    obj.label25:setText("Programador: CastielAngels");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout18);
    obj.label26:setLeft(0);
    obj.label26:setTop(55);
    obj.label26:setWidth(250);
    obj.label26:setFontColor("silver");
    obj.label26:setHeight(20);
    obj.label26:setText("Os Mundos Dos Mortos RRPG Firecast");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setName("label26");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout18);
    obj.label27:setLeft(0);
    obj.label27:setTop(80);
    obj.label27:setWidth(250);
    obj.label27:setFontColor("silver");
    obj.label27:setHeight(20);
    obj.label27:setText("Versão: 1.0b");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setFontSize(13);
    obj.label27:setName("label27");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout18);
    obj.label28:setLeft(0);
    obj.label28:setTop(105);
    obj.label28:setWidth(250);
    obj.label28:setFontColor("silver");
    obj.label28:setHeight(20);
    obj.label28:setText("Por favor, mantenha seu plugin atualizado.");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setFontSize(13);
    obj.label28:setName("label28");

    obj._e_event0 = obj.button2:addEventListener("onClick",
        function (self)
            Dialogs.selectImageURL('', function(url) sheet.backgroundimg = url end)
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.checkBox15 ~= nil then self.checkBox15:destroy(); self.checkBox15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.checkBox18 ~= nil then self.checkBox18:destroy(); self.checkBox18 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.checkBox29 ~= nil then self.checkBox29:destroy(); self.checkBox29 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.checkBox27 ~= nil then self.checkBox27:destroy(); self.checkBox27 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.checkBox11 ~= nil then self.checkBox11:destroy(); self.checkBox11 = nil; end;
        if self.checkBox6 ~= nil then self.checkBox6:destroy(); self.checkBox6 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.checkBox7 ~= nil then self.checkBox7:destroy(); self.checkBox7 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.checkBox8 ~= nil then self.checkBox8:destroy(); self.checkBox8 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.checkBox17 ~= nil then self.checkBox17:destroy(); self.checkBox17 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.checkBox16 ~= nil then self.checkBox16:destroy(); self.checkBox16 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.checkBox20 ~= nil then self.checkBox20:destroy(); self.checkBox20 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.checkBox9 ~= nil then self.checkBox9:destroy(); self.checkBox9 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.checkBox5 ~= nil then self.checkBox5:destroy(); self.checkBox5 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.checkBox14 ~= nil then self.checkBox14:destroy(); self.checkBox14 = nil; end;
        if self.OsMundosDosMortos2 ~= nil then self.OsMundosDosMortos2:destroy(); self.OsMundosDosMortos2 = nil; end;
        if self.checkBox3 ~= nil then self.checkBox3:destroy(); self.checkBox3 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.checkBox21 ~= nil then self.checkBox21:destroy(); self.checkBox21 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.checkBox12 ~= nil then self.checkBox12:destroy(); self.checkBox12 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.OsMundosDosMortos1 ~= nil then self.OsMundosDosMortos1:destroy(); self.OsMundosDosMortos1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.checkBox22 ~= nil then self.checkBox22:destroy(); self.checkBox22 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.checkBox24 ~= nil then self.checkBox24:destroy(); self.checkBox24 = nil; end;
        if self.checkBox2 ~= nil then self.checkBox2:destroy(); self.checkBox2 = nil; end;
        if self.checkBox19 ~= nil then self.checkBox19:destroy(); self.checkBox19 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.checkBox23 ~= nil then self.checkBox23:destroy(); self.checkBox23 = nil; end;
        if self.checkBox25 ~= nil then self.checkBox25:destroy(); self.checkBox25 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.checkBox13 ~= nil then self.checkBox13:destroy(); self.checkBox13 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.checkBox26 ~= nil then self.checkBox26:destroy(); self.checkBox26 = nil; end;
        if self.checkBox28 ~= nil then self.checkBox28:destroy(); self.checkBox28 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.OsMundosDosMortosC ~= nil then self.OsMundosDosMortosC:destroy(); self.OsMundosDosMortosC = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.checkBox10 ~= nil then self.checkBox10:destroy(); self.checkBox10 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.checkBox4 ~= nil then self.checkBox4:destroy(); self.checkBox4 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.checkBox30 ~= nil then self.checkBox30:destroy(); self.checkBox30 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _OsMundosDosMortosfrm = {
    newEditor = newOsMundosDosMortosfrm, 
    new = newOsMundosDosMortosfrm, 
    name = "OsMundosDosMortosfrm", 
    dataType = "Cast.OsMundosDosMortos", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Os Mundos Dos Mortos", 
    description=""};

OsMundosDosMortosfrm = _OsMundosDosMortosfrm;
rrpg.registrarForm(_OsMundosDosMortosfrm);
rrpg.registrarDataType(_OsMundosDosMortosfrm);

return _OsMundosDosMortosfrm;
