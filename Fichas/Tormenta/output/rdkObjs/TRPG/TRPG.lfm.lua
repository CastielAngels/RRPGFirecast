require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_TormentaCastfrm()
    local obj = GUI.fromHandle(_obj_newObject("form"));
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
    obj:setName("TormentaCastfrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.Tormenta.RPGFirecast");
    obj:setTitle("Ficha Tormenta RPG");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Características");
    obj.tab1:setName("tab1");

    obj.Tormenta01 = GUI.fromHandle(_obj_newObject("form"));
    obj.Tormenta01:setParent(obj.tab1);
    obj.Tormenta01:setName("Tormenta01");
    obj.Tormenta01:setAlign("client");
    obj.Tormenta01:setTheme("dark");
    obj.Tormenta01:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.Tormenta01);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(530);
    obj.image1:setTop(30);
    obj.image1:setWidth(400);
    obj.image1:setHeight(147);
    obj.image1:setSRC("/TRPG/img/LogoTormenta.png");
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(305);
    obj.layout1:setHeight(55);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(7);
    obj.rectangle2:setTop(1);
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setWidth(170);
    obj.rectangle2:setHeight(23);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(13);
    obj.label1:setTop(1);
    obj.label1:setWidth(170);
    obj.label1:setHeight(20);
    obj.label1:setFontSize(15.0);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setText("Nome do Personagem");
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nome");
    obj.edit1:setLeft(1);
    obj.edit1:setTop(23);
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(30);
    obj.edit1:setFontSize(15.0);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(67);
    obj.layout2:setWidth(155);
    obj.layout2:setHeight(55);
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(7);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(46);
    obj.rectangle3:setHeight(23);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(13);
    obj.label2:setTop(1);
    obj.label2:setWidth(170);
    obj.label2:setHeight(20);
    obj.label2:setFontSize(15.0);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setText("Raça");
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setField("raca");
    obj.edit2:setLeft(1);
    obj.edit2:setTop(23);
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(30);
    obj.edit2:setFontSize(15.0);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setName("edit2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(124);
    obj.layout3:setWidth(105);
    obj.layout3:setHeight(55);
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(7);
    obj.rectangle4:setTop(1);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(51);
    obj.rectangle4:setHeight(23);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout3);
    obj.label3:setLeft(13);
    obj.label3:setTop(1);
    obj.label3:setWidth(170);
    obj.label3:setHeight(20);
    obj.label3:setFontSize(15.0);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setText("Idade");
    obj.label3:setName("label3");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout3);
    obj.edit3:setField("idade");
    obj.edit3:setLeft(1);
    obj.edit3:setTop(23);
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(30);
    obj.edit3:setFontSize(15.0);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setType("number");
    obj.edit3:setName("edit3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(165);
    obj.layout4:setTop(67);
    obj.layout4:setWidth(150);
    obj.layout4:setHeight(55);
    obj.layout4:setName("layout4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setLeft(7);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(84);
    obj.rectangle5:setHeight(23);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout4);
    obj.label4:setLeft(13);
    obj.label4:setTop(1);
    obj.label4:setWidth(170);
    obj.label4:setHeight(20);
    obj.label4:setFontSize(15.0);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setText("Tendência");
    obj.label4:setName("label4");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setField("tendencia");
    obj.edit4:setLeft(1);
    obj.edit4:setTop(23);
    obj.edit4:setWidth(145);
    obj.edit4:setHeight(30);
    obj.edit4:setFontSize(15.0);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setName("edit4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(115);
    obj.layout5:setTop(124);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(55);
    obj.layout5:setName("layout5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setLeft(7);
    obj.rectangle6:setTop(1);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(45);
    obj.rectangle6:setHeight(23);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setLeft(13);
    obj.label5:setTop(1);
    obj.label5:setWidth(45);
    obj.label5:setHeight(20);
    obj.label5:setFontSize(15.0);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setText("Sexo");
    obj.label5:setName("label5");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setField("sexo");
    obj.edit5:setLeft(1);
    obj.edit5:setTop(23);
    obj.edit5:setWidth(195);
    obj.edit5:setHeight(30);
    obj.edit5:setFontSize(15.0);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setName("edit5");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(315);
    obj.layout6:setTop(10);
    obj.layout6:setWidth(129);
    obj.layout6:setHeight(55);
    obj.layout6:setName("layout6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(7);
    obj.rectangle7:setTop(1);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(76);
    obj.rectangle7:setHeight(23);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout6);
    obj.label6:setLeft(13);
    obj.label6:setTop(1);
    obj.label6:setWidth(170);
    obj.label6:setHeight(20);
    obj.label6:setFontSize(15.0);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setText("Tamanho");
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setField("tamanho");
    obj.edit6:setLeft(1);
    obj.edit6:setTop(23);
    obj.edit6:setWidth(124);
    obj.edit6:setHeight(30);
    obj.edit6:setFontSize(15.0);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setName("edit6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(315);
    obj.layout7:setTop(67);
    obj.layout7:setWidth(129);
    obj.layout7:setHeight(55);
    obj.layout7:setName("layout7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setLeft(7);
    obj.rectangle8:setTop(1);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(112);
    obj.rectangle8:setHeight(23);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout7);
    obj.label7:setLeft(13);
    obj.label7:setTop(1);
    obj.label7:setWidth(170);
    obj.label7:setHeight(20);
    obj.label7:setFontSize(15.0);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setText("Deslocamento");
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setField("deslocamento");
    obj.edit7:setLeft(1);
    obj.edit7:setTop(23);
    obj.edit7:setWidth(124);
    obj.edit7:setHeight(30);
    obj.edit7:setFontSize(15.0);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setName("edit7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(315);
    obj.layout8:setTop(124);
    obj.layout8:setWidth(129);
    obj.layout8:setHeight(55);
    obj.layout8:setName("layout8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setLeft(7);
    obj.rectangle9:setTop(1);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(84);
    obj.rectangle9:setHeight(23);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout8);
    obj.label8:setLeft(13);
    obj.label8:setTop(1);
    obj.label8:setWidth(170);
    obj.label8:setHeight(20);
    obj.label8:setFontSize(15.0);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setText("Divindade");
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setField("divindade");
    obj.edit8:setLeft(1);
    obj.edit8:setTop(23);
    obj.edit8:setWidth(124);
    obj.edit8:setHeight(30);
    obj.edit8:setFontSize(15.0);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setName("edit8");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(1);
    obj.layout9:setTop(220);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(200);
    obj.layout9:setName("layout9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(57);
    obj.rectangle10:setTop(3);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(60);
    obj.rectangle10:setHeight(15);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout9);
    obj.label9:setLeft(59);
    obj.label9:setTop(5);
    obj.label9:setWidth(65);
    obj.label9:setHeight(8);
    obj.label9:setFontSize(10);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setText("Habilidades");
    obj.label9:setName("label9");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout9);
    obj.rectangle11:setLeft(181);
    obj.rectangle11:setTop(3);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(28);
    obj.rectangle11:setHeight(15);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(183);
    obj.label10:setTop(5);
    obj.label10:setWidth(28);
    obj.label10:setHeight(8);
    obj.label10:setFontSize(10);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setText("Valor");
    obj.label10:setName("label10");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout9);
    obj.rectangle12:setLeft(216);
    obj.rectangle12:setTop(3);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(28);
    obj.rectangle12:setHeight(15);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout9);
    obj.label11:setLeft(219);
    obj.label11:setTop(5);
    obj.label11:setWidth(28);
    obj.label11:setHeight(8);
    obj.label11:setFontSize(10);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setText("Mod");
    obj.label11:setName("label11");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout9);
    obj.rectangle13:setLeft(251);
    obj.rectangle13:setTop(3);
    obj.rectangle13:setColor("Gainsboro");
    obj.rectangle13:setWidth(28);
    obj.rectangle13:setHeight(15);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout9);
    obj.label12:setLeft(253);
    obj.label12:setTop(5);
    obj.label12:setWidth(28);
    obj.label12:setHeight(8);
    obj.label12:setFontSize(10);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setText("Dano");
    obj.label12:setName("label12");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(15);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout10);
    obj.rectangle14:setLeft(5);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(155);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout10);
    obj.label13:setLeft(8);
    obj.label13:setTop(4);
    obj.label13:setWidth(155);
    obj.label13:setHeight(20);
    obj.label13:setText("Força(FOR)");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(15.0);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout10);
    obj.edit9:setLeft(175);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(30);
    obj.edit9:setHeight(25);
    obj.edit9:setField("forca");
    obj.edit9:setType("number");
    obj.edit9:setMax(99);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setFontSize(15.0);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setName("edit9");

    obj.modforca = GUI.fromHandle(_obj_newObject("edit"));
    obj.modforca:setParent(obj.layout10);
    obj.modforca:setLeft(210);
    obj.modforca:setTop(0);
    obj.modforca:setWidth(30);
    obj.modforca:setHeight(25);
    obj.modforca:setName("modforca");
    obj.modforca:setField("modforca");
    obj.modforca:setType("number");
    obj.modforca:setMax(99);
    obj.modforca:setHorzTextAlign("center");
    obj.modforca:setFontSize(15.0);
    lfm_setPropAsString(obj.modforca, "fontStyle",  "bold");
    obj.modforca:setHitTest(false);

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setLeft(245);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(30);
    obj.edit10:setHeight(25);
    obj.edit10:setField("danoforca");
    obj.edit10:setType("number");
    obj.edit10:setMax(99);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(15.0);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(45);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout11);
    obj.rectangle15:setLeft(5);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setColor("Gainsboro");
    obj.rectangle15:setWidth(155);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout11);
    obj.label14:setLeft(8);
    obj.label14:setTop(4);
    obj.label14:setWidth(155);
    obj.label14:setHeight(20);
    obj.label14:setText("Destreza(DES)");
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setFontSize(15.0);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout11);
    obj.edit11:setLeft(175);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(30);
    obj.edit11:setHeight(25);
    obj.edit11:setField("destreza");
    obj.edit11:setType("number");
    obj.edit11:setMax(99);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setFontSize(15.0);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setName("edit11");

    obj.moddestreza = GUI.fromHandle(_obj_newObject("edit"));
    obj.moddestreza:setParent(obj.layout11);
    obj.moddestreza:setLeft(210);
    obj.moddestreza:setTop(0);
    obj.moddestreza:setWidth(30);
    obj.moddestreza:setHeight(25);
    obj.moddestreza:setName("moddestreza");
    obj.moddestreza:setField("moddestreza");
    obj.moddestreza:setType("number");
    obj.moddestreza:setMax(99);
    obj.moddestreza:setHorzTextAlign("center");
    obj.moddestreza:setFontSize(15.0);
    lfm_setPropAsString(obj.moddestreza, "fontStyle",  "bold");
    obj.moddestreza:setHitTest(false);

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout11);
    obj.edit12:setLeft(245);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(30);
    obj.edit12:setHeight(25);
    obj.edit12:setField("danodestreza");
    obj.edit12:setType("number");
    obj.edit12:setMax(99);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(15.0);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(75);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout12);
    obj.rectangle16:setLeft(5);
    obj.rectangle16:setTop(0);
    obj.rectangle16:setColor("Gainsboro");
    obj.rectangle16:setWidth(155);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);
    obj.rectangle16:setName("rectangle16");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout12);
    obj.label15:setLeft(8);
    obj.label15:setTop(4);
    obj.label15:setWidth(155);
    obj.label15:setHeight(20);
    obj.label15:setText("Constituição(CON)");
    obj.label15:setHorzTextAlign("leading");
    obj.label15:setFontSize(15.0);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setName("label15");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout12);
    obj.edit13:setLeft(175);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(30);
    obj.edit13:setHeight(25);
    obj.edit13:setField("constituicao");
    obj.edit13:setType("number");
    obj.edit13:setMax(99);
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setFontSize(15.0);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setName("edit13");

    obj.modconstituicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modconstituicao:setParent(obj.layout12);
    obj.modconstituicao:setLeft(210);
    obj.modconstituicao:setTop(0);
    obj.modconstituicao:setWidth(30);
    obj.modconstituicao:setHeight(25);
    obj.modconstituicao:setName("modconstituicao");
    obj.modconstituicao:setField("modconstituicao");
    obj.modconstituicao:setType("number");
    obj.modconstituicao:setMax(99);
    obj.modconstituicao:setHorzTextAlign("center");
    obj.modconstituicao:setFontSize(15.0);
    lfm_setPropAsString(obj.modconstituicao, "fontStyle",  "bold");
    obj.modconstituicao:setHitTest(false);

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout12);
    obj.edit14:setLeft(245);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(30);
    obj.edit14:setHeight(25);
    obj.edit14:setField("danoconstituicao");
    obj.edit14:setType("number");
    obj.edit14:setMax(99);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(15.0);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout9);
    obj.layout13:setLeft(5);
    obj.layout13:setTop(105);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout13);
    obj.rectangle17:setLeft(5);
    obj.rectangle17:setTop(0);
    obj.rectangle17:setColor("Gainsboro");
    obj.rectangle17:setWidth(155);
    obj.rectangle17:setHeight(25);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout13);
    obj.label16:setLeft(8);
    obj.label16:setTop(4);
    obj.label16:setWidth(155);
    obj.label16:setHeight(20);
    obj.label16:setText("Inteligência(INT)");
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setFontSize(15.0);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setName("label16");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout13);
    obj.edit15:setLeft(175);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(30);
    obj.edit15:setHeight(25);
    obj.edit15:setField("inteligencia");
    obj.edit15:setType("number");
    obj.edit15:setMax(99);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setFontSize(15.0);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");

    obj.modinteligencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modinteligencia:setParent(obj.layout13);
    obj.modinteligencia:setLeft(210);
    obj.modinteligencia:setTop(0);
    obj.modinteligencia:setWidth(30);
    obj.modinteligencia:setHeight(25);
    obj.modinteligencia:setName("modinteligencia");
    obj.modinteligencia:setField("modinteligencia");
    obj.modinteligencia:setType("number");
    obj.modinteligencia:setMax(99);
    obj.modinteligencia:setHorzTextAlign("center");
    obj.modinteligencia:setFontSize(15.0);
    lfm_setPropAsString(obj.modinteligencia, "fontStyle",  "bold");
    obj.modinteligencia:setHitTest(false);

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout13);
    obj.edit16:setLeft(245);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(30);
    obj.edit16:setHeight(25);
    obj.edit16:setField("danointeligencia");
    obj.edit16:setType("number");
    obj.edit16:setMax(99);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(15.0);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout9);
    obj.layout14:setLeft(5);
    obj.layout14:setTop(135);
    obj.layout14:setWidth(290);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout14);
    obj.rectangle18:setLeft(5);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setColor("Gainsboro");
    obj.rectangle18:setWidth(155);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);
    obj.rectangle18:setName("rectangle18");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setLeft(8);
    obj.label17:setTop(4);
    obj.label17:setWidth(155);
    obj.label17:setHeight(20);
    obj.label17:setText("Sabedoria(SAB)");
    obj.label17:setHorzTextAlign("leading");
    obj.label17:setFontSize(15.0);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout14);
    obj.edit17:setLeft(175);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(30);
    obj.edit17:setHeight(25);
    obj.edit17:setField("sabedoria");
    obj.edit17:setType("number");
    obj.edit17:setMax(99);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setFontSize(15.0);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setName("edit17");

    obj.modsabedoria = GUI.fromHandle(_obj_newObject("edit"));
    obj.modsabedoria:setParent(obj.layout14);
    obj.modsabedoria:setLeft(210);
    obj.modsabedoria:setTop(0);
    obj.modsabedoria:setWidth(30);
    obj.modsabedoria:setHeight(25);
    obj.modsabedoria:setName("modsabedoria");
    obj.modsabedoria:setField("modsabedoria");
    obj.modsabedoria:setType("number");
    obj.modsabedoria:setMax(99);
    obj.modsabedoria:setHorzTextAlign("center");
    obj.modsabedoria:setFontSize(15.0);
    lfm_setPropAsString(obj.modsabedoria, "fontStyle",  "bold");
    obj.modsabedoria:setHitTest(false);

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout14);
    obj.edit18:setLeft(245);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(25);
    obj.edit18:setField("danosabedoria");
    obj.edit18:setType("number");
    obj.edit18:setMax(99);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(15.0);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setName("edit18");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout9);
    obj.layout15:setLeft(5);
    obj.layout15:setTop(165);
    obj.layout15:setWidth(290);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout15);
    obj.rectangle19:setLeft(5);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setColor("Gainsboro");
    obj.rectangle19:setWidth(155);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);
    obj.rectangle19:setName("rectangle19");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout15);
    obj.label18:setLeft(8);
    obj.label18:setTop(4);
    obj.label18:setWidth(155);
    obj.label18:setHeight(20);
    obj.label18:setText("Carisma(CAR)");
    obj.label18:setHorzTextAlign("leading");
    obj.label18:setFontSize(15.0);
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("black");
    obj.label18:setName("label18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout15);
    obj.edit19:setLeft(175);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(30);
    obj.edit19:setHeight(25);
    obj.edit19:setField("carisma");
    obj.edit19:setType("number");
    obj.edit19:setMax(99);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setFontSize(15.0);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setName("edit19");

    obj.modcarisma = GUI.fromHandle(_obj_newObject("edit"));
    obj.modcarisma:setParent(obj.layout15);
    obj.modcarisma:setLeft(210);
    obj.modcarisma:setTop(0);
    obj.modcarisma:setWidth(30);
    obj.modcarisma:setHeight(25);
    obj.modcarisma:setName("modcarisma");
    obj.modcarisma:setField("modcarisma");
    obj.modcarisma:setType("number");
    obj.modcarisma:setMax(99);
    obj.modcarisma:setHorzTextAlign("center");
    obj.modcarisma:setFontSize(15.0);
    lfm_setPropAsString(obj.modcarisma, "fontStyle",  "bold");
    obj.modcarisma:setHitTest(false);

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout15);
    obj.edit20:setLeft(245);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(30);
    obj.edit20:setHeight(25);
    obj.edit20:setField("danocarisma");
    obj.edit20:setType("number");
    obj.edit20:setMax(99);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(15.0);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setName("edit20");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(316);
    obj.layout16:setTop(220);
    obj.layout16:setWidth(688);
    obj.layout16:setHeight(41);
    obj.layout16:setName("layout16");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout16);
    obj.rectangle20:setLeft(1);
    obj.rectangle20:setTop(15);
    obj.rectangle20:setColor("Gainsboro");
    obj.rectangle20:setWidth(100);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);
    obj.rectangle20:setName("rectangle20");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setLeft(43);
    obj.label19:setTop(9);
    obj.label19:setWidth(25);
    obj.label19:setHeight(25);
    obj.label19:setFontSize(14);
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("black");
    obj.label19:setText("CA");
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout16);
    obj.label20:setLeft(7);
    obj.label20:setTop(20);
    obj.label20:setWidth(100);
    obj.label20:setHeight(25);
    obj.label20:setFontSize(10);
    obj.label20:setFontColor("black");
    obj.label20:setText("Classe de Armadura");
    obj.label20:setName("label20");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout16);
    obj.rectangle21:setLeft(131);
    obj.rectangle21:setTop(3);
    obj.rectangle21:setColor("Gainsboro");
    obj.rectangle21:setWidth(28);
    obj.rectangle21:setHeight(15);
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);
    obj.rectangle21:setName("rectangle21");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout16);
    obj.label21:setLeft(133);
    obj.label21:setTop(5);
    obj.label21:setWidth(28);
    obj.label21:setHeight(8);
    obj.label21:setFontSize(10);
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("black");
    obj.label21:setText("Total");
    obj.label21:setName("label21");

    obj.totalca = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalca:setParent(obj.layout16);
    obj.totalca:setLeft(115);
    obj.totalca:setTop(15);
    obj.totalca:setWidth(60);
    obj.totalca:setHeight(25);
    obj.totalca:setName("totalca");
    obj.totalca:setField("totalca");
    obj.totalca:setType("number");
    obj.totalca:setHorzTextAlign("center");
    obj.totalca:setFontSize(15.0);
    lfm_setPropAsString(obj.totalca, "fontStyle",  "bold");
    obj.totalca:setHitTest(false);

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout16);
    obj.rectangle22:setLeft(190);
    obj.rectangle22:setTop(20);
    obj.rectangle22:setColor("Gainsboro");
    obj.rectangle22:setWidth(20);
    obj.rectangle22:setHeight(15);
    obj.rectangle22:setXradius(2);
    obj.rectangle22:setYradius(2);
    obj.rectangle22:setName("rectangle22");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout16);
    obj.label22:setLeft(193);
    obj.label22:setTop(18);
    obj.label22:setWidth(20);
    obj.label22:setHeight(15);
    obj.label22:setFontSize(20);
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontColor("black");
    obj.label22:setText("=");
    obj.label22:setName("label22");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout16);
    obj.rectangle23:setLeft(229);
    obj.rectangle23:setTop(3);
    obj.rectangle23:setColor("Gainsboro");
    obj.rectangle23:setWidth(52);
    obj.rectangle23:setHeight(15);
    obj.rectangle23:setXradius(2);
    obj.rectangle23:setYradius(2);
    obj.rectangle23:setName("rectangle23");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout16);
    obj.label23:setLeft(229);
    obj.label23:setTop(5);
    obj.label23:setWidth(58);
    obj.label23:setHeight(8);
    obj.label23:setFontSize(10);
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontColor("black");
    obj.label23:setText("1/2 Nv+10");
    obj.label23:setName("label23");

    obj.ca1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ca1:setParent(obj.layout16);
    obj.ca1:setLeft(225);
    obj.ca1:setTop(15);
    obj.ca1:setWidth(60);
    obj.ca1:setHeight(25);
    obj.ca1:setName("ca1");
    obj.ca1:setField("ca1");
    obj.ca1:setType("number");
    obj.ca1:setHorzTextAlign("center");
    obj.ca1:setFontSize(15.0);
    lfm_setPropAsString(obj.ca1, "fontStyle",  "bold");
    obj.ca1:setHitTest(false);

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout16);
    obj.rectangle24:setLeft(295);
    obj.rectangle24:setTop(20);
    obj.rectangle24:setColor("Gainsboro");
    obj.rectangle24:setWidth(20);
    obj.rectangle24:setHeight(15);
    obj.rectangle24:setXradius(2);
    obj.rectangle24:setYradius(2);
    obj.rectangle24:setName("rectangle24");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout16);
    obj.label24:setLeft(298);
    obj.label24:setTop(18);
    obj.label24:setWidth(20);
    obj.label24:setHeight(15);
    obj.label24:setFontSize(20);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("black");
    obj.label24:setText("+");
    obj.label24:setName("label24");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout16);
    obj.rectangle25:setLeft(331);
    obj.rectangle25:setTop(3);
    obj.rectangle25:setColor("Gainsboro");
    obj.rectangle25:setWidth(48);
    obj.rectangle25:setHeight(15);
    obj.rectangle25:setXradius(2);
    obj.rectangle25:setYradius(2);
    obj.rectangle25:setName("rectangle25");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout16);
    obj.label25:setLeft(339);
    obj.label25:setTop(5);
    obj.label25:setWidth(48);
    obj.label25:setHeight(8);
    obj.label25:setFontSize(10);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontColor("black");
    obj.label25:setText("Mod H");
    obj.label25:setName("label25");

    obj.ca2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ca2:setParent(obj.layout16);
    obj.ca2:setLeft(325);
    obj.ca2:setTop(15);
    obj.ca2:setWidth(60);
    obj.ca2:setHeight(25);
    obj.ca2:setName("ca2");
    obj.ca2:setField("ca2");
    obj.ca2:setType("number");
    obj.ca2:setHorzTextAlign("center");
    obj.ca2:setFontSize(15.0);
    lfm_setPropAsString(obj.ca2, "fontStyle",  "bold");
    obj.ca2:setHitTest(false);

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout16);
    obj.rectangle26:setLeft(395);
    obj.rectangle26:setTop(20);
    obj.rectangle26:setColor("Gainsboro");
    obj.rectangle26:setWidth(20);
    obj.rectangle26:setHeight(15);
    obj.rectangle26:setXradius(2);
    obj.rectangle26:setYradius(2);
    obj.rectangle26:setName("rectangle26");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout16);
    obj.label26:setLeft(398);
    obj.label26:setTop(18);
    obj.label26:setWidth(20);
    obj.label26:setHeight(15);
    obj.label26:setFontSize(20);
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontColor("black");
    obj.label26:setText("+");
    obj.label26:setName("label26");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout16);
    obj.rectangle27:setLeft(429);
    obj.rectangle27:setTop(3);
    obj.rectangle27:setColor("Gainsboro");
    obj.rectangle27:setWidth(54);
    obj.rectangle27:setHeight(15);
    obj.rectangle27:setXradius(2);
    obj.rectangle27:setYradius(2);
    obj.rectangle27:setName("rectangle27");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout16);
    obj.label27:setLeft(432);
    obj.label27:setTop(5);
    obj.label27:setWidth(48);
    obj.label27:setHeight(8);
    obj.label27:setFontSize(10);
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontColor("black");
    obj.label27:setText("Armadura");
    obj.label27:setName("label27");

    obj.ca3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ca3:setParent(obj.layout16);
    obj.ca3:setLeft(426);
    obj.ca3:setTop(15);
    obj.ca3:setWidth(60);
    obj.ca3:setHeight(25);
    obj.ca3:setName("ca3");
    obj.ca3:setField("ca3");
    obj.ca3:setType("number");
    obj.ca3:setHorzTextAlign("center");
    obj.ca3:setFontSize(15.0);
    lfm_setPropAsString(obj.ca3, "fontStyle",  "bold");
    obj.ca3:setHitTest(false);

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout16);
    obj.rectangle28:setLeft(496);
    obj.rectangle28:setTop(20);
    obj.rectangle28:setColor("Gainsboro");
    obj.rectangle28:setWidth(20);
    obj.rectangle28:setHeight(15);
    obj.rectangle28:setXradius(2);
    obj.rectangle28:setYradius(2);
    obj.rectangle28:setName("rectangle28");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout16);
    obj.label28:setLeft(499);
    obj.label28:setTop(18);
    obj.label28:setWidth(20);
    obj.label28:setHeight(15);
    obj.label28:setFontSize(20);
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontColor("black");
    obj.label28:setText("+");
    obj.label28:setName("label28");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout16);
    obj.rectangle29:setLeft(537);
    obj.rectangle29:setTop(3);
    obj.rectangle29:setColor("Gainsboro");
    obj.rectangle29:setWidth(40);
    obj.rectangle29:setHeight(15);
    obj.rectangle29:setXradius(2);
    obj.rectangle29:setYradius(2);
    obj.rectangle29:setName("rectangle29");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout16);
    obj.label29:setLeft(540);
    obj.label29:setTop(5);
    obj.label29:setWidth(48);
    obj.label29:setHeight(8);
    obj.label29:setFontSize(10);
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontColor("black");
    obj.label29:setText("Escudo");
    obj.label29:setName("label29");

    obj.ca4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ca4:setParent(obj.layout16);
    obj.ca4:setLeft(527);
    obj.ca4:setTop(15);
    obj.ca4:setWidth(60);
    obj.ca4:setHeight(25);
    obj.ca4:setName("ca4");
    obj.ca4:setField("ca4");
    obj.ca4:setType("number");
    obj.ca4:setMax(99);
    obj.ca4:setHorzTextAlign("center");
    obj.ca4:setFontSize(15.0);
    lfm_setPropAsString(obj.ca4, "fontStyle",  "bold");
    obj.ca4:setHitTest(false);

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout16);
    obj.rectangle30:setLeft(597);
    obj.rectangle30:setTop(20);
    obj.rectangle30:setColor("Gainsboro");
    obj.rectangle30:setWidth(20);
    obj.rectangle30:setHeight(15);
    obj.rectangle30:setXradius(2);
    obj.rectangle30:setYradius(2);
    obj.rectangle30:setName("rectangle30");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout16);
    obj.label30:setLeft(600);
    obj.label30:setTop(18);
    obj.label30:setWidth(20);
    obj.label30:setHeight(15);
    obj.label30:setFontSize(20);
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontColor("black");
    obj.label30:setText("+");
    obj.label30:setName("label30");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout16);
    obj.rectangle31:setLeft(637);
    obj.rectangle31:setTop(3);
    obj.rectangle31:setColor("Gainsboro");
    obj.rectangle31:setWidth(40);
    obj.rectangle31:setHeight(15);
    obj.rectangle31:setXradius(2);
    obj.rectangle31:setYradius(2);
    obj.rectangle31:setName("rectangle31");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout16);
    obj.label31:setLeft(640);
    obj.label31:setTop(5);
    obj.label31:setWidth(48);
    obj.label31:setHeight(8);
    obj.label31:setFontSize(10);
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontColor("black");
    obj.label31:setText("Outros");
    obj.label31:setName("label31");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout16);
    obj.edit21:setLeft(627);
    obj.edit21:setTop(15);
    obj.edit21:setWidth(60);
    obj.edit21:setHeight(25);
    obj.edit21:setField("ca5");
    obj.edit21:setType("number");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setFontSize(15.0);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setName("edit21");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(316);
    obj.layout17:setTop(270);
    obj.layout17:setWidth(448);
    obj.layout17:setHeight(41);
    obj.layout17:setName("layout17");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout17);
    obj.rectangle32:setLeft(1);
    obj.rectangle32:setTop(15);
    obj.rectangle32:setColor("Gainsboro");
    obj.rectangle32:setWidth(50);
    obj.rectangle32:setHeight(25);
    obj.rectangle32:setXradius(2);
    obj.rectangle32:setYradius(2);
    obj.rectangle32:setName("rectangle32");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout17);
    obj.label32:setLeft(8);
    obj.label32:setTop(9);
    obj.label32:setWidth(35);
    obj.label32:setHeight(25);
    obj.label32:setFontSize(14);
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontColor("black");
    obj.label32:setText("FORT");
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout17);
    obj.label33:setLeft(6);
    obj.label33:setTop(20);
    obj.label33:setWidth(50);
    obj.label33:setHeight(25);
    obj.label33:setFontSize(10);
    obj.label33:setFontColor("black");
    obj.label33:setText("Fortitude");
    obj.label33:setName("label33");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout17);
    obj.rectangle33:setLeft(73);
    obj.rectangle33:setTop(3);
    obj.rectangle33:setColor("Gainsboro");
    obj.rectangle33:setWidth(28);
    obj.rectangle33:setHeight(15);
    obj.rectangle33:setXradius(2);
    obj.rectangle33:setYradius(2);
    obj.rectangle33:setName("rectangle33");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout17);
    obj.label34:setLeft(75);
    obj.label34:setTop(5);
    obj.label34:setWidth(28);
    obj.label34:setHeight(8);
    obj.label34:setFontSize(10);
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontColor("black");
    obj.label34:setText("Total");
    obj.label34:setName("label34");

    obj.totalfort = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalfort:setParent(obj.layout17);
    obj.totalfort:setLeft(57);
    obj.totalfort:setTop(15);
    obj.totalfort:setWidth(60);
    obj.totalfort:setHeight(25);
    obj.totalfort:setName("totalfort");
    obj.totalfort:setField("totalfort");
    obj.totalfort:setType("number");
    obj.totalfort:setMax(99);
    obj.totalfort:setHorzTextAlign("center");
    obj.totalfort:setFontSize(15.0);
    lfm_setPropAsString(obj.totalfort, "fontStyle",  "bold");
    obj.totalfort:setHitTest(false);

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout17);
    obj.rectangle34:setLeft(132);
    obj.rectangle34:setTop(20);
    obj.rectangle34:setColor("Gainsboro");
    obj.rectangle34:setWidth(20);
    obj.rectangle34:setHeight(15);
    obj.rectangle34:setXradius(2);
    obj.rectangle34:setYradius(2);
    obj.rectangle34:setName("rectangle34");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout17);
    obj.label35:setLeft(135);
    obj.label35:setTop(18);
    obj.label35:setWidth(20);
    obj.label35:setHeight(15);
    obj.label35:setFontSize(20);
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontColor("black");
    obj.label35:setText("=");
    obj.label35:setName("label35");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout17);
    obj.rectangle35:setLeft(179);
    obj.rectangle35:setTop(3);
    obj.rectangle35:setColor("Gainsboro");
    obj.rectangle35:setWidth(37);
    obj.rectangle35:setHeight(15);
    obj.rectangle35:setXradius(2);
    obj.rectangle35:setYradius(2);
    obj.rectangle35:setName("rectangle35");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout17);
    obj.label36:setLeft(181);
    obj.label36:setTop(5);
    obj.label36:setWidth(58);
    obj.label36:setHeight(8);
    obj.label36:setFontSize(10);
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontColor("black");
    obj.label36:setText("1/2 Nv");
    obj.label36:setName("label36");

    obj.fort1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.fort1:setParent(obj.layout17);
    obj.fort1:setLeft(167);
    obj.fort1:setTop(15);
    obj.fort1:setWidth(60);
    obj.fort1:setHeight(25);
    obj.fort1:setName("fort1");
    obj.fort1:setField("fort1");
    obj.fort1:setType("number");
    obj.fort1:setMax(99);
    obj.fort1:setHorzTextAlign("center");
    obj.fort1:setFontSize(15.0);
    lfm_setPropAsString(obj.fort1, "fontStyle",  "bold");
    obj.fort1:setHitTest(false);

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout17);
    obj.rectangle36:setLeft(232);
    obj.rectangle36:setTop(20);
    obj.rectangle36:setColor("Gainsboro");
    obj.rectangle36:setWidth(20);
    obj.rectangle36:setHeight(15);
    obj.rectangle36:setXradius(2);
    obj.rectangle36:setYradius(2);
    obj.rectangle36:setName("rectangle36");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout17);
    obj.label37:setLeft(235);
    obj.label37:setTop(18);
    obj.label37:setWidth(20);
    obj.label37:setHeight(15);
    obj.label37:setFontSize(20);
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("black");
    obj.label37:setText("+");
    obj.label37:setName("label37");

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout17);
    obj.rectangle37:setLeft(263);
    obj.rectangle37:setTop(3);
    obj.rectangle37:setColor("Gainsboro");
    obj.rectangle37:setWidth(48);
    obj.rectangle37:setHeight(15);
    obj.rectangle37:setXradius(2);
    obj.rectangle37:setYradius(2);
    obj.rectangle37:setName("rectangle37");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout17);
    obj.label38:setLeft(271);
    obj.label38:setTop(5);
    obj.label38:setWidth(48);
    obj.label38:setHeight(8);
    obj.label38:setFontSize(10);
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontColor("black");
    obj.label38:setText("Mod H");
    obj.label38:setName("label38");

    obj.fort2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.fort2:setParent(obj.layout17);
    obj.fort2:setLeft(257);
    obj.fort2:setTop(15);
    obj.fort2:setWidth(60);
    obj.fort2:setHeight(25);
    obj.fort2:setName("fort2");
    obj.fort2:setField("fort2");
    obj.fort2:setType("number");
    obj.fort2:setMax(99);
    obj.fort2:setHorzTextAlign("center");
    obj.fort2:setFontSize(15.0);
    lfm_setPropAsString(obj.fort2, "fontStyle",  "bold");
    obj.fort2:setHitTest(false);

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout17);
    obj.rectangle38:setLeft(322);
    obj.rectangle38:setTop(20);
    obj.rectangle38:setColor("Gainsboro");
    obj.rectangle38:setWidth(20);
    obj.rectangle38:setHeight(15);
    obj.rectangle38:setXradius(2);
    obj.rectangle38:setYradius(2);
    obj.rectangle38:setName("rectangle38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout17);
    obj.label39:setLeft(325);
    obj.label39:setTop(18);
    obj.label39:setWidth(20);
    obj.label39:setHeight(15);
    obj.label39:setFontSize(20);
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontColor("black");
    obj.label39:setText("+");
    obj.label39:setName("label39");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout17);
    obj.rectangle39:setLeft(359);
    obj.rectangle39:setTop(3);
    obj.rectangle39:setColor("Gainsboro");
    obj.rectangle39:setWidth(38);
    obj.rectangle39:setHeight(15);
    obj.rectangle39:setXradius(2);
    obj.rectangle39:setYradius(2);
    obj.rectangle39:setName("rectangle39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout17);
    obj.label40:setLeft(362);
    obj.label40:setTop(5);
    obj.label40:setWidth(38);
    obj.label40:setHeight(8);
    obj.label40:setFontSize(10);
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontColor("black");
    obj.label40:setText("Outros");
    obj.label40:setName("label40");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout17);
    obj.edit22:setLeft(348);
    obj.edit22:setTop(15);
    obj.edit22:setWidth(60);
    obj.edit22:setHeight(25);
    obj.edit22:setField("fort3");
    obj.edit22:setType("number");
    obj.edit22:setMax(99);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setFontSize(15.0);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setName("edit22");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(316);
    obj.layout18:setTop(320);
    obj.layout18:setWidth(448);
    obj.layout18:setHeight(41);
    obj.layout18:setName("layout18");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout18);
    obj.rectangle40:setLeft(1);
    obj.rectangle40:setTop(15);
    obj.rectangle40:setColor("Gainsboro");
    obj.rectangle40:setWidth(50);
    obj.rectangle40:setHeight(25);
    obj.rectangle40:setXradius(2);
    obj.rectangle40:setYradius(2);
    obj.rectangle40:setName("rectangle40");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout18);
    obj.label41:setLeft(14);
    obj.label41:setTop(9);
    obj.label41:setWidth(35);
    obj.label41:setHeight(25);
    obj.label41:setFontSize(14);
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontColor("black");
    obj.label41:setText("REF");
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout18);
    obj.label42:setLeft(10);
    obj.label42:setTop(20);
    obj.label42:setWidth(50);
    obj.label42:setHeight(25);
    obj.label42:setFontSize(10);
    obj.label42:setFontColor("black");
    obj.label42:setText("Reflexo");
    obj.label42:setName("label42");

    obj.totalref = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalref:setParent(obj.layout18);
    obj.totalref:setLeft(57);
    obj.totalref:setTop(15);
    obj.totalref:setWidth(60);
    obj.totalref:setHeight(25);
    obj.totalref:setName("totalref");
    obj.totalref:setField("totalref");
    obj.totalref:setType("number");
    obj.totalref:setMax(99);
    obj.totalref:setHorzTextAlign("center");
    obj.totalref:setFontSize(15.0);
    lfm_setPropAsString(obj.totalref, "fontStyle",  "bold");
    obj.totalref:setHitTest(false);

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout18);
    obj.rectangle41:setLeft(132);
    obj.rectangle41:setTop(20);
    obj.rectangle41:setColor("Gainsboro");
    obj.rectangle41:setWidth(20);
    obj.rectangle41:setHeight(15);
    obj.rectangle41:setXradius(2);
    obj.rectangle41:setYradius(2);
    obj.rectangle41:setName("rectangle41");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout18);
    obj.label43:setLeft(135);
    obj.label43:setTop(18);
    obj.label43:setWidth(20);
    obj.label43:setHeight(15);
    obj.label43:setFontSize(20);
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontColor("black");
    obj.label43:setText("=");
    obj.label43:setName("label43");

    obj.ref1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ref1:setParent(obj.layout18);
    obj.ref1:setLeft(167);
    obj.ref1:setTop(15);
    obj.ref1:setWidth(60);
    obj.ref1:setHeight(25);
    obj.ref1:setName("ref1");
    obj.ref1:setField("ref1");
    obj.ref1:setType("number");
    obj.ref1:setMax(99);
    obj.ref1:setHorzTextAlign("center");
    obj.ref1:setFontSize(15.0);
    lfm_setPropAsString(obj.ref1, "fontStyle",  "bold");
    obj.ref1:setHitTest(false);

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout18);
    obj.rectangle42:setLeft(232);
    obj.rectangle42:setTop(20);
    obj.rectangle42:setColor("Gainsboro");
    obj.rectangle42:setWidth(20);
    obj.rectangle42:setHeight(15);
    obj.rectangle42:setXradius(2);
    obj.rectangle42:setYradius(2);
    obj.rectangle42:setName("rectangle42");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout18);
    obj.label44:setLeft(235);
    obj.label44:setTop(18);
    obj.label44:setWidth(20);
    obj.label44:setHeight(15);
    obj.label44:setFontSize(20);
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontColor("black");
    obj.label44:setText("+");
    obj.label44:setName("label44");

    obj.ref2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.ref2:setParent(obj.layout18);
    obj.ref2:setLeft(257);
    obj.ref2:setTop(15);
    obj.ref2:setWidth(60);
    obj.ref2:setHeight(25);
    obj.ref2:setName("ref2");
    obj.ref2:setField("ref2");
    obj.ref2:setType("number");
    obj.ref2:setMax(99);
    obj.ref2:setHorzTextAlign("center");
    obj.ref2:setFontSize(15.0);
    lfm_setPropAsString(obj.ref2, "fontStyle",  "bold");
    obj.ref2:setHitTest(false);

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout18);
    obj.rectangle43:setLeft(322);
    obj.rectangle43:setTop(20);
    obj.rectangle43:setColor("Gainsboro");
    obj.rectangle43:setWidth(20);
    obj.rectangle43:setHeight(15);
    obj.rectangle43:setXradius(2);
    obj.rectangle43:setYradius(2);
    obj.rectangle43:setName("rectangle43");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout18);
    obj.label45:setLeft(325);
    obj.label45:setTop(18);
    obj.label45:setWidth(20);
    obj.label45:setHeight(15);
    obj.label45:setFontSize(20);
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setFontColor("black");
    obj.label45:setText("+");
    obj.label45:setName("label45");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout18);
    obj.edit23:setLeft(348);
    obj.edit23:setTop(15);
    obj.edit23:setWidth(60);
    obj.edit23:setHeight(25);
    obj.edit23:setField("ref3");
    obj.edit23:setType("number");
    obj.edit23:setMax(99);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setFontSize(15.0);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setName("edit23");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(316);
    obj.layout19:setTop(370);
    obj.layout19:setWidth(448);
    obj.layout19:setHeight(41);
    obj.layout19:setName("layout19");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout19);
    obj.rectangle44:setLeft(1);
    obj.rectangle44:setTop(15);
    obj.rectangle44:setColor("Gainsboro");
    obj.rectangle44:setWidth(50);
    obj.rectangle44:setHeight(25);
    obj.rectangle44:setXradius(2);
    obj.rectangle44:setYradius(2);
    obj.rectangle44:setName("rectangle44");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout19);
    obj.label46:setLeft(11);
    obj.label46:setTop(9);
    obj.label46:setWidth(35);
    obj.label46:setHeight(25);
    obj.label46:setFontSize(14);
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontColor("black");
    obj.label46:setText("VON");
    obj.label46:setName("label46");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout19);
    obj.label47:setLeft(8);
    obj.label47:setTop(20);
    obj.label47:setWidth(50);
    obj.label47:setHeight(25);
    obj.label47:setFontSize(10);
    obj.label47:setFontColor("black");
    obj.label47:setText("Vontade");
    obj.label47:setName("label47");

    obj.totalvon = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalvon:setParent(obj.layout19);
    obj.totalvon:setLeft(57);
    obj.totalvon:setTop(15);
    obj.totalvon:setWidth(60);
    obj.totalvon:setHeight(25);
    obj.totalvon:setName("totalvon");
    obj.totalvon:setField("totalvon");
    obj.totalvon:setType("number");
    obj.totalvon:setMax(99);
    obj.totalvon:setHorzTextAlign("center");
    obj.totalvon:setFontSize(15.0);
    lfm_setPropAsString(obj.totalvon, "fontStyle",  "bold");
    obj.totalvon:setHitTest(false);

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout19);
    obj.rectangle45:setLeft(132);
    obj.rectangle45:setTop(20);
    obj.rectangle45:setColor("Gainsboro");
    obj.rectangle45:setWidth(20);
    obj.rectangle45:setHeight(15);
    obj.rectangle45:setXradius(2);
    obj.rectangle45:setYradius(2);
    obj.rectangle45:setName("rectangle45");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout19);
    obj.label48:setLeft(135);
    obj.label48:setTop(18);
    obj.label48:setWidth(20);
    obj.label48:setHeight(15);
    obj.label48:setFontSize(20);
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontColor("black");
    obj.label48:setText("=");
    obj.label48:setName("label48");

    obj.von1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.von1:setParent(obj.layout19);
    obj.von1:setLeft(167);
    obj.von1:setTop(15);
    obj.von1:setWidth(60);
    obj.von1:setHeight(25);
    obj.von1:setName("von1");
    obj.von1:setField("von1");
    obj.von1:setType("number");
    obj.von1:setMax(99);
    obj.von1:setHorzTextAlign("center");
    obj.von1:setFontSize(15.0);
    lfm_setPropAsString(obj.von1, "fontStyle",  "bold");
    obj.von1:setHitTest(false);

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout19);
    obj.rectangle46:setLeft(232);
    obj.rectangle46:setTop(20);
    obj.rectangle46:setColor("Gainsboro");
    obj.rectangle46:setWidth(20);
    obj.rectangle46:setHeight(15);
    obj.rectangle46:setXradius(2);
    obj.rectangle46:setYradius(2);
    obj.rectangle46:setName("rectangle46");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout19);
    obj.label49:setLeft(235);
    obj.label49:setTop(18);
    obj.label49:setWidth(20);
    obj.label49:setHeight(15);
    obj.label49:setFontSize(20);
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontColor("black");
    obj.label49:setText("+");
    obj.label49:setName("label49");

    obj.von2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.von2:setParent(obj.layout19);
    obj.von2:setLeft(257);
    obj.von2:setTop(15);
    obj.von2:setWidth(60);
    obj.von2:setHeight(25);
    obj.von2:setName("von2");
    obj.von2:setField("von2");
    obj.von2:setType("number");
    obj.von2:setMax(99);
    obj.von2:setHorzTextAlign("center");
    obj.von2:setFontSize(15.0);
    lfm_setPropAsString(obj.von2, "fontStyle",  "bold");
    obj.von2:setHitTest(false);

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout19);
    obj.rectangle47:setLeft(322);
    obj.rectangle47:setTop(20);
    obj.rectangle47:setColor("Gainsboro");
    obj.rectangle47:setWidth(20);
    obj.rectangle47:setHeight(15);
    obj.rectangle47:setXradius(2);
    obj.rectangle47:setYradius(2);
    obj.rectangle47:setName("rectangle47");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout19);
    obj.label50:setLeft(325);
    obj.label50:setTop(18);
    obj.label50:setWidth(20);
    obj.label50:setHeight(15);
    obj.label50:setFontSize(20);
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontColor("black");
    obj.label50:setText("+");
    obj.label50:setName("label50");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout19);
    obj.edit24:setLeft(348);
    obj.edit24:setTop(15);
    obj.edit24:setWidth(60);
    obj.edit24:setHeight(25);
    obj.edit24:setField("von3");
    obj.edit24:setType("number");
    obj.edit24:setMax(99);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setFontSize(15.0);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setName("edit24");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(740);
    obj.layout20:setTop(274);
    obj.layout20:setWidth(263);
    obj.layout20:setHeight(37);
    obj.layout20:setName("layout20");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout20);
    obj.rectangle48:setLeft(0);
    obj.rectangle48:setTop(11);
    obj.rectangle48:setColor("Gainsboro");
    obj.rectangle48:setWidth(125);
    obj.rectangle48:setHeight(25);
    obj.rectangle48:setXradius(2);
    obj.rectangle48:setYradius(2);
    obj.rectangle48:setName("rectangle48");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout20);
    obj.label51:setLeft(11);
    obj.label51:setTop(13);
    obj.label51:setWidth(155);
    obj.label51:setHeight(20);
    obj.label51:setText("Pontos de Vida");
    obj.label51:setHorzTextAlign("leading");
    obj.label51:setFontSize(14.0);
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontColor("black");
    obj.label51:setName("label51");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout20);
    obj.edit25:setLeft(140);
    obj.edit25:setTop(11);
    obj.edit25:setWidth(123);
    obj.edit25:setHeight(25);
    obj.edit25:setField("pv");
    obj.edit25:setType("number");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setFontSize(15.0);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setName("edit25");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setLeft(740);
    obj.layout21:setTop(324);
    obj.layout21:setWidth(263);
    obj.layout21:setHeight(37);
    obj.layout21:setName("layout21");

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout21);
    obj.rectangle49:setLeft(0);
    obj.rectangle49:setTop(11);
    obj.rectangle49:setColor("Gainsboro");
    obj.rectangle49:setWidth(125);
    obj.rectangle49:setHeight(25);
    obj.rectangle49:setXradius(2);
    obj.rectangle49:setYradius(2);
    obj.rectangle49:setName("rectangle49");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout21);
    obj.label52:setLeft(3);
    obj.label52:setTop(13);
    obj.label52:setWidth(155);
    obj.label52:setHeight(20);
    obj.label52:setText("Pontos de Energia");
    obj.label52:setHorzTextAlign("leading");
    obj.label52:setFontSize(14.0);
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontColor("black");
    obj.label52:setName("label52");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout21);
    obj.edit26:setLeft(140);
    obj.edit26:setTop(11);
    obj.edit26:setWidth(123);
    obj.edit26:setHeight(25);
    obj.edit26:setField("pe");
    obj.edit26:setType("number");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setFontSize(15.0);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setName("edit26");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.scrollBox1);
    obj.layout22:setLeft(740);
    obj.layout22:setTop(374);
    obj.layout22:setWidth(263);
    obj.layout22:setHeight(37);
    obj.layout22:setName("layout22");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout22);
    obj.rectangle50:setLeft(0);
    obj.rectangle50:setTop(11);
    obj.rectangle50:setColor("Gainsboro");
    obj.rectangle50:setWidth(125);
    obj.rectangle50:setHeight(25);
    obj.rectangle50:setXradius(2);
    obj.rectangle50:setYradius(2);
    obj.rectangle50:setName("rectangle50");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout22);
    obj.label53:setLeft(9);
    obj.label53:setTop(13);
    obj.label53:setWidth(155);
    obj.label53:setHeight(20);
    obj.label53:setText("Pontos de Mana");
    obj.label53:setHorzTextAlign("leading");
    obj.label53:setFontSize(14.0);
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontColor("black");
    obj.label53:setName("label53");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout22);
    obj.edit27:setLeft(140);
    obj.edit27:setTop(11);
    obj.edit27:setWidth(123);
    obj.edit27:setHeight(25);
    obj.edit27:setField("pm");
    obj.edit27:setType("number");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setFontSize(15.0);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setName("edit27");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.scrollBox1);
    obj.rectangle51:setLeft(663);
    obj.rectangle51:setTop(417);
    obj.rectangle51:setColor("#333333");
    obj.rectangle51:setWidth(341);
    obj.rectangle51:setHeight(278);
    obj.rectangle51:setXradius(2);
    obj.rectangle51:setYradius(2);
    obj.rectangle51:setName("rectangle51");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.scrollBox1);
    obj.rectangle52:setLeft(668);
    obj.rectangle52:setTop(422);
    obj.rectangle52:setColor("#696969");
    obj.rectangle52:setWidth(331);
    obj.rectangle52:setHeight(268);
    obj.rectangle52:setXradius(2);
    obj.rectangle52:setYradius(2);
    obj.rectangle52:setName("rectangle52");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setLeft(667);
    obj.image2:setTop(421);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("stretch");
    obj.image2:setSRC("");
    obj.image2:setWidth(333);
    obj.image2:setHeight(270);
    obj.image2:setName("image2");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.scrollBox1);
    obj.layout23:setLeft(6);
    obj.layout23:setTop(421);
    obj.layout23:setWidth(688);
    obj.layout23:setHeight(41);
    obj.layout23:setName("layout23");

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout23);
    obj.rectangle53:setLeft(5);
    obj.rectangle53:setTop(15);
    obj.rectangle53:setColor("Gainsboro");
    obj.rectangle53:setWidth(155);
    obj.rectangle53:setHeight(25);
    obj.rectangle53:setXradius(2);
    obj.rectangle53:setYradius(2);
    obj.rectangle53:setName("rectangle53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout23);
    obj.label54:setLeft(27);
    obj.label54:setTop(15);
    obj.label54:setWidth(105);
    obj.label54:setHeight(25);
    obj.label54:setFontSize(15);
    obj.label54:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setFontColor("black");
    obj.label54:setText("Corpo-a-corpo");
    obj.label54:setName("label54");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout23);
    obj.layout24:setLeft(118);
    obj.layout24:setTop(0);
    obj.layout24:setWidth(688);
    obj.layout24:setHeight(41);
    obj.layout24:setName("layout24");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.layout24);
    obj.rectangle54:setLeft(73);
    obj.rectangle54:setTop(3);
    obj.rectangle54:setColor("Gainsboro");
    obj.rectangle54:setWidth(28);
    obj.rectangle54:setHeight(15);
    obj.rectangle54:setXradius(2);
    obj.rectangle54:setYradius(2);
    obj.rectangle54:setName("rectangle54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout24);
    obj.label55:setLeft(75);
    obj.label55:setTop(5);
    obj.label55:setWidth(28);
    obj.label55:setHeight(8);
    obj.label55:setFontSize(10);
    lfm_setPropAsString(obj.label55, "fontStyle",  "bold");
    obj.label55:setFontColor("black");
    obj.label55:setText("Total");
    obj.label55:setName("label55");

    obj.totalcac = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcac:setParent(obj.layout24);
    obj.totalcac:setLeft(57);
    obj.totalcac:setTop(15);
    obj.totalcac:setWidth(60);
    obj.totalcac:setHeight(25);
    obj.totalcac:setName("totalcac");
    obj.totalcac:setField("totalcac");
    obj.totalcac:setType("number");
    obj.totalcac:setMax(99);
    obj.totalcac:setHorzTextAlign("center");
    obj.totalcac:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcac, "fontStyle",  "bold");
    obj.totalcac:setHitTest(false);

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.layout24);
    obj.rectangle55:setLeft(132);
    obj.rectangle55:setTop(20);
    obj.rectangle55:setColor("Gainsboro");
    obj.rectangle55:setWidth(20);
    obj.rectangle55:setHeight(15);
    obj.rectangle55:setXradius(2);
    obj.rectangle55:setYradius(2);
    obj.rectangle55:setName("rectangle55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout24);
    obj.label56:setLeft(135);
    obj.label56:setTop(18);
    obj.label56:setWidth(20);
    obj.label56:setHeight(15);
    obj.label56:setFontSize(20);
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontColor("black");
    obj.label56:setText("=");
    obj.label56:setName("label56");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout24);
    obj.rectangle56:setLeft(185);
    obj.rectangle56:setTop(3);
    obj.rectangle56:setColor("Gainsboro");
    obj.rectangle56:setWidth(25);
    obj.rectangle56:setHeight(15);
    obj.rectangle56:setXradius(2);
    obj.rectangle56:setYradius(2);
    obj.rectangle56:setName("rectangle56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout24);
    obj.label57:setLeft(187);
    obj.label57:setTop(5);
    obj.label57:setWidth(58);
    obj.label57:setHeight(8);
    obj.label57:setFontSize(10);
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setFontColor("black");
    obj.label57:setText("BBA");
    obj.label57:setName("label57");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout24);
    obj.edit28:setLeft(167);
    obj.edit28:setTop(15);
    obj.edit28:setWidth(60);
    obj.edit28:setHeight(25);
    obj.edit28:setField("bba");
    obj.edit28:setType("number");
    obj.edit28:setMax(99);
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setFontSize(15.0);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setName("edit28");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.layout24);
    obj.rectangle57:setLeft(232);
    obj.rectangle57:setTop(20);
    obj.rectangle57:setColor("Gainsboro");
    obj.rectangle57:setWidth(20);
    obj.rectangle57:setHeight(15);
    obj.rectangle57:setXradius(2);
    obj.rectangle57:setYradius(2);
    obj.rectangle57:setName("rectangle57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout24);
    obj.label58:setLeft(235);
    obj.label58:setTop(18);
    obj.label58:setWidth(20);
    obj.label58:setHeight(15);
    obj.label58:setFontSize(20);
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setFontColor("black");
    obj.label58:setText("+");
    obj.label58:setName("label58");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout24);
    obj.rectangle58:setLeft(263);
    obj.rectangle58:setTop(3);
    obj.rectangle58:setColor("Gainsboro");
    obj.rectangle58:setWidth(48);
    obj.rectangle58:setHeight(15);
    obj.rectangle58:setXradius(2);
    obj.rectangle58:setYradius(2);
    obj.rectangle58:setName("rectangle58");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout24);
    obj.label59:setLeft(271);
    obj.label59:setTop(5);
    obj.label59:setWidth(48);
    obj.label59:setHeight(8);
    obj.label59:setFontSize(10);
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setFontColor("black");
    obj.label59:setText("Mod H");
    obj.label59:setName("label59");

    obj.cac2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.cac2:setParent(obj.layout24);
    obj.cac2:setLeft(257);
    obj.cac2:setTop(15);
    obj.cac2:setWidth(60);
    obj.cac2:setHeight(25);
    obj.cac2:setName("cac2");
    obj.cac2:setField("cac2");
    obj.cac2:setType("number");
    obj.cac2:setMax(99);
    obj.cac2:setHorzTextAlign("center");
    obj.cac2:setFontSize(15.0);
    lfm_setPropAsString(obj.cac2, "fontStyle",  "bold");
    obj.cac2:setHitTest(false);

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout24);
    obj.rectangle59:setLeft(322);
    obj.rectangle59:setTop(20);
    obj.rectangle59:setColor("Gainsboro");
    obj.rectangle59:setWidth(20);
    obj.rectangle59:setHeight(15);
    obj.rectangle59:setXradius(2);
    obj.rectangle59:setYradius(2);
    obj.rectangle59:setName("rectangle59");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout24);
    obj.label60:setLeft(325);
    obj.label60:setTop(18);
    obj.label60:setWidth(20);
    obj.label60:setHeight(15);
    obj.label60:setFontSize(20);
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontColor("black");
    obj.label60:setText("+");
    obj.label60:setName("label60");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout24);
    obj.rectangle60:setLeft(359);
    obj.rectangle60:setTop(3);
    obj.rectangle60:setColor("Gainsboro");
    obj.rectangle60:setWidth(38);
    obj.rectangle60:setHeight(15);
    obj.rectangle60:setXradius(2);
    obj.rectangle60:setYradius(2);
    obj.rectangle60:setName("rectangle60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout24);
    obj.label61:setLeft(362);
    obj.label61:setTop(5);
    obj.label61:setWidth(38);
    obj.label61:setHeight(8);
    obj.label61:setFontSize(10);
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontColor("black");
    obj.label61:setText("Outros");
    obj.label61:setName("label61");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout24);
    obj.edit29:setLeft(348);
    obj.edit29:setTop(15);
    obj.edit29:setWidth(60);
    obj.edit29:setHeight(25);
    obj.edit29:setField("cac3");
    obj.edit29:setType("number");
    obj.edit29:setMax(99);
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setFontSize(15.0);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setName("edit29");

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout24);
    obj.rectangle61:setLeft(413);
    obj.rectangle61:setTop(20);
    obj.rectangle61:setColor("Gainsboro");
    obj.rectangle61:setWidth(20);
    obj.rectangle61:setHeight(15);
    obj.rectangle61:setXradius(2);
    obj.rectangle61:setYradius(2);
    obj.rectangle61:setName("rectangle61");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout24);
    obj.label62:setLeft(416);
    obj.label62:setTop(18);
    obj.label62:setWidth(20);
    obj.label62:setHeight(15);
    obj.label62:setFontSize(20);
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setFontColor("black");
    obj.label62:setText("+");
    obj.label62:setName("label62");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout24);
    obj.rectangle62:setLeft(450);
    obj.rectangle62:setTop(3);
    obj.rectangle62:setColor("Gainsboro");
    obj.rectangle62:setWidth(38);
    obj.rectangle62:setHeight(15);
    obj.rectangle62:setXradius(2);
    obj.rectangle62:setYradius(2);
    obj.rectangle62:setName("rectangle62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout24);
    obj.label63:setLeft(453);
    obj.label63:setTop(5);
    obj.label63:setWidth(38);
    obj.label63:setHeight(8);
    obj.label63:setFontSize(10);
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setFontColor("black");
    obj.label63:setText("Outros");
    obj.label63:setName("label63");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout24);
    obj.edit30:setLeft(439);
    obj.edit30:setTop(15);
    obj.edit30:setWidth(60);
    obj.edit30:setHeight(25);
    obj.edit30:setField("cac4");
    obj.edit30:setType("number");
    obj.edit30:setMax(99);
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setFontSize(15.0);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setName("edit30");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setLeft(6);
    obj.layout25:setTop(461);
    obj.layout25:setWidth(688);
    obj.layout25:setHeight(41);
    obj.layout25:setName("layout25");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout25);
    obj.rectangle63:setLeft(5);
    obj.rectangle63:setTop(15);
    obj.rectangle63:setColor("Gainsboro");
    obj.rectangle63:setWidth(155);
    obj.rectangle63:setHeight(25);
    obj.rectangle63:setXradius(2);
    obj.rectangle63:setYradius(2);
    obj.rectangle63:setName("rectangle63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout25);
    obj.label64:setLeft(27);
    obj.label64:setTop(15);
    obj.label64:setWidth(105);
    obj.label64:setHeight(25);
    obj.label64:setFontSize(15);
    obj.label64:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setFontColor("black");
    obj.label64:setText("À Distância");
    obj.label64:setName("label64");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout25);
    obj.layout26:setLeft(118);
    obj.layout26:setTop(0);
    obj.layout26:setWidth(688);
    obj.layout26:setHeight(41);
    obj.layout26:setName("layout26");

    obj.totaldis = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaldis:setParent(obj.layout26);
    obj.totaldis:setLeft(57);
    obj.totaldis:setTop(15);
    obj.totaldis:setWidth(60);
    obj.totaldis:setHeight(25);
    obj.totaldis:setName("totaldis");
    obj.totaldis:setField("totaldis");
    obj.totaldis:setType("number");
    obj.totaldis:setMax(99);
    obj.totaldis:setHorzTextAlign("center");
    obj.totaldis:setFontSize(15.0);
    lfm_setPropAsString(obj.totaldis, "fontStyle",  "bold");
    obj.totaldis:setHitTest(false);

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.layout26);
    obj.rectangle64:setLeft(132);
    obj.rectangle64:setTop(20);
    obj.rectangle64:setColor("Gainsboro");
    obj.rectangle64:setWidth(20);
    obj.rectangle64:setHeight(15);
    obj.rectangle64:setXradius(2);
    obj.rectangle64:setYradius(2);
    obj.rectangle64:setName("rectangle64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout26);
    obj.label65:setLeft(135);
    obj.label65:setTop(18);
    obj.label65:setWidth(20);
    obj.label65:setHeight(15);
    obj.label65:setFontSize(20);
    lfm_setPropAsString(obj.label65, "fontStyle",  "bold");
    obj.label65:setFontColor("black");
    obj.label65:setText("=");
    obj.label65:setName("label65");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout26);
    obj.edit31:setLeft(167);
    obj.edit31:setTop(15);
    obj.edit31:setWidth(60);
    obj.edit31:setHeight(25);
    obj.edit31:setField("bba");
    obj.edit31:setType("number");
    obj.edit31:setMax(99);
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setFontSize(15.0);
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setName("edit31");

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.layout26);
    obj.rectangle65:setLeft(232);
    obj.rectangle65:setTop(20);
    obj.rectangle65:setColor("Gainsboro");
    obj.rectangle65:setWidth(20);
    obj.rectangle65:setHeight(15);
    obj.rectangle65:setXradius(2);
    obj.rectangle65:setYradius(2);
    obj.rectangle65:setName("rectangle65");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout26);
    obj.label66:setLeft(235);
    obj.label66:setTop(18);
    obj.label66:setWidth(20);
    obj.label66:setHeight(15);
    obj.label66:setFontSize(20);
    lfm_setPropAsString(obj.label66, "fontStyle",  "bold");
    obj.label66:setFontColor("black");
    obj.label66:setText("+");
    obj.label66:setName("label66");

    obj.dis2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.dis2:setParent(obj.layout26);
    obj.dis2:setLeft(257);
    obj.dis2:setTop(15);
    obj.dis2:setWidth(60);
    obj.dis2:setHeight(25);
    obj.dis2:setName("dis2");
    obj.dis2:setField("dis2");
    obj.dis2:setType("number");
    obj.dis2:setMax(99);
    obj.dis2:setHorzTextAlign("center");
    obj.dis2:setFontSize(15.0);
    lfm_setPropAsString(obj.dis2, "fontStyle",  "bold");
    obj.dis2:setHitTest(false);

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layout26);
    obj.rectangle66:setLeft(322);
    obj.rectangle66:setTop(20);
    obj.rectangle66:setColor("Gainsboro");
    obj.rectangle66:setWidth(20);
    obj.rectangle66:setHeight(15);
    obj.rectangle66:setXradius(2);
    obj.rectangle66:setYradius(2);
    obj.rectangle66:setName("rectangle66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout26);
    obj.label67:setLeft(325);
    obj.label67:setTop(18);
    obj.label67:setWidth(20);
    obj.label67:setHeight(15);
    obj.label67:setFontSize(20);
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setFontColor("black");
    obj.label67:setText("+");
    obj.label67:setName("label67");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout26);
    obj.edit32:setLeft(348);
    obj.edit32:setTop(15);
    obj.edit32:setWidth(60);
    obj.edit32:setHeight(25);
    obj.edit32:setField("dis3");
    obj.edit32:setType("number");
    obj.edit32:setMax(99);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setFontSize(15.0);
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setName("edit32");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layout26);
    obj.rectangle67:setLeft(413);
    obj.rectangle67:setTop(20);
    obj.rectangle67:setColor("Gainsboro");
    obj.rectangle67:setWidth(20);
    obj.rectangle67:setHeight(15);
    obj.rectangle67:setXradius(2);
    obj.rectangle67:setYradius(2);
    obj.rectangle67:setName("rectangle67");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout26);
    obj.label68:setLeft(416);
    obj.label68:setTop(18);
    obj.label68:setWidth(20);
    obj.label68:setHeight(15);
    obj.label68:setFontSize(20);
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setFontColor("black");
    obj.label68:setText("+");
    obj.label68:setName("label68");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout26);
    obj.edit33:setLeft(439);
    obj.edit33:setTop(15);
    obj.edit33:setWidth(60);
    obj.edit33:setHeight(25);
    obj.edit33:setField("dis4");
    obj.edit33:setType("number");
    obj.edit33:setMax(99);
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setFontSize(15.0);
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setName("edit33");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.scrollBox1);
    obj.layout27:setLeft(8);
    obj.layout27:setTop(516);
    obj.layout27:setWidth(237);
    obj.layout27:setHeight(160);
    obj.layout27:setName("layout27");

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.layout27);
    obj.rectangle68:setTop(6);
    obj.rectangle68:setWidth(235);
    obj.rectangle68:setHeight(153);
    obj.rectangle68:setColor("Gainsboro");
    obj.rectangle68:setXradius(2);
    obj.rectangle68:setYradius(2);
    obj.rectangle68:setName("rectangle68");

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.layout27);
    obj.rectangle69:setLeft(60);
    obj.rectangle69:setTop(1);
    obj.rectangle69:setColor("Gainsboro");
    obj.rectangle69:setWidth(38);
    obj.rectangle69:setHeight(15);
    obj.rectangle69:setXradius(2);
    obj.rectangle69:setYradius(2);
    obj.rectangle69:setName("rectangle69");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout27);
    obj.label69:setLeft(62);
    obj.label69:setTop(2);
    obj.label69:setWidth(55);
    obj.label69:setHeight(8);
    obj.label69:setFontSize(10);
    lfm_setPropAsString(obj.label69, "fontStyle",  "bold");
    obj.label69:setFontColor("black");
    obj.label69:setText("Classes");
    obj.label69:setName("label69");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout27);
    obj.edit34:setLeft(3);
    obj.edit34:setTop(11);
    obj.edit34:setWidth(156);
    obj.edit34:setHeight(25);
    obj.edit34:setField("classe1");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setFontSize(15.0);
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setName("edit34");

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.layout27);
    obj.rectangle70:setLeft(186);
    obj.rectangle70:setTop(1);
    obj.rectangle70:setColor("Gainsboro");
    obj.rectangle70:setWidth(29);
    obj.rectangle70:setHeight(15);
    obj.rectangle70:setXradius(2);
    obj.rectangle70:setYradius(2);
    obj.rectangle70:setName("rectangle70");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout27);
    obj.label70:setLeft(188);
    obj.label70:setTop(2);
    obj.label70:setWidth(55);
    obj.label70:setHeight(8);
    obj.label70:setFontSize(10);
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontColor("black");
    obj.label70:setText("Nível");
    obj.label70:setName("label70");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout27);
    obj.edit35:setLeft(172);
    obj.edit35:setTop(11);
    obj.edit35:setWidth(60);
    obj.edit35:setHeight(25);
    obj.edit35:setField("nvclasse1");
    obj.edit35:setType("number");
    obj.edit35:setMax(99);
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setFontSize(15.0);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setName("edit35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout27);
    obj.edit36:setLeft(3);
    obj.edit36:setTop(41);
    obj.edit36:setWidth(156);
    obj.edit36:setHeight(25);
    obj.edit36:setField("classe2");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setFontSize(15.0);
    lfm_setPropAsString(obj.edit36, "fontStyle",  "bold");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout27);
    obj.edit37:setLeft(172);
    obj.edit37:setTop(41);
    obj.edit37:setWidth(60);
    obj.edit37:setHeight(25);
    obj.edit37:setField("nvclasse2");
    obj.edit37:setType("number");
    obj.edit37:setMax(99);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setFontSize(15.0);
    lfm_setPropAsString(obj.edit37, "fontStyle",  "bold");
    obj.edit37:setName("edit37");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout27);
    obj.edit38:setLeft(3);
    obj.edit38:setTop(71);
    obj.edit38:setWidth(156);
    obj.edit38:setHeight(25);
    obj.edit38:setField("classe3");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setFontSize(15.0);
    lfm_setPropAsString(obj.edit38, "fontStyle",  "bold");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout27);
    obj.edit39:setLeft(172);
    obj.edit39:setTop(71);
    obj.edit39:setWidth(60);
    obj.edit39:setHeight(25);
    obj.edit39:setField("nvclasse3");
    obj.edit39:setType("number");
    obj.edit39:setMax(99);
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setFontSize(15.0);
    lfm_setPropAsString(obj.edit39, "fontStyle",  "bold");
    obj.edit39:setName("edit39");

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout27);
    obj.edit40:setLeft(3);
    obj.edit40:setTop(101);
    obj.edit40:setWidth(156);
    obj.edit40:setHeight(25);
    obj.edit40:setField("classe4");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setFontSize(15.0);
    lfm_setPropAsString(obj.edit40, "fontStyle",  "bold");
    obj.edit40:setName("edit40");

    obj.edit41 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout27);
    obj.edit41:setLeft(172);
    obj.edit41:setTop(101);
    obj.edit41:setWidth(60);
    obj.edit41:setHeight(25);
    obj.edit41:setField("nvclasse4");
    obj.edit41:setType("number");
    obj.edit41:setMax(99);
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setFontSize(15.0);
    lfm_setPropAsString(obj.edit41, "fontStyle",  "bold");
    obj.edit41:setName("edit41");

    obj.edit42 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout27);
    obj.edit42:setLeft(3);
    obj.edit42:setTop(131);
    obj.edit42:setWidth(156);
    obj.edit42:setHeight(25);
    obj.edit42:setField("classe5");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setFontSize(15.0);
    lfm_setPropAsString(obj.edit42, "fontStyle",  "bold");
    obj.edit42:setName("edit42");

    obj.edit43 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout27);
    obj.edit43:setLeft(172);
    obj.edit43:setTop(131);
    obj.edit43:setWidth(60);
    obj.edit43:setHeight(25);
    obj.edit43:setField("nvclasse5");
    obj.edit43:setType("number");
    obj.edit43:setMax(99);
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setFontSize(15.0);
    lfm_setPropAsString(obj.edit43, "fontStyle",  "bold");
    obj.edit43:setName("edit43");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.scrollBox1);
    obj.layout28:setLeft(255);
    obj.layout28:setTop(516);
    obj.layout28:setWidth(237);
    obj.layout28:setHeight(160);
    obj.layout28:setName("layout28");

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.layout28);
    obj.rectangle71:setTop(6);
    obj.rectangle71:setWidth(235);
    obj.rectangle71:setHeight(153);
    obj.rectangle71:setColor("Gainsboro");
    obj.rectangle71:setXradius(2);
    obj.rectangle71:setYradius(2);
    obj.rectangle71:setName("rectangle71");

    obj.rectangle72 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle72:setParent(obj.layout28);
    obj.rectangle72:setLeft(60);
    obj.rectangle72:setTop(1);
    obj.rectangle72:setColor("Gainsboro");
    obj.rectangle72:setWidth(38);
    obj.rectangle72:setHeight(15);
    obj.rectangle72:setXradius(2);
    obj.rectangle72:setYradius(2);
    obj.rectangle72:setName("rectangle72");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout28);
    obj.label71:setLeft(62);
    obj.label71:setTop(2);
    obj.label71:setWidth(55);
    obj.label71:setHeight(8);
    obj.label71:setFontSize(10);
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("black");
    obj.label71:setText("Classes");
    obj.label71:setName("label71");

    obj.edit44 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout28);
    obj.edit44:setLeft(3);
    obj.edit44:setTop(11);
    obj.edit44:setWidth(156);
    obj.edit44:setHeight(25);
    obj.edit44:setField("classe6");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setFontSize(15.0);
    lfm_setPropAsString(obj.edit44, "fontStyle",  "bold");
    obj.edit44:setName("edit44");

    obj.rectangle73 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle73:setParent(obj.layout28);
    obj.rectangle73:setLeft(186);
    obj.rectangle73:setTop(1);
    obj.rectangle73:setColor("Gainsboro");
    obj.rectangle73:setWidth(29);
    obj.rectangle73:setHeight(15);
    obj.rectangle73:setXradius(2);
    obj.rectangle73:setYradius(2);
    obj.rectangle73:setName("rectangle73");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout28);
    obj.label72:setLeft(188);
    obj.label72:setTop(2);
    obj.label72:setWidth(55);
    obj.label72:setHeight(8);
    obj.label72:setFontSize(10);
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontColor("black");
    obj.label72:setText("Nível");
    obj.label72:setName("label72");

    obj.edit45 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout28);
    obj.edit45:setLeft(172);
    obj.edit45:setTop(11);
    obj.edit45:setWidth(60);
    obj.edit45:setHeight(25);
    obj.edit45:setField("nvclasse6");
    obj.edit45:setType("number");
    obj.edit45:setMax(99);
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setFontSize(15.0);
    lfm_setPropAsString(obj.edit45, "fontStyle",  "bold");
    obj.edit45:setName("edit45");

    obj.edit46 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout28);
    obj.edit46:setLeft(3);
    obj.edit46:setTop(41);
    obj.edit46:setWidth(156);
    obj.edit46:setHeight(25);
    obj.edit46:setField("classe7");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setFontSize(15.0);
    lfm_setPropAsString(obj.edit46, "fontStyle",  "bold");
    obj.edit46:setName("edit46");

    obj.edit47 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout28);
    obj.edit47:setLeft(172);
    obj.edit47:setTop(41);
    obj.edit47:setWidth(60);
    obj.edit47:setHeight(25);
    obj.edit47:setField("nvclasse7");
    obj.edit47:setType("number");
    obj.edit47:setMax(99);
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setFontSize(15.0);
    lfm_setPropAsString(obj.edit47, "fontStyle",  "bold");
    obj.edit47:setName("edit47");

    obj.edit48 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout28);
    obj.edit48:setLeft(3);
    obj.edit48:setTop(71);
    obj.edit48:setWidth(156);
    obj.edit48:setHeight(25);
    obj.edit48:setField("classe8");
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setFontSize(15.0);
    lfm_setPropAsString(obj.edit48, "fontStyle",  "bold");
    obj.edit48:setName("edit48");

    obj.edit49 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout28);
    obj.edit49:setLeft(172);
    obj.edit49:setTop(71);
    obj.edit49:setWidth(60);
    obj.edit49:setHeight(25);
    obj.edit49:setField("nvclasse8");
    obj.edit49:setType("number");
    obj.edit49:setMax(99);
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setFontSize(15.0);
    lfm_setPropAsString(obj.edit49, "fontStyle",  "bold");
    obj.edit49:setName("edit49");

    obj.edit50 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout28);
    obj.edit50:setLeft(3);
    obj.edit50:setTop(101);
    obj.edit50:setWidth(156);
    obj.edit50:setHeight(25);
    obj.edit50:setField("classe9");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setFontSize(15.0);
    lfm_setPropAsString(obj.edit50, "fontStyle",  "bold");
    obj.edit50:setName("edit50");

    obj.edit51 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout28);
    obj.edit51:setLeft(172);
    obj.edit51:setTop(101);
    obj.edit51:setWidth(60);
    obj.edit51:setHeight(25);
    obj.edit51:setField("nvclasse9");
    obj.edit51:setType("number");
    obj.edit51:setMax(99);
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setFontSize(15.0);
    lfm_setPropAsString(obj.edit51, "fontStyle",  "bold");
    obj.edit51:setName("edit51");

    obj.edit52 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout28);
    obj.edit52:setLeft(3);
    obj.edit52:setTop(131);
    obj.edit52:setWidth(156);
    obj.edit52:setHeight(25);
    obj.edit52:setField("classe10");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setFontSize(15.0);
    lfm_setPropAsString(obj.edit52, "fontStyle",  "bold");
    obj.edit52:setName("edit52");

    obj.edit53 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout28);
    obj.edit53:setLeft(172);
    obj.edit53:setTop(131);
    obj.edit53:setWidth(60);
    obj.edit53:setHeight(25);
    obj.edit53:setField("nvclasse10");
    obj.edit53:setType("number");
    obj.edit53:setMax(99);
    obj.edit53:setHorzTextAlign("center");
    obj.edit53:setFontSize(15.0);
    lfm_setPropAsString(obj.edit53, "fontStyle",  "bold");
    obj.edit53:setName("edit53");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.scrollBox1);
    obj.layout29:setLeft(502);
    obj.layout29:setTop(516);
    obj.layout29:setWidth(140);
    obj.layout29:setHeight(159);
    obj.layout29:setName("layout29");

    obj.rectangle74 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.layout29);
    obj.rectangle74:setTop(6);
    obj.rectangle74:setColor("Gainsboro");
    obj.rectangle74:setWidth(125);
    obj.rectangle74:setHeight(33);
    obj.rectangle74:setXradius(2);
    obj.rectangle74:setYradius(2);
    obj.rectangle74:setName("rectangle74");

    obj.rectangle75 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.layout29);
    obj.rectangle75:setLeft(35);
    obj.rectangle75:setTop(1);
    obj.rectangle75:setColor("Gainsboro");
    obj.rectangle75:setWidth(55);
    obj.rectangle75:setHeight(15);
    obj.rectangle75:setXradius(2);
    obj.rectangle75:setYradius(2);
    obj.rectangle75:setName("rectangle75");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout29);
    obj.label73:setLeft(37);
    obj.label73:setTop(2);
    obj.label73:setWidth(55);
    obj.label73:setHeight(8);
    obj.label73:setFontSize(10);
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontColor("black");
    obj.label73:setText("Nível Total");
    obj.label73:setName("label73");

    obj.nivel = GUI.fromHandle(_obj_newObject("edit"));
    obj.nivel:setParent(obj.layout29);
    obj.nivel:setLeft(3);
    obj.nivel:setTop(11);
    obj.nivel:setWidth(119);
    obj.nivel:setHeight(25);
    obj.nivel:setName("nivel");
    obj.nivel:setField("nivel");
    obj.nivel:setType("number");
    obj.nivel:setMax(99);
    obj.nivel:setHorzTextAlign("center");
    obj.nivel:setFontSize(15.0);
    lfm_setPropAsString(obj.nivel, "fontStyle",  "bold");
    obj.nivel:setHitTest(false);

    obj.rectangle76 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.layout29);
    obj.rectangle76:setTop(66);
    obj.rectangle76:setColor("Gainsboro");
    obj.rectangle76:setWidth(125);
    obj.rectangle76:setHeight(33);
    obj.rectangle76:setXradius(2);
    obj.rectangle76:setYradius(2);
    obj.rectangle76:setName("rectangle76");

    obj.rectangle77 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.layout29);
    obj.rectangle77:setLeft(23);
    obj.rectangle77:setTop(61);
    obj.rectangle77:setColor("Gainsboro");
    obj.rectangle77:setWidth(77);
    obj.rectangle77:setHeight(15);
    obj.rectangle77:setXradius(2);
    obj.rectangle77:setYradius(2);
    obj.rectangle77:setName("rectangle77");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout29);
    obj.label74:setLeft(25);
    obj.label74:setTop(62);
    obj.label74:setWidth(75);
    obj.label74:setHeight(8);
    obj.label74:setFontSize(10);
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setFontColor("black");
    obj.label74:setText("Pontos de Ação");
    obj.label74:setName("label74");

    obj.edit54 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout29);
    obj.edit54:setLeft(3);
    obj.edit54:setTop(71);
    obj.edit54:setWidth(119);
    obj.edit54:setHeight(25);
    obj.edit54:setField("pacao");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setFontSize(15.0);
    lfm_setPropAsString(obj.edit54, "fontStyle",  "bold");
    obj.edit54:setName("edit54");

    obj.rectangle78 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.layout29);
    obj.rectangle78:setTop(126);
    obj.rectangle78:setColor("Gainsboro");
    obj.rectangle78:setWidth(125);
    obj.rectangle78:setHeight(33);
    obj.rectangle78:setXradius(2);
    obj.rectangle78:setYradius(2);
    obj.rectangle78:setName("rectangle78");

    obj.rectangle79 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.layout29);
    obj.rectangle79:setLeft(41);
    obj.rectangle79:setTop(121);
    obj.rectangle79:setColor("Gainsboro");
    obj.rectangle79:setWidth(42);
    obj.rectangle79:setHeight(15);
    obj.rectangle79:setXradius(2);
    obj.rectangle79:setYradius(2);
    obj.rectangle79:setName("rectangle79");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout29);
    obj.label75:setLeft(43);
    obj.label75:setTop(122);
    obj.label75:setWidth(75);
    obj.label75:setHeight(8);
    obj.label75:setFontSize(10);
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setFontColor("black");
    obj.label75:setText("Funções");
    obj.label75:setName("label75");

    obj.rectangle80 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.layout29);
    obj.rectangle80:setLeft(3);
    obj.rectangle80:setTop(131);
    obj.rectangle80:setColor("#333333");
    obj.rectangle80:setWidth(119);
    obj.rectangle80:setHeight(25);
    obj.rectangle80:setName("rectangle80");

    obj.calculos = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.calculos:setParent(obj.layout29);
    obj.calculos:setName("calculos");
    obj.calculos:setField("calculos");
    obj.calculos:setLeft(14);
    obj.calculos:setTop(136);
    obj.calculos:setImageChecked("/TRPG/img/xis.png");
    obj.calculos:setImageUnchecked("/TRPG/img/Cal.png");
    obj.calculos:setWidth(15);
    obj.calculos:setHeight(15);
    obj.calculos:setHint("Desabilita os cálculos automáticos da ficha.");

    obj.acuidade = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acuidade:setParent(obj.layout29);
    obj.acuidade:setName("acuidade");
    obj.acuidade:setField("acuidade");
    obj.acuidade:setLeft(34);
    obj.acuidade:setTop(136);
    obj.acuidade:setImageChecked("/TRPG/img/hand.png");
    obj.acuidade:setImageUnchecked("/TRPG/img/closedhand.png");
    obj.acuidade:setHint("Muda o modificador em jogadas de ataque corpo-a-corpo. FOR ou DES.");
    obj.acuidade:setWidth(15);
    obj.acuidade:setHeight(15);

    obj.pontaria = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.pontaria:setParent(obj.layout29);
    obj.pontaria:setName("pontaria");
    obj.pontaria:setField("pontaria");
    obj.pontaria:setLeft(54);
    obj.pontaria:setTop(136);
    obj.pontaria:setImageChecked("/TRPG/img/wisdom.png");
    obj.pontaria:setImageUnchecked("/TRPG/img/bow.png");
    obj.pontaria:setHint("Muda o modificador em jogadas de ataque à distância. DES ou SAB.");
    obj.pontaria:setWidth(15);
    obj.pontaria:setHeight(15);

    obj.update = GUI.fromHandle(_obj_newObject("image"));
    obj.update:setParent(obj.layout29);
    obj.update:setLeft(74);
    obj.update:setTop(136);
    obj.update:setName("update");
    obj.update:setSRC("/TRPG/img/update.gif");
    obj.update:setWidth(15);
    obj.update:setHeight(15);

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout29);
    obj.button1:setLeft(74);
    obj.button1:setTop(136);
    obj.button1:setWidth(15);
    obj.button1:setHeight(15);
    obj.button1:setOpacity(0.0);
    obj.button1:setCanFocus(false);
    obj.button1:setCursor("handPoint");
    obj.button1:setHint("Baixa a versão mais recente da ficha. Versão instalada: 1.0a");
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.Tormenta01);
    obj.dataLink1:setFields({'forca', 'destreza', 'constituicao', 'inteligencia', 'sabedoria', 'carisma', 'ca1', 'ca2', 'ca3', 'ca4', 'ca5', 'fort1', 'fort2', 'fort3', 'ref1', 'ref2', 'ref3', 'von1', 'von2', 'von3', 'acuidade', 'modforca', 'cac1', 'cac2', 'cac3', 'cac4', 'pontaria', 'bba', 'dis1', 'dis2', 'dis3', 'dis4', 'nvclasse1', 'nvclasse2', 'nvclasse3', 'nvclasse4', 'nvclasse5', 'nvclasse6', 'nvclasse7', 'nvclasse8', 'nvclasse9', 'nvclasse10'});
    obj.dataLink1:setName("dataLink1");


		function desCalculos();
			if self.calculos.checked then

				self.modforca.hitTest = false;
				self.moddestreza.hitTest = false;
				self.modconstituicao.hitTest = false;
				self.modinteligencia.hitTest = false;
				self.modsabedoria.hitTest = false;
				self.modcarisma.hitTest = false;

				self.nivel.hitTest = false;

				self.totalca.hitTest = false;
				self.ca1.hitTest = false;
				self.ca2.hitTest = false;
				self.ca3.hitTest = false;
				self.ca4.hitTest = false;

				self.totalfort.hitTest = false;
				self.fort1.hitTest = false;
				self.fort2.hitTest = false;

				self.totalref.hitTest = false;
				self.ref1.hitTest = false;
				self.ref2.hitTest = false;

				self.totalvon.hitTest = false;
				self.von1.hitTest = false;
				self.von2.hitTest = false;

				self.totalcac.hitTest = false;
				self.cac2.hitTest = false;

				self.totaldis.hitTest = false;
				self.dis2.hitTest = false;

			else
				
				self.modforca.hitTest = true;
				self.moddestreza.hitTest = true;
				self.modconstituicao.hitTest = true;
				self.modinteligencia.hitTest = true;
				self.modsabedoria.hitTest = true;
				self.modcarisma.hitTest = true;

				self.nivel.hitTest = true;

				self.totalca.hitTest = true;
				self.ca1.hitTest = true;
				self.ca2.hitTest = true;
				self.ca3.hitTest = true;
				self.ca4.hitTest = true;

				self.totalfort.hitTest = true;
				self.fort1.hitTest = true;
				self.fort2.hitTest = true;

				self.totalref.hitTest = true;
				self.ref1.hitTest = true;
				self.ref2.hitTest = true;

				self.totalvon.hitTest = true;
				self.von1.hitTest = true;
				self.von2.hitTest = true;

				self.totalcac.hitTest = true;
				self.cac2.hitTest = true;

				self.totaldis.hitTest = true;
				self.dis2.hitTest = true;

			end;
		end;
	


    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Perícias e Talentos");
    obj.tab2:setName("tab2");

    obj.Tormenta02 = GUI.fromHandle(_obj_newObject("form"));
    obj.Tormenta02:setParent(obj.tab2);
    obj.Tormenta02:setName("Tormenta02");
    obj.Tormenta02:setAlign("client");
    obj.Tormenta02:setTheme("dark");
    obj.Tormenta02:setLockWhileNodeIsLoading(true);

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.Tormenta02);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle81 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.scrollBox2);
    obj.rectangle81:setWidth(1010);
    obj.rectangle81:setHeight(700);
    obj.rectangle81:setColor("DimGray");
    obj.rectangle81:setXradius(10);
    obj.rectangle81:setYradius(10);
    obj.rectangle81:setName("rectangle81");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.scrollBox2);
    obj.layout30:setLeft(10);
    obj.layout30:setTop(10);
    obj.layout30:setWidth(420);
    obj.layout30:setHeight(680);
    obj.layout30:setName("layout30");

    obj.rectangle82 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.layout30);
    obj.rectangle82:setAlign("client");
    obj.rectangle82:setColor("Gray");
    obj.rectangle82:setXradius(2);
    obj.rectangle82:setYradius(2);
    obj.rectangle82:setName("rectangle82");

    obj.rectangle83 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.layout30);
    obj.rectangle83:setLeft(166);
    obj.rectangle83:setTop(1);
    obj.rectangle83:setColor("Gainsboro");
    obj.rectangle83:setWidth(38);
    obj.rectangle83:setHeight(15);
    obj.rectangle83:setXradius(2);
    obj.rectangle83:setYradius(2);
    obj.rectangle83:setName("rectangle83");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout30);
    obj.label76:setLeft(173);
    obj.label76:setTop(3);
    obj.label76:setWidth(48);
    obj.label76:setHeight(8);
    obj.label76:setFontSize(10);
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setFontColor("black");
    obj.label76:setText("Total");
    obj.label76:setName("label76");

    obj.rectangle84 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.layout30);
    obj.rectangle84:setLeft(236);
    obj.rectangle84:setTop(1);
    obj.rectangle84:setColor("Gainsboro");
    obj.rectangle84:setWidth(38);
    obj.rectangle84:setHeight(15);
    obj.rectangle84:setXradius(2);
    obj.rectangle84:setYradius(2);
    obj.rectangle84:setName("rectangle84");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout30);
    obj.label77:setLeft(243);
    obj.label77:setTop(3);
    obj.label77:setWidth(48);
    obj.label77:setHeight(8);
    obj.label77:setFontSize(10);
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setFontColor("black");
    obj.label77:setText("Grad");
    obj.label77:setName("label77");

    obj.rectangle85 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.layout30);
    obj.rectangle85:setLeft(306);
    obj.rectangle85:setTop(1);
    obj.rectangle85:setColor("Gainsboro");
    obj.rectangle85:setWidth(38);
    obj.rectangle85:setHeight(15);
    obj.rectangle85:setXradius(2);
    obj.rectangle85:setYradius(2);
    obj.rectangle85:setName("rectangle85");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout30);
    obj.label78:setLeft(309);
    obj.label78:setTop(3);
    obj.label78:setWidth(48);
    obj.label78:setHeight(8);
    obj.label78:setFontSize(10);
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setFontColor("black");
    obj.label78:setText("Mod H");
    obj.label78:setName("label78");

    obj.rectangle86 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.layout30);
    obj.rectangle86:setLeft(376);
    obj.rectangle86:setTop(1);
    obj.rectangle86:setColor("Gainsboro");
    obj.rectangle86:setWidth(38);
    obj.rectangle86:setHeight(15);
    obj.rectangle86:setXradius(2);
    obj.rectangle86:setYradius(2);
    obj.rectangle86:setName("rectangle86");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout30);
    obj.label79:setLeft(379);
    obj.label79:setTop(3);
    obj.label79:setWidth(48);
    obj.label79:setHeight(8);
    obj.label79:setFontSize(10);
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setFontColor("black");
    obj.label79:setText("Outros");
    obj.label79:setName("label79");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout30);
    obj.layout31:setLeft(0);
    obj.layout31:setTop(7);
    obj.layout31:setWidth(420);
    obj.layout31:setHeight(680);
    obj.layout31:setName("layout31");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout31);
    obj.layout32:setLeft(0);
    obj.layout32:setTop(0);
    obj.layout32:setWidth(420);
    obj.layout32:setHeight(32);
    obj.layout32:setName("layout32");

    obj.rectangle87 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.layout32);
    obj.rectangle87:setLeft(5);
    obj.rectangle87:setTop(5);
    obj.rectangle87:setColor("Gainsboro");
    obj.rectangle87:setWidth(155);
    obj.rectangle87:setHeight(25);
    obj.rectangle87:setXradius(2);
    obj.rectangle87:setYradius(2);
    obj.rectangle87:setName("rectangle87");

    obj.cbxacrobacia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxacrobacia:setParent(obj.layout32);
    obj.cbxacrobacia:setLeft(7);
    obj.cbxacrobacia:setTop(8);
    obj.cbxacrobacia:setWidth(20);
    obj.cbxacrobacia:setHeight(20);
    obj.cbxacrobacia:setName("cbxacrobacia");
    obj.cbxacrobacia:setField("cbxacrobacia");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout32);
    obj.label80:setLeft(28);
    obj.label80:setTop(7);
    obj.label80:setWidth(150);
    obj.label80:setHeight(20);
    obj.label80:setText("Acrobacia");
    obj.label80:setHorzTextAlign("leading");
    obj.label80:setFontSize(15.0);
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setFontColor("black");
    obj.label80:setName("label80");

    obj.totalacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalacrobacia:setParent(obj.layout32);
    obj.totalacrobacia:setLeft(165);
    obj.totalacrobacia:setTop(5);
    obj.totalacrobacia:setWidth(40);
    obj.totalacrobacia:setHeight(25);
    obj.totalacrobacia:setName("totalacrobacia");
    obj.totalacrobacia:setField("totalacrobacia");
    obj.totalacrobacia:setType("number");
    obj.totalacrobacia:setMax(999);
    obj.totalacrobacia:setHorzTextAlign("center");
    obj.totalacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalacrobacia, "fontStyle",  "bold");
    obj.totalacrobacia:setHitTest(false);

    obj.rectangle88 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.layout32);
    obj.rectangle88:setLeft(210);
    obj.rectangle88:setTop(10);
    obj.rectangle88:setColor("Gainsboro");
    obj.rectangle88:setWidth(20);
    obj.rectangle88:setHeight(15);
    obj.rectangle88:setXradius(2);
    obj.rectangle88:setYradius(2);
    obj.rectangle88:setName("rectangle88");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout32);
    obj.label81:setLeft(213);
    obj.label81:setTop(8);
    obj.label81:setWidth(20);
    obj.label81:setHeight(15);
    obj.label81:setFontSize(20);
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setFontColor("black");
    obj.label81:setText("=");
    obj.label81:setName("label81");

    obj.gradacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradacrobacia:setParent(obj.layout32);
    obj.gradacrobacia:setLeft(235);
    obj.gradacrobacia:setTop(5);
    obj.gradacrobacia:setWidth(40);
    obj.gradacrobacia:setHeight(25);
    obj.gradacrobacia:setName("gradacrobacia");
    obj.gradacrobacia:setField("gradacrobacia");
    obj.gradacrobacia:setType("number");
    obj.gradacrobacia:setMax(999);
    obj.gradacrobacia:setHorzTextAlign("center");
    obj.gradacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradacrobacia, "fontStyle",  "bold");
    obj.gradacrobacia:setHitTest(false);

    obj.rectangle89 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.layout32);
    obj.rectangle89:setLeft(280);
    obj.rectangle89:setTop(10);
    obj.rectangle89:setColor("Gainsboro");
    obj.rectangle89:setWidth(20);
    obj.rectangle89:setHeight(15);
    obj.rectangle89:setXradius(2);
    obj.rectangle89:setYradius(2);
    obj.rectangle89:setName("rectangle89");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout32);
    obj.label82:setLeft(283);
    obj.label82:setTop(8);
    obj.label82:setWidth(20);
    obj.label82:setHeight(15);
    obj.label82:setFontSize(20);
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setFontColor("black");
    obj.label82:setText("+");
    obj.label82:setName("label82");

    obj.modacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modacrobacia:setParent(obj.layout32);
    obj.modacrobacia:setLeft(305);
    obj.modacrobacia:setTop(5);
    obj.modacrobacia:setWidth(40);
    obj.modacrobacia:setHeight(25);
    obj.modacrobacia:setName("modacrobacia");
    obj.modacrobacia:setField("modacrobacia");
    obj.modacrobacia:setType("number");
    obj.modacrobacia:setMax(999);
    obj.modacrobacia:setHorzTextAlign("center");
    obj.modacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.modacrobacia, "fontStyle",  "bold");
    obj.modacrobacia:setHitTest(false);

    obj.rectangle90 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.layout32);
    obj.rectangle90:setLeft(350);
    obj.rectangle90:setTop(10);
    obj.rectangle90:setColor("Gainsboro");
    obj.rectangle90:setWidth(20);
    obj.rectangle90:setHeight(15);
    obj.rectangle90:setXradius(2);
    obj.rectangle90:setYradius(2);
    obj.rectangle90:setName("rectangle90");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout32);
    obj.label83:setLeft(353);
    obj.label83:setTop(8);
    obj.label83:setWidth(20);
    obj.label83:setHeight(15);
    obj.label83:setFontSize(20);
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setFontColor("black");
    obj.label83:setText("+");
    obj.label83:setName("label83");

    obj.outrosacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosacrobacia:setParent(obj.layout32);
    obj.outrosacrobacia:setLeft(375);
    obj.outrosacrobacia:setTop(5);
    obj.outrosacrobacia:setWidth(40);
    obj.outrosacrobacia:setHeight(25);
    obj.outrosacrobacia:setName("outrosacrobacia");
    obj.outrosacrobacia:setField("outrosacrobacia");
    obj.outrosacrobacia:setType("number");
    obj.outrosacrobacia:setMax(999);
    obj.outrosacrobacia:setHorzTextAlign("center");
    obj.outrosacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosacrobacia, "fontStyle",  "bold");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout31);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(35);
    obj.layout33:setWidth(420);
    obj.layout33:setHeight(32);
    obj.layout33:setName("layout33");

    obj.rectangle91 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.layout33);
    obj.rectangle91:setLeft(5);
    obj.rectangle91:setTop(0);
    obj.rectangle91:setColor("Gainsboro");
    obj.rectangle91:setWidth(155);
    obj.rectangle91:setHeight(25);
    obj.rectangle91:setXradius(2);
    obj.rectangle91:setYradius(2);
    obj.rectangle91:setName("rectangle91");

    obj.cbxadestrar = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxadestrar:setParent(obj.layout33);
    obj.cbxadestrar:setLeft(7);
    obj.cbxadestrar:setTop(3);
    obj.cbxadestrar:setWidth(20);
    obj.cbxadestrar:setHeight(20);
    obj.cbxadestrar:setName("cbxadestrar");
    obj.cbxadestrar:setField("cbxadestrar");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout33);
    obj.label84:setLeft(28);
    obj.label84:setTop(2);
    obj.label84:setWidth(150);
    obj.label84:setHeight(20);
    obj.label84:setText("Adestrar Animais");
    obj.label84:setHorzTextAlign("leading");
    obj.label84:setFontSize(15.0);
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setFontColor("black");
    obj.label84:setName("label84");

    obj.totaladestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaladestrar:setParent(obj.layout33);
    obj.totaladestrar:setLeft(165);
    obj.totaladestrar:setTop(0);
    obj.totaladestrar:setWidth(40);
    obj.totaladestrar:setHeight(25);
    obj.totaladestrar:setName("totaladestrar");
    obj.totaladestrar:setField("totaladestrar");
    obj.totaladestrar:setType("number");
    obj.totaladestrar:setMax(999);
    obj.totaladestrar:setHorzTextAlign("center");
    obj.totaladestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.totaladestrar, "fontStyle",  "bold");
    obj.totaladestrar:setHitTest(false);

    obj.rectangle92 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.layout33);
    obj.rectangle92:setLeft(210);
    obj.rectangle92:setTop(5);
    obj.rectangle92:setColor("Gainsboro");
    obj.rectangle92:setWidth(20);
    obj.rectangle92:setHeight(15);
    obj.rectangle92:setXradius(2);
    obj.rectangle92:setYradius(2);
    obj.rectangle92:setName("rectangle92");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout33);
    obj.label85:setLeft(213);
    obj.label85:setTop(3);
    obj.label85:setWidth(20);
    obj.label85:setHeight(15);
    obj.label85:setFontSize(20);
    lfm_setPropAsString(obj.label85, "fontStyle",  "bold");
    obj.label85:setFontColor("black");
    obj.label85:setText("=");
    obj.label85:setName("label85");

    obj.gradadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradadestrar:setParent(obj.layout33);
    obj.gradadestrar:setLeft(235);
    obj.gradadestrar:setTop(0);
    obj.gradadestrar:setWidth(40);
    obj.gradadestrar:setHeight(25);
    obj.gradadestrar:setName("gradadestrar");
    obj.gradadestrar:setField("gradadestrar");
    obj.gradadestrar:setType("number");
    obj.gradadestrar:setMax(999);
    obj.gradadestrar:setHorzTextAlign("center");
    obj.gradadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradadestrar, "fontStyle",  "bold");
    obj.gradadestrar:setHitTest(false);

    obj.rectangle93 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.layout33);
    obj.rectangle93:setLeft(280);
    obj.rectangle93:setTop(5);
    obj.rectangle93:setColor("Gainsboro");
    obj.rectangle93:setWidth(20);
    obj.rectangle93:setHeight(15);
    obj.rectangle93:setXradius(2);
    obj.rectangle93:setYradius(2);
    obj.rectangle93:setName("rectangle93");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout33);
    obj.label86:setLeft(283);
    obj.label86:setTop(3);
    obj.label86:setWidth(20);
    obj.label86:setHeight(15);
    obj.label86:setFontSize(20);
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setFontColor("black");
    obj.label86:setText("+");
    obj.label86:setName("label86");

    obj.modadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.modadestrar:setParent(obj.layout33);
    obj.modadestrar:setLeft(305);
    obj.modadestrar:setTop(0);
    obj.modadestrar:setWidth(40);
    obj.modadestrar:setHeight(25);
    obj.modadestrar:setName("modadestrar");
    obj.modadestrar:setField("modadestrar");
    obj.modadestrar:setType("number");
    obj.modadestrar:setMax(999);
    obj.modadestrar:setHorzTextAlign("center");
    obj.modadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.modadestrar, "fontStyle",  "bold");
    obj.modadestrar:setHitTest(false);

    obj.rectangle94 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.layout33);
    obj.rectangle94:setLeft(350);
    obj.rectangle94:setTop(5);
    obj.rectangle94:setColor("Gainsboro");
    obj.rectangle94:setWidth(20);
    obj.rectangle94:setHeight(15);
    obj.rectangle94:setXradius(2);
    obj.rectangle94:setYradius(2);
    obj.rectangle94:setName("rectangle94");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout33);
    obj.label87:setLeft(353);
    obj.label87:setTop(3);
    obj.label87:setWidth(20);
    obj.label87:setHeight(15);
    obj.label87:setFontSize(20);
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setFontColor("black");
    obj.label87:setText("+");
    obj.label87:setName("label87");

    obj.outrosadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosadestrar:setParent(obj.layout33);
    obj.outrosadestrar:setLeft(375);
    obj.outrosadestrar:setTop(0);
    obj.outrosadestrar:setWidth(40);
    obj.outrosadestrar:setHeight(25);
    obj.outrosadestrar:setName("outrosadestrar");
    obj.outrosadestrar:setField("outrosadestrar");
    obj.outrosadestrar:setType("number");
    obj.outrosadestrar:setMax(999);
    obj.outrosadestrar:setHorzTextAlign("center");
    obj.outrosadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosadestrar, "fontStyle",  "bold");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout31);
    obj.layout34:setLeft(0);
    obj.layout34:setTop(65);
    obj.layout34:setWidth(420);
    obj.layout34:setHeight(32);
    obj.layout34:setName("layout34");

    obj.rectangle95 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.layout34);
    obj.rectangle95:setLeft(5);
    obj.rectangle95:setTop(0);
    obj.rectangle95:setColor("Gainsboro");
    obj.rectangle95:setWidth(155);
    obj.rectangle95:setHeight(25);
    obj.rectangle95:setXradius(2);
    obj.rectangle95:setYradius(2);
    obj.rectangle95:setName("rectangle95");

    obj.cbxatletismo = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxatletismo:setParent(obj.layout34);
    obj.cbxatletismo:setLeft(7);
    obj.cbxatletismo:setTop(3);
    obj.cbxatletismo:setWidth(20);
    obj.cbxatletismo:setHeight(20);
    obj.cbxatletismo:setName("cbxatletismo");
    obj.cbxatletismo:setField("cbxatletismo");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout34);
    obj.label88:setLeft(28);
    obj.label88:setTop(2);
    obj.label88:setWidth(150);
    obj.label88:setHeight(20);
    obj.label88:setText("Atletismo");
    obj.label88:setHorzTextAlign("leading");
    obj.label88:setFontSize(15.0);
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setFontColor("black");
    obj.label88:setName("label88");

    obj.totalatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalatletismo:setParent(obj.layout34);
    obj.totalatletismo:setLeft(165);
    obj.totalatletismo:setTop(0);
    obj.totalatletismo:setWidth(40);
    obj.totalatletismo:setHeight(25);
    obj.totalatletismo:setName("totalatletismo");
    obj.totalatletismo:setField("totalatletismo");
    obj.totalatletismo:setType("number");
    obj.totalatletismo:setMax(999);
    obj.totalatletismo:setHorzTextAlign("center");
    obj.totalatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatletismo, "fontStyle",  "bold");
    obj.totalatletismo:setHitTest(false);

    obj.rectangle96 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.layout34);
    obj.rectangle96:setLeft(210);
    obj.rectangle96:setTop(5);
    obj.rectangle96:setColor("Gainsboro");
    obj.rectangle96:setWidth(20);
    obj.rectangle96:setHeight(15);
    obj.rectangle96:setXradius(2);
    obj.rectangle96:setYradius(2);
    obj.rectangle96:setName("rectangle96");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout34);
    obj.label89:setLeft(213);
    obj.label89:setTop(3);
    obj.label89:setWidth(20);
    obj.label89:setHeight(15);
    obj.label89:setFontSize(20);
    lfm_setPropAsString(obj.label89, "fontStyle",  "bold");
    obj.label89:setFontColor("black");
    obj.label89:setText("=");
    obj.label89:setName("label89");

    obj.gradatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradatletismo:setParent(obj.layout34);
    obj.gradatletismo:setLeft(235);
    obj.gradatletismo:setTop(0);
    obj.gradatletismo:setWidth(40);
    obj.gradatletismo:setHeight(25);
    obj.gradatletismo:setName("gradatletismo");
    obj.gradatletismo:setField("gradatletismo");
    obj.gradatletismo:setType("number");
    obj.gradatletismo:setMax(999);
    obj.gradatletismo:setHorzTextAlign("center");
    obj.gradatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatletismo, "fontStyle",  "bold");
    obj.gradatletismo:setHitTest(false);

    obj.rectangle97 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.layout34);
    obj.rectangle97:setLeft(280);
    obj.rectangle97:setTop(5);
    obj.rectangle97:setColor("Gainsboro");
    obj.rectangle97:setWidth(20);
    obj.rectangle97:setHeight(15);
    obj.rectangle97:setXradius(2);
    obj.rectangle97:setYradius(2);
    obj.rectangle97:setName("rectangle97");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout34);
    obj.label90:setLeft(283);
    obj.label90:setTop(3);
    obj.label90:setWidth(20);
    obj.label90:setHeight(15);
    obj.label90:setFontSize(20);
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setFontColor("black");
    obj.label90:setText("+");
    obj.label90:setName("label90");

    obj.modatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.modatletismo:setParent(obj.layout34);
    obj.modatletismo:setLeft(305);
    obj.modatletismo:setTop(0);
    obj.modatletismo:setWidth(40);
    obj.modatletismo:setHeight(25);
    obj.modatletismo:setName("modatletismo");
    obj.modatletismo:setField("modatletismo");
    obj.modatletismo:setType("number");
    obj.modatletismo:setMax(999);
    obj.modatletismo:setHorzTextAlign("center");
    obj.modatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.modatletismo, "fontStyle",  "bold");
    obj.modatletismo:setHitTest(false);

    obj.rectangle98 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.layout34);
    obj.rectangle98:setLeft(350);
    obj.rectangle98:setTop(5);
    obj.rectangle98:setColor("Gainsboro");
    obj.rectangle98:setWidth(20);
    obj.rectangle98:setHeight(15);
    obj.rectangle98:setXradius(2);
    obj.rectangle98:setYradius(2);
    obj.rectangle98:setName("rectangle98");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout34);
    obj.label91:setLeft(353);
    obj.label91:setTop(3);
    obj.label91:setWidth(20);
    obj.label91:setHeight(15);
    obj.label91:setFontSize(20);
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setFontColor("black");
    obj.label91:setText("+");
    obj.label91:setName("label91");

    obj.outrosatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosatletismo:setParent(obj.layout34);
    obj.outrosatletismo:setLeft(375);
    obj.outrosatletismo:setTop(0);
    obj.outrosatletismo:setWidth(40);
    obj.outrosatletismo:setHeight(25);
    obj.outrosatletismo:setName("outrosatletismo");
    obj.outrosatletismo:setField("outrosatletismo");
    obj.outrosatletismo:setType("number");
    obj.outrosatletismo:setMax(999);
    obj.outrosatletismo:setHorzTextAlign("center");
    obj.outrosatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatletismo, "fontStyle",  "bold");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout31);
    obj.layout35:setLeft(0);
    obj.layout35:setTop(95);
    obj.layout35:setWidth(420);
    obj.layout35:setHeight(32);
    obj.layout35:setName("layout35");

    obj.rectangle99 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle99:setParent(obj.layout35);
    obj.rectangle99:setLeft(5);
    obj.rectangle99:setTop(0);
    obj.rectangle99:setColor("Gainsboro");
    obj.rectangle99:setWidth(155);
    obj.rectangle99:setHeight(25);
    obj.rectangle99:setXradius(2);
    obj.rectangle99:setYradius(2);
    obj.rectangle99:setName("rectangle99");

    obj.cbxatuacao1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxatuacao1:setParent(obj.layout35);
    obj.cbxatuacao1:setLeft(7);
    obj.cbxatuacao1:setTop(3);
    obj.cbxatuacao1:setWidth(20);
    obj.cbxatuacao1:setHeight(20);
    obj.cbxatuacao1:setName("cbxatuacao1");
    obj.cbxatuacao1:setField("cbxatuacao1");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout35);
    obj.label92:setLeft(28);
    obj.label92:setTop(2);
    obj.label92:setWidth(150);
    obj.label92:setHeight(20);
    obj.label92:setText("Atuação");
    obj.label92:setHorzTextAlign("leading");
    obj.label92:setFontSize(15.0);
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setFontColor("black");
    obj.label92:setName("label92");

    obj.totalatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalatuacao1:setParent(obj.layout35);
    obj.totalatuacao1:setLeft(165);
    obj.totalatuacao1:setTop(0);
    obj.totalatuacao1:setWidth(40);
    obj.totalatuacao1:setHeight(25);
    obj.totalatuacao1:setName("totalatuacao1");
    obj.totalatuacao1:setField("totalatuacao1");
    obj.totalatuacao1:setType("number");
    obj.totalatuacao1:setMax(999);
    obj.totalatuacao1:setHorzTextAlign("center");
    obj.totalatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatuacao1, "fontStyle",  "bold");
    obj.totalatuacao1:setHitTest(false);

    obj.rectangle100 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle100:setParent(obj.layout35);
    obj.rectangle100:setLeft(210);
    obj.rectangle100:setTop(5);
    obj.rectangle100:setColor("Gainsboro");
    obj.rectangle100:setWidth(20);
    obj.rectangle100:setHeight(15);
    obj.rectangle100:setXradius(2);
    obj.rectangle100:setYradius(2);
    obj.rectangle100:setName("rectangle100");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout35);
    obj.label93:setLeft(213);
    obj.label93:setTop(3);
    obj.label93:setWidth(20);
    obj.label93:setHeight(15);
    obj.label93:setFontSize(20);
    lfm_setPropAsString(obj.label93, "fontStyle",  "bold");
    obj.label93:setFontColor("black");
    obj.label93:setText("=");
    obj.label93:setName("label93");

    obj.gradatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradatuacao1:setParent(obj.layout35);
    obj.gradatuacao1:setLeft(235);
    obj.gradatuacao1:setTop(0);
    obj.gradatuacao1:setWidth(40);
    obj.gradatuacao1:setHeight(25);
    obj.gradatuacao1:setName("gradatuacao1");
    obj.gradatuacao1:setField("gradatuacao1");
    obj.gradatuacao1:setType("number");
    obj.gradatuacao1:setMax(999);
    obj.gradatuacao1:setHorzTextAlign("center");
    obj.gradatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatuacao1, "fontStyle",  "bold");
    obj.gradatuacao1:setHitTest(false);

    obj.rectangle101 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle101:setParent(obj.layout35);
    obj.rectangle101:setLeft(280);
    obj.rectangle101:setTop(5);
    obj.rectangle101:setColor("Gainsboro");
    obj.rectangle101:setWidth(20);
    obj.rectangle101:setHeight(15);
    obj.rectangle101:setXradius(2);
    obj.rectangle101:setYradius(2);
    obj.rectangle101:setName("rectangle101");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout35);
    obj.label94:setLeft(283);
    obj.label94:setTop(3);
    obj.label94:setWidth(20);
    obj.label94:setHeight(15);
    obj.label94:setFontSize(20);
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setFontColor("black");
    obj.label94:setText("+");
    obj.label94:setName("label94");

    obj.modatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modatuacao1:setParent(obj.layout35);
    obj.modatuacao1:setLeft(305);
    obj.modatuacao1:setTop(0);
    obj.modatuacao1:setWidth(40);
    obj.modatuacao1:setHeight(25);
    obj.modatuacao1:setName("modatuacao1");
    obj.modatuacao1:setField("modatuacao1");
    obj.modatuacao1:setType("number");
    obj.modatuacao1:setMax(999);
    obj.modatuacao1:setHorzTextAlign("center");
    obj.modatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.modatuacao1, "fontStyle",  "bold");
    obj.modatuacao1:setHitTest(false);

    obj.rectangle102 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle102:setParent(obj.layout35);
    obj.rectangle102:setLeft(350);
    obj.rectangle102:setTop(5);
    obj.rectangle102:setColor("Gainsboro");
    obj.rectangle102:setWidth(20);
    obj.rectangle102:setHeight(15);
    obj.rectangle102:setXradius(2);
    obj.rectangle102:setYradius(2);
    obj.rectangle102:setName("rectangle102");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout35);
    obj.label95:setLeft(353);
    obj.label95:setTop(3);
    obj.label95:setWidth(20);
    obj.label95:setHeight(15);
    obj.label95:setFontSize(20);
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setFontColor("black");
    obj.label95:setText("+");
    obj.label95:setName("label95");

    obj.outrosatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosatuacao1:setParent(obj.layout35);
    obj.outrosatuacao1:setLeft(375);
    obj.outrosatuacao1:setTop(0);
    obj.outrosatuacao1:setWidth(40);
    obj.outrosatuacao1:setHeight(25);
    obj.outrosatuacao1:setName("outrosatuacao1");
    obj.outrosatuacao1:setField("outrosatuacao1");
    obj.outrosatuacao1:setType("number");
    obj.outrosatuacao1:setMax(999);
    obj.outrosatuacao1:setHorzTextAlign("center");
    obj.outrosatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatuacao1, "fontStyle",  "bold");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout31);
    obj.layout36:setLeft(0);
    obj.layout36:setTop(125);
    obj.layout36:setWidth(420);
    obj.layout36:setHeight(32);
    obj.layout36:setName("layout36");

    obj.rectangle103 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle103:setParent(obj.layout36);
    obj.rectangle103:setLeft(5);
    obj.rectangle103:setTop(0);
    obj.rectangle103:setColor("Gainsboro");
    obj.rectangle103:setWidth(155);
    obj.rectangle103:setHeight(25);
    obj.rectangle103:setXradius(2);
    obj.rectangle103:setYradius(2);
    obj.rectangle103:setName("rectangle103");

    obj.cbxatuacao2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxatuacao2:setParent(obj.layout36);
    obj.cbxatuacao2:setLeft(7);
    obj.cbxatuacao2:setTop(3);
    obj.cbxatuacao2:setWidth(20);
    obj.cbxatuacao2:setHeight(20);
    obj.cbxatuacao2:setName("cbxatuacao2");
    obj.cbxatuacao2:setField("cbxatuacao2");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout36);
    obj.label96:setLeft(28);
    obj.label96:setTop(2);
    obj.label96:setWidth(150);
    obj.label96:setHeight(20);
    obj.label96:setText("Atuação");
    obj.label96:setHorzTextAlign("leading");
    obj.label96:setFontSize(15.0);
    lfm_setPropAsString(obj.label96, "fontStyle",  "bold");
    obj.label96:setFontColor("black");
    obj.label96:setName("label96");

    obj.totalatuacao2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalatuacao2:setParent(obj.layout36);
    obj.totalatuacao2:setLeft(165);
    obj.totalatuacao2:setTop(0);
    obj.totalatuacao2:setWidth(40);
    obj.totalatuacao2:setHeight(25);
    obj.totalatuacao2:setName("totalatuacao2");
    obj.totalatuacao2:setField("totalatuacao2");
    obj.totalatuacao2:setType("number");
    obj.totalatuacao2:setMax(999);
    obj.totalatuacao2:setHorzTextAlign("center");
    obj.totalatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatuacao2, "fontStyle",  "bold");
    obj.totalatuacao2:setHitTest(false);

    obj.rectangle104 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle104:setParent(obj.layout36);
    obj.rectangle104:setLeft(210);
    obj.rectangle104:setTop(5);
    obj.rectangle104:setColor("Gainsboro");
    obj.rectangle104:setWidth(20);
    obj.rectangle104:setHeight(15);
    obj.rectangle104:setXradius(2);
    obj.rectangle104:setYradius(2);
    obj.rectangle104:setName("rectangle104");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout36);
    obj.label97:setLeft(213);
    obj.label97:setTop(3);
    obj.label97:setWidth(20);
    obj.label97:setHeight(15);
    obj.label97:setFontSize(20);
    lfm_setPropAsString(obj.label97, "fontStyle",  "bold");
    obj.label97:setFontColor("black");
    obj.label97:setText("=");
    obj.label97:setName("label97");

    obj.gradatuacao2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradatuacao2:setParent(obj.layout36);
    obj.gradatuacao2:setLeft(235);
    obj.gradatuacao2:setTop(0);
    obj.gradatuacao2:setWidth(40);
    obj.gradatuacao2:setHeight(25);
    obj.gradatuacao2:setName("gradatuacao2");
    obj.gradatuacao2:setField("gradatuacao2");
    obj.gradatuacao2:setType("number");
    obj.gradatuacao2:setMax(999);
    obj.gradatuacao2:setHorzTextAlign("center");
    obj.gradatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatuacao2, "fontStyle",  "bold");
    obj.gradatuacao2:setHitTest(false);

    obj.rectangle105 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle105:setParent(obj.layout36);
    obj.rectangle105:setLeft(280);
    obj.rectangle105:setTop(5);
    obj.rectangle105:setColor("Gainsboro");
    obj.rectangle105:setWidth(20);
    obj.rectangle105:setHeight(15);
    obj.rectangle105:setXradius(2);
    obj.rectangle105:setYradius(2);
    obj.rectangle105:setName("rectangle105");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout36);
    obj.label98:setLeft(283);
    obj.label98:setTop(3);
    obj.label98:setWidth(20);
    obj.label98:setHeight(15);
    obj.label98:setFontSize(20);
    lfm_setPropAsString(obj.label98, "fontStyle",  "bold");
    obj.label98:setFontColor("black");
    obj.label98:setText("+");
    obj.label98:setName("label98");

    obj.modatuacao2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modatuacao2:setParent(obj.layout36);
    obj.modatuacao2:setLeft(305);
    obj.modatuacao2:setTop(0);
    obj.modatuacao2:setWidth(40);
    obj.modatuacao2:setHeight(25);
    obj.modatuacao2:setName("modatuacao2");
    obj.modatuacao2:setField("modatuacao2");
    obj.modatuacao2:setType("number");
    obj.modatuacao2:setMax(999);
    obj.modatuacao2:setHorzTextAlign("center");
    obj.modatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.modatuacao2, "fontStyle",  "bold");
    obj.modatuacao2:setHitTest(false);

    obj.rectangle106 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle106:setParent(obj.layout36);
    obj.rectangle106:setLeft(350);
    obj.rectangle106:setTop(5);
    obj.rectangle106:setColor("Gainsboro");
    obj.rectangle106:setWidth(20);
    obj.rectangle106:setHeight(15);
    obj.rectangle106:setXradius(2);
    obj.rectangle106:setYradius(2);
    obj.rectangle106:setName("rectangle106");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout36);
    obj.label99:setLeft(353);
    obj.label99:setTop(3);
    obj.label99:setWidth(20);
    obj.label99:setHeight(15);
    obj.label99:setFontSize(20);
    lfm_setPropAsString(obj.label99, "fontStyle",  "bold");
    obj.label99:setFontColor("black");
    obj.label99:setText("+");
    obj.label99:setName("label99");

    obj.outrosatuacao2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosatuacao2:setParent(obj.layout36);
    obj.outrosatuacao2:setLeft(375);
    obj.outrosatuacao2:setTop(0);
    obj.outrosatuacao2:setWidth(40);
    obj.outrosatuacao2:setHeight(25);
    obj.outrosatuacao2:setName("outrosatuacao2");
    obj.outrosatuacao2:setField("outrosatuacao2");
    obj.outrosatuacao2:setType("number");
    obj.outrosatuacao2:setMax(999);
    obj.outrosatuacao2:setHorzTextAlign("center");
    obj.outrosatuacao2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatuacao2, "fontStyle",  "bold");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout31);
    obj.layout37:setLeft(0);
    obj.layout37:setTop(155);
    obj.layout37:setWidth(420);
    obj.layout37:setHeight(32);
    obj.layout37:setName("layout37");

    obj.rectangle107 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle107:setParent(obj.layout37);
    obj.rectangle107:setLeft(5);
    obj.rectangle107:setTop(0);
    obj.rectangle107:setColor("Gainsboro");
    obj.rectangle107:setWidth(155);
    obj.rectangle107:setHeight(25);
    obj.rectangle107:setXradius(2);
    obj.rectangle107:setYradius(2);
    obj.rectangle107:setName("rectangle107");

    obj.cbxcavalgar = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxcavalgar:setParent(obj.layout37);
    obj.cbxcavalgar:setLeft(7);
    obj.cbxcavalgar:setTop(3);
    obj.cbxcavalgar:setWidth(20);
    obj.cbxcavalgar:setHeight(20);
    obj.cbxcavalgar:setName("cbxcavalgar");
    obj.cbxcavalgar:setField("cbxcavalgar");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout37);
    obj.label100:setLeft(28);
    obj.label100:setTop(2);
    obj.label100:setWidth(150);
    obj.label100:setHeight(20);
    obj.label100:setText("Cavalgar");
    obj.label100:setHorzTextAlign("leading");
    obj.label100:setFontSize(15.0);
    lfm_setPropAsString(obj.label100, "fontStyle",  "bold");
    obj.label100:setFontColor("black");
    obj.label100:setName("label100");

    obj.totalcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcavalgar:setParent(obj.layout37);
    obj.totalcavalgar:setLeft(165);
    obj.totalcavalgar:setTop(0);
    obj.totalcavalgar:setWidth(40);
    obj.totalcavalgar:setHeight(25);
    obj.totalcavalgar:setName("totalcavalgar");
    obj.totalcavalgar:setField("totalcavalgar");
    obj.totalcavalgar:setType("number");
    obj.totalcavalgar:setMax(999);
    obj.totalcavalgar:setHorzTextAlign("center");
    obj.totalcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcavalgar, "fontStyle",  "bold");
    obj.totalcavalgar:setHitTest(false);

    obj.rectangle108 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle108:setParent(obj.layout37);
    obj.rectangle108:setLeft(210);
    obj.rectangle108:setTop(5);
    obj.rectangle108:setColor("Gainsboro");
    obj.rectangle108:setWidth(20);
    obj.rectangle108:setHeight(15);
    obj.rectangle108:setXradius(2);
    obj.rectangle108:setYradius(2);
    obj.rectangle108:setName("rectangle108");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout37);
    obj.label101:setLeft(213);
    obj.label101:setTop(3);
    obj.label101:setWidth(20);
    obj.label101:setHeight(15);
    obj.label101:setFontSize(20);
    lfm_setPropAsString(obj.label101, "fontStyle",  "bold");
    obj.label101:setFontColor("black");
    obj.label101:setText("=");
    obj.label101:setName("label101");

    obj.gradcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradcavalgar:setParent(obj.layout37);
    obj.gradcavalgar:setLeft(235);
    obj.gradcavalgar:setTop(0);
    obj.gradcavalgar:setWidth(40);
    obj.gradcavalgar:setHeight(25);
    obj.gradcavalgar:setName("gradcavalgar");
    obj.gradcavalgar:setField("gradcavalgar");
    obj.gradcavalgar:setType("number");
    obj.gradcavalgar:setMax(999);
    obj.gradcavalgar:setHorzTextAlign("center");
    obj.gradcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradcavalgar, "fontStyle",  "bold");
    obj.gradcavalgar:setHitTest(false);

    obj.rectangle109 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle109:setParent(obj.layout37);
    obj.rectangle109:setLeft(280);
    obj.rectangle109:setTop(5);
    obj.rectangle109:setColor("Gainsboro");
    obj.rectangle109:setWidth(20);
    obj.rectangle109:setHeight(15);
    obj.rectangle109:setXradius(2);
    obj.rectangle109:setYradius(2);
    obj.rectangle109:setName("rectangle109");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout37);
    obj.label102:setLeft(283);
    obj.label102:setTop(3);
    obj.label102:setWidth(20);
    obj.label102:setHeight(15);
    obj.label102:setFontSize(20);
    lfm_setPropAsString(obj.label102, "fontStyle",  "bold");
    obj.label102:setFontColor("black");
    obj.label102:setText("+");
    obj.label102:setName("label102");

    obj.modcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.modcavalgar:setParent(obj.layout37);
    obj.modcavalgar:setLeft(305);
    obj.modcavalgar:setTop(0);
    obj.modcavalgar:setWidth(40);
    obj.modcavalgar:setHeight(25);
    obj.modcavalgar:setName("modcavalgar");
    obj.modcavalgar:setField("modcavalgar");
    obj.modcavalgar:setType("number");
    obj.modcavalgar:setMax(999);
    obj.modcavalgar:setHorzTextAlign("center");
    obj.modcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.modcavalgar, "fontStyle",  "bold");
    obj.modcavalgar:setHitTest(false);

    obj.rectangle110 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle110:setParent(obj.layout37);
    obj.rectangle110:setLeft(350);
    obj.rectangle110:setTop(5);
    obj.rectangle110:setColor("Gainsboro");
    obj.rectangle110:setWidth(20);
    obj.rectangle110:setHeight(15);
    obj.rectangle110:setXradius(2);
    obj.rectangle110:setYradius(2);
    obj.rectangle110:setName("rectangle110");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout37);
    obj.label103:setLeft(353);
    obj.label103:setTop(3);
    obj.label103:setWidth(20);
    obj.label103:setHeight(15);
    obj.label103:setFontSize(20);
    lfm_setPropAsString(obj.label103, "fontStyle",  "bold");
    obj.label103:setFontColor("black");
    obj.label103:setText("+");
    obj.label103:setName("label103");

    obj.outroscavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroscavalgar:setParent(obj.layout37);
    obj.outroscavalgar:setLeft(375);
    obj.outroscavalgar:setTop(0);
    obj.outroscavalgar:setWidth(40);
    obj.outroscavalgar:setHeight(25);
    obj.outroscavalgar:setName("outroscavalgar");
    obj.outroscavalgar:setField("outroscavalgar");
    obj.outroscavalgar:setType("number");
    obj.outroscavalgar:setMax(999);
    obj.outroscavalgar:setHorzTextAlign("center");
    obj.outroscavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.outroscavalgar, "fontStyle",  "bold");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout31);
    obj.layout38:setLeft(0);
    obj.layout38:setTop(185);
    obj.layout38:setWidth(420);
    obj.layout38:setHeight(32);
    obj.layout38:setName("layout38");

    obj.rectangle111 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle111:setParent(obj.layout38);
    obj.rectangle111:setLeft(5);
    obj.rectangle111:setTop(0);
    obj.rectangle111:setColor("Gainsboro");
    obj.rectangle111:setWidth(155);
    obj.rectangle111:setHeight(25);
    obj.rectangle111:setXradius(2);
    obj.rectangle111:setYradius(2);
    obj.rectangle111:setName("rectangle111");

    obj.cbxconhecimento1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxconhecimento1:setParent(obj.layout38);
    obj.cbxconhecimento1:setLeft(7);
    obj.cbxconhecimento1:setTop(3);
    obj.cbxconhecimento1:setWidth(20);
    obj.cbxconhecimento1:setHeight(20);
    obj.cbxconhecimento1:setName("cbxconhecimento1");
    obj.cbxconhecimento1:setField("cbxconhecimento1");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout38);
    obj.label104:setLeft(28);
    obj.label104:setTop(2);
    obj.label104:setWidth(150);
    obj.label104:setHeight(20);
    obj.label104:setText("Conhecimento");
    obj.label104:setHorzTextAlign("leading");
    obj.label104:setFontSize(15.0);
    lfm_setPropAsString(obj.label104, "fontStyle",  "bold");
    obj.label104:setFontColor("black");
    obj.label104:setName("label104");

    obj.totalconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento1:setParent(obj.layout38);
    obj.totalconhecimento1:setLeft(165);
    obj.totalconhecimento1:setTop(0);
    obj.totalconhecimento1:setWidth(40);
    obj.totalconhecimento1:setHeight(25);
    obj.totalconhecimento1:setName("totalconhecimento1");
    obj.totalconhecimento1:setField("totalconhecimento1");
    obj.totalconhecimento1:setType("number");
    obj.totalconhecimento1:setMax(999);
    obj.totalconhecimento1:setHorzTextAlign("center");
    obj.totalconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento1, "fontStyle",  "bold");
    obj.totalconhecimento1:setHitTest(false);

    obj.rectangle112 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle112:setParent(obj.layout38);
    obj.rectangle112:setLeft(210);
    obj.rectangle112:setTop(5);
    obj.rectangle112:setColor("Gainsboro");
    obj.rectangle112:setWidth(20);
    obj.rectangle112:setHeight(15);
    obj.rectangle112:setXradius(2);
    obj.rectangle112:setYradius(2);
    obj.rectangle112:setName("rectangle112");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout38);
    obj.label105:setLeft(213);
    obj.label105:setTop(3);
    obj.label105:setWidth(20);
    obj.label105:setHeight(15);
    obj.label105:setFontSize(20);
    lfm_setPropAsString(obj.label105, "fontStyle",  "bold");
    obj.label105:setFontColor("black");
    obj.label105:setText("=");
    obj.label105:setName("label105");

    obj.gradconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento1:setParent(obj.layout38);
    obj.gradconhecimento1:setLeft(235);
    obj.gradconhecimento1:setTop(0);
    obj.gradconhecimento1:setWidth(40);
    obj.gradconhecimento1:setHeight(25);
    obj.gradconhecimento1:setName("gradconhecimento1");
    obj.gradconhecimento1:setField("gradconhecimento1");
    obj.gradconhecimento1:setType("number");
    obj.gradconhecimento1:setMax(999);
    obj.gradconhecimento1:setHorzTextAlign("center");
    obj.gradconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento1, "fontStyle",  "bold");
    obj.gradconhecimento1:setHitTest(false);

    obj.rectangle113 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle113:setParent(obj.layout38);
    obj.rectangle113:setLeft(280);
    obj.rectangle113:setTop(5);
    obj.rectangle113:setColor("Gainsboro");
    obj.rectangle113:setWidth(20);
    obj.rectangle113:setHeight(15);
    obj.rectangle113:setXradius(2);
    obj.rectangle113:setYradius(2);
    obj.rectangle113:setName("rectangle113");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout38);
    obj.label106:setLeft(283);
    obj.label106:setTop(3);
    obj.label106:setWidth(20);
    obj.label106:setHeight(15);
    obj.label106:setFontSize(20);
    lfm_setPropAsString(obj.label106, "fontStyle",  "bold");
    obj.label106:setFontColor("black");
    obj.label106:setText("+");
    obj.label106:setName("label106");

    obj.modconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento1:setParent(obj.layout38);
    obj.modconhecimento1:setLeft(305);
    obj.modconhecimento1:setTop(0);
    obj.modconhecimento1:setWidth(40);
    obj.modconhecimento1:setHeight(25);
    obj.modconhecimento1:setName("modconhecimento1");
    obj.modconhecimento1:setField("modconhecimento1");
    obj.modconhecimento1:setType("number");
    obj.modconhecimento1:setMax(999);
    obj.modconhecimento1:setHorzTextAlign("center");
    obj.modconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento1, "fontStyle",  "bold");
    obj.modconhecimento1:setHitTest(false);

    obj.rectangle114 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle114:setParent(obj.layout38);
    obj.rectangle114:setLeft(350);
    obj.rectangle114:setTop(5);
    obj.rectangle114:setColor("Gainsboro");
    obj.rectangle114:setWidth(20);
    obj.rectangle114:setHeight(15);
    obj.rectangle114:setXradius(2);
    obj.rectangle114:setYradius(2);
    obj.rectangle114:setName("rectangle114");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout38);
    obj.label107:setLeft(353);
    obj.label107:setTop(3);
    obj.label107:setWidth(20);
    obj.label107:setHeight(15);
    obj.label107:setFontSize(20);
    lfm_setPropAsString(obj.label107, "fontStyle",  "bold");
    obj.label107:setFontColor("black");
    obj.label107:setText("+");
    obj.label107:setName("label107");

    obj.outrosconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento1:setParent(obj.layout38);
    obj.outrosconhecimento1:setLeft(375);
    obj.outrosconhecimento1:setTop(0);
    obj.outrosconhecimento1:setWidth(40);
    obj.outrosconhecimento1:setHeight(25);
    obj.outrosconhecimento1:setName("outrosconhecimento1");
    obj.outrosconhecimento1:setField("outrosconhecimento1");
    obj.outrosconhecimento1:setType("number");
    obj.outrosconhecimento1:setMax(999);
    obj.outrosconhecimento1:setHorzTextAlign("center");
    obj.outrosconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento1, "fontStyle",  "bold");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout31);
    obj.layout39:setLeft(0);
    obj.layout39:setTop(215);
    obj.layout39:setWidth(420);
    obj.layout39:setHeight(32);
    obj.layout39:setName("layout39");

    obj.rectangle115 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle115:setParent(obj.layout39);
    obj.rectangle115:setLeft(5);
    obj.rectangle115:setTop(0);
    obj.rectangle115:setColor("Gainsboro");
    obj.rectangle115:setWidth(155);
    obj.rectangle115:setHeight(25);
    obj.rectangle115:setXradius(2);
    obj.rectangle115:setYradius(2);
    obj.rectangle115:setName("rectangle115");

    obj.cbxconhecimento2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxconhecimento2:setParent(obj.layout39);
    obj.cbxconhecimento2:setLeft(7);
    obj.cbxconhecimento2:setTop(3);
    obj.cbxconhecimento2:setWidth(20);
    obj.cbxconhecimento2:setHeight(20);
    obj.cbxconhecimento2:setName("cbxconhecimento2");
    obj.cbxconhecimento2:setField("cbxconhecimento2");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout39);
    obj.label108:setLeft(28);
    obj.label108:setTop(2);
    obj.label108:setWidth(150);
    obj.label108:setHeight(20);
    obj.label108:setText("Conhecimento");
    obj.label108:setHorzTextAlign("leading");
    obj.label108:setFontSize(15.0);
    lfm_setPropAsString(obj.label108, "fontStyle",  "bold");
    obj.label108:setFontColor("black");
    obj.label108:setName("label108");

    obj.totalconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento2:setParent(obj.layout39);
    obj.totalconhecimento2:setLeft(165);
    obj.totalconhecimento2:setTop(0);
    obj.totalconhecimento2:setWidth(40);
    obj.totalconhecimento2:setHeight(25);
    obj.totalconhecimento2:setName("totalconhecimento2");
    obj.totalconhecimento2:setField("totalconhecimento2");
    obj.totalconhecimento2:setType("number");
    obj.totalconhecimento2:setMax(999);
    obj.totalconhecimento2:setHorzTextAlign("center");
    obj.totalconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento2, "fontStyle",  "bold");
    obj.totalconhecimento2:setHitTest(false);

    obj.rectangle116 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle116:setParent(obj.layout39);
    obj.rectangle116:setLeft(210);
    obj.rectangle116:setTop(5);
    obj.rectangle116:setColor("Gainsboro");
    obj.rectangle116:setWidth(20);
    obj.rectangle116:setHeight(15);
    obj.rectangle116:setXradius(2);
    obj.rectangle116:setYradius(2);
    obj.rectangle116:setName("rectangle116");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout39);
    obj.label109:setLeft(213);
    obj.label109:setTop(3);
    obj.label109:setWidth(20);
    obj.label109:setHeight(15);
    obj.label109:setFontSize(20);
    lfm_setPropAsString(obj.label109, "fontStyle",  "bold");
    obj.label109:setFontColor("black");
    obj.label109:setText("=");
    obj.label109:setName("label109");

    obj.gradconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento2:setParent(obj.layout39);
    obj.gradconhecimento2:setLeft(235);
    obj.gradconhecimento2:setTop(0);
    obj.gradconhecimento2:setWidth(40);
    obj.gradconhecimento2:setHeight(25);
    obj.gradconhecimento2:setName("gradconhecimento2");
    obj.gradconhecimento2:setField("gradconhecimento2");
    obj.gradconhecimento2:setType("number");
    obj.gradconhecimento2:setMax(999);
    obj.gradconhecimento2:setHorzTextAlign("center");
    obj.gradconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento2, "fontStyle",  "bold");
    obj.gradconhecimento2:setHitTest(false);

    obj.rectangle117 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle117:setParent(obj.layout39);
    obj.rectangle117:setLeft(280);
    obj.rectangle117:setTop(5);
    obj.rectangle117:setColor("Gainsboro");
    obj.rectangle117:setWidth(20);
    obj.rectangle117:setHeight(15);
    obj.rectangle117:setXradius(2);
    obj.rectangle117:setYradius(2);
    obj.rectangle117:setName("rectangle117");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout39);
    obj.label110:setLeft(283);
    obj.label110:setTop(3);
    obj.label110:setWidth(20);
    obj.label110:setHeight(15);
    obj.label110:setFontSize(20);
    lfm_setPropAsString(obj.label110, "fontStyle",  "bold");
    obj.label110:setFontColor("black");
    obj.label110:setText("+");
    obj.label110:setName("label110");

    obj.modconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento2:setParent(obj.layout39);
    obj.modconhecimento2:setLeft(305);
    obj.modconhecimento2:setTop(0);
    obj.modconhecimento2:setWidth(40);
    obj.modconhecimento2:setHeight(25);
    obj.modconhecimento2:setName("modconhecimento2");
    obj.modconhecimento2:setField("modconhecimento2");
    obj.modconhecimento2:setType("number");
    obj.modconhecimento2:setMax(999);
    obj.modconhecimento2:setHorzTextAlign("center");
    obj.modconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento2, "fontStyle",  "bold");
    obj.modconhecimento2:setHitTest(false);

    obj.rectangle118 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle118:setParent(obj.layout39);
    obj.rectangle118:setLeft(350);
    obj.rectangle118:setTop(5);
    obj.rectangle118:setColor("Gainsboro");
    obj.rectangle118:setWidth(20);
    obj.rectangle118:setHeight(15);
    obj.rectangle118:setXradius(2);
    obj.rectangle118:setYradius(2);
    obj.rectangle118:setName("rectangle118");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout39);
    obj.label111:setLeft(353);
    obj.label111:setTop(3);
    obj.label111:setWidth(20);
    obj.label111:setHeight(15);
    obj.label111:setFontSize(20);
    lfm_setPropAsString(obj.label111, "fontStyle",  "bold");
    obj.label111:setFontColor("black");
    obj.label111:setText("+");
    obj.label111:setName("label111");

    obj.outrosconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento2:setParent(obj.layout39);
    obj.outrosconhecimento2:setLeft(375);
    obj.outrosconhecimento2:setTop(0);
    obj.outrosconhecimento2:setWidth(40);
    obj.outrosconhecimento2:setHeight(25);
    obj.outrosconhecimento2:setName("outrosconhecimento2");
    obj.outrosconhecimento2:setField("outrosconhecimento2");
    obj.outrosconhecimento2:setType("number");
    obj.outrosconhecimento2:setMax(999);
    obj.outrosconhecimento2:setHorzTextAlign("center");
    obj.outrosconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento2, "fontStyle",  "bold");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout31);
    obj.layout40:setLeft(0);
    obj.layout40:setTop(245);
    obj.layout40:setWidth(420);
    obj.layout40:setHeight(32);
    obj.layout40:setName("layout40");

    obj.rectangle119 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle119:setParent(obj.layout40);
    obj.rectangle119:setLeft(5);
    obj.rectangle119:setTop(0);
    obj.rectangle119:setColor("Gainsboro");
    obj.rectangle119:setWidth(155);
    obj.rectangle119:setHeight(25);
    obj.rectangle119:setXradius(2);
    obj.rectangle119:setYradius(2);
    obj.rectangle119:setName("rectangle119");

    obj.cbxcura = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxcura:setParent(obj.layout40);
    obj.cbxcura:setLeft(7);
    obj.cbxcura:setTop(3);
    obj.cbxcura:setWidth(20);
    obj.cbxcura:setHeight(20);
    obj.cbxcura:setName("cbxcura");
    obj.cbxcura:setField("cbxcura");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout40);
    obj.label112:setLeft(28);
    obj.label112:setTop(2);
    obj.label112:setWidth(150);
    obj.label112:setHeight(20);
    obj.label112:setText("Cura");
    obj.label112:setHorzTextAlign("leading");
    obj.label112:setFontSize(15.0);
    lfm_setPropAsString(obj.label112, "fontStyle",  "bold");
    obj.label112:setFontColor("black");
    obj.label112:setName("label112");

    obj.totalcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcura:setParent(obj.layout40);
    obj.totalcura:setLeft(165);
    obj.totalcura:setTop(0);
    obj.totalcura:setWidth(40);
    obj.totalcura:setHeight(25);
    obj.totalcura:setName("totalcura");
    obj.totalcura:setField("totalcura");
    obj.totalcura:setType("number");
    obj.totalcura:setMax(999);
    obj.totalcura:setHorzTextAlign("center");
    obj.totalcura:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcura, "fontStyle",  "bold");
    obj.totalcura:setHitTest(false);

    obj.rectangle120 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle120:setParent(obj.layout40);
    obj.rectangle120:setLeft(210);
    obj.rectangle120:setTop(5);
    obj.rectangle120:setColor("Gainsboro");
    obj.rectangle120:setWidth(20);
    obj.rectangle120:setHeight(15);
    obj.rectangle120:setXradius(2);
    obj.rectangle120:setYradius(2);
    obj.rectangle120:setName("rectangle120");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.layout40);
    obj.label113:setLeft(213);
    obj.label113:setTop(3);
    obj.label113:setWidth(20);
    obj.label113:setHeight(15);
    obj.label113:setFontSize(20);
    lfm_setPropAsString(obj.label113, "fontStyle",  "bold");
    obj.label113:setFontColor("black");
    obj.label113:setText("=");
    obj.label113:setName("label113");

    obj.gradcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradcura:setParent(obj.layout40);
    obj.gradcura:setLeft(235);
    obj.gradcura:setTop(0);
    obj.gradcura:setWidth(40);
    obj.gradcura:setHeight(25);
    obj.gradcura:setName("gradcura");
    obj.gradcura:setField("gradcura");
    obj.gradcura:setType("number");
    obj.gradcura:setMax(999);
    obj.gradcura:setHorzTextAlign("center");
    obj.gradcura:setFontSize(15.0);
    lfm_setPropAsString(obj.gradcura, "fontStyle",  "bold");
    obj.gradcura:setHitTest(false);

    obj.rectangle121 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle121:setParent(obj.layout40);
    obj.rectangle121:setLeft(280);
    obj.rectangle121:setTop(5);
    obj.rectangle121:setColor("Gainsboro");
    obj.rectangle121:setWidth(20);
    obj.rectangle121:setHeight(15);
    obj.rectangle121:setXradius(2);
    obj.rectangle121:setYradius(2);
    obj.rectangle121:setName("rectangle121");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.layout40);
    obj.label114:setLeft(283);
    obj.label114:setTop(3);
    obj.label114:setWidth(20);
    obj.label114:setHeight(15);
    obj.label114:setFontSize(20);
    lfm_setPropAsString(obj.label114, "fontStyle",  "bold");
    obj.label114:setFontColor("black");
    obj.label114:setText("+");
    obj.label114:setName("label114");

    obj.modcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.modcura:setParent(obj.layout40);
    obj.modcura:setLeft(305);
    obj.modcura:setTop(0);
    obj.modcura:setWidth(40);
    obj.modcura:setHeight(25);
    obj.modcura:setName("modcura");
    obj.modcura:setField("modcura");
    obj.modcura:setType("number");
    obj.modcura:setMax(999);
    obj.modcura:setHorzTextAlign("center");
    obj.modcura:setFontSize(15.0);
    lfm_setPropAsString(obj.modcura, "fontStyle",  "bold");
    obj.modcura:setHitTest(false);

    obj.rectangle122 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle122:setParent(obj.layout40);
    obj.rectangle122:setLeft(350);
    obj.rectangle122:setTop(5);
    obj.rectangle122:setColor("Gainsboro");
    obj.rectangle122:setWidth(20);
    obj.rectangle122:setHeight(15);
    obj.rectangle122:setXradius(2);
    obj.rectangle122:setYradius(2);
    obj.rectangle122:setName("rectangle122");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout40);
    obj.label115:setLeft(353);
    obj.label115:setTop(3);
    obj.label115:setWidth(20);
    obj.label115:setHeight(15);
    obj.label115:setFontSize(20);
    lfm_setPropAsString(obj.label115, "fontStyle",  "bold");
    obj.label115:setFontColor("black");
    obj.label115:setText("+");
    obj.label115:setName("label115");

    obj.outroscura = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroscura:setParent(obj.layout40);
    obj.outroscura:setLeft(375);
    obj.outroscura:setTop(0);
    obj.outroscura:setWidth(40);
    obj.outroscura:setHeight(25);
    obj.outroscura:setName("outroscura");
    obj.outroscura:setField("outroscura");
    obj.outroscura:setType("number");
    obj.outroscura:setMax(999);
    obj.outroscura:setHorzTextAlign("center");
    obj.outroscura:setFontSize(15.0);
    lfm_setPropAsString(obj.outroscura, "fontStyle",  "bold");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout31);
    obj.layout41:setLeft(0);
    obj.layout41:setTop(275);
    obj.layout41:setWidth(420);
    obj.layout41:setHeight(32);
    obj.layout41:setName("layout41");

    obj.rectangle123 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle123:setParent(obj.layout41);
    obj.rectangle123:setLeft(5);
    obj.rectangle123:setTop(0);
    obj.rectangle123:setColor("Gainsboro");
    obj.rectangle123:setWidth(155);
    obj.rectangle123:setHeight(25);
    obj.rectangle123:setXradius(2);
    obj.rectangle123:setYradius(2);
    obj.rectangle123:setName("rectangle123");

    obj.cbxdiplomacia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxdiplomacia:setParent(obj.layout41);
    obj.cbxdiplomacia:setLeft(7);
    obj.cbxdiplomacia:setTop(3);
    obj.cbxdiplomacia:setWidth(20);
    obj.cbxdiplomacia:setHeight(20);
    obj.cbxdiplomacia:setName("cbxdiplomacia");
    obj.cbxdiplomacia:setField("cbxdiplomacia");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout41);
    obj.label116:setLeft(28);
    obj.label116:setTop(2);
    obj.label116:setWidth(150);
    obj.label116:setHeight(20);
    obj.label116:setText("Diplomacia");
    obj.label116:setHorzTextAlign("leading");
    obj.label116:setFontSize(15.0);
    lfm_setPropAsString(obj.label116, "fontStyle",  "bold");
    obj.label116:setFontColor("black");
    obj.label116:setName("label116");

    obj.totaldiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaldiplomacia:setParent(obj.layout41);
    obj.totaldiplomacia:setLeft(165);
    obj.totaldiplomacia:setTop(0);
    obj.totaldiplomacia:setWidth(40);
    obj.totaldiplomacia:setHeight(25);
    obj.totaldiplomacia:setName("totaldiplomacia");
    obj.totaldiplomacia:setField("totaldiplomacia");
    obj.totaldiplomacia:setType("number");
    obj.totaldiplomacia:setMax(999);
    obj.totaldiplomacia:setHorzTextAlign("center");
    obj.totaldiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totaldiplomacia, "fontStyle",  "bold");
    obj.totaldiplomacia:setHitTest(false);

    obj.rectangle124 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle124:setParent(obj.layout41);
    obj.rectangle124:setLeft(210);
    obj.rectangle124:setTop(5);
    obj.rectangle124:setColor("Gainsboro");
    obj.rectangle124:setWidth(20);
    obj.rectangle124:setHeight(15);
    obj.rectangle124:setXradius(2);
    obj.rectangle124:setYradius(2);
    obj.rectangle124:setName("rectangle124");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout41);
    obj.label117:setLeft(213);
    obj.label117:setTop(3);
    obj.label117:setWidth(20);
    obj.label117:setHeight(15);
    obj.label117:setFontSize(20);
    lfm_setPropAsString(obj.label117, "fontStyle",  "bold");
    obj.label117:setFontColor("black");
    obj.label117:setText("=");
    obj.label117:setName("label117");

    obj.graddiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.graddiplomacia:setParent(obj.layout41);
    obj.graddiplomacia:setLeft(235);
    obj.graddiplomacia:setTop(0);
    obj.graddiplomacia:setWidth(40);
    obj.graddiplomacia:setHeight(25);
    obj.graddiplomacia:setName("graddiplomacia");
    obj.graddiplomacia:setField("graddiplomacia");
    obj.graddiplomacia:setType("number");
    obj.graddiplomacia:setMax(999);
    obj.graddiplomacia:setHorzTextAlign("center");
    obj.graddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.graddiplomacia, "fontStyle",  "bold");
    obj.graddiplomacia:setHitTest(false);

    obj.rectangle125 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle125:setParent(obj.layout41);
    obj.rectangle125:setLeft(280);
    obj.rectangle125:setTop(5);
    obj.rectangle125:setColor("Gainsboro");
    obj.rectangle125:setWidth(20);
    obj.rectangle125:setHeight(15);
    obj.rectangle125:setXradius(2);
    obj.rectangle125:setYradius(2);
    obj.rectangle125:setName("rectangle125");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout41);
    obj.label118:setLeft(283);
    obj.label118:setTop(3);
    obj.label118:setWidth(20);
    obj.label118:setHeight(15);
    obj.label118:setFontSize(20);
    lfm_setPropAsString(obj.label118, "fontStyle",  "bold");
    obj.label118:setFontColor("black");
    obj.label118:setText("+");
    obj.label118:setName("label118");

    obj.moddiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.moddiplomacia:setParent(obj.layout41);
    obj.moddiplomacia:setLeft(305);
    obj.moddiplomacia:setTop(0);
    obj.moddiplomacia:setWidth(40);
    obj.moddiplomacia:setHeight(25);
    obj.moddiplomacia:setName("moddiplomacia");
    obj.moddiplomacia:setField("moddiplomacia");
    obj.moddiplomacia:setType("number");
    obj.moddiplomacia:setMax(999);
    obj.moddiplomacia:setHorzTextAlign("center");
    obj.moddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.moddiplomacia, "fontStyle",  "bold");
    obj.moddiplomacia:setHitTest(false);

    obj.rectangle126 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle126:setParent(obj.layout41);
    obj.rectangle126:setLeft(350);
    obj.rectangle126:setTop(5);
    obj.rectangle126:setColor("Gainsboro");
    obj.rectangle126:setWidth(20);
    obj.rectangle126:setHeight(15);
    obj.rectangle126:setXradius(2);
    obj.rectangle126:setYradius(2);
    obj.rectangle126:setName("rectangle126");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout41);
    obj.label119:setLeft(353);
    obj.label119:setTop(3);
    obj.label119:setWidth(20);
    obj.label119:setHeight(15);
    obj.label119:setFontSize(20);
    lfm_setPropAsString(obj.label119, "fontStyle",  "bold");
    obj.label119:setFontColor("black");
    obj.label119:setText("+");
    obj.label119:setName("label119");

    obj.outrosdiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosdiplomacia:setParent(obj.layout41);
    obj.outrosdiplomacia:setLeft(375);
    obj.outrosdiplomacia:setTop(0);
    obj.outrosdiplomacia:setWidth(40);
    obj.outrosdiplomacia:setHeight(25);
    obj.outrosdiplomacia:setName("outrosdiplomacia");
    obj.outrosdiplomacia:setField("outrosdiplomacia");
    obj.outrosdiplomacia:setType("number");
    obj.outrosdiplomacia:setMax(999);
    obj.outrosdiplomacia:setHorzTextAlign("center");
    obj.outrosdiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosdiplomacia, "fontStyle",  "bold");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout31);
    obj.layout42:setLeft(0);
    obj.layout42:setTop(305);
    obj.layout42:setWidth(420);
    obj.layout42:setHeight(32);
    obj.layout42:setName("layout42");

    obj.rectangle127 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle127:setParent(obj.layout42);
    obj.rectangle127:setLeft(5);
    obj.rectangle127:setTop(0);
    obj.rectangle127:setColor("Gainsboro");
    obj.rectangle127:setWidth(155);
    obj.rectangle127:setHeight(25);
    obj.rectangle127:setXradius(2);
    obj.rectangle127:setYradius(2);
    obj.rectangle127:setName("rectangle127");

    obj.cbxenganacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxenganacao:setParent(obj.layout42);
    obj.cbxenganacao:setLeft(7);
    obj.cbxenganacao:setTop(3);
    obj.cbxenganacao:setWidth(20);
    obj.cbxenganacao:setHeight(20);
    obj.cbxenganacao:setName("cbxenganacao");
    obj.cbxenganacao:setField("cbxenganacao");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout42);
    obj.label120:setLeft(28);
    obj.label120:setTop(2);
    obj.label120:setWidth(150);
    obj.label120:setHeight(20);
    obj.label120:setText("Enganação");
    obj.label120:setHorzTextAlign("leading");
    obj.label120:setFontSize(15.0);
    lfm_setPropAsString(obj.label120, "fontStyle",  "bold");
    obj.label120:setFontColor("black");
    obj.label120:setName("label120");

    obj.totalenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalenganacao:setParent(obj.layout42);
    obj.totalenganacao:setLeft(165);
    obj.totalenganacao:setTop(0);
    obj.totalenganacao:setWidth(40);
    obj.totalenganacao:setHeight(25);
    obj.totalenganacao:setName("totalenganacao");
    obj.totalenganacao:setField("totalenganacao");
    obj.totalenganacao:setType("number");
    obj.totalenganacao:setMax(999);
    obj.totalenganacao:setHorzTextAlign("center");
    obj.totalenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalenganacao, "fontStyle",  "bold");
    obj.totalenganacao:setHitTest(false);

    obj.rectangle128 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle128:setParent(obj.layout42);
    obj.rectangle128:setLeft(210);
    obj.rectangle128:setTop(5);
    obj.rectangle128:setColor("Gainsboro");
    obj.rectangle128:setWidth(20);
    obj.rectangle128:setHeight(15);
    obj.rectangle128:setXradius(2);
    obj.rectangle128:setYradius(2);
    obj.rectangle128:setName("rectangle128");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.layout42);
    obj.label121:setLeft(213);
    obj.label121:setTop(3);
    obj.label121:setWidth(20);
    obj.label121:setHeight(15);
    obj.label121:setFontSize(20);
    lfm_setPropAsString(obj.label121, "fontStyle",  "bold");
    obj.label121:setFontColor("black");
    obj.label121:setText("=");
    obj.label121:setName("label121");

    obj.gradenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradenganacao:setParent(obj.layout42);
    obj.gradenganacao:setLeft(235);
    obj.gradenganacao:setTop(0);
    obj.gradenganacao:setWidth(40);
    obj.gradenganacao:setHeight(25);
    obj.gradenganacao:setName("gradenganacao");
    obj.gradenganacao:setField("gradenganacao");
    obj.gradenganacao:setType("number");
    obj.gradenganacao:setMax(999);
    obj.gradenganacao:setHorzTextAlign("center");
    obj.gradenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradenganacao, "fontStyle",  "bold");
    obj.gradenganacao:setHitTest(false);

    obj.rectangle129 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle129:setParent(obj.layout42);
    obj.rectangle129:setLeft(280);
    obj.rectangle129:setTop(5);
    obj.rectangle129:setColor("Gainsboro");
    obj.rectangle129:setWidth(20);
    obj.rectangle129:setHeight(15);
    obj.rectangle129:setXradius(2);
    obj.rectangle129:setYradius(2);
    obj.rectangle129:setName("rectangle129");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout42);
    obj.label122:setLeft(283);
    obj.label122:setTop(3);
    obj.label122:setWidth(20);
    obj.label122:setHeight(15);
    obj.label122:setFontSize(20);
    lfm_setPropAsString(obj.label122, "fontStyle",  "bold");
    obj.label122:setFontColor("black");
    obj.label122:setText("+");
    obj.label122:setName("label122");

    obj.modenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modenganacao:setParent(obj.layout42);
    obj.modenganacao:setLeft(305);
    obj.modenganacao:setTop(0);
    obj.modenganacao:setWidth(40);
    obj.modenganacao:setHeight(25);
    obj.modenganacao:setName("modenganacao");
    obj.modenganacao:setField("modenganacao");
    obj.modenganacao:setType("number");
    obj.modenganacao:setMax(999);
    obj.modenganacao:setHorzTextAlign("center");
    obj.modenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modenganacao, "fontStyle",  "bold");
    obj.modenganacao:setHitTest(false);

    obj.rectangle130 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle130:setParent(obj.layout42);
    obj.rectangle130:setLeft(350);
    obj.rectangle130:setTop(5);
    obj.rectangle130:setColor("Gainsboro");
    obj.rectangle130:setWidth(20);
    obj.rectangle130:setHeight(15);
    obj.rectangle130:setXradius(2);
    obj.rectangle130:setYradius(2);
    obj.rectangle130:setName("rectangle130");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout42);
    obj.label123:setLeft(353);
    obj.label123:setTop(3);
    obj.label123:setWidth(20);
    obj.label123:setHeight(15);
    obj.label123:setFontSize(20);
    lfm_setPropAsString(obj.label123, "fontStyle",  "bold");
    obj.label123:setFontColor("black");
    obj.label123:setText("+");
    obj.label123:setName("label123");

    obj.outrosenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosenganacao:setParent(obj.layout42);
    obj.outrosenganacao:setLeft(375);
    obj.outrosenganacao:setTop(0);
    obj.outrosenganacao:setWidth(40);
    obj.outrosenganacao:setHeight(25);
    obj.outrosenganacao:setName("outrosenganacao");
    obj.outrosenganacao:setField("outrosenganacao");
    obj.outrosenganacao:setType("number");
    obj.outrosenganacao:setMax(999);
    obj.outrosenganacao:setHorzTextAlign("center");
    obj.outrosenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosenganacao, "fontStyle",  "bold");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout31);
    obj.layout43:setLeft(0);
    obj.layout43:setTop(335);
    obj.layout43:setWidth(420);
    obj.layout43:setHeight(32);
    obj.layout43:setName("layout43");

    obj.rectangle131 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle131:setParent(obj.layout43);
    obj.rectangle131:setLeft(5);
    obj.rectangle131:setTop(0);
    obj.rectangle131:setColor("Gainsboro");
    obj.rectangle131:setWidth(155);
    obj.rectangle131:setHeight(25);
    obj.rectangle131:setXradius(2);
    obj.rectangle131:setYradius(2);
    obj.rectangle131:setName("rectangle131");

    obj.cbxfurtividade = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxfurtividade:setParent(obj.layout43);
    obj.cbxfurtividade:setLeft(7);
    obj.cbxfurtividade:setTop(3);
    obj.cbxfurtividade:setWidth(20);
    obj.cbxfurtividade:setHeight(20);
    obj.cbxfurtividade:setName("cbxfurtividade");
    obj.cbxfurtividade:setField("cbxfurtividade");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout43);
    obj.label124:setLeft(28);
    obj.label124:setTop(2);
    obj.label124:setWidth(150);
    obj.label124:setHeight(20);
    obj.label124:setText("Furtividade");
    obj.label124:setHorzTextAlign("leading");
    obj.label124:setFontSize(15.0);
    lfm_setPropAsString(obj.label124, "fontStyle",  "bold");
    obj.label124:setFontColor("black");
    obj.label124:setName("label124");

    obj.totalfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalfurtividade:setParent(obj.layout43);
    obj.totalfurtividade:setLeft(165);
    obj.totalfurtividade:setTop(0);
    obj.totalfurtividade:setWidth(40);
    obj.totalfurtividade:setHeight(25);
    obj.totalfurtividade:setName("totalfurtividade");
    obj.totalfurtividade:setField("totalfurtividade");
    obj.totalfurtividade:setType("number");
    obj.totalfurtividade:setMax(999);
    obj.totalfurtividade:setHorzTextAlign("center");
    obj.totalfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.totalfurtividade, "fontStyle",  "bold");
    obj.totalfurtividade:setHitTest(false);

    obj.rectangle132 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle132:setParent(obj.layout43);
    obj.rectangle132:setLeft(210);
    obj.rectangle132:setTop(5);
    obj.rectangle132:setColor("Gainsboro");
    obj.rectangle132:setWidth(20);
    obj.rectangle132:setHeight(15);
    obj.rectangle132:setXradius(2);
    obj.rectangle132:setYradius(2);
    obj.rectangle132:setName("rectangle132");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout43);
    obj.label125:setLeft(213);
    obj.label125:setTop(3);
    obj.label125:setWidth(20);
    obj.label125:setHeight(15);
    obj.label125:setFontSize(20);
    lfm_setPropAsString(obj.label125, "fontStyle",  "bold");
    obj.label125:setFontColor("black");
    obj.label125:setText("=");
    obj.label125:setName("label125");

    obj.gradfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradfurtividade:setParent(obj.layout43);
    obj.gradfurtividade:setLeft(235);
    obj.gradfurtividade:setTop(0);
    obj.gradfurtividade:setWidth(40);
    obj.gradfurtividade:setHeight(25);
    obj.gradfurtividade:setName("gradfurtividade");
    obj.gradfurtividade:setField("gradfurtividade");
    obj.gradfurtividade:setType("number");
    obj.gradfurtividade:setMax(999);
    obj.gradfurtividade:setHorzTextAlign("center");
    obj.gradfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.gradfurtividade, "fontStyle",  "bold");
    obj.gradfurtividade:setHitTest(false);

    obj.rectangle133 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle133:setParent(obj.layout43);
    obj.rectangle133:setLeft(280);
    obj.rectangle133:setTop(5);
    obj.rectangle133:setColor("Gainsboro");
    obj.rectangle133:setWidth(20);
    obj.rectangle133:setHeight(15);
    obj.rectangle133:setXradius(2);
    obj.rectangle133:setYradius(2);
    obj.rectangle133:setName("rectangle133");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout43);
    obj.label126:setLeft(283);
    obj.label126:setTop(3);
    obj.label126:setWidth(20);
    obj.label126:setHeight(15);
    obj.label126:setFontSize(20);
    lfm_setPropAsString(obj.label126, "fontStyle",  "bold");
    obj.label126:setFontColor("black");
    obj.label126:setText("+");
    obj.label126:setName("label126");

    obj.modfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.modfurtividade:setParent(obj.layout43);
    obj.modfurtividade:setLeft(305);
    obj.modfurtividade:setTop(0);
    obj.modfurtividade:setWidth(40);
    obj.modfurtividade:setHeight(25);
    obj.modfurtividade:setName("modfurtividade");
    obj.modfurtividade:setField("modfurtividade");
    obj.modfurtividade:setType("number");
    obj.modfurtividade:setMax(999);
    obj.modfurtividade:setHorzTextAlign("center");
    obj.modfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.modfurtividade, "fontStyle",  "bold");
    obj.modfurtividade:setHitTest(false);

    obj.rectangle134 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle134:setParent(obj.layout43);
    obj.rectangle134:setLeft(350);
    obj.rectangle134:setTop(5);
    obj.rectangle134:setColor("Gainsboro");
    obj.rectangle134:setWidth(20);
    obj.rectangle134:setHeight(15);
    obj.rectangle134:setXradius(2);
    obj.rectangle134:setYradius(2);
    obj.rectangle134:setName("rectangle134");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout43);
    obj.label127:setLeft(353);
    obj.label127:setTop(3);
    obj.label127:setWidth(20);
    obj.label127:setHeight(15);
    obj.label127:setFontSize(20);
    lfm_setPropAsString(obj.label127, "fontStyle",  "bold");
    obj.label127:setFontColor("black");
    obj.label127:setText("+");
    obj.label127:setName("label127");

    obj.outrosfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosfurtividade:setParent(obj.layout43);
    obj.outrosfurtividade:setLeft(375);
    obj.outrosfurtividade:setTop(0);
    obj.outrosfurtividade:setWidth(40);
    obj.outrosfurtividade:setHeight(25);
    obj.outrosfurtividade:setName("outrosfurtividade");
    obj.outrosfurtividade:setField("outrosfurtividade");
    obj.outrosfurtividade:setType("number");
    obj.outrosfurtividade:setMax(999);
    obj.outrosfurtividade:setHorzTextAlign("center");
    obj.outrosfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosfurtividade, "fontStyle",  "bold");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout31);
    obj.layout44:setLeft(0);
    obj.layout44:setTop(365);
    obj.layout44:setWidth(420);
    obj.layout44:setHeight(32);
    obj.layout44:setName("layout44");

    obj.rectangle135 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle135:setParent(obj.layout44);
    obj.rectangle135:setLeft(5);
    obj.rectangle135:setTop(0);
    obj.rectangle135:setColor("Gainsboro");
    obj.rectangle135:setWidth(155);
    obj.rectangle135:setHeight(25);
    obj.rectangle135:setXradius(2);
    obj.rectangle135:setYradius(2);
    obj.rectangle135:setName("rectangle135");

    obj.cbximagia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbximagia:setParent(obj.layout44);
    obj.cbximagia:setLeft(7);
    obj.cbximagia:setTop(3);
    obj.cbximagia:setWidth(20);
    obj.cbximagia:setHeight(20);
    obj.cbximagia:setName("cbximagia");
    obj.cbximagia:setField("cbximagia");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.layout44);
    obj.label128:setLeft(28);
    obj.label128:setTop(2);
    obj.label128:setWidth(150);
    obj.label128:setHeight(20);
    obj.label128:setText("Identificar Magia");
    obj.label128:setHorzTextAlign("leading");
    obj.label128:setFontSize(15.0);
    lfm_setPropAsString(obj.label128, "fontStyle",  "bold");
    obj.label128:setFontColor("black");
    obj.label128:setName("label128");

    obj.totalimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalimagia:setParent(obj.layout44);
    obj.totalimagia:setLeft(165);
    obj.totalimagia:setTop(0);
    obj.totalimagia:setWidth(40);
    obj.totalimagia:setHeight(25);
    obj.totalimagia:setName("totalimagia");
    obj.totalimagia:setField("totalimagia");
    obj.totalimagia:setType("number");
    obj.totalimagia:setMax(999);
    obj.totalimagia:setHorzTextAlign("center");
    obj.totalimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalimagia, "fontStyle",  "bold");
    obj.totalimagia:setHitTest(false);

    obj.rectangle136 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle136:setParent(obj.layout44);
    obj.rectangle136:setLeft(210);
    obj.rectangle136:setTop(5);
    obj.rectangle136:setColor("Gainsboro");
    obj.rectangle136:setWidth(20);
    obj.rectangle136:setHeight(15);
    obj.rectangle136:setXradius(2);
    obj.rectangle136:setYradius(2);
    obj.rectangle136:setName("rectangle136");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout44);
    obj.label129:setLeft(213);
    obj.label129:setTop(3);
    obj.label129:setWidth(20);
    obj.label129:setHeight(15);
    obj.label129:setFontSize(20);
    lfm_setPropAsString(obj.label129, "fontStyle",  "bold");
    obj.label129:setFontColor("black");
    obj.label129:setText("=");
    obj.label129:setName("label129");

    obj.gradimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradimagia:setParent(obj.layout44);
    obj.gradimagia:setLeft(235);
    obj.gradimagia:setTop(0);
    obj.gradimagia:setWidth(40);
    obj.gradimagia:setHeight(25);
    obj.gradimagia:setName("gradimagia");
    obj.gradimagia:setField("gradimagia");
    obj.gradimagia:setType("number");
    obj.gradimagia:setMax(999);
    obj.gradimagia:setHorzTextAlign("center");
    obj.gradimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradimagia, "fontStyle",  "bold");
    obj.gradimagia:setHitTest(false);

    obj.rectangle137 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle137:setParent(obj.layout44);
    obj.rectangle137:setLeft(280);
    obj.rectangle137:setTop(5);
    obj.rectangle137:setColor("Gainsboro");
    obj.rectangle137:setWidth(20);
    obj.rectangle137:setHeight(15);
    obj.rectangle137:setXradius(2);
    obj.rectangle137:setYradius(2);
    obj.rectangle137:setName("rectangle137");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout44);
    obj.label130:setLeft(283);
    obj.label130:setTop(3);
    obj.label130:setWidth(20);
    obj.label130:setHeight(15);
    obj.label130:setFontSize(20);
    lfm_setPropAsString(obj.label130, "fontStyle",  "bold");
    obj.label130:setFontColor("black");
    obj.label130:setText("+");
    obj.label130:setName("label130");

    obj.modimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modimagia:setParent(obj.layout44);
    obj.modimagia:setLeft(305);
    obj.modimagia:setTop(0);
    obj.modimagia:setWidth(40);
    obj.modimagia:setHeight(25);
    obj.modimagia:setName("modimagia");
    obj.modimagia:setField("modimagia");
    obj.modimagia:setType("number");
    obj.modimagia:setMax(999);
    obj.modimagia:setHorzTextAlign("center");
    obj.modimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.modimagia, "fontStyle",  "bold");
    obj.modimagia:setHitTest(false);

    obj.rectangle138 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle138:setParent(obj.layout44);
    obj.rectangle138:setLeft(350);
    obj.rectangle138:setTop(5);
    obj.rectangle138:setColor("Gainsboro");
    obj.rectangle138:setWidth(20);
    obj.rectangle138:setHeight(15);
    obj.rectangle138:setXradius(2);
    obj.rectangle138:setYradius(2);
    obj.rectangle138:setName("rectangle138");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout44);
    obj.label131:setLeft(353);
    obj.label131:setTop(3);
    obj.label131:setWidth(20);
    obj.label131:setHeight(15);
    obj.label131:setFontSize(20);
    lfm_setPropAsString(obj.label131, "fontStyle",  "bold");
    obj.label131:setFontColor("black");
    obj.label131:setText("+");
    obj.label131:setName("label131");

    obj.outrosimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosimagia:setParent(obj.layout44);
    obj.outrosimagia:setLeft(375);
    obj.outrosimagia:setTop(0);
    obj.outrosimagia:setWidth(40);
    obj.outrosimagia:setHeight(25);
    obj.outrosimagia:setName("outrosimagia");
    obj.outrosimagia:setField("outrosimagia");
    obj.outrosimagia:setType("number");
    obj.outrosimagia:setMax(999);
    obj.outrosimagia:setHorzTextAlign("center");
    obj.outrosimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosimagia, "fontStyle",  "bold");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout31);
    obj.layout45:setLeft(0);
    obj.layout45:setTop(395);
    obj.layout45:setWidth(420);
    obj.layout45:setHeight(32);
    obj.layout45:setName("layout45");

    obj.rectangle139 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle139:setParent(obj.layout45);
    obj.rectangle139:setLeft(5);
    obj.rectangle139:setTop(0);
    obj.rectangle139:setColor("Gainsboro");
    obj.rectangle139:setWidth(155);
    obj.rectangle139:setHeight(25);
    obj.rectangle139:setXradius(2);
    obj.rectangle139:setYradius(2);
    obj.rectangle139:setName("rectangle139");

    obj.cbxiniciativa = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxiniciativa:setParent(obj.layout45);
    obj.cbxiniciativa:setLeft(7);
    obj.cbxiniciativa:setTop(3);
    obj.cbxiniciativa:setWidth(20);
    obj.cbxiniciativa:setHeight(20);
    obj.cbxiniciativa:setName("cbxiniciativa");
    obj.cbxiniciativa:setField("cbxiniciativa");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout45);
    obj.label132:setLeft(28);
    obj.label132:setTop(2);
    obj.label132:setWidth(150);
    obj.label132:setHeight(20);
    obj.label132:setText("Iniciativa");
    obj.label132:setHorzTextAlign("leading");
    obj.label132:setFontSize(15.0);
    lfm_setPropAsString(obj.label132, "fontStyle",  "bold");
    obj.label132:setFontColor("black");
    obj.label132:setName("label132");

    obj.totaliniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaliniciativa:setParent(obj.layout45);
    obj.totaliniciativa:setLeft(165);
    obj.totaliniciativa:setTop(0);
    obj.totaliniciativa:setWidth(40);
    obj.totaliniciativa:setHeight(25);
    obj.totaliniciativa:setName("totaliniciativa");
    obj.totaliniciativa:setField("totaliniciativa");
    obj.totaliniciativa:setType("number");
    obj.totaliniciativa:setMax(999);
    obj.totaliniciativa:setHorzTextAlign("center");
    obj.totaliniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.totaliniciativa, "fontStyle",  "bold");
    obj.totaliniciativa:setHitTest(false);

    obj.rectangle140 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle140:setParent(obj.layout45);
    obj.rectangle140:setLeft(210);
    obj.rectangle140:setTop(5);
    obj.rectangle140:setColor("Gainsboro");
    obj.rectangle140:setWidth(20);
    obj.rectangle140:setHeight(15);
    obj.rectangle140:setXradius(2);
    obj.rectangle140:setYradius(2);
    obj.rectangle140:setName("rectangle140");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout45);
    obj.label133:setLeft(213);
    obj.label133:setTop(3);
    obj.label133:setWidth(20);
    obj.label133:setHeight(15);
    obj.label133:setFontSize(20);
    lfm_setPropAsString(obj.label133, "fontStyle",  "bold");
    obj.label133:setFontColor("black");
    obj.label133:setText("=");
    obj.label133:setName("label133");

    obj.gradiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradiniciativa:setParent(obj.layout45);
    obj.gradiniciativa:setLeft(235);
    obj.gradiniciativa:setTop(0);
    obj.gradiniciativa:setWidth(40);
    obj.gradiniciativa:setHeight(25);
    obj.gradiniciativa:setName("gradiniciativa");
    obj.gradiniciativa:setField("gradiniciativa");
    obj.gradiniciativa:setType("number");
    obj.gradiniciativa:setMax(999);
    obj.gradiniciativa:setHorzTextAlign("center");
    obj.gradiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.gradiniciativa, "fontStyle",  "bold");
    obj.gradiniciativa:setHitTest(false);

    obj.rectangle141 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle141:setParent(obj.layout45);
    obj.rectangle141:setLeft(280);
    obj.rectangle141:setTop(5);
    obj.rectangle141:setColor("Gainsboro");
    obj.rectangle141:setWidth(20);
    obj.rectangle141:setHeight(15);
    obj.rectangle141:setXradius(2);
    obj.rectangle141:setYradius(2);
    obj.rectangle141:setName("rectangle141");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout45);
    obj.label134:setLeft(283);
    obj.label134:setTop(3);
    obj.label134:setWidth(20);
    obj.label134:setHeight(15);
    obj.label134:setFontSize(20);
    lfm_setPropAsString(obj.label134, "fontStyle",  "bold");
    obj.label134:setFontColor("black");
    obj.label134:setText("+");
    obj.label134:setName("label134");

    obj.modiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.modiniciativa:setParent(obj.layout45);
    obj.modiniciativa:setLeft(305);
    obj.modiniciativa:setTop(0);
    obj.modiniciativa:setWidth(40);
    obj.modiniciativa:setHeight(25);
    obj.modiniciativa:setName("modiniciativa");
    obj.modiniciativa:setField("modiniciativa");
    obj.modiniciativa:setType("number");
    obj.modiniciativa:setMax(999);
    obj.modiniciativa:setHorzTextAlign("center");
    obj.modiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.modiniciativa, "fontStyle",  "bold");
    obj.modiniciativa:setHitTest(false);

    obj.rectangle142 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle142:setParent(obj.layout45);
    obj.rectangle142:setLeft(350);
    obj.rectangle142:setTop(5);
    obj.rectangle142:setColor("Gainsboro");
    obj.rectangle142:setWidth(20);
    obj.rectangle142:setHeight(15);
    obj.rectangle142:setXradius(2);
    obj.rectangle142:setYradius(2);
    obj.rectangle142:setName("rectangle142");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout45);
    obj.label135:setLeft(353);
    obj.label135:setTop(3);
    obj.label135:setWidth(20);
    obj.label135:setHeight(15);
    obj.label135:setFontSize(20);
    lfm_setPropAsString(obj.label135, "fontStyle",  "bold");
    obj.label135:setFontColor("black");
    obj.label135:setText("+");
    obj.label135:setName("label135");

    obj.outrosiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosiniciativa:setParent(obj.layout45);
    obj.outrosiniciativa:setLeft(375);
    obj.outrosiniciativa:setTop(0);
    obj.outrosiniciativa:setWidth(40);
    obj.outrosiniciativa:setHeight(25);
    obj.outrosiniciativa:setName("outrosiniciativa");
    obj.outrosiniciativa:setField("outrosiniciativa");
    obj.outrosiniciativa:setType("number");
    obj.outrosiniciativa:setMax(999);
    obj.outrosiniciativa:setHorzTextAlign("center");
    obj.outrosiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosiniciativa, "fontStyle",  "bold");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout31);
    obj.layout46:setLeft(0);
    obj.layout46:setTop(425);
    obj.layout46:setWidth(420);
    obj.layout46:setHeight(32);
    obj.layout46:setName("layout46");

    obj.rectangle143 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle143:setParent(obj.layout46);
    obj.rectangle143:setLeft(5);
    obj.rectangle143:setTop(0);
    obj.rectangle143:setColor("Gainsboro");
    obj.rectangle143:setWidth(155);
    obj.rectangle143:setHeight(25);
    obj.rectangle143:setXradius(2);
    obj.rectangle143:setYradius(2);
    obj.rectangle143:setName("rectangle143");

    obj.cbxintimidacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxintimidacao:setParent(obj.layout46);
    obj.cbxintimidacao:setLeft(7);
    obj.cbxintimidacao:setTop(3);
    obj.cbxintimidacao:setWidth(20);
    obj.cbxintimidacao:setHeight(20);
    obj.cbxintimidacao:setName("cbxintimidacao");
    obj.cbxintimidacao:setField("cbxintimidacao");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout46);
    obj.label136:setLeft(28);
    obj.label136:setTop(2);
    obj.label136:setWidth(150);
    obj.label136:setHeight(20);
    obj.label136:setText("Intimidação");
    obj.label136:setHorzTextAlign("leading");
    obj.label136:setFontSize(15.0);
    lfm_setPropAsString(obj.label136, "fontStyle",  "bold");
    obj.label136:setFontColor("black");
    obj.label136:setName("label136");

    obj.totalintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalintimidacao:setParent(obj.layout46);
    obj.totalintimidacao:setLeft(165);
    obj.totalintimidacao:setTop(0);
    obj.totalintimidacao:setWidth(40);
    obj.totalintimidacao:setHeight(25);
    obj.totalintimidacao:setName("totalintimidacao");
    obj.totalintimidacao:setField("totalintimidacao");
    obj.totalintimidacao:setType("number");
    obj.totalintimidacao:setMax(999);
    obj.totalintimidacao:setHorzTextAlign("center");
    obj.totalintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalintimidacao, "fontStyle",  "bold");
    obj.totalintimidacao:setHitTest(false);

    obj.rectangle144 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle144:setParent(obj.layout46);
    obj.rectangle144:setLeft(210);
    obj.rectangle144:setTop(5);
    obj.rectangle144:setColor("Gainsboro");
    obj.rectangle144:setWidth(20);
    obj.rectangle144:setHeight(15);
    obj.rectangle144:setXradius(2);
    obj.rectangle144:setYradius(2);
    obj.rectangle144:setName("rectangle144");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout46);
    obj.label137:setLeft(213);
    obj.label137:setTop(3);
    obj.label137:setWidth(20);
    obj.label137:setHeight(15);
    obj.label137:setFontSize(20);
    lfm_setPropAsString(obj.label137, "fontStyle",  "bold");
    obj.label137:setFontColor("black");
    obj.label137:setText("=");
    obj.label137:setName("label137");

    obj.gradintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradintimidacao:setParent(obj.layout46);
    obj.gradintimidacao:setLeft(235);
    obj.gradintimidacao:setTop(0);
    obj.gradintimidacao:setWidth(40);
    obj.gradintimidacao:setHeight(25);
    obj.gradintimidacao:setName("gradintimidacao");
    obj.gradintimidacao:setField("gradintimidacao");
    obj.gradintimidacao:setType("number");
    obj.gradintimidacao:setMax(999);
    obj.gradintimidacao:setHorzTextAlign("center");
    obj.gradintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradintimidacao, "fontStyle",  "bold");
    obj.gradintimidacao:setHitTest(false);

    obj.rectangle145 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle145:setParent(obj.layout46);
    obj.rectangle145:setLeft(280);
    obj.rectangle145:setTop(5);
    obj.rectangle145:setColor("Gainsboro");
    obj.rectangle145:setWidth(20);
    obj.rectangle145:setHeight(15);
    obj.rectangle145:setXradius(2);
    obj.rectangle145:setYradius(2);
    obj.rectangle145:setName("rectangle145");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout46);
    obj.label138:setLeft(283);
    obj.label138:setTop(3);
    obj.label138:setWidth(20);
    obj.label138:setHeight(15);
    obj.label138:setFontSize(20);
    lfm_setPropAsString(obj.label138, "fontStyle",  "bold");
    obj.label138:setFontColor("black");
    obj.label138:setText("+");
    obj.label138:setName("label138");

    obj.modintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modintimidacao:setParent(obj.layout46);
    obj.modintimidacao:setLeft(305);
    obj.modintimidacao:setTop(0);
    obj.modintimidacao:setWidth(40);
    obj.modintimidacao:setHeight(25);
    obj.modintimidacao:setName("modintimidacao");
    obj.modintimidacao:setField("modintimidacao");
    obj.modintimidacao:setType("number");
    obj.modintimidacao:setMax(999);
    obj.modintimidacao:setHorzTextAlign("center");
    obj.modintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modintimidacao, "fontStyle",  "bold");
    obj.modintimidacao:setHitTest(false);

    obj.rectangle146 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle146:setParent(obj.layout46);
    obj.rectangle146:setLeft(350);
    obj.rectangle146:setTop(5);
    obj.rectangle146:setColor("Gainsboro");
    obj.rectangle146:setWidth(20);
    obj.rectangle146:setHeight(15);
    obj.rectangle146:setXradius(2);
    obj.rectangle146:setYradius(2);
    obj.rectangle146:setName("rectangle146");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout46);
    obj.label139:setLeft(353);
    obj.label139:setTop(3);
    obj.label139:setWidth(20);
    obj.label139:setHeight(15);
    obj.label139:setFontSize(20);
    lfm_setPropAsString(obj.label139, "fontStyle",  "bold");
    obj.label139:setFontColor("black");
    obj.label139:setText("+");
    obj.label139:setName("label139");

    obj.outrosintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosintimidacao:setParent(obj.layout46);
    obj.outrosintimidacao:setLeft(375);
    obj.outrosintimidacao:setTop(0);
    obj.outrosintimidacao:setWidth(40);
    obj.outrosintimidacao:setHeight(25);
    obj.outrosintimidacao:setName("outrosintimidacao");
    obj.outrosintimidacao:setField("outrosintimidacao");
    obj.outrosintimidacao:setType("number");
    obj.outrosintimidacao:setMax(999);
    obj.outrosintimidacao:setHorzTextAlign("center");
    obj.outrosintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosintimidacao, "fontStyle",  "bold");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout31);
    obj.layout47:setLeft(0);
    obj.layout47:setTop(455);
    obj.layout47:setWidth(420);
    obj.layout47:setHeight(32);
    obj.layout47:setName("layout47");

    obj.rectangle147 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle147:setParent(obj.layout47);
    obj.rectangle147:setLeft(5);
    obj.rectangle147:setTop(0);
    obj.rectangle147:setColor("Gainsboro");
    obj.rectangle147:setWidth(155);
    obj.rectangle147:setHeight(25);
    obj.rectangle147:setXradius(2);
    obj.rectangle147:setYradius(2);
    obj.rectangle147:setName("rectangle147");

    obj.cbxintuicao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxintuicao:setParent(obj.layout47);
    obj.cbxintuicao:setLeft(7);
    obj.cbxintuicao:setTop(3);
    obj.cbxintuicao:setWidth(20);
    obj.cbxintuicao:setHeight(20);
    obj.cbxintuicao:setName("cbxintuicao");
    obj.cbxintuicao:setField("cbxintuicao");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout47);
    obj.label140:setLeft(28);
    obj.label140:setTop(2);
    obj.label140:setWidth(150);
    obj.label140:setHeight(20);
    obj.label140:setText("Intuição");
    obj.label140:setHorzTextAlign("leading");
    obj.label140:setFontSize(15.0);
    lfm_setPropAsString(obj.label140, "fontStyle",  "bold");
    obj.label140:setFontColor("black");
    obj.label140:setName("label140");

    obj.totalintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalintuicao:setParent(obj.layout47);
    obj.totalintuicao:setLeft(165);
    obj.totalintuicao:setTop(0);
    obj.totalintuicao:setWidth(40);
    obj.totalintuicao:setHeight(25);
    obj.totalintuicao:setName("totalintuicao");
    obj.totalintuicao:setField("totalintuicao");
    obj.totalintuicao:setType("number");
    obj.totalintuicao:setMax(999);
    obj.totalintuicao:setHorzTextAlign("center");
    obj.totalintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalintuicao, "fontStyle",  "bold");
    obj.totalintuicao:setHitTest(false);

    obj.rectangle148 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle148:setParent(obj.layout47);
    obj.rectangle148:setLeft(210);
    obj.rectangle148:setTop(5);
    obj.rectangle148:setColor("Gainsboro");
    obj.rectangle148:setWidth(20);
    obj.rectangle148:setHeight(15);
    obj.rectangle148:setXradius(2);
    obj.rectangle148:setYradius(2);
    obj.rectangle148:setName("rectangle148");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout47);
    obj.label141:setLeft(213);
    obj.label141:setTop(3);
    obj.label141:setWidth(20);
    obj.label141:setHeight(15);
    obj.label141:setFontSize(20);
    lfm_setPropAsString(obj.label141, "fontStyle",  "bold");
    obj.label141:setFontColor("black");
    obj.label141:setText("=");
    obj.label141:setName("label141");

    obj.gradintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradintuicao:setParent(obj.layout47);
    obj.gradintuicao:setLeft(235);
    obj.gradintuicao:setTop(0);
    obj.gradintuicao:setWidth(40);
    obj.gradintuicao:setHeight(25);
    obj.gradintuicao:setName("gradintuicao");
    obj.gradintuicao:setField("gradintuicao");
    obj.gradintuicao:setType("number");
    obj.gradintuicao:setMax(999);
    obj.gradintuicao:setHorzTextAlign("center");
    obj.gradintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradintuicao, "fontStyle",  "bold");
    obj.gradintuicao:setHitTest(false);

    obj.rectangle149 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle149:setParent(obj.layout47);
    obj.rectangle149:setLeft(280);
    obj.rectangle149:setTop(5);
    obj.rectangle149:setColor("Gainsboro");
    obj.rectangle149:setWidth(20);
    obj.rectangle149:setHeight(15);
    obj.rectangle149:setXradius(2);
    obj.rectangle149:setYradius(2);
    obj.rectangle149:setName("rectangle149");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.layout47);
    obj.label142:setLeft(283);
    obj.label142:setTop(3);
    obj.label142:setWidth(20);
    obj.label142:setHeight(15);
    obj.label142:setFontSize(20);
    lfm_setPropAsString(obj.label142, "fontStyle",  "bold");
    obj.label142:setFontColor("black");
    obj.label142:setText("+");
    obj.label142:setName("label142");

    obj.modintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modintuicao:setParent(obj.layout47);
    obj.modintuicao:setLeft(305);
    obj.modintuicao:setTop(0);
    obj.modintuicao:setWidth(40);
    obj.modintuicao:setHeight(25);
    obj.modintuicao:setName("modintuicao");
    obj.modintuicao:setField("modintuicao");
    obj.modintuicao:setType("number");
    obj.modintuicao:setMax(999);
    obj.modintuicao:setHorzTextAlign("center");
    obj.modintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.modintuicao, "fontStyle",  "bold");
    obj.modintuicao:setHitTest(false);

    obj.rectangle150 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle150:setParent(obj.layout47);
    obj.rectangle150:setLeft(350);
    obj.rectangle150:setTop(5);
    obj.rectangle150:setColor("Gainsboro");
    obj.rectangle150:setWidth(20);
    obj.rectangle150:setHeight(15);
    obj.rectangle150:setXradius(2);
    obj.rectangle150:setYradius(2);
    obj.rectangle150:setName("rectangle150");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.layout47);
    obj.label143:setLeft(353);
    obj.label143:setTop(3);
    obj.label143:setWidth(20);
    obj.label143:setHeight(15);
    obj.label143:setFontSize(20);
    lfm_setPropAsString(obj.label143, "fontStyle",  "bold");
    obj.label143:setFontColor("black");
    obj.label143:setText("+");
    obj.label143:setName("label143");

    obj.outrosintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosintuicao:setParent(obj.layout47);
    obj.outrosintuicao:setLeft(375);
    obj.outrosintuicao:setTop(0);
    obj.outrosintuicao:setWidth(40);
    obj.outrosintuicao:setHeight(25);
    obj.outrosintuicao:setName("outrosintuicao");
    obj.outrosintuicao:setField("outrosintuicao");
    obj.outrosintuicao:setType("number");
    obj.outrosintuicao:setMax(999);
    obj.outrosintuicao:setHorzTextAlign("center");
    obj.outrosintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosintuicao, "fontStyle",  "bold");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout31);
    obj.layout48:setLeft(0);
    obj.layout48:setTop(485);
    obj.layout48:setWidth(420);
    obj.layout48:setHeight(32);
    obj.layout48:setName("layout48");

    obj.rectangle151 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle151:setParent(obj.layout48);
    obj.rectangle151:setLeft(5);
    obj.rectangle151:setTop(0);
    obj.rectangle151:setColor("Gainsboro");
    obj.rectangle151:setWidth(155);
    obj.rectangle151:setHeight(25);
    obj.rectangle151:setXradius(2);
    obj.rectangle151:setYradius(2);
    obj.rectangle151:setName("rectangle151");

    obj.cbxladinagem = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxladinagem:setParent(obj.layout48);
    obj.cbxladinagem:setLeft(7);
    obj.cbxladinagem:setTop(3);
    obj.cbxladinagem:setWidth(20);
    obj.cbxladinagem:setHeight(20);
    obj.cbxladinagem:setName("cbxladinagem");
    obj.cbxladinagem:setField("cbxladinagem");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout48);
    obj.label144:setLeft(28);
    obj.label144:setTop(2);
    obj.label144:setWidth(150);
    obj.label144:setHeight(20);
    obj.label144:setText("Ladinagem");
    obj.label144:setHorzTextAlign("leading");
    obj.label144:setFontSize(15.0);
    lfm_setPropAsString(obj.label144, "fontStyle",  "bold");
    obj.label144:setFontColor("black");
    obj.label144:setName("label144");

    obj.totalladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalladinagem:setParent(obj.layout48);
    obj.totalladinagem:setLeft(165);
    obj.totalladinagem:setTop(0);
    obj.totalladinagem:setWidth(40);
    obj.totalladinagem:setHeight(25);
    obj.totalladinagem:setName("totalladinagem");
    obj.totalladinagem:setField("totalladinagem");
    obj.totalladinagem:setType("number");
    obj.totalladinagem:setMax(999);
    obj.totalladinagem:setHorzTextAlign("center");
    obj.totalladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.totalladinagem, "fontStyle",  "bold");
    obj.totalladinagem:setHitTest(false);

    obj.rectangle152 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle152:setParent(obj.layout48);
    obj.rectangle152:setLeft(210);
    obj.rectangle152:setTop(5);
    obj.rectangle152:setColor("Gainsboro");
    obj.rectangle152:setWidth(20);
    obj.rectangle152:setHeight(15);
    obj.rectangle152:setXradius(2);
    obj.rectangle152:setYradius(2);
    obj.rectangle152:setName("rectangle152");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout48);
    obj.label145:setLeft(213);
    obj.label145:setTop(3);
    obj.label145:setWidth(20);
    obj.label145:setHeight(15);
    obj.label145:setFontSize(20);
    lfm_setPropAsString(obj.label145, "fontStyle",  "bold");
    obj.label145:setFontColor("black");
    obj.label145:setText("=");
    obj.label145:setName("label145");

    obj.gradladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradladinagem:setParent(obj.layout48);
    obj.gradladinagem:setLeft(235);
    obj.gradladinagem:setTop(0);
    obj.gradladinagem:setWidth(40);
    obj.gradladinagem:setHeight(25);
    obj.gradladinagem:setName("gradladinagem");
    obj.gradladinagem:setField("gradladinagem");
    obj.gradladinagem:setType("number");
    obj.gradladinagem:setMax(999);
    obj.gradladinagem:setHorzTextAlign("center");
    obj.gradladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.gradladinagem, "fontStyle",  "bold");
    obj.gradladinagem:setHitTest(false);

    obj.rectangle153 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle153:setParent(obj.layout48);
    obj.rectangle153:setLeft(280);
    obj.rectangle153:setTop(5);
    obj.rectangle153:setColor("Gainsboro");
    obj.rectangle153:setWidth(20);
    obj.rectangle153:setHeight(15);
    obj.rectangle153:setXradius(2);
    obj.rectangle153:setYradius(2);
    obj.rectangle153:setName("rectangle153");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout48);
    obj.label146:setLeft(283);
    obj.label146:setTop(3);
    obj.label146:setWidth(20);
    obj.label146:setHeight(15);
    obj.label146:setFontSize(20);
    lfm_setPropAsString(obj.label146, "fontStyle",  "bold");
    obj.label146:setFontColor("black");
    obj.label146:setText("+");
    obj.label146:setName("label146");

    obj.modladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.modladinagem:setParent(obj.layout48);
    obj.modladinagem:setLeft(305);
    obj.modladinagem:setTop(0);
    obj.modladinagem:setWidth(40);
    obj.modladinagem:setHeight(25);
    obj.modladinagem:setName("modladinagem");
    obj.modladinagem:setField("modladinagem");
    obj.modladinagem:setType("number");
    obj.modladinagem:setMax(999);
    obj.modladinagem:setHorzTextAlign("center");
    obj.modladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.modladinagem, "fontStyle",  "bold");
    obj.modladinagem:setHitTest(false);

    obj.rectangle154 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle154:setParent(obj.layout48);
    obj.rectangle154:setLeft(350);
    obj.rectangle154:setTop(5);
    obj.rectangle154:setColor("Gainsboro");
    obj.rectangle154:setWidth(20);
    obj.rectangle154:setHeight(15);
    obj.rectangle154:setXradius(2);
    obj.rectangle154:setYradius(2);
    obj.rectangle154:setName("rectangle154");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout48);
    obj.label147:setLeft(353);
    obj.label147:setTop(3);
    obj.label147:setWidth(20);
    obj.label147:setHeight(15);
    obj.label147:setFontSize(20);
    lfm_setPropAsString(obj.label147, "fontStyle",  "bold");
    obj.label147:setFontColor("black");
    obj.label147:setText("+");
    obj.label147:setName("label147");

    obj.outrosladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosladinagem:setParent(obj.layout48);
    obj.outrosladinagem:setLeft(375);
    obj.outrosladinagem:setTop(0);
    obj.outrosladinagem:setWidth(40);
    obj.outrosladinagem:setHeight(25);
    obj.outrosladinagem:setName("outrosladinagem");
    obj.outrosladinagem:setField("outrosladinagem");
    obj.outrosladinagem:setType("number");
    obj.outrosladinagem:setMax(999);
    obj.outrosladinagem:setHorzTextAlign("center");
    obj.outrosladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosladinagem, "fontStyle",  "bold");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout31);
    obj.layout49:setLeft(0);
    obj.layout49:setTop(515);
    obj.layout49:setWidth(420);
    obj.layout49:setHeight(32);
    obj.layout49:setName("layout49");

    obj.rectangle155 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle155:setParent(obj.layout49);
    obj.rectangle155:setLeft(5);
    obj.rectangle155:setTop(0);
    obj.rectangle155:setColor("Gainsboro");
    obj.rectangle155:setWidth(155);
    obj.rectangle155:setHeight(25);
    obj.rectangle155:setXradius(2);
    obj.rectangle155:setYradius(2);
    obj.rectangle155:setName("rectangle155");

    obj.cbxoinformacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxoinformacao:setParent(obj.layout49);
    obj.cbxoinformacao:setLeft(7);
    obj.cbxoinformacao:setTop(3);
    obj.cbxoinformacao:setWidth(20);
    obj.cbxoinformacao:setHeight(20);
    obj.cbxoinformacao:setName("cbxoinformacao");
    obj.cbxoinformacao:setField("cbxoinformacao");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout49);
    obj.label148:setLeft(28);
    obj.label148:setTop(2);
    obj.label148:setWidth(150);
    obj.label148:setHeight(20);
    obj.label148:setText("Obter Informação");
    obj.label148:setHorzTextAlign("leading");
    obj.label148:setFontSize(15.0);
    lfm_setPropAsString(obj.label148, "fontStyle",  "bold");
    obj.label148:setFontColor("black");
    obj.label148:setName("label148");

    obj.totaloinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaloinformacao:setParent(obj.layout49);
    obj.totaloinformacao:setLeft(165);
    obj.totaloinformacao:setTop(0);
    obj.totaloinformacao:setWidth(40);
    obj.totaloinformacao:setHeight(25);
    obj.totaloinformacao:setName("totaloinformacao");
    obj.totaloinformacao:setField("totaloinformacao");
    obj.totaloinformacao:setType("number");
    obj.totaloinformacao:setMax(999);
    obj.totaloinformacao:setHorzTextAlign("center");
    obj.totaloinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloinformacao, "fontStyle",  "bold");
    obj.totaloinformacao:setHitTest(false);

    obj.rectangle156 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle156:setParent(obj.layout49);
    obj.rectangle156:setLeft(210);
    obj.rectangle156:setTop(5);
    obj.rectangle156:setColor("Gainsboro");
    obj.rectangle156:setWidth(20);
    obj.rectangle156:setHeight(15);
    obj.rectangle156:setXradius(2);
    obj.rectangle156:setYradius(2);
    obj.rectangle156:setName("rectangle156");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout49);
    obj.label149:setLeft(213);
    obj.label149:setTop(3);
    obj.label149:setWidth(20);
    obj.label149:setHeight(15);
    obj.label149:setFontSize(20);
    lfm_setPropAsString(obj.label149, "fontStyle",  "bold");
    obj.label149:setFontColor("black");
    obj.label149:setText("=");
    obj.label149:setName("label149");

    obj.gradoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradoinformacao:setParent(obj.layout49);
    obj.gradoinformacao:setLeft(235);
    obj.gradoinformacao:setTop(0);
    obj.gradoinformacao:setWidth(40);
    obj.gradoinformacao:setHeight(25);
    obj.gradoinformacao:setName("gradoinformacao");
    obj.gradoinformacao:setField("gradoinformacao");
    obj.gradoinformacao:setType("number");
    obj.gradoinformacao:setMax(999);
    obj.gradoinformacao:setHorzTextAlign("center");
    obj.gradoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoinformacao, "fontStyle",  "bold");
    obj.gradoinformacao:setHitTest(false);

    obj.rectangle157 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle157:setParent(obj.layout49);
    obj.rectangle157:setLeft(280);
    obj.rectangle157:setTop(5);
    obj.rectangle157:setColor("Gainsboro");
    obj.rectangle157:setWidth(20);
    obj.rectangle157:setHeight(15);
    obj.rectangle157:setXradius(2);
    obj.rectangle157:setYradius(2);
    obj.rectangle157:setName("rectangle157");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout49);
    obj.label150:setLeft(283);
    obj.label150:setTop(3);
    obj.label150:setWidth(20);
    obj.label150:setHeight(15);
    obj.label150:setFontSize(20);
    lfm_setPropAsString(obj.label150, "fontStyle",  "bold");
    obj.label150:setFontColor("black");
    obj.label150:setText("+");
    obj.label150:setName("label150");

    obj.modoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modoinformacao:setParent(obj.layout49);
    obj.modoinformacao:setLeft(305);
    obj.modoinformacao:setTop(0);
    obj.modoinformacao:setWidth(40);
    obj.modoinformacao:setHeight(25);
    obj.modoinformacao:setName("modoinformacao");
    obj.modoinformacao:setField("modoinformacao");
    obj.modoinformacao:setType("number");
    obj.modoinformacao:setMax(999);
    obj.modoinformacao:setHorzTextAlign("center");
    obj.modoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modoinformacao, "fontStyle",  "bold");
    obj.modoinformacao:setHitTest(false);

    obj.rectangle158 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle158:setParent(obj.layout49);
    obj.rectangle158:setLeft(350);
    obj.rectangle158:setTop(5);
    obj.rectangle158:setColor("Gainsboro");
    obj.rectangle158:setWidth(20);
    obj.rectangle158:setHeight(15);
    obj.rectangle158:setXradius(2);
    obj.rectangle158:setYradius(2);
    obj.rectangle158:setName("rectangle158");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout49);
    obj.label151:setLeft(353);
    obj.label151:setTop(3);
    obj.label151:setWidth(20);
    obj.label151:setHeight(15);
    obj.label151:setFontSize(20);
    lfm_setPropAsString(obj.label151, "fontStyle",  "bold");
    obj.label151:setFontColor("black");
    obj.label151:setText("+");
    obj.label151:setName("label151");

    obj.outrosoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosoinformacao:setParent(obj.layout49);
    obj.outrosoinformacao:setLeft(375);
    obj.outrosoinformacao:setTop(0);
    obj.outrosoinformacao:setWidth(40);
    obj.outrosoinformacao:setHeight(25);
    obj.outrosoinformacao:setName("outrosoinformacao");
    obj.outrosoinformacao:setField("outrosoinformacao");
    obj.outrosoinformacao:setType("number");
    obj.outrosoinformacao:setMax(999);
    obj.outrosoinformacao:setHorzTextAlign("center");
    obj.outrosoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoinformacao, "fontStyle",  "bold");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout31);
    obj.layout50:setLeft(0);
    obj.layout50:setTop(545);
    obj.layout50:setWidth(420);
    obj.layout50:setHeight(32);
    obj.layout50:setName("layout50");

    obj.rectangle159 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle159:setParent(obj.layout50);
    obj.rectangle159:setLeft(5);
    obj.rectangle159:setTop(0);
    obj.rectangle159:setColor("Gainsboro");
    obj.rectangle159:setWidth(155);
    obj.rectangle159:setHeight(25);
    obj.rectangle159:setXradius(2);
    obj.rectangle159:setYradius(2);
    obj.rectangle159:setName("rectangle159");

    obj.cbxoficio1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxoficio1:setParent(obj.layout50);
    obj.cbxoficio1:setLeft(7);
    obj.cbxoficio1:setTop(3);
    obj.cbxoficio1:setWidth(20);
    obj.cbxoficio1:setHeight(20);
    obj.cbxoficio1:setName("cbxoficio1");
    obj.cbxoficio1:setField("cbxoficio1");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout50);
    obj.label152:setLeft(28);
    obj.label152:setTop(2);
    obj.label152:setWidth(150);
    obj.label152:setHeight(20);
    obj.label152:setText("Ofício");
    obj.label152:setHorzTextAlign("leading");
    obj.label152:setFontSize(15.0);
    lfm_setPropAsString(obj.label152, "fontStyle",  "bold");
    obj.label152:setFontColor("black");
    obj.label152:setName("label152");

    obj.totaloficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaloficio1:setParent(obj.layout50);
    obj.totaloficio1:setLeft(165);
    obj.totaloficio1:setTop(0);
    obj.totaloficio1:setWidth(40);
    obj.totaloficio1:setHeight(25);
    obj.totaloficio1:setName("totaloficio1");
    obj.totaloficio1:setField("totaloficio1");
    obj.totaloficio1:setType("number");
    obj.totaloficio1:setMax(999);
    obj.totaloficio1:setHorzTextAlign("center");
    obj.totaloficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloficio1, "fontStyle",  "bold");
    obj.totaloficio1:setHitTest(false);

    obj.rectangle160 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle160:setParent(obj.layout50);
    obj.rectangle160:setLeft(210);
    obj.rectangle160:setTop(5);
    obj.rectangle160:setColor("Gainsboro");
    obj.rectangle160:setWidth(20);
    obj.rectangle160:setHeight(15);
    obj.rectangle160:setXradius(2);
    obj.rectangle160:setYradius(2);
    obj.rectangle160:setName("rectangle160");

    obj.label153 = GUI.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.layout50);
    obj.label153:setLeft(213);
    obj.label153:setTop(3);
    obj.label153:setWidth(20);
    obj.label153:setHeight(15);
    obj.label153:setFontSize(20);
    lfm_setPropAsString(obj.label153, "fontStyle",  "bold");
    obj.label153:setFontColor("black");
    obj.label153:setText("=");
    obj.label153:setName("label153");

    obj.gradoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradoficio1:setParent(obj.layout50);
    obj.gradoficio1:setLeft(235);
    obj.gradoficio1:setTop(0);
    obj.gradoficio1:setWidth(40);
    obj.gradoficio1:setHeight(25);
    obj.gradoficio1:setName("gradoficio1");
    obj.gradoficio1:setField("gradoficio1");
    obj.gradoficio1:setType("number");
    obj.gradoficio1:setMax(999);
    obj.gradoficio1:setHorzTextAlign("center");
    obj.gradoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoficio1, "fontStyle",  "bold");
    obj.gradoficio1:setHitTest(false);

    obj.rectangle161 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle161:setParent(obj.layout50);
    obj.rectangle161:setLeft(280);
    obj.rectangle161:setTop(5);
    obj.rectangle161:setColor("Gainsboro");
    obj.rectangle161:setWidth(20);
    obj.rectangle161:setHeight(15);
    obj.rectangle161:setXradius(2);
    obj.rectangle161:setYradius(2);
    obj.rectangle161:setName("rectangle161");

    obj.label154 = GUI.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.layout50);
    obj.label154:setLeft(283);
    obj.label154:setTop(3);
    obj.label154:setWidth(20);
    obj.label154:setHeight(15);
    obj.label154:setFontSize(20);
    lfm_setPropAsString(obj.label154, "fontStyle",  "bold");
    obj.label154:setFontColor("black");
    obj.label154:setText("+");
    obj.label154:setName("label154");

    obj.modoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modoficio1:setParent(obj.layout50);
    obj.modoficio1:setLeft(305);
    obj.modoficio1:setTop(0);
    obj.modoficio1:setWidth(40);
    obj.modoficio1:setHeight(25);
    obj.modoficio1:setName("modoficio1");
    obj.modoficio1:setField("modoficio1");
    obj.modoficio1:setType("number");
    obj.modoficio1:setMax(999);
    obj.modoficio1:setHorzTextAlign("center");
    obj.modoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.modoficio1, "fontStyle",  "bold");
    obj.modoficio1:setHitTest(false);

    obj.rectangle162 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle162:setParent(obj.layout50);
    obj.rectangle162:setLeft(350);
    obj.rectangle162:setTop(5);
    obj.rectangle162:setColor("Gainsboro");
    obj.rectangle162:setWidth(20);
    obj.rectangle162:setHeight(15);
    obj.rectangle162:setXradius(2);
    obj.rectangle162:setYradius(2);
    obj.rectangle162:setName("rectangle162");

    obj.label155 = GUI.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.layout50);
    obj.label155:setLeft(353);
    obj.label155:setTop(3);
    obj.label155:setWidth(20);
    obj.label155:setHeight(15);
    obj.label155:setFontSize(20);
    lfm_setPropAsString(obj.label155, "fontStyle",  "bold");
    obj.label155:setFontColor("black");
    obj.label155:setText("+");
    obj.label155:setName("label155");

    obj.outrosoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosoficio1:setParent(obj.layout50);
    obj.outrosoficio1:setLeft(375);
    obj.outrosoficio1:setTop(0);
    obj.outrosoficio1:setWidth(40);
    obj.outrosoficio1:setHeight(25);
    obj.outrosoficio1:setName("outrosoficio1");
    obj.outrosoficio1:setField("outrosoficio1");
    obj.outrosoficio1:setType("number");
    obj.outrosoficio1:setMax(999);
    obj.outrosoficio1:setHorzTextAlign("center");
    obj.outrosoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoficio1, "fontStyle",  "bold");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout31);
    obj.layout51:setLeft(0);
    obj.layout51:setTop(575);
    obj.layout51:setWidth(420);
    obj.layout51:setHeight(32);
    obj.layout51:setName("layout51");

    obj.rectangle163 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle163:setParent(obj.layout51);
    obj.rectangle163:setLeft(5);
    obj.rectangle163:setTop(0);
    obj.rectangle163:setColor("Gainsboro");
    obj.rectangle163:setWidth(155);
    obj.rectangle163:setHeight(25);
    obj.rectangle163:setXradius(2);
    obj.rectangle163:setYradius(2);
    obj.rectangle163:setName("rectangle163");

    obj.cbxoficio2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxoficio2:setParent(obj.layout51);
    obj.cbxoficio2:setLeft(7);
    obj.cbxoficio2:setTop(3);
    obj.cbxoficio2:setWidth(20);
    obj.cbxoficio2:setHeight(20);
    obj.cbxoficio2:setName("cbxoficio2");
    obj.cbxoficio2:setField("cbxoficio2");

    obj.label156 = GUI.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.layout51);
    obj.label156:setLeft(28);
    obj.label156:setTop(2);
    obj.label156:setWidth(150);
    obj.label156:setHeight(20);
    obj.label156:setText("Ofício");
    obj.label156:setHorzTextAlign("leading");
    obj.label156:setFontSize(15.0);
    lfm_setPropAsString(obj.label156, "fontStyle",  "bold");
    obj.label156:setFontColor("black");
    obj.label156:setName("label156");

    obj.totaloficio2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaloficio2:setParent(obj.layout51);
    obj.totaloficio2:setLeft(165);
    obj.totaloficio2:setTop(0);
    obj.totaloficio2:setWidth(40);
    obj.totaloficio2:setHeight(25);
    obj.totaloficio2:setName("totaloficio2");
    obj.totaloficio2:setField("totaloficio2");
    obj.totaloficio2:setType("number");
    obj.totaloficio2:setMax(999);
    obj.totaloficio2:setHorzTextAlign("center");
    obj.totaloficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloficio2, "fontStyle",  "bold");
    obj.totaloficio2:setHitTest(false);

    obj.rectangle164 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle164:setParent(obj.layout51);
    obj.rectangle164:setLeft(210);
    obj.rectangle164:setTop(5);
    obj.rectangle164:setColor("Gainsboro");
    obj.rectangle164:setWidth(20);
    obj.rectangle164:setHeight(15);
    obj.rectangle164:setXradius(2);
    obj.rectangle164:setYradius(2);
    obj.rectangle164:setName("rectangle164");

    obj.label157 = GUI.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.layout51);
    obj.label157:setLeft(213);
    obj.label157:setTop(3);
    obj.label157:setWidth(20);
    obj.label157:setHeight(15);
    obj.label157:setFontSize(20);
    lfm_setPropAsString(obj.label157, "fontStyle",  "bold");
    obj.label157:setFontColor("black");
    obj.label157:setText("=");
    obj.label157:setName("label157");

    obj.gradoficio2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradoficio2:setParent(obj.layout51);
    obj.gradoficio2:setLeft(235);
    obj.gradoficio2:setTop(0);
    obj.gradoficio2:setWidth(40);
    obj.gradoficio2:setHeight(25);
    obj.gradoficio2:setName("gradoficio2");
    obj.gradoficio2:setField("gradoficio2");
    obj.gradoficio2:setType("number");
    obj.gradoficio2:setMax(999);
    obj.gradoficio2:setHorzTextAlign("center");
    obj.gradoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoficio2, "fontStyle",  "bold");
    obj.gradoficio2:setHitTest(false);

    obj.rectangle165 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle165:setParent(obj.layout51);
    obj.rectangle165:setLeft(280);
    obj.rectangle165:setTop(5);
    obj.rectangle165:setColor("Gainsboro");
    obj.rectangle165:setWidth(20);
    obj.rectangle165:setHeight(15);
    obj.rectangle165:setXradius(2);
    obj.rectangle165:setYradius(2);
    obj.rectangle165:setName("rectangle165");

    obj.label158 = GUI.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.layout51);
    obj.label158:setLeft(283);
    obj.label158:setTop(3);
    obj.label158:setWidth(20);
    obj.label158:setHeight(15);
    obj.label158:setFontSize(20);
    lfm_setPropAsString(obj.label158, "fontStyle",  "bold");
    obj.label158:setFontColor("black");
    obj.label158:setText("+");
    obj.label158:setName("label158");

    obj.modoficio2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modoficio2:setParent(obj.layout51);
    obj.modoficio2:setLeft(305);
    obj.modoficio2:setTop(0);
    obj.modoficio2:setWidth(40);
    obj.modoficio2:setHeight(25);
    obj.modoficio2:setName("modoficio2");
    obj.modoficio2:setField("modoficio2");
    obj.modoficio2:setType("number");
    obj.modoficio2:setMax(999);
    obj.modoficio2:setHorzTextAlign("center");
    obj.modoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.modoficio2, "fontStyle",  "bold");
    obj.modoficio2:setHitTest(false);

    obj.rectangle166 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle166:setParent(obj.layout51);
    obj.rectangle166:setLeft(350);
    obj.rectangle166:setTop(5);
    obj.rectangle166:setColor("Gainsboro");
    obj.rectangle166:setWidth(20);
    obj.rectangle166:setHeight(15);
    obj.rectangle166:setXradius(2);
    obj.rectangle166:setYradius(2);
    obj.rectangle166:setName("rectangle166");

    obj.label159 = GUI.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.layout51);
    obj.label159:setLeft(353);
    obj.label159:setTop(3);
    obj.label159:setWidth(20);
    obj.label159:setHeight(15);
    obj.label159:setFontSize(20);
    lfm_setPropAsString(obj.label159, "fontStyle",  "bold");
    obj.label159:setFontColor("black");
    obj.label159:setText("+");
    obj.label159:setName("label159");

    obj.outrosoficio2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosoficio2:setParent(obj.layout51);
    obj.outrosoficio2:setLeft(375);
    obj.outrosoficio2:setTop(0);
    obj.outrosoficio2:setWidth(40);
    obj.outrosoficio2:setHeight(25);
    obj.outrosoficio2:setName("outrosoficio2");
    obj.outrosoficio2:setField("outrosoficio2");
    obj.outrosoficio2:setType("number");
    obj.outrosoficio2:setMax(999);
    obj.outrosoficio2:setHorzTextAlign("center");
    obj.outrosoficio2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoficio2, "fontStyle",  "bold");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout31);
    obj.layout52:setLeft(0);
    obj.layout52:setTop(605);
    obj.layout52:setWidth(420);
    obj.layout52:setHeight(32);
    obj.layout52:setName("layout52");

    obj.rectangle167 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle167:setParent(obj.layout52);
    obj.rectangle167:setLeft(5);
    obj.rectangle167:setTop(0);
    obj.rectangle167:setColor("Gainsboro");
    obj.rectangle167:setWidth(155);
    obj.rectangle167:setHeight(25);
    obj.rectangle167:setXradius(2);
    obj.rectangle167:setYradius(2);
    obj.rectangle167:setName("rectangle167");

    obj.cbxpercepcao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxpercepcao:setParent(obj.layout52);
    obj.cbxpercepcao:setLeft(7);
    obj.cbxpercepcao:setTop(3);
    obj.cbxpercepcao:setWidth(20);
    obj.cbxpercepcao:setHeight(20);
    obj.cbxpercepcao:setName("cbxpercepcao");
    obj.cbxpercepcao:setField("cbxpercepcao");

    obj.label160 = GUI.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.layout52);
    obj.label160:setLeft(28);
    obj.label160:setTop(2);
    obj.label160:setWidth(150);
    obj.label160:setHeight(20);
    obj.label160:setText("Percepção");
    obj.label160:setHorzTextAlign("leading");
    obj.label160:setFontSize(15.0);
    lfm_setPropAsString(obj.label160, "fontStyle",  "bold");
    obj.label160:setFontColor("black");
    obj.label160:setName("label160");

    obj.totalpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalpercepcao:setParent(obj.layout52);
    obj.totalpercepcao:setLeft(165);
    obj.totalpercepcao:setTop(0);
    obj.totalpercepcao:setWidth(40);
    obj.totalpercepcao:setHeight(25);
    obj.totalpercepcao:setName("totalpercepcao");
    obj.totalpercepcao:setField("totalpercepcao");
    obj.totalpercepcao:setType("number");
    obj.totalpercepcao:setMax(999);
    obj.totalpercepcao:setHorzTextAlign("center");
    obj.totalpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalpercepcao, "fontStyle",  "bold");
    obj.totalpercepcao:setHitTest(false);

    obj.rectangle168 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle168:setParent(obj.layout52);
    obj.rectangle168:setLeft(210);
    obj.rectangle168:setTop(5);
    obj.rectangle168:setColor("Gainsboro");
    obj.rectangle168:setWidth(20);
    obj.rectangle168:setHeight(15);
    obj.rectangle168:setXradius(2);
    obj.rectangle168:setYradius(2);
    obj.rectangle168:setName("rectangle168");

    obj.label161 = GUI.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.layout52);
    obj.label161:setLeft(213);
    obj.label161:setTop(3);
    obj.label161:setWidth(20);
    obj.label161:setHeight(15);
    obj.label161:setFontSize(20);
    lfm_setPropAsString(obj.label161, "fontStyle",  "bold");
    obj.label161:setFontColor("black");
    obj.label161:setText("=");
    obj.label161:setName("label161");

    obj.gradpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradpercepcao:setParent(obj.layout52);
    obj.gradpercepcao:setLeft(235);
    obj.gradpercepcao:setTop(0);
    obj.gradpercepcao:setWidth(40);
    obj.gradpercepcao:setHeight(25);
    obj.gradpercepcao:setName("gradpercepcao");
    obj.gradpercepcao:setField("gradpercepcao");
    obj.gradpercepcao:setType("number");
    obj.gradpercepcao:setMax(999);
    obj.gradpercepcao:setHorzTextAlign("center");
    obj.gradpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradpercepcao, "fontStyle",  "bold");
    obj.gradpercepcao:setHitTest(false);

    obj.rectangle169 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle169:setParent(obj.layout52);
    obj.rectangle169:setLeft(280);
    obj.rectangle169:setTop(5);
    obj.rectangle169:setColor("Gainsboro");
    obj.rectangle169:setWidth(20);
    obj.rectangle169:setHeight(15);
    obj.rectangle169:setXradius(2);
    obj.rectangle169:setYradius(2);
    obj.rectangle169:setName("rectangle169");

    obj.label162 = GUI.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.layout52);
    obj.label162:setLeft(283);
    obj.label162:setTop(3);
    obj.label162:setWidth(20);
    obj.label162:setHeight(15);
    obj.label162:setFontSize(20);
    lfm_setPropAsString(obj.label162, "fontStyle",  "bold");
    obj.label162:setFontColor("black");
    obj.label162:setText("+");
    obj.label162:setName("label162");

    obj.modpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modpercepcao:setParent(obj.layout52);
    obj.modpercepcao:setLeft(305);
    obj.modpercepcao:setTop(0);
    obj.modpercepcao:setWidth(40);
    obj.modpercepcao:setHeight(25);
    obj.modpercepcao:setName("modpercepcao");
    obj.modpercepcao:setField("modpercepcao");
    obj.modpercepcao:setType("number");
    obj.modpercepcao:setMax(999);
    obj.modpercepcao:setHorzTextAlign("center");
    obj.modpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.modpercepcao, "fontStyle",  "bold");
    obj.modpercepcao:setHitTest(false);

    obj.rectangle170 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle170:setParent(obj.layout52);
    obj.rectangle170:setLeft(350);
    obj.rectangle170:setTop(5);
    obj.rectangle170:setColor("Gainsboro");
    obj.rectangle170:setWidth(20);
    obj.rectangle170:setHeight(15);
    obj.rectangle170:setXradius(2);
    obj.rectangle170:setYradius(2);
    obj.rectangle170:setName("rectangle170");

    obj.label163 = GUI.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.layout52);
    obj.label163:setLeft(353);
    obj.label163:setTop(3);
    obj.label163:setWidth(20);
    obj.label163:setHeight(15);
    obj.label163:setFontSize(20);
    lfm_setPropAsString(obj.label163, "fontStyle",  "bold");
    obj.label163:setFontColor("black");
    obj.label163:setText("+");
    obj.label163:setName("label163");

    obj.outrospercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrospercepcao:setParent(obj.layout52);
    obj.outrospercepcao:setLeft(375);
    obj.outrospercepcao:setTop(0);
    obj.outrospercepcao:setWidth(40);
    obj.outrospercepcao:setHeight(25);
    obj.outrospercepcao:setName("outrospercepcao");
    obj.outrospercepcao:setField("outrospercepcao");
    obj.outrospercepcao:setType("number");
    obj.outrospercepcao:setMax(999);
    obj.outrospercepcao:setHorzTextAlign("center");
    obj.outrospercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrospercepcao, "fontStyle",  "bold");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layout31);
    obj.layout53:setLeft(0);
    obj.layout53:setTop(635);
    obj.layout53:setWidth(420);
    obj.layout53:setHeight(32);
    obj.layout53:setName("layout53");

    obj.rectangle171 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle171:setParent(obj.layout53);
    obj.rectangle171:setLeft(5);
    obj.rectangle171:setTop(0);
    obj.rectangle171:setColor("Gainsboro");
    obj.rectangle171:setWidth(155);
    obj.rectangle171:setHeight(25);
    obj.rectangle171:setXradius(2);
    obj.rectangle171:setYradius(2);
    obj.rectangle171:setName("rectangle171");

    obj.cbxsobrevivencia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxsobrevivencia:setParent(obj.layout53);
    obj.cbxsobrevivencia:setLeft(7);
    obj.cbxsobrevivencia:setTop(3);
    obj.cbxsobrevivencia:setWidth(20);
    obj.cbxsobrevivencia:setHeight(20);
    obj.cbxsobrevivencia:setName("cbxsobrevivencia");
    obj.cbxsobrevivencia:setField("cbxsobrevivencia");

    obj.label164 = GUI.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.layout53);
    obj.label164:setLeft(28);
    obj.label164:setTop(2);
    obj.label164:setWidth(150);
    obj.label164:setHeight(20);
    obj.label164:setText("Sobrevivência");
    obj.label164:setHorzTextAlign("leading");
    obj.label164:setFontSize(15.0);
    lfm_setPropAsString(obj.label164, "fontStyle",  "bold");
    obj.label164:setFontColor("black");
    obj.label164:setName("label164");

    obj.totalsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalsobrevivencia:setParent(obj.layout53);
    obj.totalsobrevivencia:setLeft(165);
    obj.totalsobrevivencia:setTop(0);
    obj.totalsobrevivencia:setWidth(40);
    obj.totalsobrevivencia:setHeight(25);
    obj.totalsobrevivencia:setName("totalsobrevivencia");
    obj.totalsobrevivencia:setField("totalsobrevivencia");
    obj.totalsobrevivencia:setType("number");
    obj.totalsobrevivencia:setMax(999);
    obj.totalsobrevivencia:setHorzTextAlign("center");
    obj.totalsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalsobrevivencia, "fontStyle",  "bold");
    obj.totalsobrevivencia:setHitTest(false);

    obj.rectangle172 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle172:setParent(obj.layout53);
    obj.rectangle172:setLeft(210);
    obj.rectangle172:setTop(5);
    obj.rectangle172:setColor("Gainsboro");
    obj.rectangle172:setWidth(20);
    obj.rectangle172:setHeight(15);
    obj.rectangle172:setXradius(2);
    obj.rectangle172:setYradius(2);
    obj.rectangle172:setName("rectangle172");

    obj.label165 = GUI.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.layout53);
    obj.label165:setLeft(213);
    obj.label165:setTop(3);
    obj.label165:setWidth(20);
    obj.label165:setHeight(15);
    obj.label165:setFontSize(20);
    lfm_setPropAsString(obj.label165, "fontStyle",  "bold");
    obj.label165:setFontColor("black");
    obj.label165:setText("=");
    obj.label165:setName("label165");

    obj.gradsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradsobrevivencia:setParent(obj.layout53);
    obj.gradsobrevivencia:setLeft(235);
    obj.gradsobrevivencia:setTop(0);
    obj.gradsobrevivencia:setWidth(40);
    obj.gradsobrevivencia:setHeight(25);
    obj.gradsobrevivencia:setName("gradsobrevivencia");
    obj.gradsobrevivencia:setField("gradsobrevivencia");
    obj.gradsobrevivencia:setType("number");
    obj.gradsobrevivencia:setMax(999);
    obj.gradsobrevivencia:setHorzTextAlign("center");
    obj.gradsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradsobrevivencia, "fontStyle",  "bold");
    obj.gradsobrevivencia:setHitTest(false);

    obj.rectangle173 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle173:setParent(obj.layout53);
    obj.rectangle173:setLeft(280);
    obj.rectangle173:setTop(5);
    obj.rectangle173:setColor("Gainsboro");
    obj.rectangle173:setWidth(20);
    obj.rectangle173:setHeight(15);
    obj.rectangle173:setXradius(2);
    obj.rectangle173:setYradius(2);
    obj.rectangle173:setName("rectangle173");

    obj.label166 = GUI.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.layout53);
    obj.label166:setLeft(283);
    obj.label166:setTop(3);
    obj.label166:setWidth(20);
    obj.label166:setHeight(15);
    obj.label166:setFontSize(20);
    lfm_setPropAsString(obj.label166, "fontStyle",  "bold");
    obj.label166:setFontColor("black");
    obj.label166:setText("+");
    obj.label166:setName("label166");

    obj.modsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modsobrevivencia:setParent(obj.layout53);
    obj.modsobrevivencia:setLeft(305);
    obj.modsobrevivencia:setTop(0);
    obj.modsobrevivencia:setWidth(40);
    obj.modsobrevivencia:setHeight(25);
    obj.modsobrevivencia:setName("modsobrevivencia");
    obj.modsobrevivencia:setField("modsobrevivencia");
    obj.modsobrevivencia:setType("number");
    obj.modsobrevivencia:setMax(999);
    obj.modsobrevivencia:setHorzTextAlign("center");
    obj.modsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.modsobrevivencia, "fontStyle",  "bold");
    obj.modsobrevivencia:setHitTest(false);

    obj.rectangle174 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle174:setParent(obj.layout53);
    obj.rectangle174:setLeft(350);
    obj.rectangle174:setTop(5);
    obj.rectangle174:setColor("Gainsboro");
    obj.rectangle174:setWidth(20);
    obj.rectangle174:setHeight(15);
    obj.rectangle174:setXradius(2);
    obj.rectangle174:setYradius(2);
    obj.rectangle174:setName("rectangle174");

    obj.label167 = GUI.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.layout53);
    obj.label167:setLeft(353);
    obj.label167:setTop(3);
    obj.label167:setWidth(20);
    obj.label167:setHeight(15);
    obj.label167:setFontSize(20);
    lfm_setPropAsString(obj.label167, "fontStyle",  "bold");
    obj.label167:setFontColor("black");
    obj.label167:setText("+");
    obj.label167:setName("label167");

    obj.outrossobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrossobrevivencia:setParent(obj.layout53);
    obj.outrossobrevivencia:setLeft(375);
    obj.outrossobrevivencia:setTop(0);
    obj.outrossobrevivencia:setWidth(40);
    obj.outrossobrevivencia:setHeight(25);
    obj.outrossobrevivencia:setName("outrossobrevivencia");
    obj.outrossobrevivencia:setField("outrossobrevivencia");
    obj.outrossobrevivencia:setType("number");
    obj.outrossobrevivencia:setMax(999);
    obj.outrossobrevivencia:setHorzTextAlign("center");
    obj.outrossobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrossobrevivencia, "fontStyle",  "bold");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.scrollBox2);
    obj.layout54:setLeft(435);
    obj.layout54:setTop(10);
    obj.layout54:setWidth(565);
    obj.layout54:setHeight(680);
    obj.layout54:setName("layout54");

    obj.rectangle175 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle175:setParent(obj.layout54);
    obj.rectangle175:setAlign("client");
    obj.rectangle175:setColor("Gray");
    obj.rectangle175:setXradius(2);
    obj.rectangle175:setYradius(2);
    obj.rectangle175:setName("rectangle175");

    obj.rectangle176 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle176:setParent(obj.layout54);
    obj.rectangle176:setLeft(122);
    obj.rectangle176:setTop(1);
    obj.rectangle176:setColor("Gainsboro");
    obj.rectangle176:setWidth(45);
    obj.rectangle176:setHeight(15);
    obj.rectangle176:setXradius(2);
    obj.rectangle176:setYradius(2);
    obj.rectangle176:setName("rectangle176");

    obj.label168 = GUI.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.layout54);
    obj.label168:setLeft(125);
    obj.label168:setTop(3);
    obj.label168:setWidth(58);
    obj.label168:setHeight(8);
    obj.label168:setFontSize(10);
    lfm_setPropAsString(obj.label168, "fontStyle",  "bold");
    obj.label168:setFontColor("black");
    obj.label168:setText("Talentos");
    obj.label168:setName("label168");

    obj.rectangle177 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle177:setParent(obj.layout54);
    obj.rectangle177:setLeft(377);
    obj.rectangle177:setTop(1);
    obj.rectangle177:setColor("Gainsboro");
    obj.rectangle177:setWidth(105);
    obj.rectangle177:setHeight(15);
    obj.rectangle177:setXradius(2);
    obj.rectangle177:setYradius(2);
    obj.rectangle177:setName("rectangle177");

    obj.label169 = GUI.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.layout54);
    obj.label169:setLeft(380);
    obj.label169:setTop(3);
    obj.label169:setWidth(98);
    obj.label169:setHeight(8);
    obj.label169:setFontSize(10);
    lfm_setPropAsString(obj.label169, "fontStyle",  "bold");
    obj.label169:setFontColor("black");
    obj.label169:setText("Habilidades de Raça");
    obj.label169:setName("label169");

    obj.rectangle178 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle178:setParent(obj.layout54);
    obj.rectangle178:setLeft(377);
    obj.rectangle178:setTop(334);
    obj.rectangle178:setColor("Gainsboro");
    obj.rectangle178:setWidth(107);
    obj.rectangle178:setHeight(15);
    obj.rectangle178:setXradius(2);
    obj.rectangle178:setYradius(2);
    obj.rectangle178:setName("rectangle178");

    obj.label170 = GUI.fromHandle(_obj_newObject("label"));
    obj.label170:setParent(obj.layout54);
    obj.label170:setLeft(380);
    obj.label170:setTop(336);
    obj.label170:setWidth(115);
    obj.label170:setHeight(8);
    obj.label170:setFontSize(10);
    lfm_setPropAsString(obj.label170, "fontStyle",  "bold");
    obj.label170:setFontColor("black");
    obj.label170:setText("Habilidades de Classe");
    obj.label170:setName("label170");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout54);
    obj.layout55:setLeft(5);
    obj.layout55:setTop(12);
    obj.layout55:setWidth(285);
    obj.layout55:setHeight(656);
    obj.layout55:setName("layout55");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout55);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("talentos");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout54);
    obj.layout56:setLeft(295);
    obj.layout56:setTop(12);
    obj.layout56:setWidth(265);
    obj.layout56:setHeight(318);
    obj.layout56:setName("layout56");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout56);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("hraca");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout54);
    obj.layout57:setLeft(295);
    obj.layout57:setTop(345);
    obj.layout57:setWidth(265);
    obj.layout57:setHeight(322);
    obj.layout57:setName("layout57");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout57);
    obj.textEditor3:setAlign("client");
    obj.textEditor3:setField("hclasse");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.Tormenta02);
    obj.dataLink2:setFields({'outrosacrobacia', 'outrosadestrar', 'outrosatletismo', 'outrosatuacao1', 'outrosatuacao2', 'outroscavalgar', 'outrosconhecimento1', 'outrosconhecimento2', 'outroscura', 'outrosdiplomacia', 'outrosenganacao', 'outrosfurtividade', 'outrosimagia', 'outrosiniciativa', 'outrosintimidacao', 'outrosintuicao', 'outrosladinagem', 'outrosoinformacao', 'outrosoficio1', 'outrosoficio2', 'outrospercepcao', 'outrossobrevivencia', 'cbxacrobacia', 'cbxadestrar', 'cbxatletismo', 'cbxatuacao1', 'cbxatuacao2', 'cbxcavalgar', 'cbxconhecimento1', 'cbxconhecimento2', 'cbxcura', 'cbxdiplomacia', 'cbxenganacao', 'cbxfurtividade', 'cbximagia', 'cbxiniciativa', 'cbxintimidacao', 'cbxintuicao', 'cbxladinagem', 'cbxoinformacao', 'cbxoficio1', 'cbxoficio2', 'cbxpercepcao', 'cbxsobrevivencia', 'forca', 'modforca', 'destreza', 'moddestreza', 'constituicao', 'modconstituicao', 'inteligencia', 'modinteligencia', 'sabedoria', 'modsabedoria', 'carisma', 'modcarisma', 'nivel'});
    obj.dataLink2:setName("dataLink2");


		function desCalculos2()
			if self.calculos.checked then
				self.totalacrobacia.hitTest = false;
				self.gradacrobacia.hitTest = false;
				self.modacrobacia.hitTest = false;

				self.totaladestrar.hitTest = false;
				self.gradadestrar.hitTest = false;
				self.modadestrar.hitTest = false;

				self.totalatletismo.hitTest = false;
				self.gradatletismo.hitTest = false;
				self.modatletismo.hitTest = false;

				self.totalatuacao1.hitTest = false;
				self.gradatuacao1.hitTest = false;
				self.modatuacao1.hitTest = false;

				self.totalatuacao2.hitTest = false;
				self.gradatuacao2.hitTest = false;
				self.modatuacao2.hitTest = false;

				self.totalcavalgar.hitTest = false;
				self.gradcavalgar.hitTest = false;
				self.modcavalgar.hitTest = false;

				self.totalconhecimento1.hitTest = false;
				self.gradconhecimento1.hitTest = false;
				self.modconhecimento1.hitTest = false;

				self.totalconhecimento2.hitTest = false;
				self.gradconhecimento2.hitTest = false;
				self.modconhecimento2.hitTest = false;

				self.totalcura.hitTest = false;
				self.gradcura.hitTest = false;
				self.modcura.hitTest = false;

				self.totaldiplomacia.hitTest = false;
				self.graddiplomacia.hitTest = false;
				self.moddiplomacia.hitTest = false;

				self.totalenganacao.hitTest = false;
				self.gradenganacao.hitTest = false;
				self.modenganacao.hitTest = false;

				self.totalfurtividade.hitTest = false;
				self.gradfurtividade.hitTest = false;
				self.modfurtividade.hitTest = false;

				self.totalimagia.hitTest = false;
				self.gradimagia.hitTest = false;
				self.modimagia.hitTest = false;

				self.totaliniciativa.hitTest = false;
				self.gradiniciativa.hitTest = false;
				self.modiniciativa.hitTest = false;

				self.totalintimidacao.hitTest = false;
				self.gradintimidacao.hitTest = false;
				self.modintimidacao.hitTest = false;

				self.totalintuicao.hitTest = false;
				self.gradintuicao.hitTest = false;
				self.modintuicao.hitTest = false;

				self.totalladinagem.hitTest = false;
				self.gradladinagem.hitTest = false;
				self.modladinagem.hitTest = false;

				self.totaloinformacao.hitTest = false;
				self.gradoinformacao.hitTest = false;
				self.modoinformacao.hitTest = false;

				self.totaloficio1.hitTest = false;
				self.gradoficio1.hitTest = false;
				self.modoficio1.hitTest = false;

				self.totaloficio2.hitTest = false;
				self.gradoficio2.hitTest = false;
				self.modoficio2.hitTest = false;

				self.totalpercepcao.hitTest = false;
				self.gradpercepcao.hitTest = false;
				self.modpercepcao.hitTest = false;

				self.totalsobrevivencia.hitTest = false;
				self.gradsobrevivencia.hitTest = false;
				self.modsobrevivencia.hitTest = false;

			else
				self.totalacrobacia.hitTest = true;
				self.gradacrobacia.hitTest = true;
				self.modacrobacia.hitTest = true;

				self.totaladestrar.hitTest = true;
				self.gradadestrar.hitTest = true;
				self.modadestrar.hitTest = true;

				self.totalatletismo.hitTest = true;
				self.gradatletismo.hitTest = true;
				self.modatletismo.hitTest = true;

				self.totalatuacao1.hitTest = true;
				self.gradatuacao1.hitTest = true;
				self.modatuacao1.hitTest = true;

				self.totalatuacao2.hitTest = true;
				self.gradatuacao2.hitTest = true;
				self.modatuacao2.hitTest = true;

				self.totalcavalgar.hitTest = true;
				self.gradcavalgar.hitTest = true;
				self.modcavalgar.hitTest = true;

				self.totalconhecimento1.hitTest = true;
				self.gradconhecimento1.hitTest = true;
				self.modconhecimento1.hitTest = true;

				self.totalconhecimento2.hitTest = true;
				self.gradconhecimento2.hitTest = true;
				self.modconhecimento2.hitTest = true;

				self.totalcura.hitTest = true;
				self.gradcura.hitTest = true;
				self.modcura.hitTest = true;

				self.totaldiplomacia.hitTest = true;
				self.graddiplomacia.hitTest = true;
				self.moddiplomacia.hitTest = true;

				self.totalenganacao.hitTest = true;
				self.gradenganacao.hitTest = true;
				self.modenganacao.hitTest = true;

				self.totalfurtividade.hitTest = true;
				self.gradfurtividade.hitTest = true;
				self.modfurtividade.hitTest = true;

				self.totalimagia.hitTest = true;
				self.gradimagia.hitTest = true;
				self.modimagia.hitTest = true;

				self.totaliniciativa.hitTest = true;
				self.gradiniciativa.hitTest = true;
				self.modiniciativa.hitTest = true;

				self.totalintimidacao.hitTest = true;
				self.gradintimidacao.hitTest = true;
				self.modintimidacao.hitTest = true;

				self.totalintuicao.hitTest = true;
				self.gradintuicao.hitTest = true;
				self.modintuicao.hitTest = true;

				self.totalladinagem.hitTest = true;
				self.gradladinagem.hitTest = true;
				self.modladinagem.hitTest = true;

				self.totaloinformacao.hitTest = true;
				self.gradoinformacao.hitTest = true;
				self.modoinformacao.hitTest = true;

				self.totaloficio1.hitTest = true;
				self.gradoficio1.hitTest = true;
				self.modoficio1.hitTest = true;

				self.totaloficio2.hitTest = true;
				self.gradoficio2.hitTest = true;
				self.modoficio2.hitTest = true;

				self.totalpercepcao.hitTest = true;
				self.gradpercepcao.hitTest = true;
				self.modpercepcao.hitTest = true;

				self.totalsobrevivencia.hitTest = true;
				self.gradsobrevivencia.hitTest = true;
				self.modsobrevivencia.hitTest = true;
			end;
		end;
	


    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamentos");
    obj.tab3:setName("tab3");

    obj.Tormenta03 = GUI.fromHandle(_obj_newObject("form"));
    obj.Tormenta03:setParent(obj.tab3);
    obj.Tormenta03:setName("Tormenta03");
    obj.Tormenta03:setAlign("client");
    obj.Tormenta03:setTheme("dark");
    obj.Tormenta03:setLockWhileNodeIsLoading(true);

    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.Tormenta03);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle179 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle179:setParent(obj.scrollBox3);
    obj.rectangle179:setWidth(1010);
    obj.rectangle179:setHeight(700);
    obj.rectangle179:setColor("DimGray");
    obj.rectangle179:setXradius(10);
    obj.rectangle179:setYradius(10);
    obj.rectangle179:setName("rectangle179");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.scrollBox3);
    obj.layout58:setLeft(10);
    obj.layout58:setTop(13);
    obj.layout58:setWidth(585);
    obj.layout58:setHeight(677);
    obj.layout58:setName("layout58");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.scrollBox3);
    obj.layout59:setLeft(605);
    obj.layout59:setTop(0);
    obj.layout59:setWidth(395);
    obj.layout59:setHeight(700);
    obj.layout59:setName("layout59");

    obj.rectangle180 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle180:setParent(obj.layout59);
    obj.rectangle180:setLeft(150);
    obj.rectangle180:setTop(1);
    obj.rectangle180:setColor("Gainsboro");
    obj.rectangle180:setWidth(104);
    obj.rectangle180:setHeight(15);
    obj.rectangle180:setXradius(2);
    obj.rectangle180:setYradius(2);
    obj.rectangle180:setName("rectangle180");

    obj.label171 = GUI.fromHandle(_obj_newObject("label"));
    obj.label171:setParent(obj.layout59);
    obj.label171:setLeft(153);
    obj.label171:setTop(1);
    obj.label171:setWidth(98);
    obj.label171:setHeight(12);
    obj.label171:setFontSize(10);
    obj.label171:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label171, "fontStyle",  "bold");
    obj.label171:setFontColor("black");
    obj.label171:setText("Equipamentos");
    obj.label171:setName("label171");

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout59);
    obj.layout60:setLeft(0);
    obj.layout60:setTop(13);
    obj.layout60:setWidth(395);
    obj.layout60:setHeight(418);
    obj.layout60:setName("layout60");

    obj.textEditor4 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout60);
    obj.textEditor4:setAlign("client");
    obj.textEditor4:setField("equipamentos");
    lfm_setPropAsString(obj.textEditor4, "fontStyle",  "bold");
    obj.textEditor4:setName("textEditor4");

    obj.rectangle181 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle181:setParent(obj.layout59);
    obj.rectangle181:setLeft(150);
    obj.rectangle181:setTop(439);
    obj.rectangle181:setColor("Gainsboro");
    obj.rectangle181:setWidth(104);
    obj.rectangle181:setHeight(15);
    obj.rectangle181:setXradius(2);
    obj.rectangle181:setYradius(2);
    obj.rectangle181:setName("rectangle181");

    obj.label172 = GUI.fromHandle(_obj_newObject("label"));
    obj.label172:setParent(obj.layout59);
    obj.label172:setLeft(153);
    obj.label172:setTop(439);
    obj.label172:setWidth(98);
    obj.label172:setHeight(12);
    obj.label172:setFontSize(10);
    obj.label172:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label172, "fontStyle",  "bold");
    obj.label172:setFontColor("black");
    obj.label172:setText("Anotações");
    obj.label172:setName("label172");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout59);
    obj.layout61:setLeft(0);
    obj.layout61:setTop(451);
    obj.layout61:setWidth(395);
    obj.layout61:setHeight(240);
    obj.layout61:setName("layout61");

    obj.textEditor5 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout61);
    obj.textEditor5:setAlign("client");
    obj.textEditor5:setField("eqanotacoes");
    lfm_setPropAsString(obj.textEditor5, "fontStyle",  "bold");
    obj.textEditor5:setName("textEditor5");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Magias");
    obj.tab4:setName("tab4");

    obj.Tormenta04 = GUI.fromHandle(_obj_newObject("form"));
    obj.Tormenta04:setParent(obj.tab4);
    obj.Tormenta04:setName("Tormenta04");
    obj.Tormenta04:setAlign("client");
    obj.Tormenta04:setTheme("dark");
    obj.Tormenta04:setLockWhileNodeIsLoading(true);

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.Tormenta04);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle182 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle182:setParent(obj.scrollBox4);
    obj.rectangle182:setWidth(1010);
    obj.rectangle182:setHeight(700);
    obj.rectangle182:setColor("DimGray");
    obj.rectangle182:setXradius(10);
    obj.rectangle182:setYradius(10);
    obj.rectangle182:setName("rectangle182");

    obj.rectangle183 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle183:setParent(obj.scrollBox4);
    obj.rectangle183:setLeft(175);
    obj.rectangle183:setTop(6);
    obj.rectangle183:setColor("Gainsboro");
    obj.rectangle183:setWidth(160);
    obj.rectangle183:setHeight(28);
    obj.rectangle183:setXradius(2);
    obj.rectangle183:setYradius(2);
    obj.rectangle183:setName("rectangle183");

    obj.label173 = GUI.fromHandle(_obj_newObject("label"));
    obj.label173:setParent(obj.scrollBox4);
    obj.label173:setLeft(183);
    obj.label173:setTop(7);
    obj.label173:setWidth(160);
    obj.label173:setHeight(23);
    obj.label173:setFontSize(16.0);
    lfm_setPropAsString(obj.label173, "fontStyle",  "bold");
    obj.label173:setFontColor("black");
    obj.label173:setText("Magias Conhecidas");
    obj.label173:setName("label173");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.scrollBox4);
    obj.layout62:setLeft(10);
    obj.layout62:setTop(32);
    obj.layout62:setWidth(490);
    obj.layout62:setHeight(656);
    obj.layout62:setName("layout62");

    obj.textEditor6 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout62);
    obj.textEditor6:setAlign("client");
    obj.textEditor6:setField("mconhecidas");
    lfm_setPropAsString(obj.textEditor6, "fontStyle",  "bold");
    obj.textEditor6:setName("textEditor6");

    obj.rectangle184 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle184:setParent(obj.scrollBox4);
    obj.rectangle184:setLeft(675);
    obj.rectangle184:setTop(6);
    obj.rectangle184:setColor("Gainsboro");
    obj.rectangle184:setWidth(160);
    obj.rectangle184:setHeight(28);
    obj.rectangle184:setXradius(2);
    obj.rectangle184:setYradius(2);
    obj.rectangle184:setName("rectangle184");

    obj.label174 = GUI.fromHandle(_obj_newObject("label"));
    obj.label174:setParent(obj.scrollBox4);
    obj.label174:setLeft(683);
    obj.label174:setTop(7);
    obj.label174:setWidth(160);
    obj.label174:setHeight(23);
    obj.label174:setFontSize(16.0);
    lfm_setPropAsString(obj.label174, "fontStyle",  "bold");
    obj.label174:setFontColor("black");
    obj.label174:setText("Magias Preparadas");
    obj.label174:setName("label174");

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.scrollBox4);
    obj.layout63:setLeft(510);
    obj.layout63:setTop(32);
    obj.layout63:setWidth(490);
    obj.layout63:setHeight(656);
    obj.layout63:setName("layout63");

    obj.textEditor7 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout63);
    obj.textEditor7:setAlign("client");
    obj.textEditor7:setField("mpreparadas");
    lfm_setPropAsString(obj.textEditor7, "fontStyle",  "bold");
    obj.textEditor7:setName("textEditor7");

    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Histórico");
    obj.tab5:setName("tab5");

    obj.Tormenta05 = GUI.fromHandle(_obj_newObject("form"));
    obj.Tormenta05:setParent(obj.tab5);
    obj.Tormenta05:setName("Tormenta05");
    obj.Tormenta05:setAlign("client");
    obj.Tormenta05:setTheme("dark");
    obj.Tormenta05:setLockWhileNodeIsLoading(true);

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.Tormenta05);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.rectangle185 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle185:setParent(obj.scrollBox5);
    obj.rectangle185:setWidth(1010);
    obj.rectangle185:setHeight(700);
    obj.rectangle185:setColor("DimGray");
    obj.rectangle185:setXradius(10);
    obj.rectangle185:setYradius(10);
    obj.rectangle185:setName("rectangle185");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.scrollBox5);
    obj.layout64:setLeft(10);
    obj.layout64:setTop(8);
    obj.layout64:setWidth(980);
    obj.layout64:setHeight(300);
    obj.layout64:setName("layout64");

    obj.rectangle186 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle186:setParent(obj.layout64);
    obj.rectangle186:setLeft(448);
    obj.rectangle186:setTop(3);
    obj.rectangle186:setColor("Gainsboro");
    obj.rectangle186:setWidth(77);
    obj.rectangle186:setHeight(28);
    obj.rectangle186:setXradius(2);
    obj.rectangle186:setYradius(2);
    obj.rectangle186:setName("rectangle186");

    obj.label175 = GUI.fromHandle(_obj_newObject("label"));
    obj.label175:setParent(obj.layout64);
    obj.label175:setLeft(453);
    obj.label175:setTop(6);
    obj.label175:setWidth(100);
    obj.label175:setHeight(20);
    obj.label175:setFontSize(18.0);
    lfm_setPropAsString(obj.label175, "fontStyle",  "bold");
    obj.label175:setFontColor("black");
    obj.label175:setText("História");
    obj.label175:setName("label175");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout64);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(27);
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "animateImages",  "true");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    obj.richEdit1:setField("background");
    obj.richEdit1:setWidth(970);
    obj.richEdit1:setHeight(290);
    obj.richEdit1:setName("richEdit1");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.scrollBox5);
    obj.layout65:setLeft(21);
    obj.layout65:setTop(316);
    obj.layout65:setWidth(969);
    obj.layout65:setHeight(358);
    obj.layout65:setName("layout65");

    obj.rectangle187 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle187:setParent(obj.layout65);
    obj.rectangle187:setLeft(86);
    obj.rectangle187:setTop(3);
    obj.rectangle187:setColor("Gainsboro");
    obj.rectangle187:setWidth(128);
    obj.rectangle187:setHeight(28);
    obj.rectangle187:setXradius(2);
    obj.rectangle187:setYradius(2);
    obj.rectangle187:setName("rectangle187");

    obj.label176 = GUI.fromHandle(_obj_newObject("label"));
    obj.label176:setParent(obj.layout65);
    obj.label176:setLeft(90);
    obj.label176:setTop(6);
    obj.label176:setWidth(120);
    obj.label176:setHeight(20);
    obj.label176:setFontSize(18.0);
    lfm_setPropAsString(obj.label176, "fontStyle",  "bold");
    obj.label176:setFontColor("black");
    obj.label176:setText("Personalidade");
    obj.label176:setName("label176");

    obj.textEditor8 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout65);
    obj.textEditor8:setLeft(0);
    obj.textEditor8:setTop(30);
    obj.textEditor8:setWidth(300);
    obj.textEditor8:setHeight(328);
    obj.textEditor8:setField("personalidade");
    obj.textEditor8:setName("textEditor8");

    obj.rectangle188 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle188:setParent(obj.layout65);
    obj.rectangle188:setLeft(435);
    obj.rectangle188:setTop(3);
    obj.rectangle188:setColor("Gainsboro");
    obj.rectangle188:setWidth(93);
    obj.rectangle188:setHeight(28);
    obj.rectangle188:setXradius(2);
    obj.rectangle188:setYradius(2);
    obj.rectangle188:setName("rectangle188");

    obj.label177 = GUI.fromHandle(_obj_newObject("label"));
    obj.label177:setParent(obj.layout65);
    obj.label177:setLeft(439);
    obj.label177:setTop(6);
    obj.label177:setWidth(100);
    obj.label177:setHeight(20);
    obj.label177:setFontSize(18.0);
    lfm_setPropAsString(obj.label177, "fontStyle",  "bold");
    obj.label177:setFontColor("black");
    obj.label177:setText("Aparência");
    obj.label177:setName("label177");

    obj.textEditor9 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout65);
    obj.textEditor9:setLeft(334);
    obj.textEditor9:setTop(30);
    obj.textEditor9:setWidth(300);
    obj.textEditor9:setHeight(328);
    obj.textEditor9:setField("aparencia");
    obj.textEditor9:setName("textEditor9");

    obj.rectangle189 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle189:setParent(obj.layout65);
    obj.rectangle189:setLeft(770);
    obj.rectangle189:setTop(3);
    obj.rectangle189:setColor("Gainsboro");
    obj.rectangle189:setWidth(97);
    obj.rectangle189:setHeight(28);
    obj.rectangle189:setXradius(2);
    obj.rectangle189:setYradius(2);
    obj.rectangle189:setName("rectangle189");

    obj.label178 = GUI.fromHandle(_obj_newObject("label"));
    obj.label178:setParent(obj.layout65);
    obj.label178:setLeft(774);
    obj.label178:setTop(6);
    obj.label178:setWidth(100);
    obj.label178:setHeight(20);
    obj.label178:setFontSize(18.0);
    lfm_setPropAsString(obj.label178, "fontStyle",  "bold");
    obj.label178:setFontColor("black");
    obj.label178:setText("Anotações");
    obj.label178:setName("label178");

    obj.textEditor10 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout65);
    obj.textEditor10:setLeft(669);
    obj.textEditor10:setTop(30);
    obj.textEditor10:setWidth(300);
    obj.textEditor10:setHeight(328);
    obj.textEditor10:setField("anotacoes");
    obj.textEditor10:setName("textEditor10");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Créditos");
    obj.tab6:setName("tab6");

    obj.OsMundosDosMortosC = GUI.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortosC:setParent(obj.tab6);
    obj.OsMundosDosMortosC:setName("OsMundosDosMortosC");
    obj.OsMundosDosMortosC:setAlign("client");
    obj.OsMundosDosMortosC:setTheme("dark");

    obj.flowLayout1 = GUI.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.OsMundosDosMortosC);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = GUI.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(500);
    obj.flowPart1:setMaxWidth(510);
    obj.flowPart1:setHeight(350);
    obj.flowPart1:setName("flowPart1");

    obj.rectangle190 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle190:setParent(obj.flowPart1);
    obj.rectangle190:setTop(10);
    obj.rectangle190:setWidth(500);
    obj.rectangle190:setHeight(200);
    obj.rectangle190:setColor("Gray");
    obj.rectangle190:setXradius(10);
    obj.rectangle190:setYradius(10);
    obj.rectangle190:setName("rectangle190");

    obj.path1 = GUI.fromHandle(_obj_newObject("path"));
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

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.flowPart1);
    obj.layout66:setLeft(140);
    obj.layout66:setTop(18);
    obj.layout66:setWidth(250);
    obj.layout66:setHeight(200);
    obj.layout66:setName("layout66");

    obj.label179 = GUI.fromHandle(_obj_newObject("label"));
    obj.label179:setParent(obj.layout66);
    obj.label179:setLeft(0);
    obj.label179:setTop(30);
    obj.label179:setWidth(250);
    obj.label179:setFontColor("silver");
    obj.label179:setHeight(20);
    obj.label179:setText("Programador: CastielAngels");
    obj.label179:setHorzTextAlign("center");
    obj.label179:setName("label179");

    obj.label180 = GUI.fromHandle(_obj_newObject("label"));
    obj.label180:setParent(obj.layout66);
    obj.label180:setLeft(0);
    obj.label180:setTop(55);
    obj.label180:setWidth(250);
    obj.label180:setFontColor("silver");
    obj.label180:setHeight(20);
    obj.label180:setText("Tormenta RPG RRPG Firecast");
    obj.label180:setHorzTextAlign("center");
    obj.label180:setName("label180");

    obj.label181 = GUI.fromHandle(_obj_newObject("label"));
    obj.label181:setParent(obj.layout66);
    obj.label181:setLeft(0);
    obj.label181:setTop(80);
    obj.label181:setWidth(250);
    obj.label181:setFontColor("silver");
    obj.label181:setHeight(20);
    obj.label181:setText("Versão: 1.0a 30/06/19");
    obj.label181:setHorzTextAlign("center");
    obj.label181:setFontSize(13);
    obj.label181:setName("label181");

    obj.label182 = GUI.fromHandle(_obj_newObject("label"));
    obj.label182:setParent(obj.layout66);
    obj.label182:setLeft(0);
    obj.label182:setTop(105);
    obj.label182:setWidth(250);
    obj.label182:setFontColor("silver");
    obj.label182:setHeight(20);
    obj.label182:setText("Por favor, mantenha seu plugin atualizado.");
    obj.label182:setHorzTextAlign("center");
    obj.label182:setFontSize(13);
    obj.label182:setName("label182");

    obj.label183 = GUI.fromHandle(_obj_newObject("label"));
    obj.label183:setParent(obj.layout66);
    obj.label183:setLeft(3);
    obj.label183:setTop(130);
    obj.label183:setWidth(250);
    obj.label183:setFontColor("silver");
    obj.label183:setHeight(20);
    obj.label183:setText("Clique aqui para acessar o repositório.");
    obj.label183:setHorzTextAlign("center");
    obj.label183:setFontSize(13);
    obj.label183:setName("label183");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.flowPart1);
    obj.button2:setLeft(0);
    obj.button2:setTop(10);
    obj.button2:setWidth(500);
    obj.button2:setHeight(200);
    obj.button2:setOpacity(0.0);
    obj.button2:setCanFocus(false);
    obj.button2:setCursor("handPoint");
    obj.button2:setName("button2");

    obj._e_event0 = obj.Tormenta01:addEventListener("onNodeReady",
        function (_)
            desCalculos();
        end, obj);

    obj._e_event1 = obj.calculos:addEventListener("onClick",
        function (_)
            desCalculos(); desCalculos2();
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://github.com/CastielAngels/RRPGFirecast/raw/master/Fichas/Tormenta/output/Tormenta.rpk');
        end, obj);

    obj._e_event3 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Calculo de nivel e metade de nivel.
            			if self.calculos.checked == false then
            				sheet.nivel = (math.floor((sheet.nvclasse1)or 0)+math.floor((sheet.nvclasse2)or 0)+math.floor((sheet.nvclasse3)or 0)+math.floor((sheet.nvclasse4)or 0)+math.floor((sheet.nvclasse5)or 0)+math.floor((sheet.nvclasse6)or 0)+math.floor((sheet.nvclasse7)or 0)+math.floor((sheet.nvclasse8)or 0)+math.floor((sheet.nvclasse9)or 0)+math.floor((sheet.nvclasse10)or 0));
            				sheet.metadenivel = math.floor(sheet.nivel / 2 or 0);
            			end;
        end, obj);

    obj._e_event4 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Modificador de Habilidades
            			-- Forca
            			if self.calculos.checked == false then
            				local modfor = math.floor(((sheet.forca or 10) / 2) - 5);
                    		if (modfor >= 0) then
                            	modfor = "+" .. modfor;
                            end;
                            sheet.modforca = modfor;
            			end;
        end, obj);

    obj._e_event5 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Destreza
            			if self.calculos.checked == false then
            				local moddes = math.floor(((sheet.destreza or 10) / 2) - 5);
                            if (moddes >= 0) then
                            	moddes = "+" .. moddes;
                            end;
                            sheet.moddestreza = moddes;
            			end;
        end, obj);

    obj._e_event6 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Constituicao
            			if self.calculos.checked == false then
            				local modcon = math.floor(((sheet.constituicao or 10) / 2) - 5);
                        	if (modcon >= 0) then
                            	modcon = "+" .. modcon;
                            end;
                            sheet.modconstituicao = modcon;
            			end;
        end, obj);

    obj._e_event7 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- inteligencia
            			if self.calculos.checked == false then
            				local modint = math.floor(((sheet.inteligencia or 10) / 2) - 5);
                        	if (modint >= 0) then
                            	modint = "+" .. modint;
                            end;
                            sheet.modinteligencia = modint;
            			end;
        end, obj);

    obj._e_event8 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Sabedoria
            			if self.calculos.checked == false then
            				local modsab = math.floor(((sheet.sabedoria or 10) / 2) - 5);
                            if (modsab >= 0) then
                            	modsab = "+" .. modsab;
                            end;
                            sheet.modsabedoria = modsab;
            			end;
        end, obj);

    obj._e_event9 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Carisma
            			if self.calculos.checked == false then
            				local modcar = math.floor(((sheet.carisma or 10) / 2) - 5);
                    		if (modcar >= 0) then
                            	modcar = "+" .. modcar;
                            end;
                            sheet.modcarisma = modcar;
            			end;
        end, obj);

    obj._e_event10 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Classe de Armadura
            			if self.calculos.checked == false then
            				sheet.ca2 = sheet.moddestreza;
            				sheet.ca1 = (sheet.metadenivel)+10;
            				sheet.totalca = (math.floor((sheet.ca1)or 0)+math.floor((sheet.ca2)or 0)+math.floor((sheet.ca3)or 0)+math.floor((sheet.ca4)or 0)+math.floor((sheet.ca5)or 0));
            			end;
        end, obj);

    obj._e_event11 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Fortitude
            			if self.calculos.checked == false then
            				sheet.fort2 = sheet.modconstituicao;
            				sheet.fort1 = sheet.metadenivel;
            				sheet.totalfort = (math.floor((sheet.fort1)or 0)+math.floor((sheet.fort2)or 0)+math.floor((sheet.fort3)or 0));
            			end;
        end, obj);

    obj._e_event12 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Reflexo
            			if self.calculos.checked == false then
            				sheet.ref2 = sheet.moddestreza;
            				sheet.ref1 = sheet.metadenivel;
            				sheet.totalref = (math.floor((sheet.ref1)or 0)+math.floor((sheet.ref2)or 0)+math.floor((sheet.ref3)or 0));
            			end;
        end, obj);

    obj._e_event13 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Vontade
            			if self.calculos.checked == false then
            				sheet.von2 = sheet.modsabedoria;
            				sheet.von1 = sheet.metadenivel;
            				sheet.totalvon = (math.floor((sheet.von1)or 0)+math.floor((sheet.von2)or 0)+math.floor((sheet.von3)or 0));
            			end;
        end, obj);

    obj._e_event14 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Corpo a corpo
            			if self.calculos.checked == false then
            				if self.acuidade.checked then
            					sheet.cac2 = sheet.moddestreza;
            				else
            					sheet.cac2 = sheet.modforca;
            				end;
            				sheet.totalcac = (math.floor((sheet.bba)or 0)+math.floor((sheet.cac2)or 0)+math.floor((sheet.cac3)or 0)+math.floor((sheet.cac4)or 0));
            			end;
        end, obj);

    obj._e_event15 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Ataque a distancia.
            			if self.calculos.checked == false then
            				if sheet.pontaria then
            					sheet.dis2 = sheet.modsabedoria;
            				else
            					sheet.dis2 = sheet.moddestreza;
            				end;
            				sheet.totaldis = (math.floor((sheet.bba)or 0)+math.floor((sheet.dis2)or 0)+math.floor((sheet.dis3)or 0)+math.floor((sheet.dis4)or 0));
            			end;
        end, obj);

    obj._e_event16 = obj.Tormenta02:addEventListener("onNodeReady",
        function (_)
            desCalculos2();
        end, obj);

    obj._e_event17 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modacrobacia = sheet.moddestreza or 0;
            				if self.cbxacrobacia.checked then
            					sheet.gradacrobacia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalacrobacia = (math.floor((sheet.gradacrobacia)or 0)+math.floor((sheet.modacrobacia) or 0)+math.floor((sheet.outrosacrobacia)or 0));
            				else
            					sheet.gradacrobacia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalacrobacia = (math.floor((sheet.gradacrobacia)or 0)+math.floor((sheet.modacrobacia) or 0)+math.floor((sheet.outrosacrobacia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event18 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modadestrar = sheet.modcarisma or 0;
            				if self.cbxadestrar.checked then
            					sheet.gradadestrar = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaladestrar = (math.floor((sheet.gradadestrar)or 0)+math.floor((sheet.modadestrar) or 0)+math.floor((sheet.outrosadestrar)or 0));
            				else
            					sheet.gradadestrar = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaladestrar = (math.floor((sheet.gradadestrar)or 0)+math.floor((sheet.modadestrar) or 0)+math.floor((sheet.outrosadestrar)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event19 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modatletismo = sheet.modforca or 0;
            				if self.cbxatletismo.checked then
            					sheet.gradatletismo = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalatletismo = (math.floor((sheet.gradatletismo)or 0)+math.floor((sheet.modatletismo) or 0)+math.floor((sheet.outrosatletismo)or 0));
            				else
            					sheet.gradatletismo = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalatletismo = (math.floor((sheet.gradatletismo)or 0)+math.floor((sheet.modatletismo) or 0)+math.floor((sheet.outrosatletismo)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event20 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modatuacao1 = sheet.modcarisma or 0;
            				if self.cbxatuacao1.checked then
            					sheet.gradatuacao1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalatuacao1 = (math.floor((sheet.gradatuacao1)or 0)+math.floor((sheet.modatuacao1) or 0)+math.floor((sheet.outrosatuacao1)or 0));
            				else
            					sheet.gradatuacao1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalatuacao1 = (math.floor((sheet.gradatuacao1)or 0)+math.floor((sheet.modatuacao1) or 0)+math.floor((sheet.outrosatuacao1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event21 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modatuacao2 = sheet.modcarisma or 0;
            				if self.cbxatuacao2.checked then
            					sheet.gradatuacao2 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalatuacao2 = (math.floor((sheet.gradatuacao2)or 0)+math.floor((sheet.modatuacao2) or 0)+math.floor((sheet.outrosatuacao2)or 0));
            				else
            					sheet.gradatuacao2 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalatuacao2 = (math.floor((sheet.gradatuacao2)or 0)+math.floor((sheet.modatuacao2) or 0)+math.floor((sheet.outrosatuacao2)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event22 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modcavalgar = sheet.moddestreza or 0;
            				if self.cbxcavalgar.checked then
            					sheet.gradcavalgar = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalcavalgar = (math.floor((sheet.gradcavalgar)or 0)+math.floor((sheet.modcavalgar) or 0)+math.floor((sheet.outroscavalgar)or 0));
            				else
            					sheet.gradcavalgar = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalcavalgar = (math.floor((sheet.gradcavalgar)or 0)+math.floor((sheet.modcavalgar) or 0)+math.floor((sheet.outroscavalgar)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event23 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modconhecimento1 = sheet.modinteligencia or 0;
            				if self.cbxconhecimento1.checked then
            					sheet.gradconhecimento1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalconhecimento1 = (math.floor((sheet.gradconhecimento1)or 0)+math.floor((sheet.modconhecimento1) or 0)+math.floor((sheet.outrosconhecimento1)or 0));
            				else
            					sheet.gradconhecimento1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalconhecimento1 = (math.floor((sheet.gradconhecimento1)or 0)+math.floor((sheet.modconhecimento1) or 0)+math.floor((sheet.outrosconhecimento1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event24 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modconhecimento2 = sheet.modinteligencia or 0;
            				if self.cbxconhecimento2.checked then
            					sheet.gradconhecimento2 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalconhecimento2 = (math.floor((sheet.gradconhecimento2)or 0)+math.floor((sheet.modconhecimento2) or 0)+math.floor((sheet.outrosconhecimento2)or 0));
            				else
            					sheet.gradconhecimento2 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalconhecimento2 = (math.floor((sheet.gradconhecimento2)or 0)+math.floor((sheet.modconhecimento2) or 0)+math.floor((sheet.outrosconhecimento2)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event25 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modcura = sheet.modsabedoria or 0;
            				if self.cbxcura.checked then
            					sheet.gradcura = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalcura = (math.floor((sheet.gradcura)or 0)+math.floor((sheet.modcura) or 0)+math.floor((sheet.outroscura)or 0));
            				else
            					sheet.gradcura = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalcura = (math.floor((sheet.gradcura)or 0)+math.floor((sheet.modcura) or 0)+math.floor((sheet.outroscura)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event26 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.moddiplomacia = sheet.modcarisma or 0;
            				if self.cbxdiplomacia.checked then
            					sheet.graddiplomacia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaldiplomacia = (math.floor((sheet.graddiplomacia)or 0)+math.floor((sheet.moddiplomacia) or 0)+math.floor((sheet.outrosdiplomacia)or 0));
            				else
            					sheet.graddiplomacia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaldiplomacia = (math.floor((sheet.graddiplomacia)or 0)+math.floor((sheet.moddiplomacia) or 0)+math.floor((sheet.outrosdiplomacia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event27 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modenganacao = sheet.modcarisma or 0;
            				if self.cbxenganacao.checked then
            					sheet.gradenganacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalenganacao = (math.floor((sheet.gradenganacao)or 0)+math.floor((sheet.modenganacao) or 0)+math.floor((sheet.outrosenganacao)or 0));
            				else
            					sheet.gradenganacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalenganacao = (math.floor((sheet.gradenganacao)or 0)+math.floor((sheet.modenganacao) or 0)+math.floor((sheet.outrosenganacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event28 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modfurtividade = sheet.moddestreza or 0;
            				if self.cbxfurtividade.checked then
            					sheet.gradfurtividade = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalfurtividade = (math.floor((sheet.gradfurtividade)or 0)+math.floor((sheet.modfurtividade) or 0)+math.floor((sheet.outrosfurtividade)or 0));
            				else
            					sheet.gradfurtividade = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalfurtividade = (math.floor((sheet.gradfurtividade)or 0)+math.floor((sheet.modfurtividade) or 0)+math.floor((sheet.outrosfurtividade)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event29 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modimagia = sheet.modinteligencia or 0;
            				if self.cbximagia.checked then
            					sheet.gradimagia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalimagia = (math.floor((sheet.gradimagia)or 0)+math.floor((sheet.modimagia) or 0)+math.floor((sheet.outrosimagia)or 0));
            				else
            					sheet.gradimagia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalimagia = (math.floor((sheet.gradimagia)or 0)+math.floor((sheet.modimagia) or 0)+math.floor((sheet.outrosimagia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event30 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modiniciativa = sheet.moddestreza or 0;
            				if self.cbxiniciativa.checked then
            					sheet.gradiniciativa = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaliniciativa = (math.floor((sheet.gradiniciativa)or 0)+math.floor((sheet.modiniciativa) or 0)+math.floor((sheet.outrosiniciativa)or 0));
            				else
            					sheet.gradiniciativa = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaliniciativa = (math.floor((sheet.gradiniciativa)or 0)+math.floor((sheet.modiniciativa) or 0)+math.floor((sheet.outrosiniciativa)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event31 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modintimidacao = sheet.modcarisma or 0;
            				if self.cbxintimidacao.checked then
            					sheet.gradintimidacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalintimidacao = (math.floor((sheet.gradintimidacao)or 0)+math.floor((sheet.modintimidacao) or 0)+math.floor((sheet.outrosintimidacao)or 0));
            				else
            					sheet.gradintimidacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalintimidacao = (math.floor((sheet.gradintimidacao)or 0)+math.floor((sheet.modintimidacao) or 0)+math.floor((sheet.outrosintimidacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event32 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modintuicao = sheet.modsabedoria or 0;
            				if self.cbxintuicao.checked then
            					sheet.gradintuicao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalintuicao = (math.floor((sheet.gradintuicao)or 0)+math.floor((sheet.modintuicao) or 0)+math.floor((sheet.outrosintuicao)or 0));
            				else
            					sheet.gradintuicao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalintuicao = (math.floor((sheet.gradintuicao)or 0)+math.floor((sheet.modintuicao) or 0)+math.floor((sheet.outrosintuicao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event33 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modladinagem = sheet.moddestreza or 0;
            				if self.cbxladinagem.checked then
            					sheet.gradladinagem = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalladinagem = (math.floor((sheet.gradladinagem)or 0)+math.floor((sheet.modladinagem) or 0)+math.floor((sheet.outrosladinagem)or 0));
            				else
            					sheet.gradladinagem = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalladinagem = (math.floor((sheet.gradladinagem)or 0)+math.floor((sheet.modladinagem) or 0)+math.floor((sheet.outrosladinagem)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event34 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modoinformacao = sheet.modcarisma or 0;
            				if self.cbxoinformacao.checked then
            					sheet.gradoinformacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaloinformacao = (math.floor((sheet.gradoinformacao)or 0)+math.floor((sheet.modoinformacao) or 0)+math.floor((sheet.outrosoinformacao)or 0));
            				else
            					sheet.gradoinformacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaloinformacao = (math.floor((sheet.gradoinformacao)or 0)+math.floor((sheet.modoinformacao) or 0)+math.floor((sheet.outrosoinformacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event35 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modoficio1 = sheet.modinteligencia or 0;
            				if self.cbxoficio1.checked then
            					sheet.gradoficio1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaloficio1 = (math.floor((sheet.gradoficio1)or 0)+math.floor((sheet.modoficio1) or 0)+math.floor((sheet.outrosoficio1)or 0));
            				else
            					sheet.gradoficio1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaloficio1 = (math.floor((sheet.gradoficio1)or 0)+math.floor((sheet.modoficio1) or 0)+math.floor((sheet.outrosoficio1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event36 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modoficio2 = sheet.modinteligencia or 0;
            				if self.cbxoficio2.checked then
            					sheet.gradoficio2 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaloficio2 = (math.floor((sheet.gradoficio2)or 0)+math.floor((sheet.modoficio2) or 0)+math.floor((sheet.outrosoficio2)or 0));
            				else
            					sheet.gradoficio2 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaloficio2 = (math.floor((sheet.gradoficio2)or 0)+math.floor((sheet.modoficio2) or 0)+math.floor((sheet.outrosoficio2)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event37 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modpercepcao = sheet.modsabedoria or 0;
            				if self.cbxpercepcao.checked then
            					sheet.gradpercepcao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalpercepcao = (math.floor((sheet.gradpercepcao)or 0)+math.floor((sheet.modpercepcao) or 0)+math.floor((sheet.outrospercepcao)or 0));
            				else
            					sheet.gradpercepcao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalpercepcao = (math.floor((sheet.gradpercepcao)or 0)+math.floor((sheet.modpercepcao) or 0)+math.floor((sheet.outrospercepcao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event38 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modsobrevivencia = sheet.modsabedoria or 0;
            				if self.cbxsobrevivencia.checked then
            					sheet.gradsobrevivencia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalsobrevivencia = (math.floor((sheet.gradsobrevivencia)or 0)+math.floor((sheet.modsobrevivencia) or 0)+math.floor((sheet.outrossobrevivencia)or 0));
            				else
            					sheet.gradsobrevivencia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalsobrevivencia = (math.floor((sheet.gradsobrevivencia)or 0)+math.floor((sheet.modsobrevivencia) or 0)+math.floor((sheet.outrossobrevivencia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event39 = obj.button2:addEventListener("onClick",
        function (_)
            GUI.openInBrowser('https://github.com/CastielAngels/RRPGFirecast');
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.totaliniciativa ~= nil then self.totaliniciativa:destroy(); self.totaliniciativa = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.gradacrobacia ~= nil then self.gradacrobacia:destroy(); self.gradacrobacia = nil; end;
        if self.rectangle113 ~= nil then self.rectangle113:destroy(); self.rectangle113 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.rectangle144 ~= nil then self.rectangle144:destroy(); self.rectangle144 = nil; end;
        if self.rectangle148 ~= nil then self.rectangle148:destroy(); self.rectangle148 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle104 ~= nil then self.rectangle104:destroy(); self.rectangle104 = nil; end;
        if self.rectangle190 ~= nil then self.rectangle190:destroy(); self.rectangle190 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.totalcac ~= nil then self.totalcac:destroy(); self.totalcac = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.rectangle121 ~= nil then self.rectangle121:destroy(); self.rectangle121 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.outroscura ~= nil then self.outroscura:destroy(); self.outroscura = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.rectangle138 ~= nil then self.rectangle138:destroy(); self.rectangle138 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.totaloficio2 ~= nil then self.totaloficio2:destroy(); self.totaloficio2 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.Tormenta03 ~= nil then self.Tormenta03:destroy(); self.Tormenta03 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.modforca ~= nil then self.modforca:destroy(); self.modforca = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.von1 ~= nil then self.von1:destroy(); self.von1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.modoinformacao ~= nil then self.modoinformacao:destroy(); self.modoinformacao = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.modsabedoria ~= nil then self.modsabedoria:destroy(); self.modsabedoria = nil; end;
        if self.rectangle103 ~= nil then self.rectangle103:destroy(); self.rectangle103 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.ca1 ~= nil then self.ca1:destroy(); self.ca1 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.outrosintimidacao ~= nil then self.outrosintimidacao:destroy(); self.outrosintimidacao = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle149 ~= nil then self.rectangle149:destroy(); self.rectangle149 = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.rectangle172 ~= nil then self.rectangle172:destroy(); self.rectangle172 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.modinteligencia ~= nil then self.modinteligencia:destroy(); self.modinteligencia = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.modatuacao1 ~= nil then self.modatuacao1:destroy(); self.modatuacao1 = nil; end;
        if self.modintuicao ~= nil then self.modintuicao:destroy(); self.modintuicao = nil; end;
        if self.rectangle153 ~= nil then self.rectangle153:destroy(); self.rectangle153 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.outrosoinformacao ~= nil then self.outrosoinformacao:destroy(); self.outrosoinformacao = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.Tormenta02 ~= nil then self.Tormenta02:destroy(); self.Tormenta02 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.modladinagem ~= nil then self.modladinagem:destroy(); self.modladinagem = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.cbxconhecimento2 ~= nil then self.cbxconhecimento2:destroy(); self.cbxconhecimento2 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.cbxiniciativa ~= nil then self.cbxiniciativa:destroy(); self.cbxiniciativa = nil; end;
        if self.label176 ~= nil then self.label176:destroy(); self.label176 = nil; end;
        if self.cbxdiplomacia ~= nil then self.cbxdiplomacia:destroy(); self.cbxdiplomacia = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.totalatuacao1 ~= nil then self.totalatuacao1:destroy(); self.totalatuacao1 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.rectangle143 ~= nil then self.rectangle143:destroy(); self.rectangle143 = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.gradatuacao1 ~= nil then self.gradatuacao1:destroy(); self.gradatuacao1 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.pontaria ~= nil then self.pontaria:destroy(); self.pontaria = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.totalcura ~= nil then self.totalcura:destroy(); self.totalcura = nil; end;
        if self.cbxatuacao1 ~= nil then self.cbxatuacao1:destroy(); self.cbxatuacao1 = nil; end;
        if self.rectangle168 ~= nil then self.rectangle168:destroy(); self.rectangle168 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.modsobrevivencia ~= nil then self.modsobrevivencia:destroy(); self.modsobrevivencia = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.moddestreza ~= nil then self.moddestreza:destroy(); self.moddestreza = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.totalenganacao ~= nil then self.totalenganacao:destroy(); self.totalenganacao = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.rectangle101 ~= nil then self.rectangle101:destroy(); self.rectangle101 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.outrosenganacao ~= nil then self.outrosenganacao:destroy(); self.outrosenganacao = nil; end;
        if self.rectangle155 ~= nil then self.rectangle155:destroy(); self.rectangle155 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.gradoinformacao ~= nil then self.gradoinformacao:destroy(); self.gradoinformacao = nil; end;
        if self.rectangle145 ~= nil then self.rectangle145:destroy(); self.rectangle145 = nil; end;
        if self.rectangle156 ~= nil then self.rectangle156:destroy(); self.rectangle156 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.modadestrar ~= nil then self.modadestrar:destroy(); self.modadestrar = nil; end;
        if self.modintimidacao ~= nil then self.modintimidacao:destroy(); self.modintimidacao = nil; end;
        if self.rectangle105 ~= nil then self.rectangle105:destroy(); self.rectangle105 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.outrosconhecimento2 ~= nil then self.outrosconhecimento2:destroy(); self.outrosconhecimento2 = nil; end;
        if self.rectangle180 ~= nil then self.rectangle180:destroy(); self.rectangle180 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.outrosladinagem ~= nil then self.outrosladinagem:destroy(); self.outrosladinagem = nil; end;
        if self.rectangle171 ~= nil then self.rectangle171:destroy(); self.rectangle171 = nil; end;
        if self.totaloinformacao ~= nil then self.totaloinformacao:destroy(); self.totaloinformacao = nil; end;
        if self.rectangle115 ~= nil then self.rectangle115:destroy(); self.rectangle115 = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle126 ~= nil then self.rectangle126:destroy(); self.rectangle126 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.rectangle132 ~= nil then self.rectangle132:destroy(); self.rectangle132 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.cbxpercepcao ~= nil then self.cbxpercepcao:destroy(); self.cbxpercepcao = nil; end;
        if self.OsMundosDosMortosC ~= nil then self.OsMundosDosMortosC:destroy(); self.OsMundosDosMortosC = nil; end;
        if self.modpercepcao ~= nil then self.modpercepcao:destroy(); self.modpercepcao = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.totalfurtividade ~= nil then self.totalfurtividade:destroy(); self.totalfurtividade = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.modenganacao ~= nil then self.modenganacao:destroy(); self.modenganacao = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.fort2 ~= nil then self.fort2:destroy(); self.fort2 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.totalacrobacia ~= nil then self.totalacrobacia:destroy(); self.totalacrobacia = nil; end;
        if self.rectangle99 ~= nil then self.rectangle99:destroy(); self.rectangle99 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.graddiplomacia ~= nil then self.graddiplomacia:destroy(); self.graddiplomacia = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.rectangle174 ~= nil then self.rectangle174:destroy(); self.rectangle174 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.rectangle173 ~= nil then self.rectangle173:destroy(); self.rectangle173 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.label170 ~= nil then self.label170:destroy(); self.label170 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.gradatletismo ~= nil then self.gradatletismo:destroy(); self.gradatletismo = nil; end;
        if self.modatletismo ~= nil then self.modatletismo:destroy(); self.modatletismo = nil; end;
        if self.gradatuacao2 ~= nil then self.gradatuacao2:destroy(); self.gradatuacao2 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.totalconhecimento2 ~= nil then self.totalconhecimento2:destroy(); self.totalconhecimento2 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.cbxconhecimento1 ~= nil then self.cbxconhecimento1:destroy(); self.cbxconhecimento1 = nil; end;
        if self.moddiplomacia ~= nil then self.moddiplomacia:destroy(); self.moddiplomacia = nil; end;
        if self.rectangle122 ~= nil then self.rectangle122:destroy(); self.rectangle122 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.gradconhecimento1 ~= nil then self.gradconhecimento1:destroy(); self.gradconhecimento1 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.totalfort ~= nil then self.totalfort:destroy(); self.totalfort = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.outrosacrobacia ~= nil then self.outrosacrobacia:destroy(); self.outrosacrobacia = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.gradimagia ~= nil then self.gradimagia:destroy(); self.gradimagia = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.totalatuacao2 ~= nil then self.totalatuacao2:destroy(); self.totalatuacao2 = nil; end;
        if self.cbxladinagem ~= nil then self.cbxladinagem:destroy(); self.cbxladinagem = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.rectangle158 ~= nil then self.rectangle158:destroy(); self.rectangle158 = nil; end;
        if self.rectangle170 ~= nil then self.rectangle170:destroy(); self.rectangle170 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.modfurtividade ~= nil then self.modfurtividade:destroy(); self.modfurtividade = nil; end;
        if self.rectangle185 ~= nil then self.rectangle185:destroy(); self.rectangle185 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.modcavalgar ~= nil then self.modcavalgar:destroy(); self.modcavalgar = nil; end;
        if self.rectangle119 ~= nil then self.rectangle119:destroy(); self.rectangle119 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.ca4 ~= nil then self.ca4:destroy(); self.ca4 = nil; end;
        if self.rectangle184 ~= nil then self.rectangle184:destroy(); self.rectangle184 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.acuidade ~= nil then self.acuidade:destroy(); self.acuidade = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.outrosdiplomacia ~= nil then self.outrosdiplomacia:destroy(); self.outrosdiplomacia = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.cbxatuacao2 ~= nil then self.cbxatuacao2:destroy(); self.cbxatuacao2 = nil; end;
        if self.totalca ~= nil then self.totalca:destroy(); self.totalca = nil; end;
        if self.outroscavalgar ~= nil then self.outroscavalgar:destroy(); self.outroscavalgar = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.rectangle157 ~= nil then self.rectangle157:destroy(); self.rectangle157 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.dis2 ~= nil then self.dis2:destroy(); self.dis2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.rectangle128 ~= nil then self.rectangle128:destroy(); self.rectangle128 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.totalconhecimento1 ~= nil then self.totalconhecimento1:destroy(); self.totalconhecimento1 = nil; end;
        if self.cbxcura ~= nil then self.cbxcura:destroy(); self.cbxcura = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.totalvon ~= nil then self.totalvon:destroy(); self.totalvon = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.ref1 ~= nil then self.ref1:destroy(); self.ref1 = nil; end;
        if self.rectangle186 ~= nil then self.rectangle186:destroy(); self.rectangle186 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.gradcura ~= nil then self.gradcura:destroy(); self.gradcura = nil; end;
        if self.rectangle162 ~= nil then self.rectangle162:destroy(); self.rectangle162 = nil; end;
        if self.rectangle175 ~= nil then self.rectangle175:destroy(); self.rectangle175 = nil; end;
        if self.rectangle187 ~= nil then self.rectangle187:destroy(); self.rectangle187 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.outrosconhecimento1 ~= nil then self.outrosconhecimento1:destroy(); self.outrosconhecimento1 = nil; end;
        if self.label181 ~= nil then self.label181:destroy(); self.label181 = nil; end;
        if self.von2 ~= nil then self.von2:destroy(); self.von2 = nil; end;
        if self.cac2 ~= nil then self.cac2:destroy(); self.cac2 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.modcura ~= nil then self.modcura:destroy(); self.modcura = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.rectangle189 ~= nil then self.rectangle189:destroy(); self.rectangle189 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label175 ~= nil then self.label175:destroy(); self.label175 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.totalintuicao ~= nil then self.totalintuicao:destroy(); self.totalintuicao = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.gradoficio2 ~= nil then self.gradoficio2:destroy(); self.gradoficio2 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.ca2 ~= nil then self.ca2:destroy(); self.ca2 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.totalsobrevivencia ~= nil then self.totalsobrevivencia:destroy(); self.totalsobrevivencia = nil; end;
        if self.rectangle182 ~= nil then self.rectangle182:destroy(); self.rectangle182 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.gradintimidacao ~= nil then self.gradintimidacao:destroy(); self.gradintimidacao = nil; end;
        if self.totalpercepcao ~= nil then self.totalpercepcao:destroy(); self.totalpercepcao = nil; end;
        if self.rectangle146 ~= nil then self.rectangle146:destroy(); self.rectangle146 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.rectangle176 ~= nil then self.rectangle176:destroy(); self.rectangle176 = nil; end;
        if self.rectangle130 ~= nil then self.rectangle130:destroy(); self.rectangle130 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.gradiniciativa ~= nil then self.gradiniciativa:destroy(); self.gradiniciativa = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.modoficio2 ~= nil then self.modoficio2:destroy(); self.modoficio2 = nil; end;
        if self.update ~= nil then self.update:destroy(); self.update = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.cbxacrobacia ~= nil then self.cbxacrobacia:destroy(); self.cbxacrobacia = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.cbxfurtividade ~= nil then self.cbxfurtividade:destroy(); self.cbxfurtividade = nil; end;
        if self.rectangle110 ~= nil then self.rectangle110:destroy(); self.rectangle110 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.rectangle124 ~= nil then self.rectangle124:destroy(); self.rectangle124 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.rectangle169 ~= nil then self.rectangle169:destroy(); self.rectangle169 = nil; end;
        if self.cbxsobrevivencia ~= nil then self.cbxsobrevivencia:destroy(); self.cbxsobrevivencia = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.outrosimagia ~= nil then self.outrosimagia:destroy(); self.outrosimagia = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.cbxadestrar ~= nil then self.cbxadestrar:destroy(); self.cbxadestrar = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.rectangle137 ~= nil then self.rectangle137:destroy(); self.rectangle137 = nil; end;
        if self.outrosoficio2 ~= nil then self.outrosoficio2:destroy(); self.outrosoficio2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.totalcavalgar ~= nil then self.totalcavalgar:destroy(); self.totalcavalgar = nil; end;
        if self.rectangle150 ~= nil then self.rectangle150:destroy(); self.rectangle150 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.outrosoficio1 ~= nil then self.outrosoficio1:destroy(); self.outrosoficio1 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.gradsobrevivencia ~= nil then self.gradsobrevivencia:destroy(); self.gradsobrevivencia = nil; end;
        if self.Tormenta04 ~= nil then self.Tormenta04:destroy(); self.Tormenta04 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.label177 ~= nil then self.label177:destroy(); self.label177 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.cbxoinformacao ~= nil then self.cbxoinformacao:destroy(); self.cbxoinformacao = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.rectangle114 ~= nil then self.rectangle114:destroy(); self.rectangle114 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.totalref ~= nil then self.totalref:destroy(); self.totalref = nil; end;
        if self.rectangle107 ~= nil then self.rectangle107:destroy(); self.rectangle107 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.rectangle108 ~= nil then self.rectangle108:destroy(); self.rectangle108 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.rectangle141 ~= nil then self.rectangle141:destroy(); self.rectangle141 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.gradenganacao ~= nil then self.gradenganacao:destroy(); self.gradenganacao = nil; end;
        if self.rectangle140 ~= nil then self.rectangle140:destroy(); self.rectangle140 = nil; end;
        if self.rectangle109 ~= nil then self.rectangle109:destroy(); self.rectangle109 = nil; end;
        if self.rectangle147 ~= nil then self.rectangle147:destroy(); self.rectangle147 = nil; end;
        if self.modacrobacia ~= nil then self.modacrobacia:destroy(); self.modacrobacia = nil; end;
        if self.cbxintimidacao ~= nil then self.cbxintimidacao:destroy(); self.cbxintimidacao = nil; end;
        if self.rectangle183 ~= nil then self.rectangle183:destroy(); self.rectangle183 = nil; end;
        if self.rectangle131 ~= nil then self.rectangle131:destroy(); self.rectangle131 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.modatuacao2 ~= nil then self.modatuacao2:destroy(); self.modatuacao2 = nil; end;
        if self.rectangle142 ~= nil then self.rectangle142:destroy(); self.rectangle142 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.cbxcavalgar ~= nil then self.cbxcavalgar:destroy(); self.cbxcavalgar = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.cbxatletismo ~= nil then self.cbxatletismo:destroy(); self.cbxatletismo = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.rectangle166 ~= nil then self.rectangle166:destroy(); self.rectangle166 = nil; end;
        if self.cbxoficio1 ~= nil then self.cbxoficio1:destroy(); self.cbxoficio1 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.nivel ~= nil then self.nivel:destroy(); self.nivel = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.gradintuicao ~= nil then self.gradintuicao:destroy(); self.gradintuicao = nil; end;
        if self.totaldis ~= nil then self.totaldis:destroy(); self.totaldis = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.rectangle100 ~= nil then self.rectangle100:destroy(); self.rectangle100 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.rectangle179 ~= nil then self.rectangle179:destroy(); self.rectangle179 = nil; end;
        if self.rectangle163 ~= nil then self.rectangle163:destroy(); self.rectangle163 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.gradcavalgar ~= nil then self.gradcavalgar:destroy(); self.gradcavalgar = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.rectangle159 ~= nil then self.rectangle159:destroy(); self.rectangle159 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.rectangle164 ~= nil then self.rectangle164:destroy(); self.rectangle164 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.outrosatuacao1 ~= nil then self.outrosatuacao1:destroy(); self.outrosatuacao1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.rectangle117 ~= nil then self.rectangle117:destroy(); self.rectangle117 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.label182 ~= nil then self.label182:destroy(); self.label182 = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.outrosatletismo ~= nil then self.outrosatletismo:destroy(); self.outrosatletismo = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.totaladestrar ~= nil then self.totaladestrar:destroy(); self.totaladestrar = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.totalimagia ~= nil then self.totalimagia:destroy(); self.totalimagia = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.gradconhecimento2 ~= nil then self.gradconhecimento2:destroy(); self.gradconhecimento2 = nil; end;
        if self.outrosiniciativa ~= nil then self.outrosiniciativa:destroy(); self.outrosiniciativa = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.modcarisma ~= nil then self.modcarisma:destroy(); self.modcarisma = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.Tormenta05 ~= nil then self.Tormenta05:destroy(); self.Tormenta05 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.rectangle112 ~= nil then self.rectangle112:destroy(); self.rectangle112 = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.gradfurtividade ~= nil then self.gradfurtividade:destroy(); self.gradfurtividade = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.label171 ~= nil then self.label171:destroy(); self.label171 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.ca3 ~= nil then self.ca3:destroy(); self.ca3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.gradadestrar ~= nil then self.gradadestrar:destroy(); self.gradadestrar = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.modoficio1 ~= nil then self.modoficio1:destroy(); self.modoficio1 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.rectangle111 ~= nil then self.rectangle111:destroy(); self.rectangle111 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label178 ~= nil then self.label178:destroy(); self.label178 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label174 ~= nil then self.label174:destroy(); self.label174 = nil; end;
        if self.label179 ~= nil then self.label179:destroy(); self.label179 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.rectangle152 ~= nil then self.rectangle152:destroy(); self.rectangle152 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.outrosatuacao2 ~= nil then self.outrosatuacao2:destroy(); self.outrosatuacao2 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.rectangle154 ~= nil then self.rectangle154:destroy(); self.rectangle154 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle134 ~= nil then self.rectangle134:destroy(); self.rectangle134 = nil; end;
        if self.rectangle160 ~= nil then self.rectangle160:destroy(); self.rectangle160 = nil; end;
        if self.rectangle136 ~= nil then self.rectangle136:destroy(); self.rectangle136 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.rectangle178 ~= nil then self.rectangle178:destroy(); self.rectangle178 = nil; end;
        if self.modconhecimento2 ~= nil then self.modconhecimento2:destroy(); self.modconhecimento2 = nil; end;
        if self.totaldiplomacia ~= nil then self.totaldiplomacia:destroy(); self.totaldiplomacia = nil; end;
        if self.outrosfurtividade ~= nil then self.outrosfurtividade:destroy(); self.outrosfurtividade = nil; end;
        if self.cbximagia ~= nil then self.cbximagia:destroy(); self.cbximagia = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.rectangle127 ~= nil then self.rectangle127:destroy(); self.rectangle127 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.label173 ~= nil then self.label173:destroy(); self.label173 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.calculos ~= nil then self.calculos:destroy(); self.calculos = nil; end;
        if self.totalatletismo ~= nil then self.totalatletismo:destroy(); self.totalatletismo = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.modimagia ~= nil then self.modimagia:destroy(); self.modimagia = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.Tormenta01 ~= nil then self.Tormenta01:destroy(); self.Tormenta01 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.rectangle129 ~= nil then self.rectangle129:destroy(); self.rectangle129 = nil; end;
        if self.outrosadestrar ~= nil then self.outrosadestrar:destroy(); self.outrosadestrar = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.rectangle135 ~= nil then self.rectangle135:destroy(); self.rectangle135 = nil; end;
        if self.rectangle133 ~= nil then self.rectangle133:destroy(); self.rectangle133 = nil; end;
        if self.rectangle181 ~= nil then self.rectangle181:destroy(); self.rectangle181 = nil; end;
        if self.label172 ~= nil then self.label172:destroy(); self.label172 = nil; end;
        if self.outrospercepcao ~= nil then self.outrospercepcao:destroy(); self.outrospercepcao = nil; end;
        if self.label180 ~= nil then self.label180:destroy(); self.label180 = nil; end;
        if self.rectangle123 ~= nil then self.rectangle123:destroy(); self.rectangle123 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.rectangle167 ~= nil then self.rectangle167:destroy(); self.rectangle167 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.ref2 ~= nil then self.ref2:destroy(); self.ref2 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.rectangle118 ~= nil then self.rectangle118:destroy(); self.rectangle118 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.rectangle151 ~= nil then self.rectangle151:destroy(); self.rectangle151 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.gradpercepcao ~= nil then self.gradpercepcao:destroy(); self.gradpercepcao = nil; end;
        if self.rectangle161 ~= nil then self.rectangle161:destroy(); self.rectangle161 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.totalladinagem ~= nil then self.totalladinagem:destroy(); self.totalladinagem = nil; end;
        if self.rectangle177 ~= nil then self.rectangle177:destroy(); self.rectangle177 = nil; end;
        if self.rectangle120 ~= nil then self.rectangle120:destroy(); self.rectangle120 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.rectangle139 ~= nil then self.rectangle139:destroy(); self.rectangle139 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.cbxenganacao ~= nil then self.cbxenganacao:destroy(); self.cbxenganacao = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.cbxintuicao ~= nil then self.cbxintuicao:destroy(); self.cbxintuicao = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.totaloficio1 ~= nil then self.totaloficio1:destroy(); self.totaloficio1 = nil; end;
        if self.modconhecimento1 ~= nil then self.modconhecimento1:destroy(); self.modconhecimento1 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle102 ~= nil then self.rectangle102:destroy(); self.rectangle102 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.modiniciativa ~= nil then self.modiniciativa:destroy(); self.modiniciativa = nil; end;
        if self.rectangle116 ~= nil then self.rectangle116:destroy(); self.rectangle116 = nil; end;
        if self.gradladinagem ~= nil then self.gradladinagem:destroy(); self.gradladinagem = nil; end;
        if self.rectangle125 ~= nil then self.rectangle125:destroy(); self.rectangle125 = nil; end;
        if self.rectangle165 ~= nil then self.rectangle165:destroy(); self.rectangle165 = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.fort1 ~= nil then self.fort1:destroy(); self.fort1 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.gradoficio1 ~= nil then self.gradoficio1:destroy(); self.gradoficio1 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.cbxoficio2 ~= nil then self.cbxoficio2:destroy(); self.cbxoficio2 = nil; end;
        if self.label183 ~= nil then self.label183:destroy(); self.label183 = nil; end;
        if self.outrossobrevivencia ~= nil then self.outrossobrevivencia:destroy(); self.outrossobrevivencia = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.rectangle106 ~= nil then self.rectangle106:destroy(); self.rectangle106 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.modconstituicao ~= nil then self.modconstituicao:destroy(); self.modconstituicao = nil; end;
        if self.rectangle188 ~= nil then self.rectangle188:destroy(); self.rectangle188 = nil; end;
        if self.totalintimidacao ~= nil then self.totalintimidacao:destroy(); self.totalintimidacao = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.outrosintuicao ~= nil then self.outrosintuicao:destroy(); self.outrosintuicao = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormentaCastfrm()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_TormentaCastfrm();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _TormentaCastfrm = {
    newEditor = newTormentaCastfrm, 
    new = newTormentaCastfrm, 
    name = "TormentaCastfrm", 
    dataType = "Cast.Tormenta.RPGFirecast", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Tormenta RPG", 
    description=""};

TormentaCastfrm = _TormentaCastfrm;
Firecast.registrarForm(_TormentaCastfrm);
Firecast.registrarDataType(_TormentaCastfrm);

return _TormentaCastfrm;
