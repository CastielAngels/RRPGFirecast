require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta01()
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
    obj:setName("Tormenta01");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
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
    obj.edit9:setMin(-99);
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
    obj.modforca:setMin(-99);
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
    obj.edit10:setMin(-99);
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
    obj.edit11:setMin(-99);
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
    obj.moddestreza:setMin(-99);
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
    obj.edit12:setMin(-99);
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
    obj.edit13:setMin(-99);
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
    obj.modconstituicao:setMin(-99);
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
    obj.edit14:setMin(-99);
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
    obj.edit15:setMin(-99);
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
    obj.modinteligencia:setMin(-99);
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
    obj.edit16:setMin(-99);
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
    obj.edit17:setMin(-99);
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
    obj.modsabedoria:setMin(-99);
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
    obj.edit18:setMin(-99);
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
    obj.edit19:setMin(-99);
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
    obj.modcarisma:setMin(-99);
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
    obj.edit20:setMin(-99);
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
    obj.ca4:setMin(-99);
    obj.ca4:setMax(99);
    obj.ca4:setHorzTextAlign("center");
    obj.ca4:setFontSize(15.0);
    lfm_setPropAsString(obj.ca4, "fontStyle",  "bold");

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
    obj.totalfort:setMin(-99);
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
    obj.fort1:setMin(-99);
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
    obj.fort2:setMin(-99);
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
    obj.edit22:setMin(-99);
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
    obj.totalref:setMin(-99);
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
    obj.ref1:setMin(-99);
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
    obj.ref2:setMin(-99);
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
    obj.edit23:setMin(-99);
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
    obj.totalvon:setMin(-99);
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
    obj.von1:setMin(-99);
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
    obj.von2:setMin(-99);
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
    obj.edit24:setMin(-99);
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
    lfm_setPropAsString(obj.image2, "animate",  "true");
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
    obj.totalcac:setMin(-99);
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
    obj.edit28:setMin(-99);
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
    obj.cac2:setMin(-99);
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
    obj.edit29:setMin(-99);
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
    obj.edit30:setMin(-99);
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
    obj.totaldis:setMin(-99);
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
    obj.edit31:setMin(-99);
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
    obj.dis2:setMin(-99);
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
    obj.edit32:setMin(-99);
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
    obj.edit33:setMin(-99);
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
    obj.edit35:setMin(-99);
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
    obj.edit37:setMin(-99);
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
    obj.edit39:setMin(-99);
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
    obj.edit41:setMin(-99);
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
    obj.edit43:setMin(-99);
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
    obj.edit45:setMin(-99);
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
    obj.edit47:setMin(-99);
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
    obj.edit49:setMin(-99);
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
    obj.edit51:setMin(-99);
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
    obj.edit53:setMin(-99);
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
    obj.nivel:setMin(-99);
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
    lfm_setPropAsString(obj.update, "animate",  "true");
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
    obj.button1:setHint("Baixa a versão mais recente da ficha. Versão instalada: 1.4");
    obj.button1:setName("button1");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
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
	


    obj._e_event0 = obj:addEventListener("onNodeReady",
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
            				if sheet.acuidade then
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

    function obj:_releaseEvents()
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

        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.totalcac ~= nil then self.totalcac:destroy(); self.totalcac = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.modforca ~= nil then self.modforca:destroy(); self.modforca = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.von1 ~= nil then self.von1:destroy(); self.von1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.modsabedoria ~= nil then self.modsabedoria:destroy(); self.modsabedoria = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.ca1 ~= nil then self.ca1:destroy(); self.ca1 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.totalref ~= nil then self.totalref:destroy(); self.totalref = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.modinteligencia ~= nil then self.modinteligencia:destroy(); self.modinteligencia = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.nivel ~= nil then self.nivel:destroy(); self.nivel = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.totaldis ~= nil then self.totaldis:destroy(); self.totaldis = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.pontaria ~= nil then self.pontaria:destroy(); self.pontaria = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.moddestreza ~= nil then self.moddestreza:destroy(); self.moddestreza = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.modcarisma ~= nil then self.modcarisma:destroy(); self.modcarisma = nil; end;
        if self.fort2 ~= nil then self.fort2:destroy(); self.fort2 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.ca3 ~= nil then self.ca3:destroy(); self.ca3 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.totalfort ~= nil then self.totalfort:destroy(); self.totalfort = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.ca4 ~= nil then self.ca4:destroy(); self.ca4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.calculos ~= nil then self.calculos:destroy(); self.calculos = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.acuidade ~= nil then self.acuidade:destroy(); self.acuidade = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.totalca ~= nil then self.totalca:destroy(); self.totalca = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.ref2 ~= nil then self.ref2:destroy(); self.ref2 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.dis2 ~= nil then self.dis2:destroy(); self.dis2 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.totalvon ~= nil then self.totalvon:destroy(); self.totalvon = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.ref1 ~= nil then self.ref1:destroy(); self.ref1 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.von2 ~= nil then self.von2:destroy(); self.von2 = nil; end;
        if self.cac2 ~= nil then self.cac2:destroy(); self.cac2 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.fort1 ~= nil then self.fort1:destroy(); self.fort1 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.ca2 ~= nil then self.ca2:destroy(); self.ca2 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.modconstituicao ~= nil then self.modconstituicao:destroy(); self.modconstituicao = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.update ~= nil then self.update:destroy(); self.update = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta01()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta01();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta01 = {
    newEditor = newTormenta01, 
    new = newTormenta01, 
    name = "Tormenta01", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta01 = _Tormenta01;
Firecast.registrarForm(_Tormenta01);

return _Tormenta01;
