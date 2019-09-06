require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta03()
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
    obj:setName("Tormenta03");
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

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(13);
    obj.layout1:setWidth(585);
    obj.layout1:setHeight(677);
    obj.layout1:setName("layout1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.layout1);
    obj.image1:setLeft(131);
    obj.image1:setTop(60);
    obj.image1:setWidth(274);
    obj.image1:setHeight(500);
    obj.image1:setSRC("/TRPG/img/silhouette.png");
    obj.image1:setName("image1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(19);
    obj.layout2:setTop(59);
    obj.layout2:setWidth(200);
    obj.layout2:setHeight(125);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setLeft(6);
    obj.rectangle2:setTop(17);
    obj.rectangle2:setColor("Gainsboro");
    obj.rectangle2:setWidth(104);
    obj.rectangle2:setHeight(15);
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setLeft(9);
    obj.label1:setTop(16);
    obj.label1:setWidth(98);
    obj.label1:setHeight(15);
    obj.label1:setFontSize(13);
    obj.label1:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setText("Armadura");
    obj.label1:setName("label1");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(1);
    obj.rectangle3:setTop(31);
    obj.rectangle3:setWidth(200);
    obj.rectangle3:setHeight(90);
    obj.rectangle3:setColor("Gray");
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.narmadura = GUI.fromHandle(_obj_newObject("edit"));
    obj.narmadura:setParent(obj.layout2);
    obj.narmadura:setLeft(3);
    obj.narmadura:setTop(33);
    obj.narmadura:setWidth(195);
    obj.narmadura:setHeight(25);
    obj.narmadura:setName("narmadura");
    obj.narmadura:setField("narmadura");
    obj.narmadura:setHorzTextAlign("center");
    lfm_setPropAsString(obj.narmadura, "fontStyle",  "bold");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(18);
    obj.label2:setTop(63);
    obj.label2:setWidth(30);
    obj.label2:setHeight(15);
    obj.label2:setFontSize(13);
    obj.label2:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setText("CA");
    obj.label2:setName("label2");

    obj.caarmadura = GUI.fromHandle(_obj_newObject("edit"));
    obj.caarmadura:setParent(obj.layout2);
    obj.caarmadura:setLeft(13);
    obj.caarmadura:setTop(84);
    obj.caarmadura:setWidth(40);
    obj.caarmadura:setHeight(25);
    obj.caarmadura:setName("caarmadura");
    obj.caarmadura:setField("ca3");
    obj.caarmadura:setType("number");
    obj.caarmadura:setMin(-999);
    obj.caarmadura:setMax(999);
    obj.caarmadura:setHorzTextAlign("center");
    obj.caarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.caarmadura, "fontStyle",  "bold");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(63);
    obj.label3:setTop(63);
    obj.label3:setWidth(30);
    obj.label3:setHeight(15);
    obj.label3:setFontSize(13);
    obj.label3:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setText("PEN");
    obj.label3:setName("label3");

    obj.penarmadura = GUI.fromHandle(_obj_newObject("edit"));
    obj.penarmadura:setParent(obj.layout2);
    obj.penarmadura:setLeft(58);
    obj.penarmadura:setTop(84);
    obj.penarmadura:setWidth(40);
    obj.penarmadura:setHeight(25);
    obj.penarmadura:setName("penarmadura");
    obj.penarmadura:setField("penarmadura");
    obj.penarmadura:setType("number");
    obj.penarmadura:setMin(-999);
    obj.penarmadura:setMax(999);
    obj.penarmadura:setHorzTextAlign("center");
    obj.penarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.penarmadura, "fontStyle",  "bold");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(101);
    obj.label4:setTop(63);
    obj.label4:setWidth(45);
    obj.label4:setHeight(15);
    obj.label4:setFontSize(13);
    obj.label4:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setText("DES M.");
    obj.label4:setName("label4");

    obj.desmnarmadura = GUI.fromHandle(_obj_newObject("edit"));
    obj.desmnarmadura:setParent(obj.layout2);
    obj.desmnarmadura:setLeft(103);
    obj.desmnarmadura:setTop(84);
    obj.desmnarmadura:setWidth(40);
    obj.desmnarmadura:setHeight(25);
    obj.desmnarmadura:setName("desmnarmadura");
    obj.desmnarmadura:setField("desmarmadura");
    obj.desmnarmadura:setType("number");
    obj.desmnarmadura:setMin(-999);
    obj.desmnarmadura:setMax(999);
    obj.desmnarmadura:setHorzTextAlign("center");
    obj.desmnarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.desmnarmadura, "fontStyle",  "bold");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setLeft(154);
    obj.label5:setTop(63);
    obj.label5:setWidth(30);
    obj.label5:setHeight(15);
    obj.label5:setFontSize(13);
    obj.label5:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setText("F. M.");
    obj.label5:setName("label5");

    obj.falhamarmadura = GUI.fromHandle(_obj_newObject("edit"));
    obj.falhamarmadura:setParent(obj.layout2);
    obj.falhamarmadura:setLeft(148);
    obj.falhamarmadura:setTop(84);
    obj.falhamarmadura:setWidth(40);
    obj.falhamarmadura:setHeight(25);
    obj.falhamarmadura:setName("falhamarmadura");
    obj.falhamarmadura:setField("falhamarmadura");
    obj.falhamarmadura:setType("number");
    obj.falhamarmadura:setMin(-999);
    obj.falhamarmadura:setMax(999);
    obj.falhamarmadura:setHorzTextAlign("center");
    obj.falhamarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamarmadura, "fontStyle",  "bold");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(370);
    obj.layout3:setTop(229);
    obj.layout3:setWidth(200);
    obj.layout3:setHeight(125);
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(6);
    obj.rectangle4:setTop(17);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(104);
    obj.rectangle4:setHeight(15);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setLeft(9);
    obj.label6:setTop(16);
    obj.label6:setWidth(98);
    obj.label6:setHeight(15);
    obj.label6:setFontSize(13);
    obj.label6:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setText("Escudo");
    obj.label6:setName("label6");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout3);
    obj.rectangle5:setLeft(1);
    obj.rectangle5:setTop(31);
    obj.rectangle5:setWidth(200);
    obj.rectangle5:setHeight(90);
    obj.rectangle5:setColor("Gray");
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.nescudo = GUI.fromHandle(_obj_newObject("edit"));
    obj.nescudo:setParent(obj.layout3);
    obj.nescudo:setLeft(3);
    obj.nescudo:setTop(33);
    obj.nescudo:setWidth(195);
    obj.nescudo:setHeight(25);
    obj.nescudo:setName("nescudo");
    obj.nescudo:setField("nescudo");
    obj.nescudo:setHorzTextAlign("center");
    lfm_setPropAsString(obj.nescudo, "fontStyle",  "bold");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout3);
    obj.label7:setLeft(41);
    obj.label7:setTop(63);
    obj.label7:setWidth(30);
    obj.label7:setHeight(15);
    obj.label7:setFontSize(13);
    obj.label7:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setText("CA");
    obj.label7:setName("label7");

    obj.caescudo = GUI.fromHandle(_obj_newObject("edit"));
    obj.caescudo:setParent(obj.layout3);
    obj.caescudo:setLeft(36);
    obj.caescudo:setTop(84);
    obj.caescudo:setWidth(40);
    obj.caescudo:setHeight(25);
    obj.caescudo:setName("caescudo");
    obj.caescudo:setField("ca4");
    obj.caescudo:setType("number");
    obj.caescudo:setMin(-999);
    obj.caescudo:setMax(999);
    obj.caescudo:setHorzTextAlign("center");
    obj.caescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.caescudo, "fontStyle",  "bold");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setLeft(86);
    obj.label8:setTop(63);
    obj.label8:setWidth(30);
    obj.label8:setHeight(15);
    obj.label8:setFontSize(13);
    obj.label8:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setText("PEN");
    obj.label8:setName("label8");

    obj.penescudo = GUI.fromHandle(_obj_newObject("edit"));
    obj.penescudo:setParent(obj.layout3);
    obj.penescudo:setLeft(81);
    obj.penescudo:setTop(84);
    obj.penescudo:setWidth(40);
    obj.penescudo:setHeight(25);
    obj.penescudo:setName("penescudo");
    obj.penescudo:setField("penescudo");
    obj.penescudo:setType("number");
    obj.penescudo:setMin(-999);
    obj.penescudo:setMax(999);
    obj.penescudo:setHorzTextAlign("center");
    obj.penescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.penescudo, "fontStyle",  "bold");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout3);
    obj.label9:setLeft(132);
    obj.label9:setTop(63);
    obj.label9:setWidth(30);
    obj.label9:setHeight(15);
    obj.label9:setFontSize(13);
    obj.label9:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setText("F. M.");
    obj.label9:setName("label9");

    obj.falhamescudo = GUI.fromHandle(_obj_newObject("edit"));
    obj.falhamescudo:setParent(obj.layout3);
    obj.falhamescudo:setLeft(126);
    obj.falhamescudo:setTop(84);
    obj.falhamescudo:setWidth(40);
    obj.falhamescudo:setHeight(25);
    obj.falhamescudo:setName("falhamescudo");
    obj.falhamescudo:setField("falhamescudo");
    obj.falhamescudo:setType("number");
    obj.falhamescudo:setMin(-999);
    obj.falhamescudo:setMax(999);
    obj.falhamescudo:setHorzTextAlign("center");
    obj.falhamescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamescudo, "fontStyle",  "bold");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout1);
    obj.layout4:setLeft(290);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(200);
    obj.layout4:setHeight(125);
    obj.layout4:setName("layout4");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout4);
    obj.rectangle6:setLeft(6);
    obj.rectangle6:setTop(17);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(104);
    obj.rectangle6:setHeight(15);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout4);
    obj.label10:setLeft(9);
    obj.label10:setTop(16);
    obj.label10:setWidth(98);
    obj.label10:setHeight(15);
    obj.label10:setFontSize(13);
    obj.label10:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setText("Cabeça");
    obj.label10:setName("label10");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout4);
    obj.rectangle7:setLeft(1);
    obj.rectangle7:setTop(31);
    obj.rectangle7:setWidth(200);
    obj.rectangle7:setHeight(90);
    obj.rectangle7:setColor("Gray");
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.ncabeca = GUI.fromHandle(_obj_newObject("edit"));
    obj.ncabeca:setParent(obj.layout4);
    obj.ncabeca:setLeft(3);
    obj.ncabeca:setTop(33);
    obj.ncabeca:setWidth(195);
    obj.ncabeca:setHeight(25);
    obj.ncabeca:setName("ncabeca");
    obj.ncabeca:setField("ncabeca");
    obj.ncabeca:setHorzTextAlign("center");
    lfm_setPropAsString(obj.ncabeca, "fontStyle",  "bold");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout4);
    obj.label11:setLeft(5);
    obj.label11:setTop(63);
    obj.label11:setWidth(90);
    obj.label11:setHeight(15);
    obj.label11:setFontSize(13);
    obj.label11:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setText("Descrição:");
    obj.label11:setName("label11");

    obj.desccabeca = GUI.fromHandle(_obj_newObject("edit"));
    obj.desccabeca:setParent(obj.layout4);
    obj.desccabeca:setLeft(3);
    obj.desccabeca:setTop(84);
    obj.desccabeca:setWidth(195);
    obj.desccabeca:setHeight(35);
    obj.desccabeca:setName("desccabeca");
    obj.desccabeca:setField("desccabeca");
    obj.desccabeca:setHorzTextAlign("leading");
    obj.desccabeca:setFontSize(12.0);
    lfm_setPropAsString(obj.desccabeca, "fontStyle",  "bold");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout1);
    obj.layout5:setLeft(350);
    obj.layout5:setTop(110);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(125);
    obj.layout5:setName("layout5");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout5);
    obj.rectangle8:setLeft(6);
    obj.rectangle8:setTop(17);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(104);
    obj.rectangle8:setHeight(15);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout5);
    obj.label12:setLeft(9);
    obj.label12:setTop(16);
    obj.label12:setWidth(98);
    obj.label12:setHeight(15);
    obj.label12:setFontSize(13);
    obj.label12:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setText("Pescoço");
    obj.label12:setName("label12");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout5);
    obj.rectangle9:setLeft(1);
    obj.rectangle9:setTop(31);
    obj.rectangle9:setWidth(200);
    obj.rectangle9:setHeight(90);
    obj.rectangle9:setColor("Gray");
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.npescoco = GUI.fromHandle(_obj_newObject("edit"));
    obj.npescoco:setParent(obj.layout5);
    obj.npescoco:setLeft(3);
    obj.npescoco:setTop(33);
    obj.npescoco:setWidth(195);
    obj.npescoco:setHeight(25);
    obj.npescoco:setName("npescoco");
    obj.npescoco:setField("npescoco");
    obj.npescoco:setHorzTextAlign("center");
    lfm_setPropAsString(obj.npescoco, "fontStyle",  "bold");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout5);
    obj.label13:setLeft(5);
    obj.label13:setTop(63);
    obj.label13:setWidth(90);
    obj.label13:setHeight(15);
    obj.label13:setFontSize(13);
    obj.label13:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setText("Descrição:");
    obj.label13:setName("label13");

    obj.descpescoco = GUI.fromHandle(_obj_newObject("edit"));
    obj.descpescoco:setParent(obj.layout5);
    obj.descpescoco:setLeft(3);
    obj.descpescoco:setTop(84);
    obj.descpescoco:setWidth(195);
    obj.descpescoco:setHeight(35);
    obj.descpescoco:setName("descpescoco");
    obj.descpescoco:setField("descpescoco");
    obj.descpescoco:setHorzTextAlign("leading");
    obj.descpescoco:setFontSize(12.0);
    lfm_setPropAsString(obj.descpescoco, "fontStyle",  "bold");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout1);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(179);
    obj.layout6:setWidth(200);
    obj.layout6:setHeight(125);
    obj.layout6:setName("layout6");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout6);
    obj.rectangle10:setLeft(6);
    obj.rectangle10:setTop(17);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(104);
    obj.rectangle10:setHeight(15);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout6);
    obj.label14:setLeft(9);
    obj.label14:setTop(16);
    obj.label14:setWidth(98);
    obj.label14:setHeight(15);
    obj.label14:setFontSize(13);
    obj.label14:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setText("Mãos");
    obj.label14:setName("label14");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout6);
    obj.rectangle11:setLeft(1);
    obj.rectangle11:setTop(31);
    obj.rectangle11:setWidth(200);
    obj.rectangle11:setHeight(90);
    obj.rectangle11:setColor("Gray");
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.nmaos = GUI.fromHandle(_obj_newObject("edit"));
    obj.nmaos:setParent(obj.layout6);
    obj.nmaos:setLeft(3);
    obj.nmaos:setTop(33);
    obj.nmaos:setWidth(195);
    obj.nmaos:setHeight(25);
    obj.nmaos:setName("nmaos");
    obj.nmaos:setField("nmaos");
    obj.nmaos:setHorzTextAlign("center");
    lfm_setPropAsString(obj.nmaos, "fontStyle",  "bold");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout6);
    obj.label15:setLeft(5);
    obj.label15:setTop(63);
    obj.label15:setWidth(90);
    obj.label15:setHeight(15);
    obj.label15:setFontSize(13);
    obj.label15:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setText("Descrição:");
    obj.label15:setName("label15");

    obj.descmaos = GUI.fromHandle(_obj_newObject("edit"));
    obj.descmaos:setParent(obj.layout6);
    obj.descmaos:setLeft(3);
    obj.descmaos:setTop(84);
    obj.descmaos:setWidth(195);
    obj.descmaos:setHeight(35);
    obj.descmaos:setName("descmaos");
    obj.descmaos:setField("descmaos");
    obj.descmaos:setHorzTextAlign("leading");
    obj.descmaos:setFontSize(12.0);
    lfm_setPropAsString(obj.descmaos, "fontStyle",  "bold");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout1);
    obj.layout7:setLeft(10);
    obj.layout7:setTop(314);
    obj.layout7:setWidth(200);
    obj.layout7:setHeight(125);
    obj.layout7:setName("layout7");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout7);
    obj.rectangle12:setLeft(6);
    obj.rectangle12:setTop(17);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(104);
    obj.rectangle12:setHeight(15);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout7);
    obj.label16:setLeft(9);
    obj.label16:setTop(16);
    obj.label16:setWidth(98);
    obj.label16:setHeight(15);
    obj.label16:setFontSize(13);
    obj.label16:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setText("Cintura");
    obj.label16:setName("label16");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout7);
    obj.rectangle13:setLeft(1);
    obj.rectangle13:setTop(31);
    obj.rectangle13:setWidth(200);
    obj.rectangle13:setHeight(90);
    obj.rectangle13:setColor("Gray");
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.ncintura = GUI.fromHandle(_obj_newObject("edit"));
    obj.ncintura:setParent(obj.layout7);
    obj.ncintura:setLeft(3);
    obj.ncintura:setTop(33);
    obj.ncintura:setWidth(195);
    obj.ncintura:setHeight(25);
    obj.ncintura:setName("ncintura");
    obj.ncintura:setField("ncintura");
    obj.ncintura:setHorzTextAlign("center");
    lfm_setPropAsString(obj.ncintura, "fontStyle",  "bold");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout7);
    obj.label17:setLeft(5);
    obj.label17:setTop(63);
    obj.label17:setWidth(90);
    obj.label17:setHeight(15);
    obj.label17:setFontSize(13);
    obj.label17:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("black");
    obj.label17:setText("Descrição:");
    obj.label17:setName("label17");

    obj.desccintura = GUI.fromHandle(_obj_newObject("edit"));
    obj.desccintura:setParent(obj.layout7);
    obj.desccintura:setLeft(3);
    obj.desccintura:setTop(84);
    obj.desccintura:setWidth(195);
    obj.desccintura:setHeight(35);
    obj.desccintura:setName("desccintura");
    obj.desccintura:setField("desccintura");
    obj.desccintura:setHorzTextAlign("leading");
    obj.desccintura:setFontSize(12.0);
    lfm_setPropAsString(obj.desccintura, "fontStyle",  "bold");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout1);
    obj.layout8:setLeft(350);
    obj.layout8:setTop(384);
    obj.layout8:setWidth(200);
    obj.layout8:setHeight(125);
    obj.layout8:setName("layout8");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout8);
    obj.rectangle14:setLeft(6);
    obj.rectangle14:setTop(17);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(104);
    obj.rectangle14:setHeight(15);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout8);
    obj.label18:setLeft(9);
    obj.label18:setTop(16);
    obj.label18:setWidth(98);
    obj.label18:setHeight(15);
    obj.label18:setFontSize(13);
    obj.label18:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("black");
    obj.label18:setText("Pés");
    obj.label18:setName("label18");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout8);
    obj.rectangle15:setLeft(1);
    obj.rectangle15:setTop(31);
    obj.rectangle15:setWidth(200);
    obj.rectangle15:setHeight(90);
    obj.rectangle15:setColor("Gray");
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.npes = GUI.fromHandle(_obj_newObject("edit"));
    obj.npes:setParent(obj.layout8);
    obj.npes:setLeft(3);
    obj.npes:setTop(33);
    obj.npes:setWidth(195);
    obj.npes:setHeight(25);
    obj.npes:setName("npes");
    obj.npes:setField("npes");
    obj.npes:setHorzTextAlign("center");
    lfm_setPropAsString(obj.npes, "fontStyle",  "bold");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout8);
    obj.label19:setLeft(5);
    obj.label19:setTop(63);
    obj.label19:setWidth(90);
    obj.label19:setHeight(15);
    obj.label19:setFontSize(13);
    obj.label19:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("black");
    obj.label19:setText("Descrição:");
    obj.label19:setName("label19");

    obj.descpes = GUI.fromHandle(_obj_newObject("edit"));
    obj.descpes:setParent(obj.layout8);
    obj.descpes:setLeft(3);
    obj.descpes:setTop(84);
    obj.descpes:setWidth(195);
    obj.descpes:setHeight(35);
    obj.descpes:setName("descpes");
    obj.descpes:setField("descpes");
    obj.descpes:setHorzTextAlign("leading");
    obj.descpes:setFontSize(12.0);
    lfm_setPropAsString(obj.descpes, "fontStyle",  "bold");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(605);
    obj.layout9:setTop(0);
    obj.layout9:setWidth(395);
    obj.layout9:setHeight(700);
    obj.layout9:setName("layout9");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout9);
    obj.rectangle16:setLeft(150);
    obj.rectangle16:setTop(1);
    obj.rectangle16:setColor("Gainsboro");
    obj.rectangle16:setWidth(104);
    obj.rectangle16:setHeight(15);
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);
    obj.rectangle16:setName("rectangle16");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout9);
    obj.label20:setLeft(153);
    obj.label20:setTop(1);
    obj.label20:setWidth(98);
    obj.label20:setHeight(12);
    obj.label20:setFontSize(10);
    obj.label20:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontColor("black");
    obj.label20:setText("Equipamentos");
    obj.label20:setName("label20");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout9);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(13);
    obj.layout10:setWidth(395);
    obj.layout10:setHeight(418);
    obj.layout10:setName("layout10");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout10);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("equipamentos");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout9);
    obj.rectangle17:setLeft(150);
    obj.rectangle17:setTop(439);
    obj.rectangle17:setColor("Gainsboro");
    obj.rectangle17:setWidth(104);
    obj.rectangle17:setHeight(15);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout9);
    obj.label21:setLeft(153);
    obj.label21:setTop(439);
    obj.label21:setWidth(98);
    obj.label21:setHeight(12);
    obj.label21:setFontSize(10);
    obj.label21:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("black");
    obj.label21:setText("Anotações");
    obj.label21:setName("label21");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout9);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(451);
    obj.layout11:setWidth(395);
    obj.layout11:setHeight(240);
    obj.layout11:setName("layout11");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout11);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("eqanotacoes");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

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
        if self.falhamescudo ~= nil then self.falhamescudo:destroy(); self.falhamescudo = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.npes ~= nil then self.npes:destroy(); self.npes = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.npescoco ~= nil then self.npescoco:destroy(); self.npescoco = nil; end;
        if self.penarmadura ~= nil then self.penarmadura:destroy(); self.penarmadura = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.nescudo ~= nil then self.nescudo:destroy(); self.nescudo = nil; end;
        if self.desmnarmadura ~= nil then self.desmnarmadura:destroy(); self.desmnarmadura = nil; end;
        if self.falhamarmadura ~= nil then self.falhamarmadura:destroy(); self.falhamarmadura = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.descpes ~= nil then self.descpes:destroy(); self.descpes = nil; end;
        if self.ncintura ~= nil then self.ncintura:destroy(); self.ncintura = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.narmadura ~= nil then self.narmadura:destroy(); self.narmadura = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.desccabeca ~= nil then self.desccabeca:destroy(); self.desccabeca = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.descpescoco ~= nil then self.descpescoco:destroy(); self.descpescoco = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.penescudo ~= nil then self.penescudo:destroy(); self.penescudo = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.ncabeca ~= nil then self.ncabeca:destroy(); self.ncabeca = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.descmaos ~= nil then self.descmaos:destroy(); self.descmaos = nil; end;
        if self.nmaos ~= nil then self.nmaos:destroy(); self.nmaos = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.desccintura ~= nil then self.desccintura:destroy(); self.desccintura = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.caarmadura ~= nil then self.caarmadura:destroy(); self.caarmadura = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.caescudo ~= nil then self.caescudo:destroy(); self.caescudo = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta03()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta03();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta03 = {
    newEditor = newTormenta03, 
    new = newTormenta03, 
    name = "Tormenta03", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta03 = _Tormenta03;
Firecast.registrarForm(_Tormenta03);

return _Tormenta03;
