require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_OsMundosDosMortos1()
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
    obj:setName("OsMundosDosMortos1");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setLockWhileNodeIsLoading(true);

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setAlign("client");
    obj.image1:setField("backgroundimg");
    obj.image1:setStyle("stretch");
    obj.image1:setName("image1");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(373);
    obj.rectangle1:setTop(33);
    obj.rectangle1:setWidth(135);
    obj.rectangle1:setHeight(135);
    obj.rectangle1:setColor("DimGray");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setLeft(401);
    obj.label1:setTop(65);
    obj.label1:setWidth(80);
    obj.label1:setHeight(60);
    obj.label1:setText("Sem Avatar");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setLeft(373);
    obj.image2:setTop(33);
    obj.image2:setWidth(135);
    obj.image2:setHeight(135);
    obj.image2:setName("image2");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(880);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("gray");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.backgroundimg = GUI.fromHandle(_obj_newObject("button"));
    obj.backgroundimg:setParent(obj.layout1);
    obj.backgroundimg:setName("backgroundimg");
    obj.backgroundimg:setLeft(830);
    obj.backgroundimg:setTop(2);
    obj.backgroundimg:setWidth(40);
    obj.backgroundimg:setHeight(25);
    obj.backgroundimg:setText("BG");
    obj.backgroundimg:setCanFocus(false);
    obj.backgroundimg:setHint("Altera a imagem de fundo da ficha.");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(170);
    obj.layout2:setWidth(880);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("gray");
    obj.rectangle3:setName("rectangle3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(8);
    obj.label3:setTop(5);
    obj.label3:setWidth(138);
    obj.label3:setHeight(20);
    obj.label3:setText("Atributos");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(695);
    obj.label4:setTop(5);
    obj.label4:setWidth(148);
    obj.label4:setHeight(20);
    obj.label4:setText("Experiência:");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.exptotal = GUI.fromHandle(_obj_newObject("edit"));
    obj.exptotal:setParent(obj.layout2);
    obj.exptotal:setName("exptotal");
    obj.exptotal:setLeft(780);
    obj.exptotal:setTop(2);
    obj.exptotal:setWidth(40);
    obj.exptotal:setHeight(25);
    obj.exptotal:setType("number");
    obj.exptotal:setField("exptotal");
    obj.exptotal:setHorzTextAlign("center");

    obj.expatual = GUI.fromHandle(_obj_newObject("edit"));
    obj.expatual:setParent(obj.layout2);
    obj.expatual:setName("expatual");
    obj.expatual:setLeft(830);
    obj.expatual:setTop(2);
    obj.expatual:setWidth(40);
    obj.expatual:setHeight(25);
    obj.expatual:setType("number");
    obj.expatual:setField("expatual");
    obj.expatual:setHorzTextAlign("center");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(415);
    obj.layout3:setWidth(880);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("gray");
    obj.rectangle4:setName("rectangle4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(38);
    obj.layout4:setWidth(880);
    obj.layout4:setHeight(125);
    obj.layout4:setName("layout4");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(5);
    obj.layout5:setTop(5);
    obj.layout5:setWidth(290);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setLeft(5);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(80);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout5);
    obj.label6:setLeft(8);
    obj.label6:setTop(5);
    obj.label6:setWidth(77);
    obj.label6:setHeight(20);
    obj.label6:setText("Nome");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setFontSize(12);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout5);
    obj.edit1:setLeft(90);
    obj.edit1:setTop(0);
    obj.edit1:setWidth(200);
    obj.edit1:setHeight(25);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setField("nome");
    obj.edit1:setType("text");
    obj.edit1:setName("edit1");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(580);
    obj.layout6:setTop(5);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setLeft(5);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(80);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setLeft(8);
    obj.label7:setTop(5);
    obj.label7:setWidth(77);
    obj.label7:setHeight(20);
    obj.label7:setText("Classe");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setFontSize(12);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setLeft(90);
    obj.edit2:setTop(0);
    obj.edit2:setWidth(200);
    obj.edit2:setHeight(25);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setField("classe");
    obj.edit2:setType("text");
    obj.edit2:setName("edit2");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout4);
    obj.layout7:setLeft(5);
    obj.layout7:setTop(35);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout7);
    obj.label8:setLeft(8);
    obj.label8:setTop(5);
    obj.label8:setWidth(77);
    obj.label8:setHeight(20);
    obj.label8:setText("Personalidade");
    obj.label8:setHorzTextAlign("leading");
    obj.label8:setFontSize(11);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout7);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("personalidade");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout4);
    obj.layout8:setLeft(580);
    obj.layout8:setTop(35);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("nvclasse");
    obj.edit4:setType("number");
    obj.edit4:setName("edit4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout4);
    obj.layout9:setLeft(5);
    obj.layout9:setTop(65);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(8);
    obj.label10:setTop(5);
    obj.label10:setWidth(77);
    obj.label10:setHeight(20);
    obj.label10:setText("Alcunha");
    obj.label10:setHorzTextAlign("leading");
    obj.label10:setFontSize(12);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout9);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("conceito");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout4);
    obj.layout10:setLeft(580);
    obj.layout10:setTop(65);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout10);
    obj.label11:setLeft(8);
    obj.label11:setTop(5);
    obj.label11:setWidth(77);
    obj.label11:setHeight(20);
    obj.label11:setText("Tribo");
    obj.label11:setHorzTextAlign("leading");
    obj.label11:setFontSize(12);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout10);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("tribo");
    obj.edit6:setType("text");
    obj.edit6:setName("edit6");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout4);
    obj.layout11:setLeft(5);
    obj.layout11:setTop(95);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout11);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout11);
    obj.label12:setLeft(8);
    obj.label12:setTop(5);
    obj.label12:setWidth(77);
    obj.label12:setHeight(20);
    obj.label12:setText("Altura");
    obj.label12:setHorzTextAlign("leading");
    obj.label12:setFontSize(12);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("altura");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout4);
    obj.layout12:setLeft(580);
    obj.layout12:setTop(95);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout12);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout12);
    obj.label13:setLeft(8);
    obj.label13:setTop(5);
    obj.label13:setWidth(77);
    obj.label13:setHeight(20);
    obj.label13:setText("Peso");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(12);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout12);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("peso");
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setTop(211);
    obj.layout13:setWidth(880);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout13);
    obj.rectangle13:setLeft(8);
    obj.rectangle13:setColor("Silver");
    obj.rectangle13:setWidth(235);
    obj.rectangle13:setName("rectangle13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout13);
    obj.rectangle14:setLeft(254);
    obj.rectangle14:setColor("Silver");
    obj.rectangle14:setWidth(370);
    obj.rectangle14:setName("rectangle14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout13);
    obj.rectangle15:setLeft(635);
    obj.rectangle15:setColor("Silver");
    obj.rectangle15:setWidth(235);
    obj.rectangle15:setName("rectangle15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
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

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(8);
    obj.layout14:setTop(245);
    obj.layout14:setWidth(235);
    obj.layout14:setHeight(160);
    obj.layout14:setName("layout14");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout14);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setName("rectangle16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setLeft(86);
    obj.label17:setTop(9);
    obj.label17:setWidth(65);
    obj.label17:setHeight(20);
    obj.label17:setText("Músculos");
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontSize(14);
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout14);
    obj.layout15:setTop(30);
    obj.layout15:setWidth(215);
    obj.layout15:setHeight(20);
    obj.layout15:setName("layout15");

    obj.musc_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n1:setParent(obj.layout15);
    obj.musc_n1:setField("musc_1");
    obj.musc_n1:setName("musc_n1");
    obj.musc_n1:setLeft(19);
    obj.musc_n1:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n1:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n1:setWidth(15);
    obj.musc_n1:setHeight(15);

    obj.musc_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n2:setParent(obj.layout15);
    obj.musc_n2:setField("musc_2");
    obj.musc_n2:setName("musc_n2");
    obj.musc_n2:setLeft(39);
    obj.musc_n2:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n2:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n2:setWidth(15);
    obj.musc_n2:setHeight(15);

    obj.musc_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n3:setParent(obj.layout15);
    obj.musc_n3:setField("musc_3");
    obj.musc_n3:setName("musc_n3");
    obj.musc_n3:setLeft(59);
    obj.musc_n3:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n3:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n3:setWidth(15);
    obj.musc_n3:setHeight(15);

    obj.musc_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n4:setParent(obj.layout15);
    obj.musc_n4:setField("musc_4");
    obj.musc_n4:setName("musc_n4");
    obj.musc_n4:setLeft(79);
    obj.musc_n4:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n4:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n4:setWidth(15);
    obj.musc_n4:setHeight(15);

    obj.musc_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n5:setParent(obj.layout15);
    obj.musc_n5:setField("musc_5");
    obj.musc_n5:setName("musc_n5");
    obj.musc_n5:setLeft(99);
    obj.musc_n5:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n5:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n5:setWidth(15);
    obj.musc_n5:setHeight(15);

    obj.musc_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n6:setParent(obj.layout15);
    obj.musc_n6:setField("musc_6");
    obj.musc_n6:setName("musc_n6");
    obj.musc_n6:setLeft(119);
    obj.musc_n6:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n6:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n6:setWidth(15);
    obj.musc_n6:setHeight(15);

    obj.musc_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n7:setParent(obj.layout15);
    obj.musc_n7:setField("musc_7");
    obj.musc_n7:setName("musc_n7");
    obj.musc_n7:setLeft(139);
    obj.musc_n7:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n7:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n7:setWidth(15);
    obj.musc_n7:setHeight(15);

    obj.musc_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n8:setParent(obj.layout15);
    obj.musc_n8:setField("musc_8");
    obj.musc_n8:setName("musc_n8");
    obj.musc_n8:setLeft(159);
    obj.musc_n8:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n8:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n8:setWidth(15);
    obj.musc_n8:setHeight(15);

    obj.musc_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n9:setParent(obj.layout15);
    obj.musc_n9:setField("musc_9");
    obj.musc_n9:setName("musc_n9");
    obj.musc_n9:setLeft(179);
    obj.musc_n9:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n9:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n9:setWidth(15);
    obj.musc_n9:setHeight(15);

    obj.musc_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.musc_n10:setParent(obj.layout15);
    obj.musc_n10:setField("musc_10");
    obj.musc_n10:setName("musc_n10");
    obj.musc_n10:setLeft(199);
    obj.musc_n10:setImageChecked("/sub/img/bboll2.png");
    obj.musc_n10:setImageUnchecked("/sub/img/bboll1.png");
    obj.musc_n10:setWidth(15);
    obj.musc_n10:setHeight(15);

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout14);
    obj.label18:setLeft(91);
    obj.label18:setTop(54);
    obj.label18:setWidth(60);
    obj.label18:setHeight(20);
    obj.label18:setText("Cérebro");
    obj.label18:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontSize(14);
    obj.label18:setFontColor("black");
    obj.label18:setName("label18");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout14);
    obj.layout16:setTop(75);
    obj.layout16:setWidth(215);
    obj.layout16:setHeight(20);
    obj.layout16:setName("layout16");

    obj.cereb_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n1:setParent(obj.layout16);
    obj.cereb_n1:setField("cereb_1");
    obj.cereb_n1:setName("cereb_n1");
    obj.cereb_n1:setLeft(19);
    obj.cereb_n1:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n1:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n1:setWidth(15);
    obj.cereb_n1:setHeight(15);

    obj.cereb_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n2:setParent(obj.layout16);
    obj.cereb_n2:setField("cereb_2");
    obj.cereb_n2:setName("cereb_n2");
    obj.cereb_n2:setLeft(39);
    obj.cereb_n2:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n2:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n2:setWidth(15);
    obj.cereb_n2:setHeight(15);

    obj.cereb_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n3:setParent(obj.layout16);
    obj.cereb_n3:setField("cereb_3");
    obj.cereb_n3:setName("cereb_n3");
    obj.cereb_n3:setLeft(59);
    obj.cereb_n3:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n3:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n3:setWidth(15);
    obj.cereb_n3:setHeight(15);

    obj.cereb_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n4:setParent(obj.layout16);
    obj.cereb_n4:setField("cereb_4");
    obj.cereb_n4:setName("cereb_n4");
    obj.cereb_n4:setLeft(79);
    obj.cereb_n4:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n4:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n4:setWidth(15);
    obj.cereb_n4:setHeight(15);

    obj.cereb_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n5:setParent(obj.layout16);
    obj.cereb_n5:setField("cereb_5");
    obj.cereb_n5:setName("cereb_n5");
    obj.cereb_n5:setLeft(99);
    obj.cereb_n5:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n5:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n5:setWidth(15);
    obj.cereb_n5:setHeight(15);

    obj.cereb_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n6:setParent(obj.layout16);
    obj.cereb_n6:setField("cereb_6");
    obj.cereb_n6:setName("cereb_n6");
    obj.cereb_n6:setLeft(119);
    obj.cereb_n6:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n6:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n6:setWidth(15);
    obj.cereb_n6:setHeight(15);

    obj.cereb_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n7:setParent(obj.layout16);
    obj.cereb_n7:setField("cereb_7");
    obj.cereb_n7:setName("cereb_n7");
    obj.cereb_n7:setLeft(139);
    obj.cereb_n7:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n7:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n7:setWidth(15);
    obj.cereb_n7:setHeight(15);

    obj.cereb_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n8:setParent(obj.layout16);
    obj.cereb_n8:setField("cereb_8");
    obj.cereb_n8:setName("cereb_n8");
    obj.cereb_n8:setLeft(159);
    obj.cereb_n8:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n8:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n8:setWidth(15);
    obj.cereb_n8:setHeight(15);

    obj.cereb_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n9:setParent(obj.layout16);
    obj.cereb_n9:setField("cereb_9");
    obj.cereb_n9:setName("cereb_n9");
    obj.cereb_n9:setLeft(179);
    obj.cereb_n9:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n9:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n9:setWidth(15);
    obj.cereb_n9:setHeight(15);

    obj.cereb_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cereb_n10:setParent(obj.layout16);
    obj.cereb_n10:setField("cereb_10");
    obj.cereb_n10:setName("cereb_n10");
    obj.cereb_n10:setLeft(199);
    obj.cereb_n10:setImageChecked("/sub/img/bboll2.png");
    obj.cereb_n10:setImageUnchecked("/sub/img/bboll1.png");
    obj.cereb_n10:setWidth(15);
    obj.cereb_n10:setHeight(15);

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout14);
    obj.label19:setLeft(91);
    obj.label19:setTop(99);
    obj.label19:setWidth(60);
    obj.label19:setHeight(20);
    obj.label19:setText("Coração");
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontSize(14);
    obj.label19:setFontColor("black");
    obj.label19:setName("label19");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout14);
    obj.layout17:setTop(120);
    obj.layout17:setWidth(215);
    obj.layout17:setHeight(20);
    obj.layout17:setName("layout17");

    obj.corac_n1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n1:setParent(obj.layout17);
    obj.corac_n1:setField("corac_1");
    obj.corac_n1:setName("corac_n1");
    obj.corac_n1:setLeft(19);
    obj.corac_n1:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n1:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n1:setWidth(15);
    obj.corac_n1:setHeight(15);

    obj.corac_n2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n2:setParent(obj.layout17);
    obj.corac_n2:setField("corac_2");
    obj.corac_n2:setName("corac_n2");
    obj.corac_n2:setLeft(39);
    obj.corac_n2:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n2:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n2:setWidth(15);
    obj.corac_n2:setHeight(15);

    obj.corac_n3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n3:setParent(obj.layout17);
    obj.corac_n3:setField("corac_3");
    obj.corac_n3:setName("corac_n3");
    obj.corac_n3:setLeft(59);
    obj.corac_n3:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n3:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n3:setWidth(15);
    obj.corac_n3:setHeight(15);

    obj.corac_n4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n4:setParent(obj.layout17);
    obj.corac_n4:setField("corac_4");
    obj.corac_n4:setName("corac_n4");
    obj.corac_n4:setLeft(79);
    obj.corac_n4:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n4:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n4:setWidth(15);
    obj.corac_n4:setHeight(15);

    obj.corac_n5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n5:setParent(obj.layout17);
    obj.corac_n5:setField("corac_5");
    obj.corac_n5:setName("corac_n5");
    obj.corac_n5:setLeft(99);
    obj.corac_n5:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n5:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n5:setWidth(15);
    obj.corac_n5:setHeight(15);

    obj.corac_n6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n6:setParent(obj.layout17);
    obj.corac_n6:setField("corac_6");
    obj.corac_n6:setName("corac_n6");
    obj.corac_n6:setLeft(119);
    obj.corac_n6:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n6:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n6:setWidth(15);
    obj.corac_n6:setHeight(15);

    obj.corac_n7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n7:setParent(obj.layout17);
    obj.corac_n7:setField("corac_7");
    obj.corac_n7:setName("corac_n7");
    obj.corac_n7:setLeft(139);
    obj.corac_n7:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n7:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n7:setWidth(15);
    obj.corac_n7:setHeight(15);

    obj.corac_n8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n8:setParent(obj.layout17);
    obj.corac_n8:setField("corac_8");
    obj.corac_n8:setName("corac_n8");
    obj.corac_n8:setLeft(159);
    obj.corac_n8:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n8:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n8:setWidth(15);
    obj.corac_n8:setHeight(15);

    obj.corac_n9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n9:setParent(obj.layout17);
    obj.corac_n9:setField("corac_9");
    obj.corac_n9:setName("corac_n9");
    obj.corac_n9:setLeft(179);
    obj.corac_n9:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n9:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n9:setWidth(15);
    obj.corac_n9:setHeight(15);

    obj.corac_n10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.corac_n10:setParent(obj.layout17);
    obj.corac_n10:setField("corac_10");
    obj.corac_n10:setName("corac_n10");
    obj.corac_n10:setLeft(199);
    obj.corac_n10:setImageChecked("/sub/img/bboll2.png");
    obj.corac_n10:setImageUnchecked("/sub/img/bboll1.png");
    obj.corac_n10:setWidth(15);
    obj.corac_n10:setHeight(15);

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(254);
    obj.layout18:setTop(245);
    obj.layout18:setWidth(370);
    obj.layout18:setHeight(160);
    obj.layout18:setName("layout18");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout18);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setName("rectangle17");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout18);
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

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout18);
    obj.edit9:setField("sanidade");
    obj.edit9:setLeft(50);
    obj.edit9:setTop(32);
    obj.edit9:setWidth(40);
    obj.edit9:setHeight(40);
    obj.edit9:setFontSize(16);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setType("number");
    obj.edit9:setMax(999);
    obj.edit9:setTransparent(true);
    obj.edit9:setFontColor("black");
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setName("edit9");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.layout18);
    obj.image3:setLeft(47);
    obj.image3:setTop(31);
    obj.image3:setWidth(45);
    obj.image3:setHeight(45);
    obj.image3:setSRC("/sub/img/blackhole.png");
    obj.image3:setName("image3");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout18);
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

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout18);
    obj.edit10:setField("autocontrole");
    obj.edit10:setLeft(50);
    obj.edit10:setTop(102);
    obj.edit10:setWidth(40);
    obj.edit10:setHeight(40);
    obj.edit10:setFontSize(16);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setType("number");
    obj.edit10:setMax(999);
    obj.edit10:setTransparent(true);
    obj.edit10:setFontColor("black");
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setName("edit10");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj.layout18);
    obj.image4:setLeft(47);
    obj.image4:setTop(101);
    obj.image4:setWidth(45);
    obj.image4:setHeight(45);
    obj.image4:setSRC("/sub/img/blackhole.png");
    obj.image4:setName("image4");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout18);
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

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout18);
    obj.edit11:setField("forcadevontade");
    obj.edit11:setLeft(165);
    obj.edit11:setTop(67);
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

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj.layout18);
    obj.image5:setLeft(162);
    obj.image5:setTop(66);
    obj.image5:setWidth(45);
    obj.image5:setHeight(45);
    obj.image5:setSRC("/sub/img/blackhole.png");
    obj.image5:setName("image5");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout18);
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

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout18);
    obj.edit12:setField("energia");
    obj.edit12:setLeft(280);
    obj.edit12:setTop(32);
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

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj.layout18);
    obj.image6:setLeft(277);
    obj.image6:setTop(31);
    obj.image6:setWidth(45);
    obj.image6:setHeight(45);
    obj.image6:setSRC("/sub/img/blackhole.png");
    obj.image6:setName("image6");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout18);
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

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout18);
    obj.edit13:setField("pontosdevida");
    obj.edit13:setLeft(280);
    obj.edit13:setTop(102);
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

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj.layout18);
    obj.image7:setLeft(277);
    obj.image7:setTop(101);
    obj.image7:setWidth(45);
    obj.image7:setHeight(45);
    obj.image7:setSRC("/sub/img/blackhole.png");
    obj.image7:setName("image7");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(635);
    obj.layout19:setTop(245);
    obj.layout19:setWidth(235);
    obj.layout19:setHeight(160);
    obj.layout19:setName("layout19");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout19);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setName("rectangle18");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout19);
    obj.label25:setLeft(86);
    obj.label25:setTop(11);
    obj.label25:setWidth(65);
    obj.label25:setHeight(20);
    obj.label25:setText("Músculos");
    obj.label25:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontSize(14);
    obj.label25:setFontColor("black");
    obj.label25:setName("label25");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout19);
    obj.edit14:setField("vmusculos");
    obj.edit14:setLeft(104);
    obj.edit14:setTop(33);
    obj.edit14:setWidth(25);
    obj.edit14:setHeight(25);
    obj.edit14:setFontSize(16);
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setHitTest(false);
    obj.edit14:setReadOnly(true);
    obj.edit14:setType("number");
    obj.edit14:setMax(10);
    obj.edit14:setTransparent(true);
    obj.edit14:setFontColor("black");
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setName("edit14");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj.layout19);
    obj.image8:setLeft(102);
    obj.image8:setTop(31);
    obj.image8:setWidth(30);
    obj.image8:setHeight(30);
    obj.image8:setSRC("/sub/img/blackhole.png");
    obj.image8:setName("image8");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout19);
    obj.label26:setLeft(91);
    obj.label26:setTop(56);
    obj.label26:setWidth(60);
    obj.label26:setHeight(20);
    obj.label26:setText("Cérebro");
    obj.label26:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontSize(14);
    obj.label26:setFontColor("black");
    obj.label26:setName("label26");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout19);
    obj.edit15:setField("vcerebro");
    obj.edit15:setLeft(104);
    obj.edit15:setTop(78);
    obj.edit15:setWidth(25);
    obj.edit15:setHeight(25);
    obj.edit15:setFontSize(16);
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setHitTest(false);
    obj.edit15:setReadOnly(true);
    obj.edit15:setType("number");
    obj.edit15:setMax(10);
    obj.edit15:setTransparent(true);
    obj.edit15:setFontColor("black");
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setName("edit15");

    obj.image9 = GUI.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj.layout19);
    obj.image9:setLeft(102);
    obj.image9:setTop(76);
    obj.image9:setWidth(30);
    obj.image9:setHeight(30);
    obj.image9:setSRC("/sub/img/blackhole.png");
    obj.image9:setName("image9");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout19);
    obj.label27:setLeft(91);
    obj.label27:setTop(101);
    obj.label27:setWidth(60);
    obj.label27:setHeight(20);
    obj.label27:setText("Coração");
    obj.label27:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontSize(14);
    obj.label27:setFontColor("black");
    obj.label27:setName("label27");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout19);
    obj.edit16:setField("vcoracao");
    obj.edit16:setLeft(104);
    obj.edit16:setTop(123);
    obj.edit16:setWidth(25);
    obj.edit16:setHeight(25);
    obj.edit16:setFontSize(16);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setHitTest(false);
    obj.edit16:setReadOnly(true);
    obj.edit16:setType("number");
    obj.edit16:setMax(10);
    obj.edit16:setTransparent(true);
    obj.edit16:setFontColor("black");
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setName("edit16");

    obj.image10 = GUI.fromHandle(_obj_newObject("image"));
    obj.image10:setParent(obj.layout19);
    obj.image10:setLeft(102);
    obj.image10:setTop(121);
    obj.image10:setWidth(30);
    obj.image10:setHeight(30);
    obj.image10:setSRC("/sub/img/blackhole.png");
    obj.image10:setName("image10");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(10);
    obj.layout20:setTop(457);
    obj.layout20:setWidth(860);
    obj.layout20:setHeight(320);
    obj.layout20:setName("layout20");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout20);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setName("rectangle19");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout20);
    obj.label28:setLeft(100);
    obj.label28:setTop(10);
    obj.label28:setWidth(130);
    obj.label28:setHeight(20);
    obj.label28:setText("Minhas Habilidades");
    obj.label28:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontSize(13);
    obj.label28:setFontColor("black");
    obj.label28:setName("label28");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout20);
    obj.label29:setLeft(620);
    obj.label29:setTop(10);
    obj.label29:setWidth(140);
    obj.label29:setHeight(20);
    obj.label29:setText("Habilidades de Classe");
    obj.label29:setHorzTextAlign("trailing");
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontSize(13);
    obj.label29:setFontColor("black");
    obj.label29:setName("label29");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout20);
    obj.layout21:setLeft(38);
    obj.layout21:setTop(36);
    obj.layout21:setWidth(260);
    obj.layout21:setHeight(250);
    obj.layout21:setName("layout21");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout21);
    obj.layout22:setLeft(10);
    obj.layout22:setTop(11);
    obj.layout22:setWidth(245);
    obj.layout22:setHeight(20);
    obj.layout22:setName("layout22");

    obj.horzLine1 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine1:setParent(obj.layout22);
    obj.horzLine1:setTop(18);
    obj.horzLine1:setWidth(130);
    obj.horzLine1:setStrokeSize(2);
    obj.horzLine1:setStrokeColor("black");
    obj.horzLine1:setName("horzLine1");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout22);
    obj.edit17:setField("mhabilidades1_e");
    obj.edit17:setLeft(2);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(125);
    obj.edit17:setHeight(20);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setFontColor("black");
    obj.edit17:setFontSize(14);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setTransparent(true);
    obj.edit17:setName("edit17");

    obj.imageCheckBox1 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox1:setParent(obj.layout22);
    obj.imageCheckBox1:setField("mhabilidades1_1");
    obj.imageCheckBox1:setLeft(137);
    obj.imageCheckBox1:setTop(4);
    obj.imageCheckBox1:setWidth(15);
    obj.imageCheckBox1:setHeight(15);
    obj.imageCheckBox1:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox1:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox1:setName("imageCheckBox1");

    obj.imageCheckBox2 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox2:setParent(obj.layout22);
    obj.imageCheckBox2:setField("mhabilidades1_2");
    obj.imageCheckBox2:setLeft(155);
    obj.imageCheckBox2:setTop(4);
    obj.imageCheckBox2:setWidth(15);
    obj.imageCheckBox2:setHeight(15);
    obj.imageCheckBox2:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox2:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox2:setName("imageCheckBox2");

    obj.imageCheckBox3 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox3:setParent(obj.layout22);
    obj.imageCheckBox3:setField("mhabilidades1_3");
    obj.imageCheckBox3:setLeft(173);
    obj.imageCheckBox3:setTop(4);
    obj.imageCheckBox3:setWidth(15);
    obj.imageCheckBox3:setHeight(15);
    obj.imageCheckBox3:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox3:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox3:setName("imageCheckBox3");

    obj.imageCheckBox4 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox4:setParent(obj.layout22);
    obj.imageCheckBox4:setField("mhabilidades1_4");
    obj.imageCheckBox4:setLeft(191);
    obj.imageCheckBox4:setTop(4);
    obj.imageCheckBox4:setWidth(15);
    obj.imageCheckBox4:setHeight(15);
    obj.imageCheckBox4:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox4:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox4:setName("imageCheckBox4");

    obj.imageCheckBox5 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox5:setParent(obj.layout22);
    obj.imageCheckBox5:setField("mhabilidades1_5");
    obj.imageCheckBox5:setLeft(209);
    obj.imageCheckBox5:setTop(4);
    obj.imageCheckBox5:setWidth(15);
    obj.imageCheckBox5:setHeight(15);
    obj.imageCheckBox5:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox5:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox5:setName("imageCheckBox5");

    obj.imageCheckBox6 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox6:setParent(obj.layout22);
    obj.imageCheckBox6:setField("mhabilidades1_6");
    obj.imageCheckBox6:setLeft(227);
    obj.imageCheckBox6:setTop(4);
    obj.imageCheckBox6:setWidth(15);
    obj.imageCheckBox6:setHeight(15);
    obj.imageCheckBox6:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox6:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox6:setName("imageCheckBox6");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout21);
    obj.layout23:setLeft(10);
    obj.layout23:setTop(41);
    obj.layout23:setWidth(245);
    obj.layout23:setHeight(20);
    obj.layout23:setName("layout23");

    obj.horzLine2 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine2:setParent(obj.layout23);
    obj.horzLine2:setTop(18);
    obj.horzLine2:setWidth(130);
    obj.horzLine2:setStrokeSize(2);
    obj.horzLine2:setStrokeColor("black");
    obj.horzLine2:setName("horzLine2");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout23);
    obj.edit18:setField("mhabilidades2_e");
    obj.edit18:setLeft(2);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(125);
    obj.edit18:setHeight(20);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setFontColor("black");
    obj.edit18:setFontSize(14);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setTransparent(true);
    obj.edit18:setName("edit18");

    obj.imageCheckBox7 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox7:setParent(obj.layout23);
    obj.imageCheckBox7:setField("mhabilidades2_1");
    obj.imageCheckBox7:setLeft(137);
    obj.imageCheckBox7:setTop(4);
    obj.imageCheckBox7:setWidth(15);
    obj.imageCheckBox7:setHeight(15);
    obj.imageCheckBox7:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox7:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox7:setName("imageCheckBox7");

    obj.imageCheckBox8 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox8:setParent(obj.layout23);
    obj.imageCheckBox8:setField("mhabilidades2_2");
    obj.imageCheckBox8:setLeft(155);
    obj.imageCheckBox8:setTop(4);
    obj.imageCheckBox8:setWidth(15);
    obj.imageCheckBox8:setHeight(15);
    obj.imageCheckBox8:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox8:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox8:setName("imageCheckBox8");

    obj.imageCheckBox9 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox9:setParent(obj.layout23);
    obj.imageCheckBox9:setField("mhabilidades2_3");
    obj.imageCheckBox9:setLeft(173);
    obj.imageCheckBox9:setTop(4);
    obj.imageCheckBox9:setWidth(15);
    obj.imageCheckBox9:setHeight(15);
    obj.imageCheckBox9:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox9:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox9:setName("imageCheckBox9");

    obj.imageCheckBox10 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox10:setParent(obj.layout23);
    obj.imageCheckBox10:setField("mhabilidades2_4");
    obj.imageCheckBox10:setLeft(191);
    obj.imageCheckBox10:setTop(4);
    obj.imageCheckBox10:setWidth(15);
    obj.imageCheckBox10:setHeight(15);
    obj.imageCheckBox10:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox10:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox10:setName("imageCheckBox10");

    obj.imageCheckBox11 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox11:setParent(obj.layout23);
    obj.imageCheckBox11:setField("mhabilidades2_5");
    obj.imageCheckBox11:setLeft(209);
    obj.imageCheckBox11:setTop(4);
    obj.imageCheckBox11:setWidth(15);
    obj.imageCheckBox11:setHeight(15);
    obj.imageCheckBox11:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox11:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox11:setName("imageCheckBox11");

    obj.imageCheckBox12 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox12:setParent(obj.layout23);
    obj.imageCheckBox12:setField("mhabilidades2_6");
    obj.imageCheckBox12:setLeft(227);
    obj.imageCheckBox12:setTop(4);
    obj.imageCheckBox12:setWidth(15);
    obj.imageCheckBox12:setHeight(15);
    obj.imageCheckBox12:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox12:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox12:setName("imageCheckBox12");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout21);
    obj.layout24:setLeft(10);
    obj.layout24:setTop(71);
    obj.layout24:setWidth(245);
    obj.layout24:setHeight(20);
    obj.layout24:setName("layout24");

    obj.horzLine3 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine3:setParent(obj.layout24);
    obj.horzLine3:setTop(18);
    obj.horzLine3:setWidth(130);
    obj.horzLine3:setStrokeSize(2);
    obj.horzLine3:setStrokeColor("black");
    obj.horzLine3:setName("horzLine3");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout24);
    obj.edit19:setField("mhabilidades3_e");
    obj.edit19:setLeft(2);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(125);
    obj.edit19:setHeight(20);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setFontColor("black");
    obj.edit19:setFontSize(14);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setTransparent(true);
    obj.edit19:setName("edit19");

    obj.imageCheckBox13 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox13:setParent(obj.layout24);
    obj.imageCheckBox13:setField("mhabilidades3_1");
    obj.imageCheckBox13:setLeft(137);
    obj.imageCheckBox13:setTop(4);
    obj.imageCheckBox13:setWidth(15);
    obj.imageCheckBox13:setHeight(15);
    obj.imageCheckBox13:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox13:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox13:setName("imageCheckBox13");

    obj.imageCheckBox14 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox14:setParent(obj.layout24);
    obj.imageCheckBox14:setField("mhabilidades3_2");
    obj.imageCheckBox14:setLeft(155);
    obj.imageCheckBox14:setTop(4);
    obj.imageCheckBox14:setWidth(15);
    obj.imageCheckBox14:setHeight(15);
    obj.imageCheckBox14:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox14:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox14:setName("imageCheckBox14");

    obj.imageCheckBox15 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox15:setParent(obj.layout24);
    obj.imageCheckBox15:setField("mhabilidades3_3");
    obj.imageCheckBox15:setLeft(173);
    obj.imageCheckBox15:setTop(4);
    obj.imageCheckBox15:setWidth(15);
    obj.imageCheckBox15:setHeight(15);
    obj.imageCheckBox15:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox15:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox15:setName("imageCheckBox15");

    obj.imageCheckBox16 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox16:setParent(obj.layout24);
    obj.imageCheckBox16:setField("mhabilidades3_4");
    obj.imageCheckBox16:setLeft(191);
    obj.imageCheckBox16:setTop(4);
    obj.imageCheckBox16:setWidth(15);
    obj.imageCheckBox16:setHeight(15);
    obj.imageCheckBox16:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox16:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox16:setName("imageCheckBox16");

    obj.imageCheckBox17 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox17:setParent(obj.layout24);
    obj.imageCheckBox17:setField("mhabilidades3_5");
    obj.imageCheckBox17:setLeft(209);
    obj.imageCheckBox17:setTop(4);
    obj.imageCheckBox17:setWidth(15);
    obj.imageCheckBox17:setHeight(15);
    obj.imageCheckBox17:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox17:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox17:setName("imageCheckBox17");

    obj.imageCheckBox18 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox18:setParent(obj.layout24);
    obj.imageCheckBox18:setField("mhabilidades3_6");
    obj.imageCheckBox18:setLeft(227);
    obj.imageCheckBox18:setTop(4);
    obj.imageCheckBox18:setWidth(15);
    obj.imageCheckBox18:setHeight(15);
    obj.imageCheckBox18:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox18:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox18:setName("imageCheckBox18");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout21);
    obj.layout25:setLeft(10);
    obj.layout25:setTop(101);
    obj.layout25:setWidth(245);
    obj.layout25:setHeight(20);
    obj.layout25:setName("layout25");

    obj.horzLine4 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine4:setParent(obj.layout25);
    obj.horzLine4:setTop(18);
    obj.horzLine4:setWidth(130);
    obj.horzLine4:setStrokeSize(2);
    obj.horzLine4:setStrokeColor("black");
    obj.horzLine4:setName("horzLine4");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout25);
    obj.edit20:setField("mhabilidades4_e");
    obj.edit20:setLeft(2);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(125);
    obj.edit20:setHeight(20);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setFontColor("black");
    obj.edit20:setFontSize(14);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.imageCheckBox19 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox19:setParent(obj.layout25);
    obj.imageCheckBox19:setField("mhabilidades4_1");
    obj.imageCheckBox19:setLeft(137);
    obj.imageCheckBox19:setTop(4);
    obj.imageCheckBox19:setWidth(15);
    obj.imageCheckBox19:setHeight(15);
    obj.imageCheckBox19:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox19:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox19:setName("imageCheckBox19");

    obj.imageCheckBox20 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox20:setParent(obj.layout25);
    obj.imageCheckBox20:setField("mhabilidades4_2");
    obj.imageCheckBox20:setLeft(155);
    obj.imageCheckBox20:setTop(4);
    obj.imageCheckBox20:setWidth(15);
    obj.imageCheckBox20:setHeight(15);
    obj.imageCheckBox20:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox20:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox20:setName("imageCheckBox20");

    obj.imageCheckBox21 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox21:setParent(obj.layout25);
    obj.imageCheckBox21:setField("mhabilidades4_3");
    obj.imageCheckBox21:setLeft(173);
    obj.imageCheckBox21:setTop(4);
    obj.imageCheckBox21:setWidth(15);
    obj.imageCheckBox21:setHeight(15);
    obj.imageCheckBox21:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox21:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox21:setName("imageCheckBox21");

    obj.imageCheckBox22 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox22:setParent(obj.layout25);
    obj.imageCheckBox22:setField("mhabilidades4_4");
    obj.imageCheckBox22:setLeft(191);
    obj.imageCheckBox22:setTop(4);
    obj.imageCheckBox22:setWidth(15);
    obj.imageCheckBox22:setHeight(15);
    obj.imageCheckBox22:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox22:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox22:setName("imageCheckBox22");

    obj.imageCheckBox23 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox23:setParent(obj.layout25);
    obj.imageCheckBox23:setField("mhabilidades4_5");
    obj.imageCheckBox23:setLeft(209);
    obj.imageCheckBox23:setTop(4);
    obj.imageCheckBox23:setWidth(15);
    obj.imageCheckBox23:setHeight(15);
    obj.imageCheckBox23:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox23:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox23:setName("imageCheckBox23");

    obj.imageCheckBox24 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox24:setParent(obj.layout25);
    obj.imageCheckBox24:setField("mhabilidades4_6");
    obj.imageCheckBox24:setLeft(227);
    obj.imageCheckBox24:setTop(4);
    obj.imageCheckBox24:setWidth(15);
    obj.imageCheckBox24:setHeight(15);
    obj.imageCheckBox24:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox24:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox24:setName("imageCheckBox24");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout21);
    obj.layout26:setLeft(10);
    obj.layout26:setTop(131);
    obj.layout26:setWidth(245);
    obj.layout26:setHeight(20);
    obj.layout26:setName("layout26");

    obj.horzLine5 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine5:setParent(obj.layout26);
    obj.horzLine5:setTop(18);
    obj.horzLine5:setWidth(130);
    obj.horzLine5:setStrokeSize(2);
    obj.horzLine5:setStrokeColor("black");
    obj.horzLine5:setName("horzLine5");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout26);
    obj.edit21:setField("mhabilidades5_e");
    obj.edit21:setLeft(2);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(125);
    obj.edit21:setHeight(20);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setFontColor("black");
    obj.edit21:setFontSize(14);
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.imageCheckBox25 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox25:setParent(obj.layout26);
    obj.imageCheckBox25:setField("mhabilidades5_1");
    obj.imageCheckBox25:setLeft(137);
    obj.imageCheckBox25:setTop(4);
    obj.imageCheckBox25:setWidth(15);
    obj.imageCheckBox25:setHeight(15);
    obj.imageCheckBox25:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox25:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox25:setName("imageCheckBox25");

    obj.imageCheckBox26 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox26:setParent(obj.layout26);
    obj.imageCheckBox26:setField("mhabilidades5_2");
    obj.imageCheckBox26:setLeft(155);
    obj.imageCheckBox26:setTop(4);
    obj.imageCheckBox26:setWidth(15);
    obj.imageCheckBox26:setHeight(15);
    obj.imageCheckBox26:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox26:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox26:setName("imageCheckBox26");

    obj.imageCheckBox27 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox27:setParent(obj.layout26);
    obj.imageCheckBox27:setField("mhabilidades5_3");
    obj.imageCheckBox27:setLeft(173);
    obj.imageCheckBox27:setTop(4);
    obj.imageCheckBox27:setWidth(15);
    obj.imageCheckBox27:setHeight(15);
    obj.imageCheckBox27:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox27:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox27:setName("imageCheckBox27");

    obj.imageCheckBox28 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox28:setParent(obj.layout26);
    obj.imageCheckBox28:setField("mhabilidades5_4");
    obj.imageCheckBox28:setLeft(191);
    obj.imageCheckBox28:setTop(4);
    obj.imageCheckBox28:setWidth(15);
    obj.imageCheckBox28:setHeight(15);
    obj.imageCheckBox28:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox28:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox28:setName("imageCheckBox28");

    obj.imageCheckBox29 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox29:setParent(obj.layout26);
    obj.imageCheckBox29:setField("mhabilidades5_5");
    obj.imageCheckBox29:setLeft(209);
    obj.imageCheckBox29:setTop(4);
    obj.imageCheckBox29:setWidth(15);
    obj.imageCheckBox29:setHeight(15);
    obj.imageCheckBox29:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox29:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox29:setName("imageCheckBox29");

    obj.imageCheckBox30 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox30:setParent(obj.layout26);
    obj.imageCheckBox30:setField("mhabilidades5_6");
    obj.imageCheckBox30:setLeft(227);
    obj.imageCheckBox30:setTop(4);
    obj.imageCheckBox30:setWidth(15);
    obj.imageCheckBox30:setHeight(15);
    obj.imageCheckBox30:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox30:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox30:setName("imageCheckBox30");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout21);
    obj.layout27:setLeft(10);
    obj.layout27:setTop(161);
    obj.layout27:setWidth(245);
    obj.layout27:setHeight(20);
    obj.layout27:setName("layout27");

    obj.horzLine6 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine6:setParent(obj.layout27);
    obj.horzLine6:setTop(18);
    obj.horzLine6:setWidth(130);
    obj.horzLine6:setStrokeSize(2);
    obj.horzLine6:setStrokeColor("black");
    obj.horzLine6:setName("horzLine6");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout27);
    obj.edit22:setField("mhabilidades6_e");
    obj.edit22:setLeft(2);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(125);
    obj.edit22:setHeight(20);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setFontColor("black");
    obj.edit22:setFontSize(14);
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.imageCheckBox31 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox31:setParent(obj.layout27);
    obj.imageCheckBox31:setField("mhabilidades6_1");
    obj.imageCheckBox31:setLeft(137);
    obj.imageCheckBox31:setTop(4);
    obj.imageCheckBox31:setWidth(15);
    obj.imageCheckBox31:setHeight(15);
    obj.imageCheckBox31:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox31:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox31:setName("imageCheckBox31");

    obj.imageCheckBox32 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox32:setParent(obj.layout27);
    obj.imageCheckBox32:setField("mhabilidades6_2");
    obj.imageCheckBox32:setLeft(155);
    obj.imageCheckBox32:setTop(4);
    obj.imageCheckBox32:setWidth(15);
    obj.imageCheckBox32:setHeight(15);
    obj.imageCheckBox32:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox32:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox32:setName("imageCheckBox32");

    obj.imageCheckBox33 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox33:setParent(obj.layout27);
    obj.imageCheckBox33:setField("mhabilidades6_3");
    obj.imageCheckBox33:setLeft(173);
    obj.imageCheckBox33:setTop(4);
    obj.imageCheckBox33:setWidth(15);
    obj.imageCheckBox33:setHeight(15);
    obj.imageCheckBox33:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox33:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox33:setName("imageCheckBox33");

    obj.imageCheckBox34 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox34:setParent(obj.layout27);
    obj.imageCheckBox34:setField("mhabilidades6_4");
    obj.imageCheckBox34:setLeft(191);
    obj.imageCheckBox34:setTop(4);
    obj.imageCheckBox34:setWidth(15);
    obj.imageCheckBox34:setHeight(15);
    obj.imageCheckBox34:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox34:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox34:setName("imageCheckBox34");

    obj.imageCheckBox35 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox35:setParent(obj.layout27);
    obj.imageCheckBox35:setField("mhabilidades6_5");
    obj.imageCheckBox35:setLeft(209);
    obj.imageCheckBox35:setTop(4);
    obj.imageCheckBox35:setWidth(15);
    obj.imageCheckBox35:setHeight(15);
    obj.imageCheckBox35:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox35:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox35:setName("imageCheckBox35");

    obj.imageCheckBox36 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox36:setParent(obj.layout27);
    obj.imageCheckBox36:setField("mhabilidades6_6");
    obj.imageCheckBox36:setLeft(227);
    obj.imageCheckBox36:setTop(4);
    obj.imageCheckBox36:setWidth(15);
    obj.imageCheckBox36:setHeight(15);
    obj.imageCheckBox36:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox36:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox36:setName("imageCheckBox36");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout21);
    obj.layout28:setLeft(10);
    obj.layout28:setTop(191);
    obj.layout28:setWidth(245);
    obj.layout28:setHeight(20);
    obj.layout28:setName("layout28");

    obj.horzLine7 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine7:setParent(obj.layout28);
    obj.horzLine7:setTop(18);
    obj.horzLine7:setWidth(130);
    obj.horzLine7:setStrokeSize(2);
    obj.horzLine7:setStrokeColor("black");
    obj.horzLine7:setName("horzLine7");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout28);
    obj.edit23:setField("mhabilidades7_e");
    obj.edit23:setLeft(2);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(125);
    obj.edit23:setHeight(20);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setFontColor("black");
    obj.edit23:setFontSize(14);
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setTransparent(true);
    obj.edit23:setName("edit23");

    obj.imageCheckBox37 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox37:setParent(obj.layout28);
    obj.imageCheckBox37:setField("mhabilidades7_1");
    obj.imageCheckBox37:setLeft(137);
    obj.imageCheckBox37:setTop(4);
    obj.imageCheckBox37:setWidth(15);
    obj.imageCheckBox37:setHeight(15);
    obj.imageCheckBox37:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox37:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox37:setName("imageCheckBox37");

    obj.imageCheckBox38 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox38:setParent(obj.layout28);
    obj.imageCheckBox38:setField("mhabilidades7_2");
    obj.imageCheckBox38:setLeft(155);
    obj.imageCheckBox38:setTop(4);
    obj.imageCheckBox38:setWidth(15);
    obj.imageCheckBox38:setHeight(15);
    obj.imageCheckBox38:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox38:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox38:setName("imageCheckBox38");

    obj.imageCheckBox39 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox39:setParent(obj.layout28);
    obj.imageCheckBox39:setField("mhabilidades7_3");
    obj.imageCheckBox39:setLeft(173);
    obj.imageCheckBox39:setTop(4);
    obj.imageCheckBox39:setWidth(15);
    obj.imageCheckBox39:setHeight(15);
    obj.imageCheckBox39:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox39:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox39:setName("imageCheckBox39");

    obj.imageCheckBox40 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox40:setParent(obj.layout28);
    obj.imageCheckBox40:setField("mhabilidades7_4");
    obj.imageCheckBox40:setLeft(191);
    obj.imageCheckBox40:setTop(4);
    obj.imageCheckBox40:setWidth(15);
    obj.imageCheckBox40:setHeight(15);
    obj.imageCheckBox40:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox40:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox40:setName("imageCheckBox40");

    obj.imageCheckBox41 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox41:setParent(obj.layout28);
    obj.imageCheckBox41:setField("mhabilidades7_5");
    obj.imageCheckBox41:setLeft(209);
    obj.imageCheckBox41:setTop(4);
    obj.imageCheckBox41:setWidth(15);
    obj.imageCheckBox41:setHeight(15);
    obj.imageCheckBox41:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox41:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox41:setName("imageCheckBox41");

    obj.imageCheckBox42 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox42:setParent(obj.layout28);
    obj.imageCheckBox42:setField("mhabilidades7_6");
    obj.imageCheckBox42:setLeft(227);
    obj.imageCheckBox42:setTop(4);
    obj.imageCheckBox42:setWidth(15);
    obj.imageCheckBox42:setHeight(15);
    obj.imageCheckBox42:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox42:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox42:setName("imageCheckBox42");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout21);
    obj.layout29:setLeft(10);
    obj.layout29:setTop(221);
    obj.layout29:setWidth(245);
    obj.layout29:setHeight(20);
    obj.layout29:setName("layout29");

    obj.horzLine8 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine8:setParent(obj.layout29);
    obj.horzLine8:setTop(18);
    obj.horzLine8:setWidth(130);
    obj.horzLine8:setStrokeSize(2);
    obj.horzLine8:setStrokeColor("black");
    obj.horzLine8:setName("horzLine8");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout29);
    obj.edit24:setField("mhabilidades8_e");
    obj.edit24:setLeft(2);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(125);
    obj.edit24:setHeight(20);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setFontColor("black");
    obj.edit24:setFontSize(14);
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setTransparent(true);
    obj.edit24:setName("edit24");

    obj.imageCheckBox43 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox43:setParent(obj.layout29);
    obj.imageCheckBox43:setField("mhabilidades8_1");
    obj.imageCheckBox43:setLeft(137);
    obj.imageCheckBox43:setTop(4);
    obj.imageCheckBox43:setWidth(15);
    obj.imageCheckBox43:setHeight(15);
    obj.imageCheckBox43:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox43:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox43:setName("imageCheckBox43");

    obj.imageCheckBox44 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox44:setParent(obj.layout29);
    obj.imageCheckBox44:setField("mhabilidades8_2");
    obj.imageCheckBox44:setLeft(155);
    obj.imageCheckBox44:setTop(4);
    obj.imageCheckBox44:setWidth(15);
    obj.imageCheckBox44:setHeight(15);
    obj.imageCheckBox44:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox44:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox44:setName("imageCheckBox44");

    obj.imageCheckBox45 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox45:setParent(obj.layout29);
    obj.imageCheckBox45:setField("mhabilidades8_3");
    obj.imageCheckBox45:setLeft(173);
    obj.imageCheckBox45:setTop(4);
    obj.imageCheckBox45:setWidth(15);
    obj.imageCheckBox45:setHeight(15);
    obj.imageCheckBox45:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox45:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox45:setName("imageCheckBox45");

    obj.imageCheckBox46 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox46:setParent(obj.layout29);
    obj.imageCheckBox46:setField("mhabilidades8_4");
    obj.imageCheckBox46:setLeft(191);
    obj.imageCheckBox46:setTop(4);
    obj.imageCheckBox46:setWidth(15);
    obj.imageCheckBox46:setHeight(15);
    obj.imageCheckBox46:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox46:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox46:setName("imageCheckBox46");

    obj.imageCheckBox47 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox47:setParent(obj.layout29);
    obj.imageCheckBox47:setField("mhabilidades8_5");
    obj.imageCheckBox47:setLeft(209);
    obj.imageCheckBox47:setTop(4);
    obj.imageCheckBox47:setWidth(15);
    obj.imageCheckBox47:setHeight(15);
    obj.imageCheckBox47:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox47:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox47:setName("imageCheckBox47");

    obj.imageCheckBox48 = GUI.fromHandle(_obj_newObject("imageCheckBox"));
    obj.imageCheckBox48:setParent(obj.layout29);
    obj.imageCheckBox48:setField("mhabilidades8_6");
    obj.imageCheckBox48:setLeft(227);
    obj.imageCheckBox48:setTop(4);
    obj.imageCheckBox48:setWidth(15);
    obj.imageCheckBox48:setHeight(15);
    obj.imageCheckBox48:setImageChecked("/sub/img/bboll2.png");
    obj.imageCheckBox48:setImageUnchecked("/sub/img/bboll1.png");
    obj.imageCheckBox48:setName("imageCheckBox48");

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout20);
    obj.layout30:setLeft(560);
    obj.layout30:setTop(36);
    obj.layout30:setWidth(260);
    obj.layout30:setHeight(250);
    obj.layout30:setName("layout30");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout30);
    obj.layout31:setLeft(10);
    obj.layout31:setTop(11);
    obj.layout31:setWidth(245);
    obj.layout31:setHeight(20);
    obj.layout31:setName("layout31");

    obj.horzLine9 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine9:setParent(obj.layout31);
    obj.horzLine9:setTop(18);
    obj.horzLine9:setWidth(238);
    obj.horzLine9:setStrokeSize(2);
    obj.horzLine9:setStrokeColor("black");
    obj.horzLine9:setName("horzLine9");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout31);
    obj.label30:setWidth(80);
    obj.label30:setHeight(20);
    obj.label30:setText("Nível 1 ->");
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontSize(15);
    obj.label30:setFontColor("black");
    obj.label30:setName("label30");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout31);
    obj.edit25:setField("cnivel1");
    obj.edit25:setLeft(70);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(168);
    obj.edit25:setHeight(20);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setFontColor("black");
    obj.edit25:setFontSize(15);
    obj.edit25:setTransparent(true);
    obj.edit25:setName("edit25");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout30);
    obj.layout32:setLeft(10);
    obj.layout32:setTop(53);
    obj.layout32:setWidth(245);
    obj.layout32:setHeight(20);
    obj.layout32:setName("layout32");

    obj.horzLine10 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine10:setParent(obj.layout32);
    obj.horzLine10:setTop(18);
    obj.horzLine10:setWidth(238);
    obj.horzLine10:setStrokeSize(2);
    obj.horzLine10:setStrokeColor("black");
    obj.horzLine10:setName("horzLine10");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout32);
    obj.label31:setWidth(80);
    obj.label31:setHeight(20);
    obj.label31:setText("Nível 2 ->");
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontSize(15);
    obj.label31:setFontColor("black");
    obj.label31:setName("label31");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout32);
    obj.edit26:setField("cnivel2");
    obj.edit26:setLeft(70);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(168);
    obj.edit26:setHeight(20);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setFontColor("black");
    obj.edit26:setFontSize(15);
    obj.edit26:setTransparent(true);
    obj.edit26:setName("edit26");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout30);
    obj.layout33:setLeft(10);
    obj.layout33:setTop(95);
    obj.layout33:setWidth(245);
    obj.layout33:setHeight(20);
    obj.layout33:setName("layout33");

    obj.horzLine11 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine11:setParent(obj.layout33);
    obj.horzLine11:setTop(18);
    obj.horzLine11:setWidth(238);
    obj.horzLine11:setStrokeSize(2);
    obj.horzLine11:setStrokeColor("black");
    obj.horzLine11:setName("horzLine11");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout33);
    obj.label32:setWidth(80);
    obj.label32:setHeight(20);
    obj.label32:setText("Nível 3 ->");
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontSize(15);
    obj.label32:setFontColor("black");
    obj.label32:setName("label32");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout33);
    obj.edit27:setField("cnivel3");
    obj.edit27:setLeft(70);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(168);
    obj.edit27:setHeight(20);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setFontColor("black");
    obj.edit27:setFontSize(15);
    obj.edit27:setTransparent(true);
    obj.edit27:setName("edit27");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout30);
    obj.layout34:setLeft(10);
    obj.layout34:setTop(137);
    obj.layout34:setWidth(245);
    obj.layout34:setHeight(20);
    obj.layout34:setName("layout34");

    obj.horzLine12 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine12:setParent(obj.layout34);
    obj.horzLine12:setTop(18);
    obj.horzLine12:setWidth(238);
    obj.horzLine12:setStrokeSize(2);
    obj.horzLine12:setStrokeColor("black");
    obj.horzLine12:setName("horzLine12");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout34);
    obj.label33:setWidth(80);
    obj.label33:setHeight(20);
    obj.label33:setText("Nível 4 ->");
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");
    obj.label33:setFontSize(15);
    obj.label33:setFontColor("black");
    obj.label33:setName("label33");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout34);
    obj.edit28:setField("cnivel4");
    obj.edit28:setLeft(70);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(168);
    obj.edit28:setHeight(20);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setFontColor("black");
    obj.edit28:setFontSize(15);
    obj.edit28:setTransparent(true);
    obj.edit28:setName("edit28");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout30);
    obj.layout35:setLeft(10);
    obj.layout35:setTop(179);
    obj.layout35:setWidth(245);
    obj.layout35:setHeight(20);
    obj.layout35:setName("layout35");

    obj.horzLine13 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine13:setParent(obj.layout35);
    obj.horzLine13:setTop(18);
    obj.horzLine13:setWidth(238);
    obj.horzLine13:setStrokeSize(2);
    obj.horzLine13:setStrokeColor("black");
    obj.horzLine13:setName("horzLine13");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout35);
    obj.label34:setWidth(80);
    obj.label34:setHeight(20);
    obj.label34:setText("Nível 5 ->");
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontSize(15);
    obj.label34:setFontColor("black");
    obj.label34:setName("label34");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout35);
    obj.edit29:setField("cnivel5");
    obj.edit29:setLeft(70);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(168);
    obj.edit29:setHeight(20);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setFontColor("black");
    obj.edit29:setFontSize(15);
    obj.edit29:setTransparent(true);
    obj.edit29:setName("edit29");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout30);
    obj.layout36:setLeft(10);
    obj.layout36:setTop(221);
    obj.layout36:setWidth(245);
    obj.layout36:setHeight(20);
    obj.layout36:setName("layout36");

    obj.horzLine14 = GUI.fromHandle(_obj_newObject("horzLine"));
    obj.horzLine14:setParent(obj.layout36);
    obj.horzLine14:setTop(18);
    obj.horzLine14:setWidth(238);
    obj.horzLine14:setStrokeSize(2);
    obj.horzLine14:setStrokeColor("black");
    obj.horzLine14:setName("horzLine14");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout36);
    obj.label35:setWidth(80);
    obj.label35:setHeight(20);
    obj.label35:setText("Nível 6 ->");
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontSize(15);
    obj.label35:setFontColor("black");
    obj.label35:setName("label35");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout36);
    obj.edit30:setField("cnivel6");
    obj.edit30:setLeft(70);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(168);
    obj.edit30:setHeight(20);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setFontColor("black");
    obj.edit30:setFontSize(15);
    obj.edit30:setTransparent(true);
    obj.edit30:setName("edit30");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'musc_1', 'musc_2', 'musc_3', 'musc_4', 'musc_5', 'musc_6', 'musc_7', 'musc_8', 'musc_9', 'musc_10', 'cereb_1', 'cereb_2', 'cereb_3', 'cereb_4', 'cereb_5', 'cereb_6', 'cereb_7', 'cereb_8', 'cereb_9', 'cereb_10', 'corac_1', 'corac_2', 'corac_3', 'corac_4', 'corac_5', 'corac_6', 'corac_7', 'corac_8', 'corac_9', 'corac_10'});
    obj.dataLink1:setName("dataLink1");

    obj._e_event0 = obj.backgroundimg:addEventListener("onClick",
        function (_)
            Dialogs.selectImageURL('', function(url) sheet.backgroundimg = url end)
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            function booton(value)
              				return value and 1 or 0
            			end
            			sheet.vmusculos = math.floor(booton(self.musc_n1.checked) or 0)+math.floor(booton(self.musc_n2.checked) or 0)+math.floor(booton(self.musc_n3.checked) or 0)+math.floor(booton(self.musc_n4.checked) or 0)+math.floor(booton(self.musc_n5.checked) or 0)+math.floor(booton(self.musc_n6.checked) or 0)+math.floor(booton(self.musc_n7.checked) or 0)+math.floor(booton(self.musc_n8.checked) or 0)+math.floor(booton(self.musc_n9.checked) or 0)+math.floor(booton(self.musc_n10.checked) or 0)
            			sheet.vcerebro = math.floor(booton(self.cereb_n1.checked) or 0)+math.floor(booton(self.cereb_n2.checked) or 0)+math.floor(booton(self.cereb_n3.checked) or 0)+math.floor(booton(self.cereb_n4.checked) or 0)+math.floor(booton(self.cereb_n5.checked) or 0)+math.floor(booton(self.cereb_n6.checked) or 0)+math.floor(booton(self.cereb_n7.checked) or 0)+math.floor(booton(self.cereb_n8.checked) or 0)+math.floor(booton(self.cereb_n9.checked) or 0)+math.floor(booton(self.cereb_n10.checked) or 0)
            			sheet.vcoracao = math.floor(booton(self.corac_n1.checked) or 0)+math.floor(booton(self.corac_n2.checked) or 0)+math.floor(booton(self.corac_n3.checked) or 0)+math.floor(booton(self.corac_n4.checked) or 0)+math.floor(booton(self.corac_n5.checked) or 0)+math.floor(booton(self.corac_n6.checked) or 0)+math.floor(booton(self.corac_n7.checked) or 0)+math.floor(booton(self.corac_n8.checked) or 0)+math.floor(booton(self.corac_n9.checked) or 0)+math.floor(booton(self.corac_n10.checked) or 0)
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.horzLine11 ~= nil then self.horzLine11:destroy(); self.horzLine11 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.horzLine7 ~= nil then self.horzLine7:destroy(); self.horzLine7 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.backgroundimg ~= nil then self.backgroundimg:destroy(); self.backgroundimg = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.corac_n6 ~= nil then self.corac_n6:destroy(); self.corac_n6 = nil; end;
        if self.musc_n8 ~= nil then self.musc_n8:destroy(); self.musc_n8 = nil; end;
        if self.corac_n2 ~= nil then self.corac_n2:destroy(); self.corac_n2 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.horzLine10 ~= nil then self.horzLine10:destroy(); self.horzLine10 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.horzLine14 ~= nil then self.horzLine14:destroy(); self.horzLine14 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.cereb_n2 ~= nil then self.cereb_n2:destroy(); self.cereb_n2 = nil; end;
        if self.imageCheckBox45 ~= nil then self.imageCheckBox45:destroy(); self.imageCheckBox45 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.cereb_n9 ~= nil then self.cereb_n9:destroy(); self.cereb_n9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.imageCheckBox13 ~= nil then self.imageCheckBox13:destroy(); self.imageCheckBox13 = nil; end;
        if self.imageCheckBox34 ~= nil then self.imageCheckBox34:destroy(); self.imageCheckBox34 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.musc_n6 ~= nil then self.musc_n6:destroy(); self.musc_n6 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.cereb_n1 ~= nil then self.cereb_n1:destroy(); self.cereb_n1 = nil; end;
        if self.corac_n9 ~= nil then self.corac_n9:destroy(); self.corac_n9 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.cereb_n4 ~= nil then self.cereb_n4:destroy(); self.cereb_n4 = nil; end;
        if self.imageCheckBox37 ~= nil then self.imageCheckBox37:destroy(); self.imageCheckBox37 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.imageCheckBox24 ~= nil then self.imageCheckBox24:destroy(); self.imageCheckBox24 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.cereb_n8 ~= nil then self.cereb_n8:destroy(); self.cereb_n8 = nil; end;
        if self.imageCheckBox31 ~= nil then self.imageCheckBox31:destroy(); self.imageCheckBox31 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.imageCheckBox9 ~= nil then self.imageCheckBox9:destroy(); self.imageCheckBox9 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.imageCheckBox1 ~= nil then self.imageCheckBox1:destroy(); self.imageCheckBox1 = nil; end;
        if self.imageCheckBox17 ~= nil then self.imageCheckBox17:destroy(); self.imageCheckBox17 = nil; end;
        if self.imageCheckBox21 ~= nil then self.imageCheckBox21:destroy(); self.imageCheckBox21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.image10 ~= nil then self.image10:destroy(); self.image10 = nil; end;
        if self.horzLine1 ~= nil then self.horzLine1:destroy(); self.horzLine1 = nil; end;
        if self.imageCheckBox2 ~= nil then self.imageCheckBox2:destroy(); self.imageCheckBox2 = nil; end;
        if self.cereb_n3 ~= nil then self.cereb_n3:destroy(); self.cereb_n3 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.imageCheckBox26 ~= nil then self.imageCheckBox26:destroy(); self.imageCheckBox26 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.horzLine3 ~= nil then self.horzLine3:destroy(); self.horzLine3 = nil; end;
        if self.imageCheckBox28 ~= nil then self.imageCheckBox28:destroy(); self.imageCheckBox28 = nil; end;
        if self.musc_n4 ~= nil then self.musc_n4:destroy(); self.musc_n4 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.imageCheckBox6 ~= nil then self.imageCheckBox6:destroy(); self.imageCheckBox6 = nil; end;
        if self.imageCheckBox48 ~= nil then self.imageCheckBox48:destroy(); self.imageCheckBox48 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.imageCheckBox33 ~= nil then self.imageCheckBox33:destroy(); self.imageCheckBox33 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.imageCheckBox15 ~= nil then self.imageCheckBox15:destroy(); self.imageCheckBox15 = nil; end;
        if self.exptotal ~= nil then self.exptotal:destroy(); self.exptotal = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.corac_n3 ~= nil then self.corac_n3:destroy(); self.corac_n3 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.imageCheckBox12 ~= nil then self.imageCheckBox12:destroy(); self.imageCheckBox12 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.imageCheckBox35 ~= nil then self.imageCheckBox35:destroy(); self.imageCheckBox35 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.corac_n5 ~= nil then self.corac_n5:destroy(); self.corac_n5 = nil; end;
        if self.musc_n5 ~= nil then self.musc_n5:destroy(); self.musc_n5 = nil; end;
        if self.imageCheckBox8 ~= nil then self.imageCheckBox8:destroy(); self.imageCheckBox8 = nil; end;
        if self.corac_n4 ~= nil then self.corac_n4:destroy(); self.corac_n4 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.cereb_n6 ~= nil then self.cereb_n6:destroy(); self.cereb_n6 = nil; end;
        if self.imageCheckBox20 ~= nil then self.imageCheckBox20:destroy(); self.imageCheckBox20 = nil; end;
        if self.imageCheckBox43 ~= nil then self.imageCheckBox43:destroy(); self.imageCheckBox43 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.imageCheckBox4 ~= nil then self.imageCheckBox4:destroy(); self.imageCheckBox4 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.imageCheckBox39 ~= nil then self.imageCheckBox39:destroy(); self.imageCheckBox39 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.imageCheckBox7 ~= nil then self.imageCheckBox7:destroy(); self.imageCheckBox7 = nil; end;
        if self.imageCheckBox30 ~= nil then self.imageCheckBox30:destroy(); self.imageCheckBox30 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.corac_n7 ~= nil then self.corac_n7:destroy(); self.corac_n7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.horzLine2 ~= nil then self.horzLine2:destroy(); self.horzLine2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.imageCheckBox38 ~= nil then self.imageCheckBox38:destroy(); self.imageCheckBox38 = nil; end;
        if self.imageCheckBox44 ~= nil then self.imageCheckBox44:destroy(); self.imageCheckBox44 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.corac_n1 ~= nil then self.corac_n1:destroy(); self.corac_n1 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.imageCheckBox36 ~= nil then self.imageCheckBox36:destroy(); self.imageCheckBox36 = nil; end;
        if self.imageCheckBox32 ~= nil then self.imageCheckBox32:destroy(); self.imageCheckBox32 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.horzLine8 ~= nil then self.horzLine8:destroy(); self.horzLine8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.imageCheckBox23 ~= nil then self.imageCheckBox23:destroy(); self.imageCheckBox23 = nil; end;
        if self.cereb_n5 ~= nil then self.cereb_n5:destroy(); self.cereb_n5 = nil; end;
        if self.musc_n10 ~= nil then self.musc_n10:destroy(); self.musc_n10 = nil; end;
        if self.imageCheckBox41 ~= nil then self.imageCheckBox41:destroy(); self.imageCheckBox41 = nil; end;
        if self.musc_n2 ~= nil then self.musc_n2:destroy(); self.musc_n2 = nil; end;
        if self.horzLine5 ~= nil then self.horzLine5:destroy(); self.horzLine5 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.imageCheckBox18 ~= nil then self.imageCheckBox18:destroy(); self.imageCheckBox18 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.imageCheckBox10 ~= nil then self.imageCheckBox10:destroy(); self.imageCheckBox10 = nil; end;
        if self.musc_n7 ~= nil then self.musc_n7:destroy(); self.musc_n7 = nil; end;
        if self.imageCheckBox22 ~= nil then self.imageCheckBox22:destroy(); self.imageCheckBox22 = nil; end;
        if self.musc_n1 ~= nil then self.musc_n1:destroy(); self.musc_n1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.imageCheckBox19 ~= nil then self.imageCheckBox19:destroy(); self.imageCheckBox19 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.imageCheckBox46 ~= nil then self.imageCheckBox46:destroy(); self.imageCheckBox46 = nil; end;
        if self.corac_n10 ~= nil then self.corac_n10:destroy(); self.corac_n10 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.imageCheckBox14 ~= nil then self.imageCheckBox14:destroy(); self.imageCheckBox14 = nil; end;
        if self.imageCheckBox25 ~= nil then self.imageCheckBox25:destroy(); self.imageCheckBox25 = nil; end;
        if self.horzLine9 ~= nil then self.horzLine9:destroy(); self.horzLine9 = nil; end;
        if self.horzLine12 ~= nil then self.horzLine12:destroy(); self.horzLine12 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.cereb_n7 ~= nil then self.cereb_n7:destroy(); self.cereb_n7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.expatual ~= nil then self.expatual:destroy(); self.expatual = nil; end;
        if self.imageCheckBox5 ~= nil then self.imageCheckBox5:destroy(); self.imageCheckBox5 = nil; end;
        if self.imageCheckBox42 ~= nil then self.imageCheckBox42:destroy(); self.imageCheckBox42 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.imageCheckBox29 ~= nil then self.imageCheckBox29:destroy(); self.imageCheckBox29 = nil; end;
        if self.imageCheckBox16 ~= nil then self.imageCheckBox16:destroy(); self.imageCheckBox16 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.imageCheckBox27 ~= nil then self.imageCheckBox27:destroy(); self.imageCheckBox27 = nil; end;
        if self.cereb_n10 ~= nil then self.cereb_n10:destroy(); self.cereb_n10 = nil; end;
        if self.musc_n9 ~= nil then self.musc_n9:destroy(); self.musc_n9 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.imageCheckBox3 ~= nil then self.imageCheckBox3:destroy(); self.imageCheckBox3 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.musc_n3 ~= nil then self.musc_n3:destroy(); self.musc_n3 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.horzLine4 ~= nil then self.horzLine4:destroy(); self.horzLine4 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.horzLine13 ~= nil then self.horzLine13:destroy(); self.horzLine13 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.imageCheckBox11 ~= nil then self.imageCheckBox11:destroy(); self.imageCheckBox11 = nil; end;
        if self.imageCheckBox47 ~= nil then self.imageCheckBox47:destroy(); self.imageCheckBox47 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.horzLine6 ~= nil then self.horzLine6:destroy(); self.horzLine6 = nil; end;
        if self.corac_n8 ~= nil then self.corac_n8:destroy(); self.corac_n8 = nil; end;
        if self.imageCheckBox40 ~= nil then self.imageCheckBox40:destroy(); self.imageCheckBox40 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newOsMundosDosMortos1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_OsMundosDosMortos1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _OsMundosDosMortos1 = {
    newEditor = newOsMundosDosMortos1, 
    new = newOsMundosDosMortos1, 
    name = "OsMundosDosMortos1", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

OsMundosDosMortos1 = _OsMundosDosMortos1;
Firecast.registrarForm(_OsMundosDosMortos1);

return _OsMundosDosMortos1;
