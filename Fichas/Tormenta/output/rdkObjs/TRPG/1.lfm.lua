require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newTormenta01()
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
    obj:setName("Tormenta01");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1010);
    obj.rectangle1:setHeight(700);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(10);
    obj.rectangle1:setYradius(10);
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
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
    obj.layout2:setParent(obj.scrollBox1);
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
    obj.layout3:setParent(obj.scrollBox1);
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
    obj.layout4:setParent(obj.scrollBox1);
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
    obj.layout5:setParent(obj.scrollBox1);
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
    obj.layout6:setParent(obj.scrollBox1);
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
    obj.layout7:setParent(obj.scrollBox1);
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
    obj.layout8:setParent(obj.scrollBox1);
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
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(530);
    obj.image1:setTop(30);
    obj.image1:setWidth(400);
    obj.image1:setHeight(147);
    obj.image1:setSRC("/TRPG/img/LogoTormenta.png");
    obj.image1:setName("image1");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
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
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
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
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
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
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
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
rrpg.registrarForm(_Tormenta01);

return _Tormenta01;
