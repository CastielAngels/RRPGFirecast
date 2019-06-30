require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormentaCastfrm()
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
    obj:setName("TormentaCastfrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.Tormenta.RPGFirecast");
    obj:setTitle("Ficha Tormenta RPG");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Características");
    obj.tab1:setName("tab1");

    obj.Tormenta01 = gui.fromHandle(_obj_newObject("form"));
    obj.Tormenta01:setParent(obj.tab1);
    obj.Tormenta01:setName("Tormenta01");
    obj.Tormenta01:setAlign("client");
    obj.Tormenta01:setTheme("dark");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.Tormenta01);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.Tormenta01);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(305);
    obj.layout1:setHeight(55);
    obj.layout1:setName("layout1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(7);
    obj.rectangle2:setTop(1);
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setWidth(170);
    obj.rectangle2:setHeight(23);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setField("nome");
    obj.edit1:setLeft(1);
    obj.edit1:setTop(23);
    obj.edit1:setWidth(300);
    obj.edit1:setHeight(30);
    obj.edit1:setFontSize(15.0);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setName("edit1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.Tormenta01);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(67);
    obj.layout2:setWidth(155);
    obj.layout2:setHeight(55);
    obj.layout2:setName("layout2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(7);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(46);
    obj.rectangle3:setHeight(23);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setField("raca");
    obj.edit2:setLeft(1);
    obj.edit2:setTop(23);
    obj.edit2:setWidth(150);
    obj.edit2:setHeight(30);
    obj.edit2:setFontSize(15.0);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.Tormenta01);
    obj.layout3:setLeft(10);
    obj.layout3:setTop(124);
    obj.layout3:setWidth(105);
    obj.layout3:setHeight(55);
    obj.layout3:setName("layout3");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(7);
    obj.rectangle4:setTop(1);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(51);
    obj.rectangle4:setHeight(23);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.Tormenta01);
    obj.layout4:setLeft(165);
    obj.layout4:setTop(67);
    obj.layout4:setWidth(150);
    obj.layout4:setHeight(55);
    obj.layout4:setName("layout4");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setLeft(7);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(84);
    obj.rectangle5:setHeight(23);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout4);
    obj.edit4:setField("tendencia");
    obj.edit4:setLeft(1);
    obj.edit4:setTop(23);
    obj.edit4:setWidth(145);
    obj.edit4:setHeight(30);
    obj.edit4:setFontSize(15.0);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setName("edit4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.Tormenta01);
    obj.layout5:setLeft(115);
    obj.layout5:setTop(124);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(55);
    obj.layout5:setName("layout5");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setLeft(7);
    obj.rectangle6:setTop(1);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(45);
    obj.rectangle6:setHeight(23);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout5);
    obj.edit5:setField("sexo");
    obj.edit5:setLeft(1);
    obj.edit5:setTop(23);
    obj.edit5:setWidth(195);
    obj.edit5:setHeight(30);
    obj.edit5:setFontSize(15.0);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setName("edit5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.Tormenta01);
    obj.layout6:setLeft(315);
    obj.layout6:setTop(10);
    obj.layout6:setWidth(129);
    obj.layout6:setHeight(55);
    obj.layout6:setName("layout6");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(7);
    obj.rectangle7:setTop(1);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(76);
    obj.rectangle7:setHeight(23);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout6);
    obj.edit6:setField("tamanho");
    obj.edit6:setLeft(1);
    obj.edit6:setTop(23);
    obj.edit6:setWidth(124);
    obj.edit6:setHeight(30);
    obj.edit6:setFontSize(15.0);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setName("edit6");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.Tormenta01);
    obj.layout7:setLeft(315);
    obj.layout7:setTop(67);
    obj.layout7:setWidth(129);
    obj.layout7:setHeight(55);
    obj.layout7:setName("layout7");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setLeft(7);
    obj.rectangle8:setTop(1);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(112);
    obj.rectangle8:setHeight(23);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout7);
    obj.edit7:setField("deslocamento");
    obj.edit7:setLeft(1);
    obj.edit7:setTop(23);
    obj.edit7:setWidth(124);
    obj.edit7:setHeight(30);
    obj.edit7:setFontSize(15.0);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setName("edit7");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.Tormenta01);
    obj.layout8:setLeft(315);
    obj.layout8:setTop(124);
    obj.layout8:setWidth(129);
    obj.layout8:setHeight(55);
    obj.layout8:setName("layout8");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setLeft(7);
    obj.rectangle9:setTop(1);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(84);
    obj.rectangle9:setHeight(23);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
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

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout8);
    obj.edit8:setField("divindade");
    obj.edit8:setLeft(1);
    obj.edit8:setTop(23);
    obj.edit8:setWidth(124);
    obj.edit8:setHeight(30);
    obj.edit8:setFontSize(15.0);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setName("edit8");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.Tormenta01);
    obj.image1:setLeft(530);
    obj.image1:setTop(30);
    obj.image1:setWidth(400);
    obj.image1:setHeight(147);
    obj.image1:setSRC("/TRPG/img/LogoTormenta.png");
    obj.image1:setName("image1");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.Tormenta01);
    obj.layout9:setLeft(1);
    obj.layout9:setTop(220);
    obj.layout9:setWidth(250);
    obj.layout9:setHeight(300);
    obj.layout9:setName("layout9");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(57);
    obj.rectangle10:setTop(3);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(60);
    obj.rectangle10:setHeight(15);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
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

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout9);
    obj.rectangle11:setLeft(181);
    obj.rectangle11:setTop(3);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(28);
    obj.rectangle11:setHeight(15);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
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

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout9);
    obj.rectangle12:setLeft(216);
    obj.rectangle12:setTop(3);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(28);
    obj.rectangle12:setHeight(15);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
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

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(15);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout10);
    obj.rectangle13:setLeft(5);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setColor("Gainsboro");
    obj.rectangle13:setWidth(155);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout10);
    obj.label12:setLeft(8);
    obj.label12:setTop(4);
    obj.label12:setWidth(155);
    obj.label12:setHeight(20);
    obj.label12:setText("Força(FOR)");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(15.0);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setLeft(210);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(30);
    obj.edit10:setHeight(25);
    obj.edit10:setField("forca_M");
    obj.edit10:setType("number");
    obj.edit10:setMax(99);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setFontSize(15.0);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(45);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout11);
    obj.rectangle14:setLeft(5);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(155);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout11);
    obj.label13:setLeft(8);
    obj.label13:setTop(4);
    obj.label13:setWidth(155);
    obj.label13:setHeight(20);
    obj.label13:setText("Destreza(DES)");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(15.0);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout11);
    obj.edit12:setLeft(210);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(30);
    obj.edit12:setHeight(25);
    obj.edit12:setField("destreza_M");
    obj.edit12:setType("number");
    obj.edit12:setMax(99);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setFontSize(15.0);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setName("edit12");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout9);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(75);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout12);
    obj.rectangle15:setLeft(5);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setColor("Gainsboro");
    obj.rectangle15:setWidth(155);
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout12);
    obj.label14:setLeft(8);
    obj.label14:setTop(4);
    obj.label14:setWidth(155);
    obj.label14:setHeight(20);
    obj.label14:setText("Constituição(CON)");
    obj.label14:setHorzTextAlign("leading");
    obj.label14:setFontSize(15.0);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout12);
    obj.edit14:setLeft(210);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(30);
    obj.edit14:setHeight(25);
    obj.edit14:setField("constituicao_M");
    obj.edit14:setType("number");
    obj.edit14:setMax(99);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setFontSize(15.0);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout9);
    obj.layout13:setLeft(5);
    obj.layout13:setTop(105);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout13);
    obj.rectangle16:setLeft(5);
    obj.rectangle16:setTop(0);
    obj.rectangle16:setColor("Gainsboro");
    obj.rectangle16:setWidth(155);
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);
    obj.rectangle16:setName("rectangle16");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout13);
    obj.label15:setLeft(8);
    obj.label15:setTop(4);
    obj.label15:setWidth(155);
    obj.label15:setHeight(20);
    obj.label15:setText("inteligência(INT)");
    obj.label15:setHorzTextAlign("leading");
    obj.label15:setFontSize(15.0);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setName("label15");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout13);
    obj.edit16:setLeft(210);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(30);
    obj.edit16:setHeight(25);
    obj.edit16:setField("inteligencia_M");
    obj.edit16:setType("number");
    obj.edit16:setMax(99);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setFontSize(15.0);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout9);
    obj.layout14:setLeft(5);
    obj.layout14:setTop(135);
    obj.layout14:setWidth(290);
    obj.layout14:setHeight(25);
    obj.layout14:setName("layout14");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout14);
    obj.rectangle17:setLeft(5);
    obj.rectangle17:setTop(0);
    obj.rectangle17:setColor("Gainsboro");
    obj.rectangle17:setWidth(155);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout14);
    obj.label16:setLeft(8);
    obj.label16:setTop(4);
    obj.label16:setWidth(155);
    obj.label16:setHeight(20);
    obj.label16:setText("Sabedoria(SAB)");
    obj.label16:setHorzTextAlign("leading");
    obj.label16:setFontSize(15.0);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setName("label16");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout14);
    obj.edit18:setLeft(210);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(25);
    obj.edit18:setField("sabedoria_M");
    obj.edit18:setType("number");
    obj.edit18:setMax(99);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setFontSize(15.0);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setName("edit18");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout9);
    obj.layout15:setLeft(5);
    obj.layout15:setTop(165);
    obj.layout15:setWidth(290);
    obj.layout15:setHeight(25);
    obj.layout15:setName("layout15");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout15);
    obj.rectangle18:setLeft(5);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setColor("Gainsboro");
    obj.rectangle18:setWidth(155);
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);
    obj.rectangle18:setName("rectangle18");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout15);
    obj.label17:setLeft(8);
    obj.label17:setTop(4);
    obj.label17:setWidth(155);
    obj.label17:setHeight(20);
    obj.label17:setText("Carisma(CAR)");
    obj.label17:setHorzTextAlign("leading");
    obj.label17:setFontSize(15.0);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
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

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout15);
    obj.edit20:setLeft(210);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(30);
    obj.edit20:setHeight(25);
    obj.edit20:setField("carisma_M");
    obj.edit20:setType("number");
    obj.edit20:setMax(99);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setFontSize(15.0);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setName("edit20");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Créditos");
    obj.tab2:setName("tab2");

    obj.OsMundosDosMortosC = gui.fromHandle(_obj_newObject("form"));
    obj.OsMundosDosMortosC:setParent(obj.tab2);
    obj.OsMundosDosMortosC:setName("OsMundosDosMortosC");
    obj.OsMundosDosMortosC:setAlign("client");
    obj.OsMundosDosMortosC:setTheme("dark");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.OsMundosDosMortosC);
    obj.rectangle19:setAlign("top");
    obj.rectangle19:setHeight(30);
    obj.rectangle19:setColor("gray");
    obj.rectangle19:setName("rectangle19");

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

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.flowPart1);
    obj.rectangle20:setTop(10);
    obj.rectangle20:setWidth(500);
    obj.rectangle20:setHeight(200);
    obj.rectangle20:setColor("Gray");
    obj.rectangle20:setXradius(10);
    obj.rectangle20:setYradius(10);
    obj.rectangle20:setName("rectangle20");

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

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.flowPart1);
    obj.layout16:setLeft(140);
    obj.layout16:setTop(28);
    obj.layout16:setWidth(250);
    obj.layout16:setHeight(200);
    obj.layout16:setName("layout16");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout16);
    obj.label18:setLeft(0);
    obj.label18:setTop(30);
    obj.label18:setWidth(250);
    obj.label18:setFontColor("silver");
    obj.label18:setHeight(20);
    obj.label18:setText("Programador: CastielAngels");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout16);
    obj.label19:setLeft(0);
    obj.label19:setTop(55);
    obj.label19:setWidth(250);
    obj.label19:setFontColor("silver");
    obj.label19:setHeight(20);
    obj.label19:setText("Tormenta RPG RRPG Firecast");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout16);
    obj.label20:setLeft(0);
    obj.label20:setTop(80);
    obj.label20:setWidth(250);
    obj.label20:setFontColor("silver");
    obj.label20:setHeight(20);
    obj.label20:setText("Versão: 1.0a 30/06/19");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setFontSize(13);
    obj.label20:setName("label20");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout16);
    obj.label21:setLeft(0);
    obj.label21:setTop(105);
    obj.label21:setWidth(250);
    obj.label21:setFontColor("silver");
    obj.label21:setHeight(20);
    obj.label21:setText("Por favor, mantenha seu plugin atualizado.");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setFontSize(13);
    obj.label21:setName("label21");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.Tormenta01 ~= nil then self.Tormenta01:destroy(); self.Tormenta01 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.OsMundosDosMortosC ~= nil then self.OsMundosDosMortosC:destroy(); self.OsMundosDosMortosC = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
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
rrpg.registrarForm(_TormentaCastfrm);
rrpg.registrarDataType(_TormentaCastfrm);

return _TormentaCastfrm;
