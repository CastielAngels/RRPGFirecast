require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta02()
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
    obj:setName("Tormenta02");
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
    obj.layout1:setTop(10);
    obj.layout1:setWidth(420);
    obj.layout1:setHeight(680);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("Gray");
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(166);
    obj.rectangle3:setTop(1);
    obj.rectangle3:setColor("Gainsboro");
    obj.rectangle3:setWidth(38);
    obj.rectangle3:setHeight(15);
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(173);
    obj.label1:setTop(3);
    obj.label1:setWidth(48);
    obj.label1:setHeight(8);
    obj.label1:setFontSize(10);
    lfm_setPropAsString(obj.label1, "fontStyle",  "bold");
    obj.label1:setFontColor("black");
    obj.label1:setText("Total");
    obj.label1:setName("label1");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setLeft(236);
    obj.rectangle4:setTop(1);
    obj.rectangle4:setColor("Gainsboro");
    obj.rectangle4:setWidth(38);
    obj.rectangle4:setHeight(15);
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(243);
    obj.label2:setTop(3);
    obj.label2:setWidth(48);
    obj.label2:setHeight(8);
    obj.label2:setFontSize(10);
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setText("Grad");
    obj.label2:setName("label2");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(306);
    obj.rectangle5:setTop(1);
    obj.rectangle5:setColor("Gainsboro");
    obj.rectangle5:setWidth(38);
    obj.rectangle5:setHeight(15);
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(309);
    obj.label3:setTop(3);
    obj.label3:setWidth(48);
    obj.label3:setHeight(8);
    obj.label3:setFontSize(10);
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setText("Mod H");
    obj.label3:setName("label3");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout1);
    obj.rectangle6:setLeft(376);
    obj.rectangle6:setTop(1);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(38);
    obj.rectangle6:setHeight(15);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setLeft(379);
    obj.label4:setTop(3);
    obj.label4:setWidth(48);
    obj.label4:setHeight(8);
    obj.label4:setFontSize(10);
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setText("Outros");
    obj.label4:setName("label4");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(7);
    obj.layout2:setWidth(420);
    obj.layout2:setHeight(680);
    obj.layout2:setName("layout2");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(0);
    obj.layout3:setWidth(420);
    obj.layout3:setHeight(32);
    obj.layout3:setName("layout3");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout3);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(5);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(155);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.cbxacrobacia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxacrobacia:setParent(obj.layout3);
    obj.cbxacrobacia:setLeft(7);
    obj.cbxacrobacia:setTop(8);
    obj.cbxacrobacia:setWidth(20);
    obj.cbxacrobacia:setHeight(20);
    obj.cbxacrobacia:setName("cbxacrobacia");
    obj.cbxacrobacia:setField("cbxacrobacia");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(28);
    obj.label5:setTop(7);
    obj.label5:setWidth(150);
    obj.label5:setHeight(20);
    obj.label5:setText("Acrobacia");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setFontSize(15.0);
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.totalacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalacrobacia:setParent(obj.layout3);
    obj.totalacrobacia:setLeft(165);
    obj.totalacrobacia:setTop(5);
    obj.totalacrobacia:setWidth(40);
    obj.totalacrobacia:setHeight(25);
    obj.totalacrobacia:setName("totalacrobacia");
    obj.totalacrobacia:setField("totalacrobacia");
    obj.totalacrobacia:setType("number");
    obj.totalacrobacia:setMin(-999);
    obj.totalacrobacia:setMax(999);
    obj.totalacrobacia:setHorzTextAlign("center");
    obj.totalacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalacrobacia, "fontStyle",  "bold");
    obj.totalacrobacia:setHitTest(false);

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout3);
    obj.rectangle8:setLeft(210);
    obj.rectangle8:setTop(10);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(20);
    obj.rectangle8:setHeight(15);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setLeft(213);
    obj.label6:setTop(8);
    obj.label6:setWidth(20);
    obj.label6:setHeight(15);
    obj.label6:setFontSize(20);
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setText("=");
    obj.label6:setName("label6");

    obj.gradacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradacrobacia:setParent(obj.layout3);
    obj.gradacrobacia:setLeft(235);
    obj.gradacrobacia:setTop(5);
    obj.gradacrobacia:setWidth(40);
    obj.gradacrobacia:setHeight(25);
    obj.gradacrobacia:setName("gradacrobacia");
    obj.gradacrobacia:setField("gradacrobacia");
    obj.gradacrobacia:setType("number");
    obj.gradacrobacia:setMin(-999);
    obj.gradacrobacia:setMax(999);
    obj.gradacrobacia:setHorzTextAlign("center");
    obj.gradacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradacrobacia, "fontStyle",  "bold");
    obj.gradacrobacia:setHitTest(false);

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout3);
    obj.rectangle9:setLeft(280);
    obj.rectangle9:setTop(10);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(20);
    obj.rectangle9:setHeight(15);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout3);
    obj.label7:setLeft(283);
    obj.label7:setTop(8);
    obj.label7:setWidth(20);
    obj.label7:setHeight(15);
    obj.label7:setFontSize(20);
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setText("+");
    obj.label7:setName("label7");

    obj.modacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modacrobacia:setParent(obj.layout3);
    obj.modacrobacia:setLeft(305);
    obj.modacrobacia:setTop(5);
    obj.modacrobacia:setWidth(40);
    obj.modacrobacia:setHeight(25);
    obj.modacrobacia:setName("modacrobacia");
    obj.modacrobacia:setField("modacrobacia");
    obj.modacrobacia:setType("number");
    obj.modacrobacia:setMin(-999);
    obj.modacrobacia:setMax(999);
    obj.modacrobacia:setHorzTextAlign("center");
    obj.modacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.modacrobacia, "fontStyle",  "bold");
    obj.modacrobacia:setHitTest(false);

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout3);
    obj.rectangle10:setLeft(350);
    obj.rectangle10:setTop(10);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(20);
    obj.rectangle10:setHeight(15);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setLeft(353);
    obj.label8:setTop(8);
    obj.label8:setWidth(20);
    obj.label8:setHeight(15);
    obj.label8:setFontSize(20);
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setText("+");
    obj.label8:setName("label8");

    obj.outrosacrobacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosacrobacia:setParent(obj.layout3);
    obj.outrosacrobacia:setLeft(375);
    obj.outrosacrobacia:setTop(5);
    obj.outrosacrobacia:setWidth(40);
    obj.outrosacrobacia:setHeight(25);
    obj.outrosacrobacia:setName("outrosacrobacia");
    obj.outrosacrobacia:setField("outrosacrobacia");
    obj.outrosacrobacia:setType("number");
    obj.outrosacrobacia:setMin(-999);
    obj.outrosacrobacia:setMax(999);
    obj.outrosacrobacia:setHorzTextAlign("center");
    obj.outrosacrobacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosacrobacia, "fontStyle",  "bold");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout2);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(35);
    obj.layout4:setWidth(420);
    obj.layout4:setHeight(32);
    obj.layout4:setName("layout4");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout4);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(155);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.cbxadestrar = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxadestrar:setParent(obj.layout4);
    obj.cbxadestrar:setLeft(7);
    obj.cbxadestrar:setTop(3);
    obj.cbxadestrar:setWidth(20);
    obj.cbxadestrar:setHeight(20);
    obj.cbxadestrar:setName("cbxadestrar");
    obj.cbxadestrar:setField("cbxadestrar");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout4);
    obj.label9:setLeft(28);
    obj.label9:setTop(2);
    obj.label9:setWidth(150);
    obj.label9:setHeight(20);
    obj.label9:setText("Adestrar Animais");
    obj.label9:setHorzTextAlign("leading");
    obj.label9:setFontSize(15.0);
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.totaladestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaladestrar:setParent(obj.layout4);
    obj.totaladestrar:setLeft(165);
    obj.totaladestrar:setTop(0);
    obj.totaladestrar:setWidth(40);
    obj.totaladestrar:setHeight(25);
    obj.totaladestrar:setName("totaladestrar");
    obj.totaladestrar:setField("totaladestrar");
    obj.totaladestrar:setType("number");
    obj.totaladestrar:setMin(-999);
    obj.totaladestrar:setMax(999);
    obj.totaladestrar:setHorzTextAlign("center");
    obj.totaladestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.totaladestrar, "fontStyle",  "bold");
    obj.totaladestrar:setHitTest(false);

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout4);
    obj.rectangle12:setLeft(210);
    obj.rectangle12:setTop(5);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(20);
    obj.rectangle12:setHeight(15);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout4);
    obj.label10:setLeft(213);
    obj.label10:setTop(3);
    obj.label10:setWidth(20);
    obj.label10:setHeight(15);
    obj.label10:setFontSize(20);
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setText("=");
    obj.label10:setName("label10");

    obj.gradadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradadestrar:setParent(obj.layout4);
    obj.gradadestrar:setLeft(235);
    obj.gradadestrar:setTop(0);
    obj.gradadestrar:setWidth(40);
    obj.gradadestrar:setHeight(25);
    obj.gradadestrar:setName("gradadestrar");
    obj.gradadestrar:setField("gradadestrar");
    obj.gradadestrar:setType("number");
    obj.gradadestrar:setMin(-999);
    obj.gradadestrar:setMax(999);
    obj.gradadestrar:setHorzTextAlign("center");
    obj.gradadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradadestrar, "fontStyle",  "bold");
    obj.gradadestrar:setHitTest(false);

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout4);
    obj.rectangle13:setLeft(280);
    obj.rectangle13:setTop(5);
    obj.rectangle13:setColor("Gainsboro");
    obj.rectangle13:setWidth(20);
    obj.rectangle13:setHeight(15);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout4);
    obj.label11:setLeft(283);
    obj.label11:setTop(3);
    obj.label11:setWidth(20);
    obj.label11:setHeight(15);
    obj.label11:setFontSize(20);
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setText("+");
    obj.label11:setName("label11");

    obj.modadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.modadestrar:setParent(obj.layout4);
    obj.modadestrar:setLeft(305);
    obj.modadestrar:setTop(0);
    obj.modadestrar:setWidth(40);
    obj.modadestrar:setHeight(25);
    obj.modadestrar:setName("modadestrar");
    obj.modadestrar:setField("modadestrar");
    obj.modadestrar:setType("number");
    obj.modadestrar:setMin(-999);
    obj.modadestrar:setMax(999);
    obj.modadestrar:setHorzTextAlign("center");
    obj.modadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.modadestrar, "fontStyle",  "bold");
    obj.modadestrar:setHitTest(false);

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout4);
    obj.rectangle14:setLeft(350);
    obj.rectangle14:setTop(5);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(20);
    obj.rectangle14:setHeight(15);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout4);
    obj.label12:setLeft(353);
    obj.label12:setTop(3);
    obj.label12:setWidth(20);
    obj.label12:setHeight(15);
    obj.label12:setFontSize(20);
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setText("+");
    obj.label12:setName("label12");

    obj.outrosadestrar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosadestrar:setParent(obj.layout4);
    obj.outrosadestrar:setLeft(375);
    obj.outrosadestrar:setTop(0);
    obj.outrosadestrar:setWidth(40);
    obj.outrosadestrar:setHeight(25);
    obj.outrosadestrar:setName("outrosadestrar");
    obj.outrosadestrar:setField("outrosadestrar");
    obj.outrosadestrar:setType("number");
    obj.outrosadestrar:setMin(-999);
    obj.outrosadestrar:setMax(999);
    obj.outrosadestrar:setHorzTextAlign("center");
    obj.outrosadestrar:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosadestrar, "fontStyle",  "bold");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout2);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(65);
    obj.layout5:setWidth(420);
    obj.layout5:setHeight(32);
    obj.layout5:setName("layout5");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout5);
    obj.rectangle15:setLeft(5);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setColor("Gainsboro");
    obj.rectangle15:setWidth(155);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj.cbxatletismo = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxatletismo:setParent(obj.layout5);
    obj.cbxatletismo:setLeft(7);
    obj.cbxatletismo:setTop(3);
    obj.cbxatletismo:setWidth(20);
    obj.cbxatletismo:setHeight(20);
    obj.cbxatletismo:setName("cbxatletismo");
    obj.cbxatletismo:setField("cbxatletismo");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout5);
    obj.label13:setLeft(28);
    obj.label13:setTop(2);
    obj.label13:setWidth(150);
    obj.label13:setHeight(20);
    obj.label13:setText("Atletismo");
    obj.label13:setHorzTextAlign("leading");
    obj.label13:setFontSize(15.0);
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.totalatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalatletismo:setParent(obj.layout5);
    obj.totalatletismo:setLeft(165);
    obj.totalatletismo:setTop(0);
    obj.totalatletismo:setWidth(40);
    obj.totalatletismo:setHeight(25);
    obj.totalatletismo:setName("totalatletismo");
    obj.totalatletismo:setField("totalatletismo");
    obj.totalatletismo:setType("number");
    obj.totalatletismo:setMin(-999);
    obj.totalatletismo:setMax(999);
    obj.totalatletismo:setHorzTextAlign("center");
    obj.totalatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatletismo, "fontStyle",  "bold");
    obj.totalatletismo:setHitTest(false);

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout5);
    obj.rectangle16:setLeft(210);
    obj.rectangle16:setTop(5);
    obj.rectangle16:setColor("Gainsboro");
    obj.rectangle16:setWidth(20);
    obj.rectangle16:setHeight(15);
    obj.rectangle16:setXradius(2);
    obj.rectangle16:setYradius(2);
    obj.rectangle16:setName("rectangle16");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout5);
    obj.label14:setLeft(213);
    obj.label14:setTop(3);
    obj.label14:setWidth(20);
    obj.label14:setHeight(15);
    obj.label14:setFontSize(20);
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setText("=");
    obj.label14:setName("label14");

    obj.gradatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradatletismo:setParent(obj.layout5);
    obj.gradatletismo:setLeft(235);
    obj.gradatletismo:setTop(0);
    obj.gradatletismo:setWidth(40);
    obj.gradatletismo:setHeight(25);
    obj.gradatletismo:setName("gradatletismo");
    obj.gradatletismo:setField("gradatletismo");
    obj.gradatletismo:setType("number");
    obj.gradatletismo:setMin(-999);
    obj.gradatletismo:setMax(999);
    obj.gradatletismo:setHorzTextAlign("center");
    obj.gradatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatletismo, "fontStyle",  "bold");
    obj.gradatletismo:setHitTest(false);

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout5);
    obj.rectangle17:setLeft(280);
    obj.rectangle17:setTop(5);
    obj.rectangle17:setColor("Gainsboro");
    obj.rectangle17:setWidth(20);
    obj.rectangle17:setHeight(15);
    obj.rectangle17:setXradius(2);
    obj.rectangle17:setYradius(2);
    obj.rectangle17:setName("rectangle17");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout5);
    obj.label15:setLeft(283);
    obj.label15:setTop(3);
    obj.label15:setWidth(20);
    obj.label15:setHeight(15);
    obj.label15:setFontSize(20);
    lfm_setPropAsString(obj.label15, "fontStyle",  "bold");
    obj.label15:setFontColor("black");
    obj.label15:setText("+");
    obj.label15:setName("label15");

    obj.modatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.modatletismo:setParent(obj.layout5);
    obj.modatletismo:setLeft(305);
    obj.modatletismo:setTop(0);
    obj.modatletismo:setWidth(40);
    obj.modatletismo:setHeight(25);
    obj.modatletismo:setName("modatletismo");
    obj.modatletismo:setField("modatletismo");
    obj.modatletismo:setType("number");
    obj.modatletismo:setMin(-999);
    obj.modatletismo:setMax(999);
    obj.modatletismo:setHorzTextAlign("center");
    obj.modatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.modatletismo, "fontStyle",  "bold");
    obj.modatletismo:setHitTest(false);

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout5);
    obj.rectangle18:setLeft(350);
    obj.rectangle18:setTop(5);
    obj.rectangle18:setColor("Gainsboro");
    obj.rectangle18:setWidth(20);
    obj.rectangle18:setHeight(15);
    obj.rectangle18:setXradius(2);
    obj.rectangle18:setYradius(2);
    obj.rectangle18:setName("rectangle18");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout5);
    obj.label16:setLeft(353);
    obj.label16:setTop(3);
    obj.label16:setWidth(20);
    obj.label16:setHeight(15);
    obj.label16:setFontSize(20);
    lfm_setPropAsString(obj.label16, "fontStyle",  "bold");
    obj.label16:setFontColor("black");
    obj.label16:setText("+");
    obj.label16:setName("label16");

    obj.outrosatletismo = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosatletismo:setParent(obj.layout5);
    obj.outrosatletismo:setLeft(375);
    obj.outrosatletismo:setTop(0);
    obj.outrosatletismo:setWidth(40);
    obj.outrosatletismo:setHeight(25);
    obj.outrosatletismo:setName("outrosatletismo");
    obj.outrosatletismo:setField("outrosatletismo");
    obj.outrosatletismo:setType("number");
    obj.outrosatletismo:setMin(-999);
    obj.outrosatletismo:setMax(999);
    obj.outrosatletismo:setHorzTextAlign("center");
    obj.outrosatletismo:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatletismo, "fontStyle",  "bold");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout2);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(95);
    obj.layout6:setWidth(420);
    obj.layout6:setHeight(32);
    obj.layout6:setName("layout6");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout6);
    obj.rectangle19:setLeft(5);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setColor("Gainsboro");
    obj.rectangle19:setWidth(155);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setXradius(2);
    obj.rectangle19:setYradius(2);
    obj.rectangle19:setName("rectangle19");

    obj.cbxatuacao1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxatuacao1:setParent(obj.layout6);
    obj.cbxatuacao1:setLeft(7);
    obj.cbxatuacao1:setTop(3);
    obj.cbxatuacao1:setWidth(20);
    obj.cbxatuacao1:setHeight(20);
    obj.cbxatuacao1:setName("cbxatuacao1");
    obj.cbxatuacao1:setField("cbxatuacao1");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout6);
    obj.label17:setLeft(28);
    obj.label17:setTop(2);
    obj.label17:setWidth(150);
    obj.label17:setHeight(20);
    obj.label17:setText("Atuação");
    obj.label17:setHorzTextAlign("leading");
    obj.label17:setFontSize(15.0);
    lfm_setPropAsString(obj.label17, "fontStyle",  "bold");
    obj.label17:setFontColor("black");
    obj.label17:setName("label17");

    obj.totalatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalatuacao1:setParent(obj.layout6);
    obj.totalatuacao1:setLeft(165);
    obj.totalatuacao1:setTop(0);
    obj.totalatuacao1:setWidth(40);
    obj.totalatuacao1:setHeight(25);
    obj.totalatuacao1:setName("totalatuacao1");
    obj.totalatuacao1:setField("totalatuacao1");
    obj.totalatuacao1:setType("number");
    obj.totalatuacao1:setMin(-999);
    obj.totalatuacao1:setMax(999);
    obj.totalatuacao1:setHorzTextAlign("center");
    obj.totalatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalatuacao1, "fontStyle",  "bold");
    obj.totalatuacao1:setHitTest(false);

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout6);
    obj.rectangle20:setLeft(210);
    obj.rectangle20:setTop(5);
    obj.rectangle20:setColor("Gainsboro");
    obj.rectangle20:setWidth(20);
    obj.rectangle20:setHeight(15);
    obj.rectangle20:setXradius(2);
    obj.rectangle20:setYradius(2);
    obj.rectangle20:setName("rectangle20");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setLeft(213);
    obj.label18:setTop(3);
    obj.label18:setWidth(20);
    obj.label18:setHeight(15);
    obj.label18:setFontSize(20);
    lfm_setPropAsString(obj.label18, "fontStyle",  "bold");
    obj.label18:setFontColor("black");
    obj.label18:setText("=");
    obj.label18:setName("label18");

    obj.gradatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradatuacao1:setParent(obj.layout6);
    obj.gradatuacao1:setLeft(235);
    obj.gradatuacao1:setTop(0);
    obj.gradatuacao1:setWidth(40);
    obj.gradatuacao1:setHeight(25);
    obj.gradatuacao1:setName("gradatuacao1");
    obj.gradatuacao1:setField("gradatuacao1");
    obj.gradatuacao1:setType("number");
    obj.gradatuacao1:setMin(-999);
    obj.gradatuacao1:setMax(999);
    obj.gradatuacao1:setHorzTextAlign("center");
    obj.gradatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradatuacao1, "fontStyle",  "bold");
    obj.gradatuacao1:setHitTest(false);

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout6);
    obj.rectangle21:setLeft(280);
    obj.rectangle21:setTop(5);
    obj.rectangle21:setColor("Gainsboro");
    obj.rectangle21:setWidth(20);
    obj.rectangle21:setHeight(15);
    obj.rectangle21:setXradius(2);
    obj.rectangle21:setYradius(2);
    obj.rectangle21:setName("rectangle21");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setLeft(283);
    obj.label19:setTop(3);
    obj.label19:setWidth(20);
    obj.label19:setHeight(15);
    obj.label19:setFontSize(20);
    lfm_setPropAsString(obj.label19, "fontStyle",  "bold");
    obj.label19:setFontColor("black");
    obj.label19:setText("+");
    obj.label19:setName("label19");

    obj.modatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modatuacao1:setParent(obj.layout6);
    obj.modatuacao1:setLeft(305);
    obj.modatuacao1:setTop(0);
    obj.modatuacao1:setWidth(40);
    obj.modatuacao1:setHeight(25);
    obj.modatuacao1:setName("modatuacao1");
    obj.modatuacao1:setField("modatuacao1");
    obj.modatuacao1:setType("number");
    obj.modatuacao1:setMin(-999);
    obj.modatuacao1:setMax(999);
    obj.modatuacao1:setHorzTextAlign("center");
    obj.modatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.modatuacao1, "fontStyle",  "bold");
    obj.modatuacao1:setHitTest(false);

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout6);
    obj.rectangle22:setLeft(350);
    obj.rectangle22:setTop(5);
    obj.rectangle22:setColor("Gainsboro");
    obj.rectangle22:setWidth(20);
    obj.rectangle22:setHeight(15);
    obj.rectangle22:setXradius(2);
    obj.rectangle22:setYradius(2);
    obj.rectangle22:setName("rectangle22");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setLeft(353);
    obj.label20:setTop(3);
    obj.label20:setWidth(20);
    obj.label20:setHeight(15);
    obj.label20:setFontSize(20);
    lfm_setPropAsString(obj.label20, "fontStyle",  "bold");
    obj.label20:setFontColor("black");
    obj.label20:setText("+");
    obj.label20:setName("label20");

    obj.outrosatuacao1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosatuacao1:setParent(obj.layout6);
    obj.outrosatuacao1:setLeft(375);
    obj.outrosatuacao1:setTop(0);
    obj.outrosatuacao1:setWidth(40);
    obj.outrosatuacao1:setHeight(25);
    obj.outrosatuacao1:setName("outrosatuacao1");
    obj.outrosatuacao1:setField("outrosatuacao1");
    obj.outrosatuacao1:setType("number");
    obj.outrosatuacao1:setMin(-999);
    obj.outrosatuacao1:setMax(999);
    obj.outrosatuacao1:setHorzTextAlign("center");
    obj.outrosatuacao1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosatuacao1, "fontStyle",  "bold");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout2);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(125);
    obj.layout7:setWidth(420);
    obj.layout7:setHeight(32);
    obj.layout7:setName("layout7");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout7);
    obj.rectangle23:setLeft(5);
    obj.rectangle23:setTop(0);
    obj.rectangle23:setColor("Gainsboro");
    obj.rectangle23:setWidth(155);
    obj.rectangle23:setHeight(25);
    obj.rectangle23:setXradius(2);
    obj.rectangle23:setYradius(2);
    obj.rectangle23:setName("rectangle23");

    obj.cbxjogatina = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxjogatina:setParent(obj.layout7);
    obj.cbxjogatina:setLeft(7);
    obj.cbxjogatina:setTop(3);
    obj.cbxjogatina:setWidth(20);
    obj.cbxjogatina:setHeight(20);
    obj.cbxjogatina:setName("cbxjogatina");
    obj.cbxjogatina:setField("cbxjogatina");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setLeft(28);
    obj.label21:setTop(2);
    obj.label21:setWidth(150);
    obj.label21:setHeight(20);
    obj.label21:setText("Jogatina");
    obj.label21:setHorzTextAlign("leading");
    obj.label21:setFontSize(15.0);
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setFontColor("black");
    obj.label21:setName("label21");

    obj.totaljogatina = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaljogatina:setParent(obj.layout7);
    obj.totaljogatina:setLeft(165);
    obj.totaljogatina:setTop(0);
    obj.totaljogatina:setWidth(40);
    obj.totaljogatina:setHeight(25);
    obj.totaljogatina:setName("totaljogatina");
    obj.totaljogatina:setField("totaljogatina");
    obj.totaljogatina:setType("number");
    obj.totaljogatina:setMin(-999);
    obj.totaljogatina:setMax(999);
    obj.totaljogatina:setHorzTextAlign("center");
    obj.totaljogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.totaljogatina, "fontStyle",  "bold");
    obj.totaljogatina:setHitTest(false);

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout7);
    obj.rectangle24:setLeft(210);
    obj.rectangle24:setTop(5);
    obj.rectangle24:setColor("Gainsboro");
    obj.rectangle24:setWidth(20);
    obj.rectangle24:setHeight(15);
    obj.rectangle24:setXradius(2);
    obj.rectangle24:setYradius(2);
    obj.rectangle24:setName("rectangle24");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout7);
    obj.label22:setLeft(213);
    obj.label22:setTop(3);
    obj.label22:setWidth(20);
    obj.label22:setHeight(15);
    obj.label22:setFontSize(20);
    lfm_setPropAsString(obj.label22, "fontStyle",  "bold");
    obj.label22:setFontColor("black");
    obj.label22:setText("=");
    obj.label22:setName("label22");

    obj.gradjogatina = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradjogatina:setParent(obj.layout7);
    obj.gradjogatina:setLeft(235);
    obj.gradjogatina:setTop(0);
    obj.gradjogatina:setWidth(40);
    obj.gradjogatina:setHeight(25);
    obj.gradjogatina:setName("gradjogatina");
    obj.gradjogatina:setField("gradjogatina");
    obj.gradjogatina:setType("number");
    obj.gradjogatina:setMin(-999);
    obj.gradjogatina:setMax(999);
    obj.gradjogatina:setHorzTextAlign("center");
    obj.gradjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.gradjogatina, "fontStyle",  "bold");
    obj.gradjogatina:setHitTest(false);

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout7);
    obj.rectangle25:setLeft(280);
    obj.rectangle25:setTop(5);
    obj.rectangle25:setColor("Gainsboro");
    obj.rectangle25:setWidth(20);
    obj.rectangle25:setHeight(15);
    obj.rectangle25:setXradius(2);
    obj.rectangle25:setYradius(2);
    obj.rectangle25:setName("rectangle25");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout7);
    obj.label23:setLeft(283);
    obj.label23:setTop(3);
    obj.label23:setWidth(20);
    obj.label23:setHeight(15);
    obj.label23:setFontSize(20);
    lfm_setPropAsString(obj.label23, "fontStyle",  "bold");
    obj.label23:setFontColor("black");
    obj.label23:setText("+");
    obj.label23:setName("label23");

    obj.modjogatina = GUI.fromHandle(_obj_newObject("edit"));
    obj.modjogatina:setParent(obj.layout7);
    obj.modjogatina:setLeft(305);
    obj.modjogatina:setTop(0);
    obj.modjogatina:setWidth(40);
    obj.modjogatina:setHeight(25);
    obj.modjogatina:setName("modjogatina");
    obj.modjogatina:setField("modjogatina");
    obj.modjogatina:setType("number");
    obj.modjogatina:setMin(-999);
    obj.modjogatina:setMax(999);
    obj.modjogatina:setHorzTextAlign("center");
    obj.modjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.modjogatina, "fontStyle",  "bold");
    obj.modjogatina:setHitTest(false);

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout7);
    obj.rectangle26:setLeft(350);
    obj.rectangle26:setTop(5);
    obj.rectangle26:setColor("Gainsboro");
    obj.rectangle26:setWidth(20);
    obj.rectangle26:setHeight(15);
    obj.rectangle26:setXradius(2);
    obj.rectangle26:setYradius(2);
    obj.rectangle26:setName("rectangle26");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout7);
    obj.label24:setLeft(353);
    obj.label24:setTop(3);
    obj.label24:setWidth(20);
    obj.label24:setHeight(15);
    obj.label24:setFontSize(20);
    lfm_setPropAsString(obj.label24, "fontStyle",  "bold");
    obj.label24:setFontColor("black");
    obj.label24:setText("+");
    obj.label24:setName("label24");

    obj.outrosjogatina = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosjogatina:setParent(obj.layout7);
    obj.outrosjogatina:setLeft(375);
    obj.outrosjogatina:setTop(0);
    obj.outrosjogatina:setWidth(40);
    obj.outrosjogatina:setHeight(25);
    obj.outrosjogatina:setName("outrosjogatina");
    obj.outrosjogatina:setField("outrosjogatina");
    obj.outrosjogatina:setType("number");
    obj.outrosjogatina:setMin(-999);
    obj.outrosjogatina:setMax(999);
    obj.outrosjogatina:setHorzTextAlign("center");
    obj.outrosjogatina:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosjogatina, "fontStyle",  "bold");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout2);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(155);
    obj.layout8:setWidth(420);
    obj.layout8:setHeight(32);
    obj.layout8:setName("layout8");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout8);
    obj.rectangle27:setLeft(5);
    obj.rectangle27:setTop(0);
    obj.rectangle27:setColor("Gainsboro");
    obj.rectangle27:setWidth(155);
    obj.rectangle27:setHeight(25);
    obj.rectangle27:setXradius(2);
    obj.rectangle27:setYradius(2);
    obj.rectangle27:setName("rectangle27");

    obj.cbxcavalgar = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxcavalgar:setParent(obj.layout8);
    obj.cbxcavalgar:setLeft(7);
    obj.cbxcavalgar:setTop(3);
    obj.cbxcavalgar:setWidth(20);
    obj.cbxcavalgar:setHeight(20);
    obj.cbxcavalgar:setName("cbxcavalgar");
    obj.cbxcavalgar:setField("cbxcavalgar");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout8);
    obj.label25:setLeft(28);
    obj.label25:setTop(2);
    obj.label25:setWidth(150);
    obj.label25:setHeight(20);
    obj.label25:setText("Cavalgar");
    obj.label25:setHorzTextAlign("leading");
    obj.label25:setFontSize(15.0);
    lfm_setPropAsString(obj.label25, "fontStyle",  "bold");
    obj.label25:setFontColor("black");
    obj.label25:setName("label25");

    obj.totalcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcavalgar:setParent(obj.layout8);
    obj.totalcavalgar:setLeft(165);
    obj.totalcavalgar:setTop(0);
    obj.totalcavalgar:setWidth(40);
    obj.totalcavalgar:setHeight(25);
    obj.totalcavalgar:setName("totalcavalgar");
    obj.totalcavalgar:setField("totalcavalgar");
    obj.totalcavalgar:setType("number");
    obj.totalcavalgar:setMin(-999);
    obj.totalcavalgar:setMax(999);
    obj.totalcavalgar:setHorzTextAlign("center");
    obj.totalcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcavalgar, "fontStyle",  "bold");
    obj.totalcavalgar:setHitTest(false);

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout8);
    obj.rectangle28:setLeft(210);
    obj.rectangle28:setTop(5);
    obj.rectangle28:setColor("Gainsboro");
    obj.rectangle28:setWidth(20);
    obj.rectangle28:setHeight(15);
    obj.rectangle28:setXradius(2);
    obj.rectangle28:setYradius(2);
    obj.rectangle28:setName("rectangle28");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout8);
    obj.label26:setLeft(213);
    obj.label26:setTop(3);
    obj.label26:setWidth(20);
    obj.label26:setHeight(15);
    obj.label26:setFontSize(20);
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontColor("black");
    obj.label26:setText("=");
    obj.label26:setName("label26");

    obj.gradcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradcavalgar:setParent(obj.layout8);
    obj.gradcavalgar:setLeft(235);
    obj.gradcavalgar:setTop(0);
    obj.gradcavalgar:setWidth(40);
    obj.gradcavalgar:setHeight(25);
    obj.gradcavalgar:setName("gradcavalgar");
    obj.gradcavalgar:setField("gradcavalgar");
    obj.gradcavalgar:setType("number");
    obj.gradcavalgar:setMin(-999);
    obj.gradcavalgar:setMax(999);
    obj.gradcavalgar:setHorzTextAlign("center");
    obj.gradcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.gradcavalgar, "fontStyle",  "bold");
    obj.gradcavalgar:setHitTest(false);

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout8);
    obj.rectangle29:setLeft(280);
    obj.rectangle29:setTop(5);
    obj.rectangle29:setColor("Gainsboro");
    obj.rectangle29:setWidth(20);
    obj.rectangle29:setHeight(15);
    obj.rectangle29:setXradius(2);
    obj.rectangle29:setYradius(2);
    obj.rectangle29:setName("rectangle29");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout8);
    obj.label27:setLeft(283);
    obj.label27:setTop(3);
    obj.label27:setWidth(20);
    obj.label27:setHeight(15);
    obj.label27:setFontSize(20);
    lfm_setPropAsString(obj.label27, "fontStyle",  "bold");
    obj.label27:setFontColor("black");
    obj.label27:setText("+");
    obj.label27:setName("label27");

    obj.modcavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.modcavalgar:setParent(obj.layout8);
    obj.modcavalgar:setLeft(305);
    obj.modcavalgar:setTop(0);
    obj.modcavalgar:setWidth(40);
    obj.modcavalgar:setHeight(25);
    obj.modcavalgar:setName("modcavalgar");
    obj.modcavalgar:setField("modcavalgar");
    obj.modcavalgar:setType("number");
    obj.modcavalgar:setMin(-999);
    obj.modcavalgar:setMax(999);
    obj.modcavalgar:setHorzTextAlign("center");
    obj.modcavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.modcavalgar, "fontStyle",  "bold");
    obj.modcavalgar:setHitTest(false);

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout8);
    obj.rectangle30:setLeft(350);
    obj.rectangle30:setTop(5);
    obj.rectangle30:setColor("Gainsboro");
    obj.rectangle30:setWidth(20);
    obj.rectangle30:setHeight(15);
    obj.rectangle30:setXradius(2);
    obj.rectangle30:setYradius(2);
    obj.rectangle30:setName("rectangle30");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout8);
    obj.label28:setLeft(353);
    obj.label28:setTop(3);
    obj.label28:setWidth(20);
    obj.label28:setHeight(15);
    obj.label28:setFontSize(20);
    lfm_setPropAsString(obj.label28, "fontStyle",  "bold");
    obj.label28:setFontColor("black");
    obj.label28:setText("+");
    obj.label28:setName("label28");

    obj.outroscavalgar = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroscavalgar:setParent(obj.layout8);
    obj.outroscavalgar:setLeft(375);
    obj.outroscavalgar:setTop(0);
    obj.outroscavalgar:setWidth(40);
    obj.outroscavalgar:setHeight(25);
    obj.outroscavalgar:setName("outroscavalgar");
    obj.outroscavalgar:setField("outroscavalgar");
    obj.outroscavalgar:setType("number");
    obj.outroscavalgar:setMin(-999);
    obj.outroscavalgar:setMax(999);
    obj.outroscavalgar:setHorzTextAlign("center");
    obj.outroscavalgar:setFontSize(15.0);
    lfm_setPropAsString(obj.outroscavalgar, "fontStyle",  "bold");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout2);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(185);
    obj.layout9:setWidth(420);
    obj.layout9:setHeight(32);
    obj.layout9:setName("layout9");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout9);
    obj.rectangle31:setLeft(5);
    obj.rectangle31:setTop(0);
    obj.rectangle31:setColor("Gainsboro");
    obj.rectangle31:setWidth(155);
    obj.rectangle31:setHeight(25);
    obj.rectangle31:setXradius(2);
    obj.rectangle31:setYradius(2);
    obj.rectangle31:setName("rectangle31");

    obj.cbxconhecimento1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxconhecimento1:setParent(obj.layout9);
    obj.cbxconhecimento1:setLeft(7);
    obj.cbxconhecimento1:setTop(3);
    obj.cbxconhecimento1:setWidth(20);
    obj.cbxconhecimento1:setHeight(20);
    obj.cbxconhecimento1:setName("cbxconhecimento1");
    obj.cbxconhecimento1:setField("cbxconhecimento1");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout9);
    obj.label29:setLeft(28);
    obj.label29:setTop(2);
    obj.label29:setWidth(150);
    obj.label29:setHeight(20);
    obj.label29:setText("Conhecimento");
    obj.label29:setHorzTextAlign("leading");
    obj.label29:setFontSize(15.0);
    lfm_setPropAsString(obj.label29, "fontStyle",  "bold");
    obj.label29:setFontColor("black");
    obj.label29:setName("label29");

    obj.totalconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento1:setParent(obj.layout9);
    obj.totalconhecimento1:setLeft(165);
    obj.totalconhecimento1:setTop(0);
    obj.totalconhecimento1:setWidth(40);
    obj.totalconhecimento1:setHeight(25);
    obj.totalconhecimento1:setName("totalconhecimento1");
    obj.totalconhecimento1:setField("totalconhecimento1");
    obj.totalconhecimento1:setType("number");
    obj.totalconhecimento1:setMin(-999);
    obj.totalconhecimento1:setMax(999);
    obj.totalconhecimento1:setHorzTextAlign("center");
    obj.totalconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento1, "fontStyle",  "bold");
    obj.totalconhecimento1:setHitTest(false);

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout9);
    obj.rectangle32:setLeft(210);
    obj.rectangle32:setTop(5);
    obj.rectangle32:setColor("Gainsboro");
    obj.rectangle32:setWidth(20);
    obj.rectangle32:setHeight(15);
    obj.rectangle32:setXradius(2);
    obj.rectangle32:setYradius(2);
    obj.rectangle32:setName("rectangle32");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout9);
    obj.label30:setLeft(213);
    obj.label30:setTop(3);
    obj.label30:setWidth(20);
    obj.label30:setHeight(15);
    obj.label30:setFontSize(20);
    lfm_setPropAsString(obj.label30, "fontStyle",  "bold");
    obj.label30:setFontColor("black");
    obj.label30:setText("=");
    obj.label30:setName("label30");

    obj.gradconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento1:setParent(obj.layout9);
    obj.gradconhecimento1:setLeft(235);
    obj.gradconhecimento1:setTop(0);
    obj.gradconhecimento1:setWidth(40);
    obj.gradconhecimento1:setHeight(25);
    obj.gradconhecimento1:setName("gradconhecimento1");
    obj.gradconhecimento1:setField("gradconhecimento1");
    obj.gradconhecimento1:setType("number");
    obj.gradconhecimento1:setMin(-999);
    obj.gradconhecimento1:setMax(999);
    obj.gradconhecimento1:setHorzTextAlign("center");
    obj.gradconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento1, "fontStyle",  "bold");
    obj.gradconhecimento1:setHitTest(false);

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout9);
    obj.rectangle33:setLeft(280);
    obj.rectangle33:setTop(5);
    obj.rectangle33:setColor("Gainsboro");
    obj.rectangle33:setWidth(20);
    obj.rectangle33:setHeight(15);
    obj.rectangle33:setXradius(2);
    obj.rectangle33:setYradius(2);
    obj.rectangle33:setName("rectangle33");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout9);
    obj.label31:setLeft(283);
    obj.label31:setTop(3);
    obj.label31:setWidth(20);
    obj.label31:setHeight(15);
    obj.label31:setFontSize(20);
    lfm_setPropAsString(obj.label31, "fontStyle",  "bold");
    obj.label31:setFontColor("black");
    obj.label31:setText("+");
    obj.label31:setName("label31");

    obj.modconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento1:setParent(obj.layout9);
    obj.modconhecimento1:setLeft(305);
    obj.modconhecimento1:setTop(0);
    obj.modconhecimento1:setWidth(40);
    obj.modconhecimento1:setHeight(25);
    obj.modconhecimento1:setName("modconhecimento1");
    obj.modconhecimento1:setField("modconhecimento1");
    obj.modconhecimento1:setType("number");
    obj.modconhecimento1:setMin(-999);
    obj.modconhecimento1:setMax(999);
    obj.modconhecimento1:setHorzTextAlign("center");
    obj.modconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento1, "fontStyle",  "bold");
    obj.modconhecimento1:setHitTest(false);

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout9);
    obj.rectangle34:setLeft(350);
    obj.rectangle34:setTop(5);
    obj.rectangle34:setColor("Gainsboro");
    obj.rectangle34:setWidth(20);
    obj.rectangle34:setHeight(15);
    obj.rectangle34:setXradius(2);
    obj.rectangle34:setYradius(2);
    obj.rectangle34:setName("rectangle34");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout9);
    obj.label32:setLeft(353);
    obj.label32:setTop(3);
    obj.label32:setWidth(20);
    obj.label32:setHeight(15);
    obj.label32:setFontSize(20);
    lfm_setPropAsString(obj.label32, "fontStyle",  "bold");
    obj.label32:setFontColor("black");
    obj.label32:setText("+");
    obj.label32:setName("label32");

    obj.outrosconhecimento1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento1:setParent(obj.layout9);
    obj.outrosconhecimento1:setLeft(375);
    obj.outrosconhecimento1:setTop(0);
    obj.outrosconhecimento1:setWidth(40);
    obj.outrosconhecimento1:setHeight(25);
    obj.outrosconhecimento1:setName("outrosconhecimento1");
    obj.outrosconhecimento1:setField("outrosconhecimento1");
    obj.outrosconhecimento1:setType("number");
    obj.outrosconhecimento1:setMin(-999);
    obj.outrosconhecimento1:setMax(999);
    obj.outrosconhecimento1:setHorzTextAlign("center");
    obj.outrosconhecimento1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento1, "fontStyle",  "bold");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout2);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(215);
    obj.layout10:setWidth(420);
    obj.layout10:setHeight(32);
    obj.layout10:setName("layout10");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout10);
    obj.rectangle35:setLeft(5);
    obj.rectangle35:setTop(0);
    obj.rectangle35:setColor("Gainsboro");
    obj.rectangle35:setWidth(155);
    obj.rectangle35:setHeight(25);
    obj.rectangle35:setXradius(2);
    obj.rectangle35:setYradius(2);
    obj.rectangle35:setName("rectangle35");

    obj.cbxconhecimento2 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxconhecimento2:setParent(obj.layout10);
    obj.cbxconhecimento2:setLeft(7);
    obj.cbxconhecimento2:setTop(3);
    obj.cbxconhecimento2:setWidth(20);
    obj.cbxconhecimento2:setHeight(20);
    obj.cbxconhecimento2:setName("cbxconhecimento2");
    obj.cbxconhecimento2:setField("cbxconhecimento2");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout10);
    obj.label33:setLeft(28);
    obj.label33:setTop(2);
    obj.label33:setWidth(150);
    obj.label33:setHeight(20);
    obj.label33:setText("Conhecimento");
    obj.label33:setHorzTextAlign("leading");
    obj.label33:setFontSize(15.0);
    lfm_setPropAsString(obj.label33, "fontStyle",  "bold");
    obj.label33:setFontColor("black");
    obj.label33:setName("label33");

    obj.totalconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalconhecimento2:setParent(obj.layout10);
    obj.totalconhecimento2:setLeft(165);
    obj.totalconhecimento2:setTop(0);
    obj.totalconhecimento2:setWidth(40);
    obj.totalconhecimento2:setHeight(25);
    obj.totalconhecimento2:setName("totalconhecimento2");
    obj.totalconhecimento2:setField("totalconhecimento2");
    obj.totalconhecimento2:setType("number");
    obj.totalconhecimento2:setMin(-999);
    obj.totalconhecimento2:setMax(999);
    obj.totalconhecimento2:setHorzTextAlign("center");
    obj.totalconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.totalconhecimento2, "fontStyle",  "bold");
    obj.totalconhecimento2:setHitTest(false);

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout10);
    obj.rectangle36:setLeft(210);
    obj.rectangle36:setTop(5);
    obj.rectangle36:setColor("Gainsboro");
    obj.rectangle36:setWidth(20);
    obj.rectangle36:setHeight(15);
    obj.rectangle36:setXradius(2);
    obj.rectangle36:setYradius(2);
    obj.rectangle36:setName("rectangle36");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout10);
    obj.label34:setLeft(213);
    obj.label34:setTop(3);
    obj.label34:setWidth(20);
    obj.label34:setHeight(15);
    obj.label34:setFontSize(20);
    lfm_setPropAsString(obj.label34, "fontStyle",  "bold");
    obj.label34:setFontColor("black");
    obj.label34:setText("=");
    obj.label34:setName("label34");

    obj.gradconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradconhecimento2:setParent(obj.layout10);
    obj.gradconhecimento2:setLeft(235);
    obj.gradconhecimento2:setTop(0);
    obj.gradconhecimento2:setWidth(40);
    obj.gradconhecimento2:setHeight(25);
    obj.gradconhecimento2:setName("gradconhecimento2");
    obj.gradconhecimento2:setField("gradconhecimento2");
    obj.gradconhecimento2:setType("number");
    obj.gradconhecimento2:setMin(-999);
    obj.gradconhecimento2:setMax(999);
    obj.gradconhecimento2:setHorzTextAlign("center");
    obj.gradconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.gradconhecimento2, "fontStyle",  "bold");
    obj.gradconhecimento2:setHitTest(false);

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout10);
    obj.rectangle37:setLeft(280);
    obj.rectangle37:setTop(5);
    obj.rectangle37:setColor("Gainsboro");
    obj.rectangle37:setWidth(20);
    obj.rectangle37:setHeight(15);
    obj.rectangle37:setXradius(2);
    obj.rectangle37:setYradius(2);
    obj.rectangle37:setName("rectangle37");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout10);
    obj.label35:setLeft(283);
    obj.label35:setTop(3);
    obj.label35:setWidth(20);
    obj.label35:setHeight(15);
    obj.label35:setFontSize(20);
    lfm_setPropAsString(obj.label35, "fontStyle",  "bold");
    obj.label35:setFontColor("black");
    obj.label35:setText("+");
    obj.label35:setName("label35");

    obj.modconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modconhecimento2:setParent(obj.layout10);
    obj.modconhecimento2:setLeft(305);
    obj.modconhecimento2:setTop(0);
    obj.modconhecimento2:setWidth(40);
    obj.modconhecimento2:setHeight(25);
    obj.modconhecimento2:setName("modconhecimento2");
    obj.modconhecimento2:setField("modconhecimento2");
    obj.modconhecimento2:setType("number");
    obj.modconhecimento2:setMin(-999);
    obj.modconhecimento2:setMax(999);
    obj.modconhecimento2:setHorzTextAlign("center");
    obj.modconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.modconhecimento2, "fontStyle",  "bold");
    obj.modconhecimento2:setHitTest(false);

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout10);
    obj.rectangle38:setLeft(350);
    obj.rectangle38:setTop(5);
    obj.rectangle38:setColor("Gainsboro");
    obj.rectangle38:setWidth(20);
    obj.rectangle38:setHeight(15);
    obj.rectangle38:setXradius(2);
    obj.rectangle38:setYradius(2);
    obj.rectangle38:setName("rectangle38");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout10);
    obj.label36:setLeft(353);
    obj.label36:setTop(3);
    obj.label36:setWidth(20);
    obj.label36:setHeight(15);
    obj.label36:setFontSize(20);
    lfm_setPropAsString(obj.label36, "fontStyle",  "bold");
    obj.label36:setFontColor("black");
    obj.label36:setText("+");
    obj.label36:setName("label36");

    obj.outrosconhecimento2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosconhecimento2:setParent(obj.layout10);
    obj.outrosconhecimento2:setLeft(375);
    obj.outrosconhecimento2:setTop(0);
    obj.outrosconhecimento2:setWidth(40);
    obj.outrosconhecimento2:setHeight(25);
    obj.outrosconhecimento2:setName("outrosconhecimento2");
    obj.outrosconhecimento2:setField("outrosconhecimento2");
    obj.outrosconhecimento2:setType("number");
    obj.outrosconhecimento2:setMin(-999);
    obj.outrosconhecimento2:setMax(999);
    obj.outrosconhecimento2:setHorzTextAlign("center");
    obj.outrosconhecimento2:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosconhecimento2, "fontStyle",  "bold");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout2);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(245);
    obj.layout11:setWidth(420);
    obj.layout11:setHeight(32);
    obj.layout11:setName("layout11");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout11);
    obj.rectangle39:setLeft(5);
    obj.rectangle39:setTop(0);
    obj.rectangle39:setColor("Gainsboro");
    obj.rectangle39:setWidth(155);
    obj.rectangle39:setHeight(25);
    obj.rectangle39:setXradius(2);
    obj.rectangle39:setYradius(2);
    obj.rectangle39:setName("rectangle39");

    obj.cbxcura = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxcura:setParent(obj.layout11);
    obj.cbxcura:setLeft(7);
    obj.cbxcura:setTop(3);
    obj.cbxcura:setWidth(20);
    obj.cbxcura:setHeight(20);
    obj.cbxcura:setName("cbxcura");
    obj.cbxcura:setField("cbxcura");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout11);
    obj.label37:setLeft(28);
    obj.label37:setTop(2);
    obj.label37:setWidth(150);
    obj.label37:setHeight(20);
    obj.label37:setText("Cura");
    obj.label37:setHorzTextAlign("leading");
    obj.label37:setFontSize(15.0);
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setFontColor("black");
    obj.label37:setName("label37");

    obj.totalcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalcura:setParent(obj.layout11);
    obj.totalcura:setLeft(165);
    obj.totalcura:setTop(0);
    obj.totalcura:setWidth(40);
    obj.totalcura:setHeight(25);
    obj.totalcura:setName("totalcura");
    obj.totalcura:setField("totalcura");
    obj.totalcura:setType("number");
    obj.totalcura:setMin(-999);
    obj.totalcura:setMax(999);
    obj.totalcura:setHorzTextAlign("center");
    obj.totalcura:setFontSize(15.0);
    lfm_setPropAsString(obj.totalcura, "fontStyle",  "bold");
    obj.totalcura:setHitTest(false);

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout11);
    obj.rectangle40:setLeft(210);
    obj.rectangle40:setTop(5);
    obj.rectangle40:setColor("Gainsboro");
    obj.rectangle40:setWidth(20);
    obj.rectangle40:setHeight(15);
    obj.rectangle40:setXradius(2);
    obj.rectangle40:setYradius(2);
    obj.rectangle40:setName("rectangle40");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout11);
    obj.label38:setLeft(213);
    obj.label38:setTop(3);
    obj.label38:setWidth(20);
    obj.label38:setHeight(15);
    obj.label38:setFontSize(20);
    lfm_setPropAsString(obj.label38, "fontStyle",  "bold");
    obj.label38:setFontColor("black");
    obj.label38:setText("=");
    obj.label38:setName("label38");

    obj.gradcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradcura:setParent(obj.layout11);
    obj.gradcura:setLeft(235);
    obj.gradcura:setTop(0);
    obj.gradcura:setWidth(40);
    obj.gradcura:setHeight(25);
    obj.gradcura:setName("gradcura");
    obj.gradcura:setField("gradcura");
    obj.gradcura:setType("number");
    obj.gradcura:setMin(-999);
    obj.gradcura:setMax(999);
    obj.gradcura:setHorzTextAlign("center");
    obj.gradcura:setFontSize(15.0);
    lfm_setPropAsString(obj.gradcura, "fontStyle",  "bold");
    obj.gradcura:setHitTest(false);

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout11);
    obj.rectangle41:setLeft(280);
    obj.rectangle41:setTop(5);
    obj.rectangle41:setColor("Gainsboro");
    obj.rectangle41:setWidth(20);
    obj.rectangle41:setHeight(15);
    obj.rectangle41:setXradius(2);
    obj.rectangle41:setYradius(2);
    obj.rectangle41:setName("rectangle41");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout11);
    obj.label39:setLeft(283);
    obj.label39:setTop(3);
    obj.label39:setWidth(20);
    obj.label39:setHeight(15);
    obj.label39:setFontSize(20);
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setFontColor("black");
    obj.label39:setText("+");
    obj.label39:setName("label39");

    obj.modcura = GUI.fromHandle(_obj_newObject("edit"));
    obj.modcura:setParent(obj.layout11);
    obj.modcura:setLeft(305);
    obj.modcura:setTop(0);
    obj.modcura:setWidth(40);
    obj.modcura:setHeight(25);
    obj.modcura:setName("modcura");
    obj.modcura:setField("modcura");
    obj.modcura:setType("number");
    obj.modcura:setMin(-999);
    obj.modcura:setMax(999);
    obj.modcura:setHorzTextAlign("center");
    obj.modcura:setFontSize(15.0);
    lfm_setPropAsString(obj.modcura, "fontStyle",  "bold");
    obj.modcura:setHitTest(false);

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout11);
    obj.rectangle42:setLeft(350);
    obj.rectangle42:setTop(5);
    obj.rectangle42:setColor("Gainsboro");
    obj.rectangle42:setWidth(20);
    obj.rectangle42:setHeight(15);
    obj.rectangle42:setXradius(2);
    obj.rectangle42:setYradius(2);
    obj.rectangle42:setName("rectangle42");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout11);
    obj.label40:setLeft(353);
    obj.label40:setTop(3);
    obj.label40:setWidth(20);
    obj.label40:setHeight(15);
    obj.label40:setFontSize(20);
    lfm_setPropAsString(obj.label40, "fontStyle",  "bold");
    obj.label40:setFontColor("black");
    obj.label40:setText("+");
    obj.label40:setName("label40");

    obj.outroscura = GUI.fromHandle(_obj_newObject("edit"));
    obj.outroscura:setParent(obj.layout11);
    obj.outroscura:setLeft(375);
    obj.outroscura:setTop(0);
    obj.outroscura:setWidth(40);
    obj.outroscura:setHeight(25);
    obj.outroscura:setName("outroscura");
    obj.outroscura:setField("outroscura");
    obj.outroscura:setType("number");
    obj.outroscura:setMin(-999);
    obj.outroscura:setMax(999);
    obj.outroscura:setHorzTextAlign("center");
    obj.outroscura:setFontSize(15.0);
    lfm_setPropAsString(obj.outroscura, "fontStyle",  "bold");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout2);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(275);
    obj.layout12:setWidth(420);
    obj.layout12:setHeight(32);
    obj.layout12:setName("layout12");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout12);
    obj.rectangle43:setLeft(5);
    obj.rectangle43:setTop(0);
    obj.rectangle43:setColor("Gainsboro");
    obj.rectangle43:setWidth(155);
    obj.rectangle43:setHeight(25);
    obj.rectangle43:setXradius(2);
    obj.rectangle43:setYradius(2);
    obj.rectangle43:setName("rectangle43");

    obj.cbxdiplomacia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxdiplomacia:setParent(obj.layout12);
    obj.cbxdiplomacia:setLeft(7);
    obj.cbxdiplomacia:setTop(3);
    obj.cbxdiplomacia:setWidth(20);
    obj.cbxdiplomacia:setHeight(20);
    obj.cbxdiplomacia:setName("cbxdiplomacia");
    obj.cbxdiplomacia:setField("cbxdiplomacia");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout12);
    obj.label41:setLeft(28);
    obj.label41:setTop(2);
    obj.label41:setWidth(150);
    obj.label41:setHeight(20);
    obj.label41:setText("Diplomacia");
    obj.label41:setHorzTextAlign("leading");
    obj.label41:setFontSize(15.0);
    lfm_setPropAsString(obj.label41, "fontStyle",  "bold");
    obj.label41:setFontColor("black");
    obj.label41:setName("label41");

    obj.totaldiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaldiplomacia:setParent(obj.layout12);
    obj.totaldiplomacia:setLeft(165);
    obj.totaldiplomacia:setTop(0);
    obj.totaldiplomacia:setWidth(40);
    obj.totaldiplomacia:setHeight(25);
    obj.totaldiplomacia:setName("totaldiplomacia");
    obj.totaldiplomacia:setField("totaldiplomacia");
    obj.totaldiplomacia:setType("number");
    obj.totaldiplomacia:setMin(-999);
    obj.totaldiplomacia:setMax(999);
    obj.totaldiplomacia:setHorzTextAlign("center");
    obj.totaldiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.totaldiplomacia, "fontStyle",  "bold");
    obj.totaldiplomacia:setHitTest(false);

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout12);
    obj.rectangle44:setLeft(210);
    obj.rectangle44:setTop(5);
    obj.rectangle44:setColor("Gainsboro");
    obj.rectangle44:setWidth(20);
    obj.rectangle44:setHeight(15);
    obj.rectangle44:setXradius(2);
    obj.rectangle44:setYradius(2);
    obj.rectangle44:setName("rectangle44");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout12);
    obj.label42:setLeft(213);
    obj.label42:setTop(3);
    obj.label42:setWidth(20);
    obj.label42:setHeight(15);
    obj.label42:setFontSize(20);
    lfm_setPropAsString(obj.label42, "fontStyle",  "bold");
    obj.label42:setFontColor("black");
    obj.label42:setText("=");
    obj.label42:setName("label42");

    obj.graddiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.graddiplomacia:setParent(obj.layout12);
    obj.graddiplomacia:setLeft(235);
    obj.graddiplomacia:setTop(0);
    obj.graddiplomacia:setWidth(40);
    obj.graddiplomacia:setHeight(25);
    obj.graddiplomacia:setName("graddiplomacia");
    obj.graddiplomacia:setField("graddiplomacia");
    obj.graddiplomacia:setType("number");
    obj.graddiplomacia:setMin(-999);
    obj.graddiplomacia:setMax(999);
    obj.graddiplomacia:setHorzTextAlign("center");
    obj.graddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.graddiplomacia, "fontStyle",  "bold");
    obj.graddiplomacia:setHitTest(false);

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout12);
    obj.rectangle45:setLeft(280);
    obj.rectangle45:setTop(5);
    obj.rectangle45:setColor("Gainsboro");
    obj.rectangle45:setWidth(20);
    obj.rectangle45:setHeight(15);
    obj.rectangle45:setXradius(2);
    obj.rectangle45:setYradius(2);
    obj.rectangle45:setName("rectangle45");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout12);
    obj.label43:setLeft(283);
    obj.label43:setTop(3);
    obj.label43:setWidth(20);
    obj.label43:setHeight(15);
    obj.label43:setFontSize(20);
    lfm_setPropAsString(obj.label43, "fontStyle",  "bold");
    obj.label43:setFontColor("black");
    obj.label43:setText("+");
    obj.label43:setName("label43");

    obj.moddiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.moddiplomacia:setParent(obj.layout12);
    obj.moddiplomacia:setLeft(305);
    obj.moddiplomacia:setTop(0);
    obj.moddiplomacia:setWidth(40);
    obj.moddiplomacia:setHeight(25);
    obj.moddiplomacia:setName("moddiplomacia");
    obj.moddiplomacia:setField("moddiplomacia");
    obj.moddiplomacia:setType("number");
    obj.moddiplomacia:setMin(-999);
    obj.moddiplomacia:setMax(999);
    obj.moddiplomacia:setHorzTextAlign("center");
    obj.moddiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.moddiplomacia, "fontStyle",  "bold");
    obj.moddiplomacia:setHitTest(false);

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout12);
    obj.rectangle46:setLeft(350);
    obj.rectangle46:setTop(5);
    obj.rectangle46:setColor("Gainsboro");
    obj.rectangle46:setWidth(20);
    obj.rectangle46:setHeight(15);
    obj.rectangle46:setXradius(2);
    obj.rectangle46:setYradius(2);
    obj.rectangle46:setName("rectangle46");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout12);
    obj.label44:setLeft(353);
    obj.label44:setTop(3);
    obj.label44:setWidth(20);
    obj.label44:setHeight(15);
    obj.label44:setFontSize(20);
    lfm_setPropAsString(obj.label44, "fontStyle",  "bold");
    obj.label44:setFontColor("black");
    obj.label44:setText("+");
    obj.label44:setName("label44");

    obj.outrosdiplomacia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosdiplomacia:setParent(obj.layout12);
    obj.outrosdiplomacia:setLeft(375);
    obj.outrosdiplomacia:setTop(0);
    obj.outrosdiplomacia:setWidth(40);
    obj.outrosdiplomacia:setHeight(25);
    obj.outrosdiplomacia:setName("outrosdiplomacia");
    obj.outrosdiplomacia:setField("outrosdiplomacia");
    obj.outrosdiplomacia:setType("number");
    obj.outrosdiplomacia:setMin(-999);
    obj.outrosdiplomacia:setMax(999);
    obj.outrosdiplomacia:setHorzTextAlign("center");
    obj.outrosdiplomacia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosdiplomacia, "fontStyle",  "bold");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout2);
    obj.layout13:setLeft(0);
    obj.layout13:setTop(305);
    obj.layout13:setWidth(420);
    obj.layout13:setHeight(32);
    obj.layout13:setName("layout13");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout13);
    obj.rectangle47:setLeft(5);
    obj.rectangle47:setTop(0);
    obj.rectangle47:setColor("Gainsboro");
    obj.rectangle47:setWidth(155);
    obj.rectangle47:setHeight(25);
    obj.rectangle47:setXradius(2);
    obj.rectangle47:setYradius(2);
    obj.rectangle47:setName("rectangle47");

    obj.cbxenganacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxenganacao:setParent(obj.layout13);
    obj.cbxenganacao:setLeft(7);
    obj.cbxenganacao:setTop(3);
    obj.cbxenganacao:setWidth(20);
    obj.cbxenganacao:setHeight(20);
    obj.cbxenganacao:setName("cbxenganacao");
    obj.cbxenganacao:setField("cbxenganacao");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout13);
    obj.label45:setLeft(28);
    obj.label45:setTop(2);
    obj.label45:setWidth(150);
    obj.label45:setHeight(20);
    obj.label45:setText("Enganação");
    obj.label45:setHorzTextAlign("leading");
    obj.label45:setFontSize(15.0);
    lfm_setPropAsString(obj.label45, "fontStyle",  "bold");
    obj.label45:setFontColor("black");
    obj.label45:setName("label45");

    obj.totalenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalenganacao:setParent(obj.layout13);
    obj.totalenganacao:setLeft(165);
    obj.totalenganacao:setTop(0);
    obj.totalenganacao:setWidth(40);
    obj.totalenganacao:setHeight(25);
    obj.totalenganacao:setName("totalenganacao");
    obj.totalenganacao:setField("totalenganacao");
    obj.totalenganacao:setType("number");
    obj.totalenganacao:setMin(-999);
    obj.totalenganacao:setMax(999);
    obj.totalenganacao:setHorzTextAlign("center");
    obj.totalenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalenganacao, "fontStyle",  "bold");
    obj.totalenganacao:setHitTest(false);

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.layout13);
    obj.rectangle48:setLeft(210);
    obj.rectangle48:setTop(5);
    obj.rectangle48:setColor("Gainsboro");
    obj.rectangle48:setWidth(20);
    obj.rectangle48:setHeight(15);
    obj.rectangle48:setXradius(2);
    obj.rectangle48:setYradius(2);
    obj.rectangle48:setName("rectangle48");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout13);
    obj.label46:setLeft(213);
    obj.label46:setTop(3);
    obj.label46:setWidth(20);
    obj.label46:setHeight(15);
    obj.label46:setFontSize(20);
    lfm_setPropAsString(obj.label46, "fontStyle",  "bold");
    obj.label46:setFontColor("black");
    obj.label46:setText("=");
    obj.label46:setName("label46");

    obj.gradenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradenganacao:setParent(obj.layout13);
    obj.gradenganacao:setLeft(235);
    obj.gradenganacao:setTop(0);
    obj.gradenganacao:setWidth(40);
    obj.gradenganacao:setHeight(25);
    obj.gradenganacao:setName("gradenganacao");
    obj.gradenganacao:setField("gradenganacao");
    obj.gradenganacao:setType("number");
    obj.gradenganacao:setMin(-999);
    obj.gradenganacao:setMax(999);
    obj.gradenganacao:setHorzTextAlign("center");
    obj.gradenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradenganacao, "fontStyle",  "bold");
    obj.gradenganacao:setHitTest(false);

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout13);
    obj.rectangle49:setLeft(280);
    obj.rectangle49:setTop(5);
    obj.rectangle49:setColor("Gainsboro");
    obj.rectangle49:setWidth(20);
    obj.rectangle49:setHeight(15);
    obj.rectangle49:setXradius(2);
    obj.rectangle49:setYradius(2);
    obj.rectangle49:setName("rectangle49");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout13);
    obj.label47:setLeft(283);
    obj.label47:setTop(3);
    obj.label47:setWidth(20);
    obj.label47:setHeight(15);
    obj.label47:setFontSize(20);
    lfm_setPropAsString(obj.label47, "fontStyle",  "bold");
    obj.label47:setFontColor("black");
    obj.label47:setText("+");
    obj.label47:setName("label47");

    obj.modenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modenganacao:setParent(obj.layout13);
    obj.modenganacao:setLeft(305);
    obj.modenganacao:setTop(0);
    obj.modenganacao:setWidth(40);
    obj.modenganacao:setHeight(25);
    obj.modenganacao:setName("modenganacao");
    obj.modenganacao:setField("modenganacao");
    obj.modenganacao:setType("number");
    obj.modenganacao:setMin(-999);
    obj.modenganacao:setMax(999);
    obj.modenganacao:setHorzTextAlign("center");
    obj.modenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modenganacao, "fontStyle",  "bold");
    obj.modenganacao:setHitTest(false);

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout13);
    obj.rectangle50:setLeft(350);
    obj.rectangle50:setTop(5);
    obj.rectangle50:setColor("Gainsboro");
    obj.rectangle50:setWidth(20);
    obj.rectangle50:setHeight(15);
    obj.rectangle50:setXradius(2);
    obj.rectangle50:setYradius(2);
    obj.rectangle50:setName("rectangle50");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout13);
    obj.label48:setLeft(353);
    obj.label48:setTop(3);
    obj.label48:setWidth(20);
    obj.label48:setHeight(15);
    obj.label48:setFontSize(20);
    lfm_setPropAsString(obj.label48, "fontStyle",  "bold");
    obj.label48:setFontColor("black");
    obj.label48:setText("+");
    obj.label48:setName("label48");

    obj.outrosenganacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosenganacao:setParent(obj.layout13);
    obj.outrosenganacao:setLeft(375);
    obj.outrosenganacao:setTop(0);
    obj.outrosenganacao:setWidth(40);
    obj.outrosenganacao:setHeight(25);
    obj.outrosenganacao:setName("outrosenganacao");
    obj.outrosenganacao:setField("outrosenganacao");
    obj.outrosenganacao:setType("number");
    obj.outrosenganacao:setMin(-999);
    obj.outrosenganacao:setMax(999);
    obj.outrosenganacao:setHorzTextAlign("center");
    obj.outrosenganacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosenganacao, "fontStyle",  "bold");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout2);
    obj.layout14:setLeft(0);
    obj.layout14:setTop(335);
    obj.layout14:setWidth(420);
    obj.layout14:setHeight(32);
    obj.layout14:setName("layout14");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.layout14);
    obj.rectangle51:setLeft(5);
    obj.rectangle51:setTop(0);
    obj.rectangle51:setColor("Gainsboro");
    obj.rectangle51:setWidth(155);
    obj.rectangle51:setHeight(25);
    obj.rectangle51:setXradius(2);
    obj.rectangle51:setYradius(2);
    obj.rectangle51:setName("rectangle51");

    obj.cbxfurtividade = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxfurtividade:setParent(obj.layout14);
    obj.cbxfurtividade:setLeft(7);
    obj.cbxfurtividade:setTop(3);
    obj.cbxfurtividade:setWidth(20);
    obj.cbxfurtividade:setHeight(20);
    obj.cbxfurtividade:setName("cbxfurtividade");
    obj.cbxfurtividade:setField("cbxfurtividade");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout14);
    obj.label49:setLeft(28);
    obj.label49:setTop(2);
    obj.label49:setWidth(150);
    obj.label49:setHeight(20);
    obj.label49:setText("Furtividade");
    obj.label49:setHorzTextAlign("leading");
    obj.label49:setFontSize(15.0);
    lfm_setPropAsString(obj.label49, "fontStyle",  "bold");
    obj.label49:setFontColor("black");
    obj.label49:setName("label49");

    obj.totalfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalfurtividade:setParent(obj.layout14);
    obj.totalfurtividade:setLeft(165);
    obj.totalfurtividade:setTop(0);
    obj.totalfurtividade:setWidth(40);
    obj.totalfurtividade:setHeight(25);
    obj.totalfurtividade:setName("totalfurtividade");
    obj.totalfurtividade:setField("totalfurtividade");
    obj.totalfurtividade:setType("number");
    obj.totalfurtividade:setMin(-999);
    obj.totalfurtividade:setMax(999);
    obj.totalfurtividade:setHorzTextAlign("center");
    obj.totalfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.totalfurtividade, "fontStyle",  "bold");
    obj.totalfurtividade:setHitTest(false);

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout14);
    obj.rectangle52:setLeft(210);
    obj.rectangle52:setTop(5);
    obj.rectangle52:setColor("Gainsboro");
    obj.rectangle52:setWidth(20);
    obj.rectangle52:setHeight(15);
    obj.rectangle52:setXradius(2);
    obj.rectangle52:setYradius(2);
    obj.rectangle52:setName("rectangle52");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout14);
    obj.label50:setLeft(213);
    obj.label50:setTop(3);
    obj.label50:setWidth(20);
    obj.label50:setHeight(15);
    obj.label50:setFontSize(20);
    lfm_setPropAsString(obj.label50, "fontStyle",  "bold");
    obj.label50:setFontColor("black");
    obj.label50:setText("=");
    obj.label50:setName("label50");

    obj.gradfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradfurtividade:setParent(obj.layout14);
    obj.gradfurtividade:setLeft(235);
    obj.gradfurtividade:setTop(0);
    obj.gradfurtividade:setWidth(40);
    obj.gradfurtividade:setHeight(25);
    obj.gradfurtividade:setName("gradfurtividade");
    obj.gradfurtividade:setField("gradfurtividade");
    obj.gradfurtividade:setType("number");
    obj.gradfurtividade:setMin(-999);
    obj.gradfurtividade:setMax(999);
    obj.gradfurtividade:setHorzTextAlign("center");
    obj.gradfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.gradfurtividade, "fontStyle",  "bold");
    obj.gradfurtividade:setHitTest(false);

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout14);
    obj.rectangle53:setLeft(280);
    obj.rectangle53:setTop(5);
    obj.rectangle53:setColor("Gainsboro");
    obj.rectangle53:setWidth(20);
    obj.rectangle53:setHeight(15);
    obj.rectangle53:setXradius(2);
    obj.rectangle53:setYradius(2);
    obj.rectangle53:setName("rectangle53");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout14);
    obj.label51:setLeft(283);
    obj.label51:setTop(3);
    obj.label51:setWidth(20);
    obj.label51:setHeight(15);
    obj.label51:setFontSize(20);
    lfm_setPropAsString(obj.label51, "fontStyle",  "bold");
    obj.label51:setFontColor("black");
    obj.label51:setText("+");
    obj.label51:setName("label51");

    obj.modfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.modfurtividade:setParent(obj.layout14);
    obj.modfurtividade:setLeft(305);
    obj.modfurtividade:setTop(0);
    obj.modfurtividade:setWidth(40);
    obj.modfurtividade:setHeight(25);
    obj.modfurtividade:setName("modfurtividade");
    obj.modfurtividade:setField("modfurtividade");
    obj.modfurtividade:setType("number");
    obj.modfurtividade:setMin(-999);
    obj.modfurtividade:setMax(999);
    obj.modfurtividade:setHorzTextAlign("center");
    obj.modfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.modfurtividade, "fontStyle",  "bold");
    obj.modfurtividade:setHitTest(false);

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.layout14);
    obj.rectangle54:setLeft(350);
    obj.rectangle54:setTop(5);
    obj.rectangle54:setColor("Gainsboro");
    obj.rectangle54:setWidth(20);
    obj.rectangle54:setHeight(15);
    obj.rectangle54:setXradius(2);
    obj.rectangle54:setYradius(2);
    obj.rectangle54:setName("rectangle54");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout14);
    obj.label52:setLeft(353);
    obj.label52:setTop(3);
    obj.label52:setWidth(20);
    obj.label52:setHeight(15);
    obj.label52:setFontSize(20);
    lfm_setPropAsString(obj.label52, "fontStyle",  "bold");
    obj.label52:setFontColor("black");
    obj.label52:setText("+");
    obj.label52:setName("label52");

    obj.outrosfurtividade = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosfurtividade:setParent(obj.layout14);
    obj.outrosfurtividade:setLeft(375);
    obj.outrosfurtividade:setTop(0);
    obj.outrosfurtividade:setWidth(40);
    obj.outrosfurtividade:setHeight(25);
    obj.outrosfurtividade:setName("outrosfurtividade");
    obj.outrosfurtividade:setField("outrosfurtividade");
    obj.outrosfurtividade:setType("number");
    obj.outrosfurtividade:setMin(-999);
    obj.outrosfurtividade:setMax(999);
    obj.outrosfurtividade:setHorzTextAlign("center");
    obj.outrosfurtividade:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosfurtividade, "fontStyle",  "bold");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout2);
    obj.layout15:setLeft(0);
    obj.layout15:setTop(365);
    obj.layout15:setWidth(420);
    obj.layout15:setHeight(32);
    obj.layout15:setName("layout15");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.layout15);
    obj.rectangle55:setLeft(5);
    obj.rectangle55:setTop(0);
    obj.rectangle55:setColor("Gainsboro");
    obj.rectangle55:setWidth(155);
    obj.rectangle55:setHeight(25);
    obj.rectangle55:setXradius(2);
    obj.rectangle55:setYradius(2);
    obj.rectangle55:setName("rectangle55");

    obj.cbximagia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbximagia:setParent(obj.layout15);
    obj.cbximagia:setLeft(7);
    obj.cbximagia:setTop(3);
    obj.cbximagia:setWidth(20);
    obj.cbximagia:setHeight(20);
    obj.cbximagia:setName("cbximagia");
    obj.cbximagia:setField("cbximagia");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout15);
    obj.label53:setLeft(28);
    obj.label53:setTop(2);
    obj.label53:setWidth(150);
    obj.label53:setHeight(20);
    obj.label53:setText("Identificar Magia");
    obj.label53:setHorzTextAlign("leading");
    obj.label53:setFontSize(15.0);
    lfm_setPropAsString(obj.label53, "fontStyle",  "bold");
    obj.label53:setFontColor("black");
    obj.label53:setName("label53");

    obj.totalimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalimagia:setParent(obj.layout15);
    obj.totalimagia:setLeft(165);
    obj.totalimagia:setTop(0);
    obj.totalimagia:setWidth(40);
    obj.totalimagia:setHeight(25);
    obj.totalimagia:setName("totalimagia");
    obj.totalimagia:setField("totalimagia");
    obj.totalimagia:setType("number");
    obj.totalimagia:setMin(-999);
    obj.totalimagia:setMax(999);
    obj.totalimagia:setHorzTextAlign("center");
    obj.totalimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalimagia, "fontStyle",  "bold");
    obj.totalimagia:setHitTest(false);

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.layout15);
    obj.rectangle56:setLeft(210);
    obj.rectangle56:setTop(5);
    obj.rectangle56:setColor("Gainsboro");
    obj.rectangle56:setWidth(20);
    obj.rectangle56:setHeight(15);
    obj.rectangle56:setXradius(2);
    obj.rectangle56:setYradius(2);
    obj.rectangle56:setName("rectangle56");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout15);
    obj.label54:setLeft(213);
    obj.label54:setTop(3);
    obj.label54:setWidth(20);
    obj.label54:setHeight(15);
    obj.label54:setFontSize(20);
    lfm_setPropAsString(obj.label54, "fontStyle",  "bold");
    obj.label54:setFontColor("black");
    obj.label54:setText("=");
    obj.label54:setName("label54");

    obj.gradimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradimagia:setParent(obj.layout15);
    obj.gradimagia:setLeft(235);
    obj.gradimagia:setTop(0);
    obj.gradimagia:setWidth(40);
    obj.gradimagia:setHeight(25);
    obj.gradimagia:setName("gradimagia");
    obj.gradimagia:setField("gradimagia");
    obj.gradimagia:setType("number");
    obj.gradimagia:setMin(-999);
    obj.gradimagia:setMax(999);
    obj.gradimagia:setHorzTextAlign("center");
    obj.gradimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradimagia, "fontStyle",  "bold");
    obj.gradimagia:setHitTest(false);

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.layout15);
    obj.rectangle57:setLeft(280);
    obj.rectangle57:setTop(5);
    obj.rectangle57:setColor("Gainsboro");
    obj.rectangle57:setWidth(20);
    obj.rectangle57:setHeight(15);
    obj.rectangle57:setXradius(2);
    obj.rectangle57:setYradius(2);
    obj.rectangle57:setName("rectangle57");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout15);
    obj.label55:setLeft(283);
    obj.label55:setTop(3);
    obj.label55:setWidth(20);
    obj.label55:setHeight(15);
    obj.label55:setFontSize(20);
    lfm_setPropAsString(obj.label55, "fontStyle",  "bold");
    obj.label55:setFontColor("black");
    obj.label55:setText("+");
    obj.label55:setName("label55");

    obj.modimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modimagia:setParent(obj.layout15);
    obj.modimagia:setLeft(305);
    obj.modimagia:setTop(0);
    obj.modimagia:setWidth(40);
    obj.modimagia:setHeight(25);
    obj.modimagia:setName("modimagia");
    obj.modimagia:setField("modimagia");
    obj.modimagia:setType("number");
    obj.modimagia:setMin(-999);
    obj.modimagia:setMax(999);
    obj.modimagia:setHorzTextAlign("center");
    obj.modimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.modimagia, "fontStyle",  "bold");
    obj.modimagia:setHitTest(false);

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout15);
    obj.rectangle58:setLeft(350);
    obj.rectangle58:setTop(5);
    obj.rectangle58:setColor("Gainsboro");
    obj.rectangle58:setWidth(20);
    obj.rectangle58:setHeight(15);
    obj.rectangle58:setXradius(2);
    obj.rectangle58:setYradius(2);
    obj.rectangle58:setName("rectangle58");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout15);
    obj.label56:setLeft(353);
    obj.label56:setTop(3);
    obj.label56:setWidth(20);
    obj.label56:setHeight(15);
    obj.label56:setFontSize(20);
    lfm_setPropAsString(obj.label56, "fontStyle",  "bold");
    obj.label56:setFontColor("black");
    obj.label56:setText("+");
    obj.label56:setName("label56");

    obj.outrosimagia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosimagia:setParent(obj.layout15);
    obj.outrosimagia:setLeft(375);
    obj.outrosimagia:setTop(0);
    obj.outrosimagia:setWidth(40);
    obj.outrosimagia:setHeight(25);
    obj.outrosimagia:setName("outrosimagia");
    obj.outrosimagia:setField("outrosimagia");
    obj.outrosimagia:setType("number");
    obj.outrosimagia:setMin(-999);
    obj.outrosimagia:setMax(999);
    obj.outrosimagia:setHorzTextAlign("center");
    obj.outrosimagia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosimagia, "fontStyle",  "bold");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout2);
    obj.layout16:setLeft(0);
    obj.layout16:setTop(395);
    obj.layout16:setWidth(420);
    obj.layout16:setHeight(32);
    obj.layout16:setName("layout16");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout16);
    obj.rectangle59:setLeft(5);
    obj.rectangle59:setTop(0);
    obj.rectangle59:setColor("Gainsboro");
    obj.rectangle59:setWidth(155);
    obj.rectangle59:setHeight(25);
    obj.rectangle59:setXradius(2);
    obj.rectangle59:setYradius(2);
    obj.rectangle59:setName("rectangle59");

    obj.cbxiniciativa = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxiniciativa:setParent(obj.layout16);
    obj.cbxiniciativa:setLeft(7);
    obj.cbxiniciativa:setTop(3);
    obj.cbxiniciativa:setWidth(20);
    obj.cbxiniciativa:setHeight(20);
    obj.cbxiniciativa:setName("cbxiniciativa");
    obj.cbxiniciativa:setField("cbxiniciativa");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout16);
    obj.label57:setLeft(28);
    obj.label57:setTop(2);
    obj.label57:setWidth(150);
    obj.label57:setHeight(20);
    obj.label57:setText("Iniciativa");
    obj.label57:setHorzTextAlign("leading");
    obj.label57:setFontSize(15.0);
    lfm_setPropAsString(obj.label57, "fontStyle",  "bold");
    obj.label57:setFontColor("black");
    obj.label57:setName("label57");

    obj.totaliniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaliniciativa:setParent(obj.layout16);
    obj.totaliniciativa:setLeft(165);
    obj.totaliniciativa:setTop(0);
    obj.totaliniciativa:setWidth(40);
    obj.totaliniciativa:setHeight(25);
    obj.totaliniciativa:setName("totaliniciativa");
    obj.totaliniciativa:setField("totaliniciativa");
    obj.totaliniciativa:setType("number");
    obj.totaliniciativa:setMin(-999);
    obj.totaliniciativa:setMax(999);
    obj.totaliniciativa:setHorzTextAlign("center");
    obj.totaliniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.totaliniciativa, "fontStyle",  "bold");
    obj.totaliniciativa:setHitTest(false);

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout16);
    obj.rectangle60:setLeft(210);
    obj.rectangle60:setTop(5);
    obj.rectangle60:setColor("Gainsboro");
    obj.rectangle60:setWidth(20);
    obj.rectangle60:setHeight(15);
    obj.rectangle60:setXradius(2);
    obj.rectangle60:setYradius(2);
    obj.rectangle60:setName("rectangle60");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout16);
    obj.label58:setLeft(213);
    obj.label58:setTop(3);
    obj.label58:setWidth(20);
    obj.label58:setHeight(15);
    obj.label58:setFontSize(20);
    lfm_setPropAsString(obj.label58, "fontStyle",  "bold");
    obj.label58:setFontColor("black");
    obj.label58:setText("=");
    obj.label58:setName("label58");

    obj.gradiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradiniciativa:setParent(obj.layout16);
    obj.gradiniciativa:setLeft(235);
    obj.gradiniciativa:setTop(0);
    obj.gradiniciativa:setWidth(40);
    obj.gradiniciativa:setHeight(25);
    obj.gradiniciativa:setName("gradiniciativa");
    obj.gradiniciativa:setField("gradiniciativa");
    obj.gradiniciativa:setType("number");
    obj.gradiniciativa:setMin(-999);
    obj.gradiniciativa:setMax(999);
    obj.gradiniciativa:setHorzTextAlign("center");
    obj.gradiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.gradiniciativa, "fontStyle",  "bold");
    obj.gradiniciativa:setHitTest(false);

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout16);
    obj.rectangle61:setLeft(280);
    obj.rectangle61:setTop(5);
    obj.rectangle61:setColor("Gainsboro");
    obj.rectangle61:setWidth(20);
    obj.rectangle61:setHeight(15);
    obj.rectangle61:setXradius(2);
    obj.rectangle61:setYradius(2);
    obj.rectangle61:setName("rectangle61");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout16);
    obj.label59:setLeft(283);
    obj.label59:setTop(3);
    obj.label59:setWidth(20);
    obj.label59:setHeight(15);
    obj.label59:setFontSize(20);
    lfm_setPropAsString(obj.label59, "fontStyle",  "bold");
    obj.label59:setFontColor("black");
    obj.label59:setText("+");
    obj.label59:setName("label59");

    obj.modiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.modiniciativa:setParent(obj.layout16);
    obj.modiniciativa:setLeft(305);
    obj.modiniciativa:setTop(0);
    obj.modiniciativa:setWidth(40);
    obj.modiniciativa:setHeight(25);
    obj.modiniciativa:setName("modiniciativa");
    obj.modiniciativa:setField("modiniciativa");
    obj.modiniciativa:setType("number");
    obj.modiniciativa:setMin(-999);
    obj.modiniciativa:setMax(999);
    obj.modiniciativa:setHorzTextAlign("center");
    obj.modiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.modiniciativa, "fontStyle",  "bold");
    obj.modiniciativa:setHitTest(false);

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout16);
    obj.rectangle62:setLeft(350);
    obj.rectangle62:setTop(5);
    obj.rectangle62:setColor("Gainsboro");
    obj.rectangle62:setWidth(20);
    obj.rectangle62:setHeight(15);
    obj.rectangle62:setXradius(2);
    obj.rectangle62:setYradius(2);
    obj.rectangle62:setName("rectangle62");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout16);
    obj.label60:setLeft(353);
    obj.label60:setTop(3);
    obj.label60:setWidth(20);
    obj.label60:setHeight(15);
    obj.label60:setFontSize(20);
    lfm_setPropAsString(obj.label60, "fontStyle",  "bold");
    obj.label60:setFontColor("black");
    obj.label60:setText("+");
    obj.label60:setName("label60");

    obj.outrosiniciativa = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosiniciativa:setParent(obj.layout16);
    obj.outrosiniciativa:setLeft(375);
    obj.outrosiniciativa:setTop(0);
    obj.outrosiniciativa:setWidth(40);
    obj.outrosiniciativa:setHeight(25);
    obj.outrosiniciativa:setName("outrosiniciativa");
    obj.outrosiniciativa:setField("outrosiniciativa");
    obj.outrosiniciativa:setType("number");
    obj.outrosiniciativa:setMin(-999);
    obj.outrosiniciativa:setMax(999);
    obj.outrosiniciativa:setHorzTextAlign("center");
    obj.outrosiniciativa:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosiniciativa, "fontStyle",  "bold");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout2);
    obj.layout17:setLeft(0);
    obj.layout17:setTop(425);
    obj.layout17:setWidth(420);
    obj.layout17:setHeight(32);
    obj.layout17:setName("layout17");

    obj.rectangle63 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle63:setParent(obj.layout17);
    obj.rectangle63:setLeft(5);
    obj.rectangle63:setTop(0);
    obj.rectangle63:setColor("Gainsboro");
    obj.rectangle63:setWidth(155);
    obj.rectangle63:setHeight(25);
    obj.rectangle63:setXradius(2);
    obj.rectangle63:setYradius(2);
    obj.rectangle63:setName("rectangle63");

    obj.cbxintimidacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxintimidacao:setParent(obj.layout17);
    obj.cbxintimidacao:setLeft(7);
    obj.cbxintimidacao:setTop(3);
    obj.cbxintimidacao:setWidth(20);
    obj.cbxintimidacao:setHeight(20);
    obj.cbxintimidacao:setName("cbxintimidacao");
    obj.cbxintimidacao:setField("cbxintimidacao");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout17);
    obj.label61:setLeft(28);
    obj.label61:setTop(2);
    obj.label61:setWidth(150);
    obj.label61:setHeight(20);
    obj.label61:setText("Intimidação");
    obj.label61:setHorzTextAlign("leading");
    obj.label61:setFontSize(15.0);
    lfm_setPropAsString(obj.label61, "fontStyle",  "bold");
    obj.label61:setFontColor("black");
    obj.label61:setName("label61");

    obj.totalintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalintimidacao:setParent(obj.layout17);
    obj.totalintimidacao:setLeft(165);
    obj.totalintimidacao:setTop(0);
    obj.totalintimidacao:setWidth(40);
    obj.totalintimidacao:setHeight(25);
    obj.totalintimidacao:setName("totalintimidacao");
    obj.totalintimidacao:setField("totalintimidacao");
    obj.totalintimidacao:setType("number");
    obj.totalintimidacao:setMin(-999);
    obj.totalintimidacao:setMax(999);
    obj.totalintimidacao:setHorzTextAlign("center");
    obj.totalintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalintimidacao, "fontStyle",  "bold");
    obj.totalintimidacao:setHitTest(false);

    obj.rectangle64 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle64:setParent(obj.layout17);
    obj.rectangle64:setLeft(210);
    obj.rectangle64:setTop(5);
    obj.rectangle64:setColor("Gainsboro");
    obj.rectangle64:setWidth(20);
    obj.rectangle64:setHeight(15);
    obj.rectangle64:setXradius(2);
    obj.rectangle64:setYradius(2);
    obj.rectangle64:setName("rectangle64");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout17);
    obj.label62:setLeft(213);
    obj.label62:setTop(3);
    obj.label62:setWidth(20);
    obj.label62:setHeight(15);
    obj.label62:setFontSize(20);
    lfm_setPropAsString(obj.label62, "fontStyle",  "bold");
    obj.label62:setFontColor("black");
    obj.label62:setText("=");
    obj.label62:setName("label62");

    obj.gradintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradintimidacao:setParent(obj.layout17);
    obj.gradintimidacao:setLeft(235);
    obj.gradintimidacao:setTop(0);
    obj.gradintimidacao:setWidth(40);
    obj.gradintimidacao:setHeight(25);
    obj.gradintimidacao:setName("gradintimidacao");
    obj.gradintimidacao:setField("gradintimidacao");
    obj.gradintimidacao:setType("number");
    obj.gradintimidacao:setMin(-999);
    obj.gradintimidacao:setMax(999);
    obj.gradintimidacao:setHorzTextAlign("center");
    obj.gradintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradintimidacao, "fontStyle",  "bold");
    obj.gradintimidacao:setHitTest(false);

    obj.rectangle65 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle65:setParent(obj.layout17);
    obj.rectangle65:setLeft(280);
    obj.rectangle65:setTop(5);
    obj.rectangle65:setColor("Gainsboro");
    obj.rectangle65:setWidth(20);
    obj.rectangle65:setHeight(15);
    obj.rectangle65:setXradius(2);
    obj.rectangle65:setYradius(2);
    obj.rectangle65:setName("rectangle65");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout17);
    obj.label63:setLeft(283);
    obj.label63:setTop(3);
    obj.label63:setWidth(20);
    obj.label63:setHeight(15);
    obj.label63:setFontSize(20);
    lfm_setPropAsString(obj.label63, "fontStyle",  "bold");
    obj.label63:setFontColor("black");
    obj.label63:setText("+");
    obj.label63:setName("label63");

    obj.modintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modintimidacao:setParent(obj.layout17);
    obj.modintimidacao:setLeft(305);
    obj.modintimidacao:setTop(0);
    obj.modintimidacao:setWidth(40);
    obj.modintimidacao:setHeight(25);
    obj.modintimidacao:setName("modintimidacao");
    obj.modintimidacao:setField("modintimidacao");
    obj.modintimidacao:setType("number");
    obj.modintimidacao:setMin(-999);
    obj.modintimidacao:setMax(999);
    obj.modintimidacao:setHorzTextAlign("center");
    obj.modintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modintimidacao, "fontStyle",  "bold");
    obj.modintimidacao:setHitTest(false);

    obj.rectangle66 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle66:setParent(obj.layout17);
    obj.rectangle66:setLeft(350);
    obj.rectangle66:setTop(5);
    obj.rectangle66:setColor("Gainsboro");
    obj.rectangle66:setWidth(20);
    obj.rectangle66:setHeight(15);
    obj.rectangle66:setXradius(2);
    obj.rectangle66:setYradius(2);
    obj.rectangle66:setName("rectangle66");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout17);
    obj.label64:setLeft(353);
    obj.label64:setTop(3);
    obj.label64:setWidth(20);
    obj.label64:setHeight(15);
    obj.label64:setFontSize(20);
    lfm_setPropAsString(obj.label64, "fontStyle",  "bold");
    obj.label64:setFontColor("black");
    obj.label64:setText("+");
    obj.label64:setName("label64");

    obj.outrosintimidacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosintimidacao:setParent(obj.layout17);
    obj.outrosintimidacao:setLeft(375);
    obj.outrosintimidacao:setTop(0);
    obj.outrosintimidacao:setWidth(40);
    obj.outrosintimidacao:setHeight(25);
    obj.outrosintimidacao:setName("outrosintimidacao");
    obj.outrosintimidacao:setField("outrosintimidacao");
    obj.outrosintimidacao:setType("number");
    obj.outrosintimidacao:setMin(-999);
    obj.outrosintimidacao:setMax(999);
    obj.outrosintimidacao:setHorzTextAlign("center");
    obj.outrosintimidacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosintimidacao, "fontStyle",  "bold");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout2);
    obj.layout18:setLeft(0);
    obj.layout18:setTop(455);
    obj.layout18:setWidth(420);
    obj.layout18:setHeight(32);
    obj.layout18:setName("layout18");

    obj.rectangle67 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle67:setParent(obj.layout18);
    obj.rectangle67:setLeft(5);
    obj.rectangle67:setTop(0);
    obj.rectangle67:setColor("Gainsboro");
    obj.rectangle67:setWidth(155);
    obj.rectangle67:setHeight(25);
    obj.rectangle67:setXradius(2);
    obj.rectangle67:setYradius(2);
    obj.rectangle67:setName("rectangle67");

    obj.cbxintuicao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxintuicao:setParent(obj.layout18);
    obj.cbxintuicao:setLeft(7);
    obj.cbxintuicao:setTop(3);
    obj.cbxintuicao:setWidth(20);
    obj.cbxintuicao:setHeight(20);
    obj.cbxintuicao:setName("cbxintuicao");
    obj.cbxintuicao:setField("cbxintuicao");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout18);
    obj.label65:setLeft(28);
    obj.label65:setTop(2);
    obj.label65:setWidth(150);
    obj.label65:setHeight(20);
    obj.label65:setText("Intuição");
    obj.label65:setHorzTextAlign("leading");
    obj.label65:setFontSize(15.0);
    lfm_setPropAsString(obj.label65, "fontStyle",  "bold");
    obj.label65:setFontColor("black");
    obj.label65:setName("label65");

    obj.totalintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalintuicao:setParent(obj.layout18);
    obj.totalintuicao:setLeft(165);
    obj.totalintuicao:setTop(0);
    obj.totalintuicao:setWidth(40);
    obj.totalintuicao:setHeight(25);
    obj.totalintuicao:setName("totalintuicao");
    obj.totalintuicao:setField("totalintuicao");
    obj.totalintuicao:setType("number");
    obj.totalintuicao:setMin(-999);
    obj.totalintuicao:setMax(999);
    obj.totalintuicao:setHorzTextAlign("center");
    obj.totalintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalintuicao, "fontStyle",  "bold");
    obj.totalintuicao:setHitTest(false);

    obj.rectangle68 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle68:setParent(obj.layout18);
    obj.rectangle68:setLeft(210);
    obj.rectangle68:setTop(5);
    obj.rectangle68:setColor("Gainsboro");
    obj.rectangle68:setWidth(20);
    obj.rectangle68:setHeight(15);
    obj.rectangle68:setXradius(2);
    obj.rectangle68:setYradius(2);
    obj.rectangle68:setName("rectangle68");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout18);
    obj.label66:setLeft(213);
    obj.label66:setTop(3);
    obj.label66:setWidth(20);
    obj.label66:setHeight(15);
    obj.label66:setFontSize(20);
    lfm_setPropAsString(obj.label66, "fontStyle",  "bold");
    obj.label66:setFontColor("black");
    obj.label66:setText("=");
    obj.label66:setName("label66");

    obj.gradintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradintuicao:setParent(obj.layout18);
    obj.gradintuicao:setLeft(235);
    obj.gradintuicao:setTop(0);
    obj.gradintuicao:setWidth(40);
    obj.gradintuicao:setHeight(25);
    obj.gradintuicao:setName("gradintuicao");
    obj.gradintuicao:setField("gradintuicao");
    obj.gradintuicao:setType("number");
    obj.gradintuicao:setMin(-999);
    obj.gradintuicao:setMax(999);
    obj.gradintuicao:setHorzTextAlign("center");
    obj.gradintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradintuicao, "fontStyle",  "bold");
    obj.gradintuicao:setHitTest(false);

    obj.rectangle69 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle69:setParent(obj.layout18);
    obj.rectangle69:setLeft(280);
    obj.rectangle69:setTop(5);
    obj.rectangle69:setColor("Gainsboro");
    obj.rectangle69:setWidth(20);
    obj.rectangle69:setHeight(15);
    obj.rectangle69:setXradius(2);
    obj.rectangle69:setYradius(2);
    obj.rectangle69:setName("rectangle69");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout18);
    obj.label67:setLeft(283);
    obj.label67:setTop(3);
    obj.label67:setWidth(20);
    obj.label67:setHeight(15);
    obj.label67:setFontSize(20);
    lfm_setPropAsString(obj.label67, "fontStyle",  "bold");
    obj.label67:setFontColor("black");
    obj.label67:setText("+");
    obj.label67:setName("label67");

    obj.modintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modintuicao:setParent(obj.layout18);
    obj.modintuicao:setLeft(305);
    obj.modintuicao:setTop(0);
    obj.modintuicao:setWidth(40);
    obj.modintuicao:setHeight(25);
    obj.modintuicao:setName("modintuicao");
    obj.modintuicao:setField("modintuicao");
    obj.modintuicao:setType("number");
    obj.modintuicao:setMin(-999);
    obj.modintuicao:setMax(999);
    obj.modintuicao:setHorzTextAlign("center");
    obj.modintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.modintuicao, "fontStyle",  "bold");
    obj.modintuicao:setHitTest(false);

    obj.rectangle70 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle70:setParent(obj.layout18);
    obj.rectangle70:setLeft(350);
    obj.rectangle70:setTop(5);
    obj.rectangle70:setColor("Gainsboro");
    obj.rectangle70:setWidth(20);
    obj.rectangle70:setHeight(15);
    obj.rectangle70:setXradius(2);
    obj.rectangle70:setYradius(2);
    obj.rectangle70:setName("rectangle70");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout18);
    obj.label68:setLeft(353);
    obj.label68:setTop(3);
    obj.label68:setWidth(20);
    obj.label68:setHeight(15);
    obj.label68:setFontSize(20);
    lfm_setPropAsString(obj.label68, "fontStyle",  "bold");
    obj.label68:setFontColor("black");
    obj.label68:setText("+");
    obj.label68:setName("label68");

    obj.outrosintuicao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosintuicao:setParent(obj.layout18);
    obj.outrosintuicao:setLeft(375);
    obj.outrosintuicao:setTop(0);
    obj.outrosintuicao:setWidth(40);
    obj.outrosintuicao:setHeight(25);
    obj.outrosintuicao:setName("outrosintuicao");
    obj.outrosintuicao:setField("outrosintuicao");
    obj.outrosintuicao:setType("number");
    obj.outrosintuicao:setMin(-999);
    obj.outrosintuicao:setMax(999);
    obj.outrosintuicao:setHorzTextAlign("center");
    obj.outrosintuicao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosintuicao, "fontStyle",  "bold");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout2);
    obj.layout19:setLeft(0);
    obj.layout19:setTop(485);
    obj.layout19:setWidth(420);
    obj.layout19:setHeight(32);
    obj.layout19:setName("layout19");

    obj.rectangle71 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle71:setParent(obj.layout19);
    obj.rectangle71:setLeft(5);
    obj.rectangle71:setTop(0);
    obj.rectangle71:setColor("Gainsboro");
    obj.rectangle71:setWidth(155);
    obj.rectangle71:setHeight(25);
    obj.rectangle71:setXradius(2);
    obj.rectangle71:setYradius(2);
    obj.rectangle71:setName("rectangle71");

    obj.cbxladinagem = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxladinagem:setParent(obj.layout19);
    obj.cbxladinagem:setLeft(7);
    obj.cbxladinagem:setTop(3);
    obj.cbxladinagem:setWidth(20);
    obj.cbxladinagem:setHeight(20);
    obj.cbxladinagem:setName("cbxladinagem");
    obj.cbxladinagem:setField("cbxladinagem");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout19);
    obj.label69:setLeft(28);
    obj.label69:setTop(2);
    obj.label69:setWidth(150);
    obj.label69:setHeight(20);
    obj.label69:setText("Ladinagem");
    obj.label69:setHorzTextAlign("leading");
    obj.label69:setFontSize(15.0);
    lfm_setPropAsString(obj.label69, "fontStyle",  "bold");
    obj.label69:setFontColor("black");
    obj.label69:setName("label69");

    obj.totalladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalladinagem:setParent(obj.layout19);
    obj.totalladinagem:setLeft(165);
    obj.totalladinagem:setTop(0);
    obj.totalladinagem:setWidth(40);
    obj.totalladinagem:setHeight(25);
    obj.totalladinagem:setName("totalladinagem");
    obj.totalladinagem:setField("totalladinagem");
    obj.totalladinagem:setType("number");
    obj.totalladinagem:setMin(-999);
    obj.totalladinagem:setMax(999);
    obj.totalladinagem:setHorzTextAlign("center");
    obj.totalladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.totalladinagem, "fontStyle",  "bold");
    obj.totalladinagem:setHitTest(false);

    obj.rectangle72 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle72:setParent(obj.layout19);
    obj.rectangle72:setLeft(210);
    obj.rectangle72:setTop(5);
    obj.rectangle72:setColor("Gainsboro");
    obj.rectangle72:setWidth(20);
    obj.rectangle72:setHeight(15);
    obj.rectangle72:setXradius(2);
    obj.rectangle72:setYradius(2);
    obj.rectangle72:setName("rectangle72");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout19);
    obj.label70:setLeft(213);
    obj.label70:setTop(3);
    obj.label70:setWidth(20);
    obj.label70:setHeight(15);
    obj.label70:setFontSize(20);
    lfm_setPropAsString(obj.label70, "fontStyle",  "bold");
    obj.label70:setFontColor("black");
    obj.label70:setText("=");
    obj.label70:setName("label70");

    obj.gradladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradladinagem:setParent(obj.layout19);
    obj.gradladinagem:setLeft(235);
    obj.gradladinagem:setTop(0);
    obj.gradladinagem:setWidth(40);
    obj.gradladinagem:setHeight(25);
    obj.gradladinagem:setName("gradladinagem");
    obj.gradladinagem:setField("gradladinagem");
    obj.gradladinagem:setType("number");
    obj.gradladinagem:setMin(-999);
    obj.gradladinagem:setMax(999);
    obj.gradladinagem:setHorzTextAlign("center");
    obj.gradladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.gradladinagem, "fontStyle",  "bold");
    obj.gradladinagem:setHitTest(false);

    obj.rectangle73 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle73:setParent(obj.layout19);
    obj.rectangle73:setLeft(280);
    obj.rectangle73:setTop(5);
    obj.rectangle73:setColor("Gainsboro");
    obj.rectangle73:setWidth(20);
    obj.rectangle73:setHeight(15);
    obj.rectangle73:setXradius(2);
    obj.rectangle73:setYradius(2);
    obj.rectangle73:setName("rectangle73");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout19);
    obj.label71:setLeft(283);
    obj.label71:setTop(3);
    obj.label71:setWidth(20);
    obj.label71:setHeight(15);
    obj.label71:setFontSize(20);
    lfm_setPropAsString(obj.label71, "fontStyle",  "bold");
    obj.label71:setFontColor("black");
    obj.label71:setText("+");
    obj.label71:setName("label71");

    obj.modladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.modladinagem:setParent(obj.layout19);
    obj.modladinagem:setLeft(305);
    obj.modladinagem:setTop(0);
    obj.modladinagem:setWidth(40);
    obj.modladinagem:setHeight(25);
    obj.modladinagem:setName("modladinagem");
    obj.modladinagem:setField("modladinagem");
    obj.modladinagem:setType("number");
    obj.modladinagem:setMin(-999);
    obj.modladinagem:setMax(999);
    obj.modladinagem:setHorzTextAlign("center");
    obj.modladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.modladinagem, "fontStyle",  "bold");
    obj.modladinagem:setHitTest(false);

    obj.rectangle74 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle74:setParent(obj.layout19);
    obj.rectangle74:setLeft(350);
    obj.rectangle74:setTop(5);
    obj.rectangle74:setColor("Gainsboro");
    obj.rectangle74:setWidth(20);
    obj.rectangle74:setHeight(15);
    obj.rectangle74:setXradius(2);
    obj.rectangle74:setYradius(2);
    obj.rectangle74:setName("rectangle74");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout19);
    obj.label72:setLeft(353);
    obj.label72:setTop(3);
    obj.label72:setWidth(20);
    obj.label72:setHeight(15);
    obj.label72:setFontSize(20);
    lfm_setPropAsString(obj.label72, "fontStyle",  "bold");
    obj.label72:setFontColor("black");
    obj.label72:setText("+");
    obj.label72:setName("label72");

    obj.outrosladinagem = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosladinagem:setParent(obj.layout19);
    obj.outrosladinagem:setLeft(375);
    obj.outrosladinagem:setTop(0);
    obj.outrosladinagem:setWidth(40);
    obj.outrosladinagem:setHeight(25);
    obj.outrosladinagem:setName("outrosladinagem");
    obj.outrosladinagem:setField("outrosladinagem");
    obj.outrosladinagem:setType("number");
    obj.outrosladinagem:setMin(-999);
    obj.outrosladinagem:setMax(999);
    obj.outrosladinagem:setHorzTextAlign("center");
    obj.outrosladinagem:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosladinagem, "fontStyle",  "bold");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout2);
    obj.layout20:setLeft(0);
    obj.layout20:setTop(515);
    obj.layout20:setWidth(420);
    obj.layout20:setHeight(32);
    obj.layout20:setName("layout20");

    obj.rectangle75 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle75:setParent(obj.layout20);
    obj.rectangle75:setLeft(5);
    obj.rectangle75:setTop(0);
    obj.rectangle75:setColor("Gainsboro");
    obj.rectangle75:setWidth(155);
    obj.rectangle75:setHeight(25);
    obj.rectangle75:setXradius(2);
    obj.rectangle75:setYradius(2);
    obj.rectangle75:setName("rectangle75");

    obj.cbxoinformacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxoinformacao:setParent(obj.layout20);
    obj.cbxoinformacao:setLeft(7);
    obj.cbxoinformacao:setTop(3);
    obj.cbxoinformacao:setWidth(20);
    obj.cbxoinformacao:setHeight(20);
    obj.cbxoinformacao:setName("cbxoinformacao");
    obj.cbxoinformacao:setField("cbxoinformacao");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout20);
    obj.label73:setLeft(28);
    obj.label73:setTop(2);
    obj.label73:setWidth(150);
    obj.label73:setHeight(20);
    obj.label73:setText("Obter Informação");
    obj.label73:setHorzTextAlign("leading");
    obj.label73:setFontSize(15.0);
    lfm_setPropAsString(obj.label73, "fontStyle",  "bold");
    obj.label73:setFontColor("black");
    obj.label73:setName("label73");

    obj.totaloinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaloinformacao:setParent(obj.layout20);
    obj.totaloinformacao:setLeft(165);
    obj.totaloinformacao:setTop(0);
    obj.totaloinformacao:setWidth(40);
    obj.totaloinformacao:setHeight(25);
    obj.totaloinformacao:setName("totaloinformacao");
    obj.totaloinformacao:setField("totaloinformacao");
    obj.totaloinformacao:setType("number");
    obj.totaloinformacao:setMin(-999);
    obj.totaloinformacao:setMax(999);
    obj.totaloinformacao:setHorzTextAlign("center");
    obj.totaloinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloinformacao, "fontStyle",  "bold");
    obj.totaloinformacao:setHitTest(false);

    obj.rectangle76 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle76:setParent(obj.layout20);
    obj.rectangle76:setLeft(210);
    obj.rectangle76:setTop(5);
    obj.rectangle76:setColor("Gainsboro");
    obj.rectangle76:setWidth(20);
    obj.rectangle76:setHeight(15);
    obj.rectangle76:setXradius(2);
    obj.rectangle76:setYradius(2);
    obj.rectangle76:setName("rectangle76");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout20);
    obj.label74:setLeft(213);
    obj.label74:setTop(3);
    obj.label74:setWidth(20);
    obj.label74:setHeight(15);
    obj.label74:setFontSize(20);
    lfm_setPropAsString(obj.label74, "fontStyle",  "bold");
    obj.label74:setFontColor("black");
    obj.label74:setText("=");
    obj.label74:setName("label74");

    obj.gradoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradoinformacao:setParent(obj.layout20);
    obj.gradoinformacao:setLeft(235);
    obj.gradoinformacao:setTop(0);
    obj.gradoinformacao:setWidth(40);
    obj.gradoinformacao:setHeight(25);
    obj.gradoinformacao:setName("gradoinformacao");
    obj.gradoinformacao:setField("gradoinformacao");
    obj.gradoinformacao:setType("number");
    obj.gradoinformacao:setMin(-999);
    obj.gradoinformacao:setMax(999);
    obj.gradoinformacao:setHorzTextAlign("center");
    obj.gradoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoinformacao, "fontStyle",  "bold");
    obj.gradoinformacao:setHitTest(false);

    obj.rectangle77 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle77:setParent(obj.layout20);
    obj.rectangle77:setLeft(280);
    obj.rectangle77:setTop(5);
    obj.rectangle77:setColor("Gainsboro");
    obj.rectangle77:setWidth(20);
    obj.rectangle77:setHeight(15);
    obj.rectangle77:setXradius(2);
    obj.rectangle77:setYradius(2);
    obj.rectangle77:setName("rectangle77");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout20);
    obj.label75:setLeft(283);
    obj.label75:setTop(3);
    obj.label75:setWidth(20);
    obj.label75:setHeight(15);
    obj.label75:setFontSize(20);
    lfm_setPropAsString(obj.label75, "fontStyle",  "bold");
    obj.label75:setFontColor("black");
    obj.label75:setText("+");
    obj.label75:setName("label75");

    obj.modoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modoinformacao:setParent(obj.layout20);
    obj.modoinformacao:setLeft(305);
    obj.modoinformacao:setTop(0);
    obj.modoinformacao:setWidth(40);
    obj.modoinformacao:setHeight(25);
    obj.modoinformacao:setName("modoinformacao");
    obj.modoinformacao:setField("modoinformacao");
    obj.modoinformacao:setType("number");
    obj.modoinformacao:setMin(-999);
    obj.modoinformacao:setMax(999);
    obj.modoinformacao:setHorzTextAlign("center");
    obj.modoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modoinformacao, "fontStyle",  "bold");
    obj.modoinformacao:setHitTest(false);

    obj.rectangle78 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle78:setParent(obj.layout20);
    obj.rectangle78:setLeft(350);
    obj.rectangle78:setTop(5);
    obj.rectangle78:setColor("Gainsboro");
    obj.rectangle78:setWidth(20);
    obj.rectangle78:setHeight(15);
    obj.rectangle78:setXradius(2);
    obj.rectangle78:setYradius(2);
    obj.rectangle78:setName("rectangle78");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout20);
    obj.label76:setLeft(353);
    obj.label76:setTop(3);
    obj.label76:setWidth(20);
    obj.label76:setHeight(15);
    obj.label76:setFontSize(20);
    lfm_setPropAsString(obj.label76, "fontStyle",  "bold");
    obj.label76:setFontColor("black");
    obj.label76:setText("+");
    obj.label76:setName("label76");

    obj.outrosoinformacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosoinformacao:setParent(obj.layout20);
    obj.outrosoinformacao:setLeft(375);
    obj.outrosoinformacao:setTop(0);
    obj.outrosoinformacao:setWidth(40);
    obj.outrosoinformacao:setHeight(25);
    obj.outrosoinformacao:setName("outrosoinformacao");
    obj.outrosoinformacao:setField("outrosoinformacao");
    obj.outrosoinformacao:setType("number");
    obj.outrosoinformacao:setMin(-999);
    obj.outrosoinformacao:setMax(999);
    obj.outrosoinformacao:setHorzTextAlign("center");
    obj.outrosoinformacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoinformacao, "fontStyle",  "bold");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout2);
    obj.layout21:setLeft(0);
    obj.layout21:setTop(545);
    obj.layout21:setWidth(420);
    obj.layout21:setHeight(32);
    obj.layout21:setName("layout21");

    obj.rectangle79 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle79:setParent(obj.layout21);
    obj.rectangle79:setLeft(5);
    obj.rectangle79:setTop(0);
    obj.rectangle79:setColor("Gainsboro");
    obj.rectangle79:setWidth(155);
    obj.rectangle79:setHeight(25);
    obj.rectangle79:setXradius(2);
    obj.rectangle79:setYradius(2);
    obj.rectangle79:setName("rectangle79");

    obj.cbxoficio1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxoficio1:setParent(obj.layout21);
    obj.cbxoficio1:setLeft(7);
    obj.cbxoficio1:setTop(3);
    obj.cbxoficio1:setWidth(20);
    obj.cbxoficio1:setHeight(20);
    obj.cbxoficio1:setName("cbxoficio1");
    obj.cbxoficio1:setField("cbxoficio1");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout21);
    obj.label77:setLeft(28);
    obj.label77:setTop(2);
    obj.label77:setWidth(150);
    obj.label77:setHeight(20);
    obj.label77:setText("Ofício");
    obj.label77:setHorzTextAlign("leading");
    obj.label77:setFontSize(15.0);
    lfm_setPropAsString(obj.label77, "fontStyle",  "bold");
    obj.label77:setFontColor("black");
    obj.label77:setName("label77");

    obj.totaloficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.totaloficio1:setParent(obj.layout21);
    obj.totaloficio1:setLeft(165);
    obj.totaloficio1:setTop(0);
    obj.totaloficio1:setWidth(40);
    obj.totaloficio1:setHeight(25);
    obj.totaloficio1:setName("totaloficio1");
    obj.totaloficio1:setField("totaloficio1");
    obj.totaloficio1:setType("number");
    obj.totaloficio1:setMin(-999);
    obj.totaloficio1:setMax(999);
    obj.totaloficio1:setHorzTextAlign("center");
    obj.totaloficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.totaloficio1, "fontStyle",  "bold");
    obj.totaloficio1:setHitTest(false);

    obj.rectangle80 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle80:setParent(obj.layout21);
    obj.rectangle80:setLeft(210);
    obj.rectangle80:setTop(5);
    obj.rectangle80:setColor("Gainsboro");
    obj.rectangle80:setWidth(20);
    obj.rectangle80:setHeight(15);
    obj.rectangle80:setXradius(2);
    obj.rectangle80:setYradius(2);
    obj.rectangle80:setName("rectangle80");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout21);
    obj.label78:setLeft(213);
    obj.label78:setTop(3);
    obj.label78:setWidth(20);
    obj.label78:setHeight(15);
    obj.label78:setFontSize(20);
    lfm_setPropAsString(obj.label78, "fontStyle",  "bold");
    obj.label78:setFontColor("black");
    obj.label78:setText("=");
    obj.label78:setName("label78");

    obj.gradoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradoficio1:setParent(obj.layout21);
    obj.gradoficio1:setLeft(235);
    obj.gradoficio1:setTop(0);
    obj.gradoficio1:setWidth(40);
    obj.gradoficio1:setHeight(25);
    obj.gradoficio1:setName("gradoficio1");
    obj.gradoficio1:setField("gradoficio1");
    obj.gradoficio1:setType("number");
    obj.gradoficio1:setMin(-999);
    obj.gradoficio1:setMax(999);
    obj.gradoficio1:setHorzTextAlign("center");
    obj.gradoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.gradoficio1, "fontStyle",  "bold");
    obj.gradoficio1:setHitTest(false);

    obj.rectangle81 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle81:setParent(obj.layout21);
    obj.rectangle81:setLeft(280);
    obj.rectangle81:setTop(5);
    obj.rectangle81:setColor("Gainsboro");
    obj.rectangle81:setWidth(20);
    obj.rectangle81:setHeight(15);
    obj.rectangle81:setXradius(2);
    obj.rectangle81:setYradius(2);
    obj.rectangle81:setName("rectangle81");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout21);
    obj.label79:setLeft(283);
    obj.label79:setTop(3);
    obj.label79:setWidth(20);
    obj.label79:setHeight(15);
    obj.label79:setFontSize(20);
    lfm_setPropAsString(obj.label79, "fontStyle",  "bold");
    obj.label79:setFontColor("black");
    obj.label79:setText("+");
    obj.label79:setName("label79");

    obj.modoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.modoficio1:setParent(obj.layout21);
    obj.modoficio1:setLeft(305);
    obj.modoficio1:setTop(0);
    obj.modoficio1:setWidth(40);
    obj.modoficio1:setHeight(25);
    obj.modoficio1:setName("modoficio1");
    obj.modoficio1:setField("modoficio1");
    obj.modoficio1:setType("number");
    obj.modoficio1:setMin(-999);
    obj.modoficio1:setMax(999);
    obj.modoficio1:setHorzTextAlign("center");
    obj.modoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.modoficio1, "fontStyle",  "bold");
    obj.modoficio1:setHitTest(false);

    obj.rectangle82 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle82:setParent(obj.layout21);
    obj.rectangle82:setLeft(350);
    obj.rectangle82:setTop(5);
    obj.rectangle82:setColor("Gainsboro");
    obj.rectangle82:setWidth(20);
    obj.rectangle82:setHeight(15);
    obj.rectangle82:setXradius(2);
    obj.rectangle82:setYradius(2);
    obj.rectangle82:setName("rectangle82");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout21);
    obj.label80:setLeft(353);
    obj.label80:setTop(3);
    obj.label80:setWidth(20);
    obj.label80:setHeight(15);
    obj.label80:setFontSize(20);
    lfm_setPropAsString(obj.label80, "fontStyle",  "bold");
    obj.label80:setFontColor("black");
    obj.label80:setText("+");
    obj.label80:setName("label80");

    obj.outrosoficio1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosoficio1:setParent(obj.layout21);
    obj.outrosoficio1:setLeft(375);
    obj.outrosoficio1:setTop(0);
    obj.outrosoficio1:setWidth(40);
    obj.outrosoficio1:setHeight(25);
    obj.outrosoficio1:setName("outrosoficio1");
    obj.outrosoficio1:setField("outrosoficio1");
    obj.outrosoficio1:setType("number");
    obj.outrosoficio1:setMin(-999);
    obj.outrosoficio1:setMax(999);
    obj.outrosoficio1:setHorzTextAlign("center");
    obj.outrosoficio1:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosoficio1, "fontStyle",  "bold");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout2);
    obj.layout22:setLeft(0);
    obj.layout22:setTop(575);
    obj.layout22:setWidth(420);
    obj.layout22:setHeight(32);
    obj.layout22:setName("layout22");

    obj.rectangle83 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle83:setParent(obj.layout22);
    obj.rectangle83:setLeft(5);
    obj.rectangle83:setTop(0);
    obj.rectangle83:setColor("Gainsboro");
    obj.rectangle83:setWidth(155);
    obj.rectangle83:setHeight(25);
    obj.rectangle83:setXradius(2);
    obj.rectangle83:setYradius(2);
    obj.rectangle83:setName("rectangle83");

    obj.cbxmeditacao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxmeditacao:setParent(obj.layout22);
    obj.cbxmeditacao:setLeft(7);
    obj.cbxmeditacao:setTop(3);
    obj.cbxmeditacao:setWidth(20);
    obj.cbxmeditacao:setHeight(20);
    obj.cbxmeditacao:setName("cbxmeditacao");
    obj.cbxmeditacao:setField("cbxmeditacao");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout22);
    obj.label81:setLeft(28);
    obj.label81:setTop(2);
    obj.label81:setWidth(150);
    obj.label81:setHeight(20);
    obj.label81:setText("Meditação");
    obj.label81:setHorzTextAlign("leading");
    obj.label81:setFontSize(15.0);
    lfm_setPropAsString(obj.label81, "fontStyle",  "bold");
    obj.label81:setFontColor("black");
    obj.label81:setName("label81");

    obj.totalmeditacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalmeditacao:setParent(obj.layout22);
    obj.totalmeditacao:setLeft(165);
    obj.totalmeditacao:setTop(0);
    obj.totalmeditacao:setWidth(40);
    obj.totalmeditacao:setHeight(25);
    obj.totalmeditacao:setName("totalmeditacao");
    obj.totalmeditacao:setField("totalmeditacao");
    obj.totalmeditacao:setType("number");
    obj.totalmeditacao:setMin(-999);
    obj.totalmeditacao:setMax(999);
    obj.totalmeditacao:setHorzTextAlign("center");
    obj.totalmeditacao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalmeditacao, "fontStyle",  "bold");
    obj.totalmeditacao:setHitTest(false);

    obj.rectangle84 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle84:setParent(obj.layout22);
    obj.rectangle84:setLeft(210);
    obj.rectangle84:setTop(5);
    obj.rectangle84:setColor("Gainsboro");
    obj.rectangle84:setWidth(20);
    obj.rectangle84:setHeight(15);
    obj.rectangle84:setXradius(2);
    obj.rectangle84:setYradius(2);
    obj.rectangle84:setName("rectangle84");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout22);
    obj.label82:setLeft(213);
    obj.label82:setTop(3);
    obj.label82:setWidth(20);
    obj.label82:setHeight(15);
    obj.label82:setFontSize(20);
    lfm_setPropAsString(obj.label82, "fontStyle",  "bold");
    obj.label82:setFontColor("black");
    obj.label82:setText("=");
    obj.label82:setName("label82");

    obj.gradmeditacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradmeditacao:setParent(obj.layout22);
    obj.gradmeditacao:setLeft(235);
    obj.gradmeditacao:setTop(0);
    obj.gradmeditacao:setWidth(40);
    obj.gradmeditacao:setHeight(25);
    obj.gradmeditacao:setName("gradmeditacao");
    obj.gradmeditacao:setField("gradmeditacao");
    obj.gradmeditacao:setType("number");
    obj.gradmeditacao:setMin(-999);
    obj.gradmeditacao:setMax(999);
    obj.gradmeditacao:setHorzTextAlign("center");
    obj.gradmeditacao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradmeditacao, "fontStyle",  "bold");
    obj.gradmeditacao:setHitTest(false);

    obj.rectangle85 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle85:setParent(obj.layout22);
    obj.rectangle85:setLeft(280);
    obj.rectangle85:setTop(5);
    obj.rectangle85:setColor("Gainsboro");
    obj.rectangle85:setWidth(20);
    obj.rectangle85:setHeight(15);
    obj.rectangle85:setXradius(2);
    obj.rectangle85:setYradius(2);
    obj.rectangle85:setName("rectangle85");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout22);
    obj.label83:setLeft(283);
    obj.label83:setTop(3);
    obj.label83:setWidth(20);
    obj.label83:setHeight(15);
    obj.label83:setFontSize(20);
    lfm_setPropAsString(obj.label83, "fontStyle",  "bold");
    obj.label83:setFontColor("black");
    obj.label83:setText("+");
    obj.label83:setName("label83");

    obj.modmeditacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modmeditacao:setParent(obj.layout22);
    obj.modmeditacao:setLeft(305);
    obj.modmeditacao:setTop(0);
    obj.modmeditacao:setWidth(40);
    obj.modmeditacao:setHeight(25);
    obj.modmeditacao:setName("modmeditacao");
    obj.modmeditacao:setField("modmeditacao");
    obj.modmeditacao:setType("number");
    obj.modmeditacao:setMin(-999);
    obj.modmeditacao:setMax(999);
    obj.modmeditacao:setHorzTextAlign("center");
    obj.modmeditacao:setFontSize(15.0);
    lfm_setPropAsString(obj.modmeditacao, "fontStyle",  "bold");
    obj.modmeditacao:setHitTest(false);

    obj.rectangle86 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle86:setParent(obj.layout22);
    obj.rectangle86:setLeft(350);
    obj.rectangle86:setTop(5);
    obj.rectangle86:setColor("Gainsboro");
    obj.rectangle86:setWidth(20);
    obj.rectangle86:setHeight(15);
    obj.rectangle86:setXradius(2);
    obj.rectangle86:setYradius(2);
    obj.rectangle86:setName("rectangle86");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout22);
    obj.label84:setLeft(353);
    obj.label84:setTop(3);
    obj.label84:setWidth(20);
    obj.label84:setHeight(15);
    obj.label84:setFontSize(20);
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setFontColor("black");
    obj.label84:setText("+");
    obj.label84:setName("label84");

    obj.outrosmeditacao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrosmeditacao:setParent(obj.layout22);
    obj.outrosmeditacao:setLeft(375);
    obj.outrosmeditacao:setTop(0);
    obj.outrosmeditacao:setWidth(40);
    obj.outrosmeditacao:setHeight(25);
    obj.outrosmeditacao:setName("outrosmeditacao");
    obj.outrosmeditacao:setField("outrosmeditacao");
    obj.outrosmeditacao:setType("number");
    obj.outrosmeditacao:setMin(-999);
    obj.outrosmeditacao:setMax(999);
    obj.outrosmeditacao:setHorzTextAlign("center");
    obj.outrosmeditacao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrosmeditacao, "fontStyle",  "bold");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout2);
    obj.layout23:setLeft(0);
    obj.layout23:setTop(605);
    obj.layout23:setWidth(420);
    obj.layout23:setHeight(32);
    obj.layout23:setName("layout23");

    obj.rectangle87 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle87:setParent(obj.layout23);
    obj.rectangle87:setLeft(5);
    obj.rectangle87:setTop(0);
    obj.rectangle87:setColor("Gainsboro");
    obj.rectangle87:setWidth(155);
    obj.rectangle87:setHeight(25);
    obj.rectangle87:setXradius(2);
    obj.rectangle87:setYradius(2);
    obj.rectangle87:setName("rectangle87");

    obj.cbxpercepcao = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxpercepcao:setParent(obj.layout23);
    obj.cbxpercepcao:setLeft(7);
    obj.cbxpercepcao:setTop(3);
    obj.cbxpercepcao:setWidth(20);
    obj.cbxpercepcao:setHeight(20);
    obj.cbxpercepcao:setName("cbxpercepcao");
    obj.cbxpercepcao:setField("cbxpercepcao");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout23);
    obj.label85:setLeft(28);
    obj.label85:setTop(2);
    obj.label85:setWidth(150);
    obj.label85:setHeight(20);
    obj.label85:setText("Percepção");
    obj.label85:setHorzTextAlign("leading");
    obj.label85:setFontSize(15.0);
    lfm_setPropAsString(obj.label85, "fontStyle",  "bold");
    obj.label85:setFontColor("black");
    obj.label85:setName("label85");

    obj.totalpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalpercepcao:setParent(obj.layout23);
    obj.totalpercepcao:setLeft(165);
    obj.totalpercepcao:setTop(0);
    obj.totalpercepcao:setWidth(40);
    obj.totalpercepcao:setHeight(25);
    obj.totalpercepcao:setName("totalpercepcao");
    obj.totalpercepcao:setField("totalpercepcao");
    obj.totalpercepcao:setType("number");
    obj.totalpercepcao:setMin(-999);
    obj.totalpercepcao:setMax(999);
    obj.totalpercepcao:setHorzTextAlign("center");
    obj.totalpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.totalpercepcao, "fontStyle",  "bold");
    obj.totalpercepcao:setHitTest(false);

    obj.rectangle88 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle88:setParent(obj.layout23);
    obj.rectangle88:setLeft(210);
    obj.rectangle88:setTop(5);
    obj.rectangle88:setColor("Gainsboro");
    obj.rectangle88:setWidth(20);
    obj.rectangle88:setHeight(15);
    obj.rectangle88:setXradius(2);
    obj.rectangle88:setYradius(2);
    obj.rectangle88:setName("rectangle88");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout23);
    obj.label86:setLeft(213);
    obj.label86:setTop(3);
    obj.label86:setWidth(20);
    obj.label86:setHeight(15);
    obj.label86:setFontSize(20);
    lfm_setPropAsString(obj.label86, "fontStyle",  "bold");
    obj.label86:setFontColor("black");
    obj.label86:setText("=");
    obj.label86:setName("label86");

    obj.gradpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradpercepcao:setParent(obj.layout23);
    obj.gradpercepcao:setLeft(235);
    obj.gradpercepcao:setTop(0);
    obj.gradpercepcao:setWidth(40);
    obj.gradpercepcao:setHeight(25);
    obj.gradpercepcao:setName("gradpercepcao");
    obj.gradpercepcao:setField("gradpercepcao");
    obj.gradpercepcao:setType("number");
    obj.gradpercepcao:setMin(-999);
    obj.gradpercepcao:setMax(999);
    obj.gradpercepcao:setHorzTextAlign("center");
    obj.gradpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.gradpercepcao, "fontStyle",  "bold");
    obj.gradpercepcao:setHitTest(false);

    obj.rectangle89 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle89:setParent(obj.layout23);
    obj.rectangle89:setLeft(280);
    obj.rectangle89:setTop(5);
    obj.rectangle89:setColor("Gainsboro");
    obj.rectangle89:setWidth(20);
    obj.rectangle89:setHeight(15);
    obj.rectangle89:setXradius(2);
    obj.rectangle89:setYradius(2);
    obj.rectangle89:setName("rectangle89");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout23);
    obj.label87:setLeft(283);
    obj.label87:setTop(3);
    obj.label87:setWidth(20);
    obj.label87:setHeight(15);
    obj.label87:setFontSize(20);
    lfm_setPropAsString(obj.label87, "fontStyle",  "bold");
    obj.label87:setFontColor("black");
    obj.label87:setText("+");
    obj.label87:setName("label87");

    obj.modpercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.modpercepcao:setParent(obj.layout23);
    obj.modpercepcao:setLeft(305);
    obj.modpercepcao:setTop(0);
    obj.modpercepcao:setWidth(40);
    obj.modpercepcao:setHeight(25);
    obj.modpercepcao:setName("modpercepcao");
    obj.modpercepcao:setField("modpercepcao");
    obj.modpercepcao:setType("number");
    obj.modpercepcao:setMin(-999);
    obj.modpercepcao:setMax(999);
    obj.modpercepcao:setHorzTextAlign("center");
    obj.modpercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.modpercepcao, "fontStyle",  "bold");
    obj.modpercepcao:setHitTest(false);

    obj.rectangle90 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle90:setParent(obj.layout23);
    obj.rectangle90:setLeft(350);
    obj.rectangle90:setTop(5);
    obj.rectangle90:setColor("Gainsboro");
    obj.rectangle90:setWidth(20);
    obj.rectangle90:setHeight(15);
    obj.rectangle90:setXradius(2);
    obj.rectangle90:setYradius(2);
    obj.rectangle90:setName("rectangle90");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout23);
    obj.label88:setLeft(353);
    obj.label88:setTop(3);
    obj.label88:setWidth(20);
    obj.label88:setHeight(15);
    obj.label88:setFontSize(20);
    lfm_setPropAsString(obj.label88, "fontStyle",  "bold");
    obj.label88:setFontColor("black");
    obj.label88:setText("+");
    obj.label88:setName("label88");

    obj.outrospercepcao = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrospercepcao:setParent(obj.layout23);
    obj.outrospercepcao:setLeft(375);
    obj.outrospercepcao:setTop(0);
    obj.outrospercepcao:setWidth(40);
    obj.outrospercepcao:setHeight(25);
    obj.outrospercepcao:setName("outrospercepcao");
    obj.outrospercepcao:setField("outrospercepcao");
    obj.outrospercepcao:setType("number");
    obj.outrospercepcao:setMin(-999);
    obj.outrospercepcao:setMax(999);
    obj.outrospercepcao:setHorzTextAlign("center");
    obj.outrospercepcao:setFontSize(15.0);
    lfm_setPropAsString(obj.outrospercepcao, "fontStyle",  "bold");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout2);
    obj.layout24:setLeft(0);
    obj.layout24:setTop(635);
    obj.layout24:setWidth(420);
    obj.layout24:setHeight(32);
    obj.layout24:setName("layout24");

    obj.rectangle91 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle91:setParent(obj.layout24);
    obj.rectangle91:setLeft(5);
    obj.rectangle91:setTop(0);
    obj.rectangle91:setColor("Gainsboro");
    obj.rectangle91:setWidth(155);
    obj.rectangle91:setHeight(25);
    obj.rectangle91:setXradius(2);
    obj.rectangle91:setYradius(2);
    obj.rectangle91:setName("rectangle91");

    obj.cbxsobrevivencia = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.cbxsobrevivencia:setParent(obj.layout24);
    obj.cbxsobrevivencia:setLeft(7);
    obj.cbxsobrevivencia:setTop(3);
    obj.cbxsobrevivencia:setWidth(20);
    obj.cbxsobrevivencia:setHeight(20);
    obj.cbxsobrevivencia:setName("cbxsobrevivencia");
    obj.cbxsobrevivencia:setField("cbxsobrevivencia");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout24);
    obj.label89:setLeft(28);
    obj.label89:setTop(2);
    obj.label89:setWidth(150);
    obj.label89:setHeight(20);
    obj.label89:setText("Sobrevivência");
    obj.label89:setHorzTextAlign("leading");
    obj.label89:setFontSize(15.0);
    lfm_setPropAsString(obj.label89, "fontStyle",  "bold");
    obj.label89:setFontColor("black");
    obj.label89:setName("label89");

    obj.totalsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.totalsobrevivencia:setParent(obj.layout24);
    obj.totalsobrevivencia:setLeft(165);
    obj.totalsobrevivencia:setTop(0);
    obj.totalsobrevivencia:setWidth(40);
    obj.totalsobrevivencia:setHeight(25);
    obj.totalsobrevivencia:setName("totalsobrevivencia");
    obj.totalsobrevivencia:setField("totalsobrevivencia");
    obj.totalsobrevivencia:setType("number");
    obj.totalsobrevivencia:setMin(-999);
    obj.totalsobrevivencia:setMax(999);
    obj.totalsobrevivencia:setHorzTextAlign("center");
    obj.totalsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.totalsobrevivencia, "fontStyle",  "bold");
    obj.totalsobrevivencia:setHitTest(false);

    obj.rectangle92 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle92:setParent(obj.layout24);
    obj.rectangle92:setLeft(210);
    obj.rectangle92:setTop(5);
    obj.rectangle92:setColor("Gainsboro");
    obj.rectangle92:setWidth(20);
    obj.rectangle92:setHeight(15);
    obj.rectangle92:setXradius(2);
    obj.rectangle92:setYradius(2);
    obj.rectangle92:setName("rectangle92");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout24);
    obj.label90:setLeft(213);
    obj.label90:setTop(3);
    obj.label90:setWidth(20);
    obj.label90:setHeight(15);
    obj.label90:setFontSize(20);
    lfm_setPropAsString(obj.label90, "fontStyle",  "bold");
    obj.label90:setFontColor("black");
    obj.label90:setText("=");
    obj.label90:setName("label90");

    obj.gradsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.gradsobrevivencia:setParent(obj.layout24);
    obj.gradsobrevivencia:setLeft(235);
    obj.gradsobrevivencia:setTop(0);
    obj.gradsobrevivencia:setWidth(40);
    obj.gradsobrevivencia:setHeight(25);
    obj.gradsobrevivencia:setName("gradsobrevivencia");
    obj.gradsobrevivencia:setField("gradsobrevivencia");
    obj.gradsobrevivencia:setType("number");
    obj.gradsobrevivencia:setMin(-999);
    obj.gradsobrevivencia:setMax(999);
    obj.gradsobrevivencia:setHorzTextAlign("center");
    obj.gradsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.gradsobrevivencia, "fontStyle",  "bold");
    obj.gradsobrevivencia:setHitTest(false);

    obj.rectangle93 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle93:setParent(obj.layout24);
    obj.rectangle93:setLeft(280);
    obj.rectangle93:setTop(5);
    obj.rectangle93:setColor("Gainsboro");
    obj.rectangle93:setWidth(20);
    obj.rectangle93:setHeight(15);
    obj.rectangle93:setXradius(2);
    obj.rectangle93:setYradius(2);
    obj.rectangle93:setName("rectangle93");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout24);
    obj.label91:setLeft(283);
    obj.label91:setTop(3);
    obj.label91:setWidth(20);
    obj.label91:setHeight(15);
    obj.label91:setFontSize(20);
    lfm_setPropAsString(obj.label91, "fontStyle",  "bold");
    obj.label91:setFontColor("black");
    obj.label91:setText("+");
    obj.label91:setName("label91");

    obj.modsobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.modsobrevivencia:setParent(obj.layout24);
    obj.modsobrevivencia:setLeft(305);
    obj.modsobrevivencia:setTop(0);
    obj.modsobrevivencia:setWidth(40);
    obj.modsobrevivencia:setHeight(25);
    obj.modsobrevivencia:setName("modsobrevivencia");
    obj.modsobrevivencia:setField("modsobrevivencia");
    obj.modsobrevivencia:setType("number");
    obj.modsobrevivencia:setMin(-999);
    obj.modsobrevivencia:setMax(999);
    obj.modsobrevivencia:setHorzTextAlign("center");
    obj.modsobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.modsobrevivencia, "fontStyle",  "bold");
    obj.modsobrevivencia:setHitTest(false);

    obj.rectangle94 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle94:setParent(obj.layout24);
    obj.rectangle94:setLeft(350);
    obj.rectangle94:setTop(5);
    obj.rectangle94:setColor("Gainsboro");
    obj.rectangle94:setWidth(20);
    obj.rectangle94:setHeight(15);
    obj.rectangle94:setXradius(2);
    obj.rectangle94:setYradius(2);
    obj.rectangle94:setName("rectangle94");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout24);
    obj.label92:setLeft(353);
    obj.label92:setTop(3);
    obj.label92:setWidth(20);
    obj.label92:setHeight(15);
    obj.label92:setFontSize(20);
    lfm_setPropAsString(obj.label92, "fontStyle",  "bold");
    obj.label92:setFontColor("black");
    obj.label92:setText("+");
    obj.label92:setName("label92");

    obj.outrossobrevivencia = GUI.fromHandle(_obj_newObject("edit"));
    obj.outrossobrevivencia:setParent(obj.layout24);
    obj.outrossobrevivencia:setLeft(375);
    obj.outrossobrevivencia:setTop(0);
    obj.outrossobrevivencia:setWidth(40);
    obj.outrossobrevivencia:setHeight(25);
    obj.outrossobrevivencia:setName("outrossobrevivencia");
    obj.outrossobrevivencia:setField("outrossobrevivencia");
    obj.outrossobrevivencia:setType("number");
    obj.outrossobrevivencia:setMin(-999);
    obj.outrossobrevivencia:setMax(999);
    obj.outrossobrevivencia:setHorzTextAlign("center");
    obj.outrossobrevivencia:setFontSize(15.0);
    lfm_setPropAsString(obj.outrossobrevivencia, "fontStyle",  "bold");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.scrollBox1);
    obj.layout25:setLeft(435);
    obj.layout25:setTop(10);
    obj.layout25:setWidth(565);
    obj.layout25:setHeight(680);
    obj.layout25:setName("layout25");

    obj.rectangle95 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle95:setParent(obj.layout25);
    obj.rectangle95:setAlign("client");
    obj.rectangle95:setColor("Gray");
    obj.rectangle95:setXradius(2);
    obj.rectangle95:setYradius(2);
    obj.rectangle95:setName("rectangle95");

    obj.rectangle96 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle96:setParent(obj.layout25);
    obj.rectangle96:setLeft(122);
    obj.rectangle96:setTop(1);
    obj.rectangle96:setColor("Gainsboro");
    obj.rectangle96:setWidth(45);
    obj.rectangle96:setHeight(15);
    obj.rectangle96:setXradius(2);
    obj.rectangle96:setYradius(2);
    obj.rectangle96:setName("rectangle96");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout25);
    obj.label93:setLeft(125);
    obj.label93:setTop(3);
    obj.label93:setWidth(58);
    obj.label93:setHeight(8);
    obj.label93:setFontSize(10);
    lfm_setPropAsString(obj.label93, "fontStyle",  "bold");
    obj.label93:setFontColor("black");
    obj.label93:setText("Talentos");
    obj.label93:setName("label93");

    obj.rectangle97 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle97:setParent(obj.layout25);
    obj.rectangle97:setLeft(377);
    obj.rectangle97:setTop(1);
    obj.rectangle97:setColor("Gainsboro");
    obj.rectangle97:setWidth(105);
    obj.rectangle97:setHeight(15);
    obj.rectangle97:setXradius(2);
    obj.rectangle97:setYradius(2);
    obj.rectangle97:setName("rectangle97");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout25);
    obj.label94:setLeft(380);
    obj.label94:setTop(3);
    obj.label94:setWidth(98);
    obj.label94:setHeight(8);
    obj.label94:setFontSize(10);
    lfm_setPropAsString(obj.label94, "fontStyle",  "bold");
    obj.label94:setFontColor("black");
    obj.label94:setText("Habilidades de Raça");
    obj.label94:setName("label94");

    obj.rectangle98 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle98:setParent(obj.layout25);
    obj.rectangle98:setLeft(377);
    obj.rectangle98:setTop(334);
    obj.rectangle98:setColor("Gainsboro");
    obj.rectangle98:setWidth(107);
    obj.rectangle98:setHeight(15);
    obj.rectangle98:setXradius(2);
    obj.rectangle98:setYradius(2);
    obj.rectangle98:setName("rectangle98");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout25);
    obj.label95:setLeft(380);
    obj.label95:setTop(336);
    obj.label95:setWidth(115);
    obj.label95:setHeight(8);
    obj.label95:setFontSize(10);
    lfm_setPropAsString(obj.label95, "fontStyle",  "bold");
    obj.label95:setFontColor("black");
    obj.label95:setText("Habilidades de Classe");
    obj.label95:setName("label95");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout25);
    obj.layout26:setLeft(5);
    obj.layout26:setTop(12);
    obj.layout26:setWidth(285);
    obj.layout26:setHeight(656);
    obj.layout26:setName("layout26");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout26);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("talentos");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout25);
    obj.layout27:setLeft(295);
    obj.layout27:setTop(12);
    obj.layout27:setWidth(265);
    obj.layout27:setHeight(318);
    obj.layout27:setName("layout27");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout27);
    obj.textEditor2:setAlign("client");
    obj.textEditor2:setField("hraca");
    lfm_setPropAsString(obj.textEditor2, "fontStyle",  "bold");
    obj.textEditor2:setName("textEditor2");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout25);
    obj.layout28:setLeft(295);
    obj.layout28:setTop(345);
    obj.layout28:setWidth(265);
    obj.layout28:setHeight(322);
    obj.layout28:setName("layout28");

    obj.textEditor3 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout28);
    obj.textEditor3:setAlign("client");
    obj.textEditor3:setField("hclasse");
    lfm_setPropAsString(obj.textEditor3, "fontStyle",  "bold");
    obj.textEditor3:setName("textEditor3");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setFields({'penarmadura', 'penescudo', 'outrosacrobacia', 'outrosadestrar', 'outrosatletismo', 'outrosatuacao1', 'outrosjogatina', 'outroscavalgar', 'outrosconhecimento1', 'outrosconhecimento2', 'outroscura', 'outrosdiplomacia', 'outrosenganacao', 'outrosfurtividade', 'outrosimagia', 'outrosiniciativa', 'outrosintimidacao', 'outrosintuicao', 'outrosladinagem', 'outrosoinformacao', 'outrosoficio1', 'outrosmeditacao', 'outrospercepcao', 'outrossobrevivencia', 'cbxacrobacia', 'cbxadestrar', 'cbxatletismo', 'cbxatuacao1', 'cbxjogatina', 'cbxcavalgar', 'cbxconhecimento1', 'cbxconhecimento2', 'cbxcura', 'cbxdiplomacia', 'cbxenganacao', 'cbxfurtividade', 'cbximagia', 'cbxiniciativa', 'cbxintimidacao', 'cbxintuicao', 'cbxladinagem', 'cbxoinformacao', 'cbxoficio1', 'cbxmeditacao', 'cbxpercepcao', 'cbxsobrevivencia', 'forca', 'modforca', 'destreza', 'moddestreza', 'constituicao', 'modconstituicao', 'inteligencia', 'modinteligencia', 'sabedoria', 'modsabedoria', 'carisma', 'modcarisma', 'nivel'});
    obj.dataLink1:setName("dataLink1");


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
				self.totaljogatina.hitTest = false;
				self.gradjogatina.hitTest = false;
				self.modjogatina.hitTest = false;
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
				self.totalmeditacao.hitTest = false;
				self.gradmeditacao.hitTest = false;
				self.modmeditacao.hitTest = false;
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
				self.totaljogatina.hitTest = true;
				self.gradjogatina.hitTest = true;
				self.modjogatina.hitTest = true;
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
				self.totalmeditacao.hitTest = true;
				self.gradmeditacao.hitTest = true;
				self.modmeditacao.hitTest = true;
				self.totalpercepcao.hitTest = true;
				self.gradpercepcao.hitTest = true;
				self.modpercepcao.hitTest = true;
				self.totalsobrevivencia.hitTest = true;
				self.gradsobrevivencia.hitTest = true;
				self.modsobrevivencia.hitTest = true;
			end;
		end;
	


    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            desCalculos2();
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modacrobacia = sheet.moddestreza or 0;
            				if sheet.cbxacrobacia then
            					sheet.gradacrobacia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalacrobacia = (math.floor((sheet.gradacrobacia)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modacrobacia) or 0)+math.floor((sheet.outrosacrobacia)or 0));
            				else
            					sheet.gradacrobacia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalacrobacia = (math.floor((sheet.gradacrobacia)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modacrobacia) or 0)+math.floor((sheet.outrosacrobacia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event2 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modadestrar = sheet.modcarisma or 0;
            				if sheet.cbxadestrar then
            					sheet.gradadestrar = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaladestrar = (math.floor((sheet.gradadestrar)or 0)+math.floor((sheet.modadestrar) or 0)+math.floor((sheet.outrosadestrar)or 0));
            				else
            					sheet.gradadestrar = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaladestrar = (math.floor((sheet.gradadestrar)or 0)+math.floor((sheet.modadestrar) or 0)+math.floor((sheet.outrosadestrar)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event3 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modatletismo = sheet.modforca or 0;
            				if sheet.cbxatletismo then
            					sheet.gradatletismo = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalatletismo = (math.floor((sheet.gradatletismo)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modatletismo) or 0)+math.floor((sheet.outrosatletismo)or 0));
            				else
            					sheet.gradatletismo = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalatletismo = (math.floor((sheet.gradatletismo)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modatletismo) or 0)+math.floor((sheet.outrosatletismo)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event4 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modatuacao1 = sheet.modcarisma or 0;
            				if sheet.cbxatuacao1 then
            					sheet.gradatuacao1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalatuacao1 = (math.floor((sheet.gradatuacao1)or 0)+math.floor((sheet.modatuacao1) or 0)+math.floor((sheet.outrosatuacao1)or 0));
            				else
            					sheet.gradatuacao1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalatuacao1 = (math.floor((sheet.gradatuacao1)or 0)+math.floor((sheet.modatuacao1) or 0)+math.floor((sheet.outrosatuacao1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event5 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modjogatina = sheet.modcarisma or 0;
            				if sheet.cbxjogatina then
            					sheet.gradjogatina = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaljogatina = (math.floor((sheet.gradjogatina)or 0)+math.floor((sheet.modjogatina) or 0)+math.floor((sheet.outrosjogatina)or 0));
            				else
            					sheet.gradjogatina = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaljogatina = (math.floor((sheet.gradjogatina)or 0)+math.floor((sheet.modjogatina) or 0)+math.floor((sheet.outrosjogatina)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event6 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modcavalgar = sheet.moddestreza or 0;
            				if sheet.cbxcavalgar then
            					sheet.gradcavalgar = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalcavalgar = (math.floor((sheet.gradcavalgar)or 0)+math.floor((sheet.modcavalgar) or 0)+math.floor((sheet.outroscavalgar)or 0));
            				else
            					sheet.gradcavalgar = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalcavalgar = (math.floor((sheet.gradcavalgar)or 0)+math.floor((sheet.modcavalgar) or 0)+math.floor((sheet.outroscavalgar)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event7 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modconhecimento1 = sheet.modinteligencia or 0;
            				if sheet.cbxconhecimento1 then
            					sheet.gradconhecimento1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalconhecimento1 = (math.floor((sheet.gradconhecimento1)or 0)+math.floor((sheet.modconhecimento1) or 0)+math.floor((sheet.outrosconhecimento1)or 0));
            				else
            					sheet.gradconhecimento1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalconhecimento1 = (math.floor((sheet.gradconhecimento1)or 0)+math.floor((sheet.modconhecimento1) or 0)+math.floor((sheet.outrosconhecimento1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event8 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modconhecimento2 = sheet.modinteligencia or 0;
            				if sheet.cbxconhecimento2 then
            					sheet.gradconhecimento2 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalconhecimento2 = (math.floor((sheet.gradconhecimento2)or 0)+math.floor((sheet.modconhecimento2) or 0)+math.floor((sheet.outrosconhecimento2)or 0));
            				else
            					sheet.gradconhecimento2 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalconhecimento2 = (math.floor((sheet.gradconhecimento2)or 0)+math.floor((sheet.modconhecimento2) or 0)+math.floor((sheet.outrosconhecimento2)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event9 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modcura = sheet.modsabedoria or 0;
            				if sheet.cbxcura then
            					sheet.gradcura = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalcura = (math.floor((sheet.gradcura)or 0)+math.floor((sheet.modcura) or 0)+math.floor((sheet.outroscura)or 0));
            				else
            					sheet.gradcura = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalcura = (math.floor((sheet.gradcura)or 0)+math.floor((sheet.modcura) or 0)+math.floor((sheet.outroscura)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event10 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.moddiplomacia = sheet.modcarisma or 0;
            				if sheet.cbxdiplomacia then
            					sheet.graddiplomacia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaldiplomacia = (math.floor((sheet.graddiplomacia)or 0)+math.floor((sheet.moddiplomacia) or 0)+math.floor((sheet.outrosdiplomacia)or 0));
            				else
            					sheet.graddiplomacia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaldiplomacia = (math.floor((sheet.graddiplomacia)or 0)+math.floor((sheet.moddiplomacia) or 0)+math.floor((sheet.outrosdiplomacia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event11 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modenganacao = sheet.modcarisma or 0;
            				if sheet.cbxenganacao then
            					sheet.gradenganacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalenganacao = (math.floor((sheet.gradenganacao)or 0)+math.floor((sheet.modenganacao) or 0)+math.floor((sheet.outrosenganacao)or 0));
            				else
            					sheet.gradenganacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalenganacao = (math.floor((sheet.gradenganacao)or 0)+math.floor((sheet.modenganacao) or 0)+math.floor((sheet.outrosenganacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event12 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modfurtividade = sheet.moddestreza or 0;
            				if sheet.cbxfurtividade then
            					sheet.gradfurtividade = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalfurtividade = (math.floor((sheet.gradfurtividade)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modfurtividade) or 0)+math.floor((sheet.outrosfurtividade)or 0));
            				else
            					sheet.gradfurtividade = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalfurtividade = (math.floor((sheet.gradfurtividade)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modfurtividade) or 0)+math.floor((sheet.outrosfurtividade)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event13 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modimagia = sheet.modinteligencia or 0;
            				if sheet.cbximagia then
            					sheet.gradimagia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalimagia = (math.floor((sheet.gradimagia)or 0)+math.floor((sheet.modimagia) or 0)+math.floor((sheet.outrosimagia)or 0));
            				else
            					sheet.gradimagia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalimagia = (math.floor((sheet.gradimagia)or 0)+math.floor((sheet.modimagia) or 0)+math.floor((sheet.outrosimagia)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event14 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modiniciativa = sheet.moddestreza or 0;
            				if sheet.cbxiniciativa then
            					sheet.gradiniciativa = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaliniciativa = (math.floor((sheet.gradiniciativa)or 0)+math.floor((sheet.modiniciativa) or 0)+math.floor((sheet.outrosiniciativa)or 0));
            				else
            					sheet.gradiniciativa = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaliniciativa = (math.floor((sheet.gradiniciativa)or 0)+math.floor((sheet.modiniciativa) or 0)+math.floor((sheet.outrosiniciativa)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event15 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modintimidacao = sheet.modcarisma or 0;
            				if sheet.cbxintimidacao then
            					sheet.gradintimidacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalintimidacao = (math.floor((sheet.gradintimidacao)or 0)+math.floor((sheet.modintimidacao) or 0)+math.floor((sheet.outrosintimidacao)or 0));
            				else
            					sheet.gradintimidacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalintimidacao = (math.floor((sheet.gradintimidacao)or 0)+math.floor((sheet.modintimidacao) or 0)+math.floor((sheet.outrosintimidacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event16 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modintuicao = sheet.modsabedoria or 0;
            				if sheet.cbxintuicao then
            					sheet.gradintuicao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalintuicao = (math.floor((sheet.gradintuicao)or 0)+math.floor((sheet.modintuicao) or 0)+math.floor((sheet.outrosintuicao)or 0));
            				else
            					sheet.gradintuicao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalintuicao = (math.floor((sheet.gradintuicao)or 0)+math.floor((sheet.modintuicao) or 0)+math.floor((sheet.outrosintuicao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event17 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modladinagem = sheet.moddestreza or 0;
            				if sheet.cbxladinagem then
            					sheet.gradladinagem = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalladinagem = (math.floor((sheet.gradladinagem)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modladinagem) or 0)+math.floor((sheet.outrosladinagem)or 0));
            				else
            					sheet.gradladinagem = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalladinagem = (math.floor((sheet.gradladinagem)or 0)+math.floor((sheet.penescudo) or 0)+math.floor((sheet.penarmadura) or 0)+math.floor((sheet.modladinagem) or 0)+math.floor((sheet.outrosladinagem)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event18 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modoinformacao = sheet.modcarisma or 0;
            				if sheet.cbxoinformacao then
            					sheet.gradoinformacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaloinformacao = (math.floor((sheet.gradoinformacao)or 0)+math.floor((sheet.modoinformacao) or 0)+math.floor((sheet.outrosoinformacao)or 0));
            				else
            					sheet.gradoinformacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaloinformacao = (math.floor((sheet.gradoinformacao)or 0)+math.floor((sheet.modoinformacao) or 0)+math.floor((sheet.outrosoinformacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event19 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modoficio1 = sheet.modinteligencia or 0;
            				if sheet.cbxoficio1 then
            					sheet.gradoficio1 = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totaloficio1 = (math.floor((sheet.gradoficio1)or 0)+math.floor((sheet.modoficio1) or 0)+math.floor((sheet.outrosoficio1)or 0));
            				else
            					sheet.gradoficio1 = (math.floor((sheet.metadenivel)or 0));
            					sheet.totaloficio1 = (math.floor((sheet.gradoficio1)or 0)+math.floor((sheet.modoficio1) or 0)+math.floor((sheet.outrosoficio1)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event20 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modmeditacao = sheet.modsabedoria or 0;
            				if sheet.cbxmeditacao then
            					sheet.gradmeditacao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalmeditacao = (math.floor((sheet.gradmeditacao)or 0)+math.floor((sheet.modmeditacao) or 0)+math.floor((sheet.outrosmeditacao)or 0));
            				else
            					sheet.gradmeditacao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalmeditacao = (math.floor((sheet.gradmeditacao)or 0)+math.floor((sheet.modmeditacao) or 0)+math.floor((sheet.outrosmeditacao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event21 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modpercepcao = sheet.modsabedoria or 0;
            				if sheet.cbxpercepcao then
            					sheet.gradpercepcao = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalpercepcao = (math.floor((sheet.gradpercepcao)or 0)+math.floor((sheet.modpercepcao) or 0)+math.floor((sheet.outrospercepcao)or 0));
            				else
            					sheet.gradpercepcao = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalpercepcao = (math.floor((sheet.gradpercepcao)or 0)+math.floor((sheet.modpercepcao) or 0)+math.floor((sheet.outrospercepcao)or 0));
            				end;
            			end;
        end, obj);

    obj._e_event22 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if self.calculos.checked == false then
            				sheet.modsobrevivencia = sheet.modsabedoria or 0;
            				if sheet.cbxsobrevivencia then
            					sheet.gradsobrevivencia = (math.floor((sheet.nivel)+3 or 0));
            					sheet.totalsobrevivencia = (math.floor((sheet.gradsobrevivencia)or 0)+math.floor((sheet.modsobrevivencia) or 0)+math.floor((sheet.outrossobrevivencia)or 0));
            				else
            					sheet.gradsobrevivencia = (math.floor((sheet.metadenivel)or 0));
            					sheet.totalsobrevivencia = (math.floor((sheet.gradsobrevivencia)or 0)+math.floor((sheet.modsobrevivencia) or 0)+math.floor((sheet.outrossobrevivencia)or 0));
            				end;
            			end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.cbxacrobacia ~= nil then self.cbxacrobacia:destroy(); self.cbxacrobacia = nil; end;
        if self.totaliniciativa ~= nil then self.totaliniciativa:destroy(); self.totaliniciativa = nil; end;
        if self.gradacrobacia ~= nil then self.gradacrobacia:destroy(); self.gradacrobacia = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.rectangle64 ~= nil then self.rectangle64:destroy(); self.rectangle64 = nil; end;
        if self.cbxfurtividade ~= nil then self.cbxfurtividade:destroy(); self.cbxfurtividade = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.cbxsobrevivencia ~= nil then self.cbxsobrevivencia:destroy(); self.cbxsobrevivencia = nil; end;
        if self.rectangle67 ~= nil then self.rectangle67:destroy(); self.rectangle67 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.rectangle91 ~= nil then self.rectangle91:destroy(); self.rectangle91 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.rectangle93 ~= nil then self.rectangle93:destroy(); self.rectangle93 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.outroscura ~= nil then self.outroscura:destroy(); self.outroscura = nil; end;
        if self.outrosimagia ~= nil then self.outrosimagia:destroy(); self.outrosimagia = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.cbxadestrar ~= nil then self.cbxadestrar:destroy(); self.cbxadestrar = nil; end;
        if self.rectangle85 ~= nil then self.rectangle85:destroy(); self.rectangle85 = nil; end;
        if self.modmeditacao ~= nil then self.modmeditacao:destroy(); self.modmeditacao = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.totalcavalgar ~= nil then self.totalcavalgar:destroy(); self.totalcavalgar = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.gradsobrevivencia ~= nil then self.gradsobrevivencia:destroy(); self.gradsobrevivencia = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.modoinformacao ~= nil then self.modoinformacao:destroy(); self.modoinformacao = nil; end;
        if self.outrosoficio1 ~= nil then self.outrosoficio1:destroy(); self.outrosoficio1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.rectangle75 ~= nil then self.rectangle75:destroy(); self.rectangle75 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.cbxoinformacao ~= nil then self.cbxoinformacao:destroy(); self.cbxoinformacao = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.outrosintimidacao ~= nil then self.outrosintimidacao:destroy(); self.outrosintimidacao = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle83 ~= nil then self.rectangle83:destroy(); self.rectangle83 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.rectangle70 ~= nil then self.rectangle70:destroy(); self.rectangle70 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.outrosoinformacao ~= nil then self.outrosoinformacao:destroy(); self.outrosoinformacao = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.modatuacao1 ~= nil then self.modatuacao1:destroy(); self.modatuacao1 = nil; end;
        if self.modintuicao ~= nil then self.modintuicao:destroy(); self.modintuicao = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.rectangle87 ~= nil then self.rectangle87:destroy(); self.rectangle87 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.gradenganacao ~= nil then self.gradenganacao:destroy(); self.gradenganacao = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.modacrobacia ~= nil then self.modacrobacia:destroy(); self.modacrobacia = nil; end;
        if self.cbxintimidacao ~= nil then self.cbxintimidacao:destroy(); self.cbxintimidacao = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.rectangle89 ~= nil then self.rectangle89:destroy(); self.rectangle89 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.cbxcavalgar ~= nil then self.cbxcavalgar:destroy(); self.cbxcavalgar = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.modladinagem ~= nil then self.modladinagem:destroy(); self.modladinagem = nil; end;
        if self.cbxconhecimento2 ~= nil then self.cbxconhecimento2:destroy(); self.cbxconhecimento2 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.cbxiniciativa ~= nil then self.cbxiniciativa:destroy(); self.cbxiniciativa = nil; end;
        if self.rectangle65 ~= nil then self.rectangle65:destroy(); self.rectangle65 = nil; end;
        if self.cbxatletismo ~= nil then self.cbxatletismo:destroy(); self.cbxatletismo = nil; end;
        if self.cbxdiplomacia ~= nil then self.cbxdiplomacia:destroy(); self.cbxdiplomacia = nil; end;
        if self.totalatuacao1 ~= nil then self.totalatuacao1:destroy(); self.totalatuacao1 = nil; end;
        if self.cbxoficio1 ~= nil then self.cbxoficio1:destroy(); self.cbxoficio1 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.gradintuicao ~= nil then self.gradintuicao:destroy(); self.gradintuicao = nil; end;
        if self.rectangle68 ~= nil then self.rectangle68:destroy(); self.rectangle68 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.gradatuacao1 ~= nil then self.gradatuacao1:destroy(); self.gradatuacao1 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.rectangle80 ~= nil then self.rectangle80:destroy(); self.rectangle80 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.totalcura ~= nil then self.totalcura:destroy(); self.totalcura = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.cbxatuacao1 ~= nil then self.cbxatuacao1:destroy(); self.cbxatuacao1 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.modsobrevivencia ~= nil then self.modsobrevivencia:destroy(); self.modsobrevivencia = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.gradcavalgar ~= nil then self.gradcavalgar:destroy(); self.gradcavalgar = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rectangle81 ~= nil then self.rectangle81:destroy(); self.rectangle81 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.totalenganacao ~= nil then self.totalenganacao:destroy(); self.totalenganacao = nil; end;
        if self.outrosenganacao ~= nil then self.outrosenganacao:destroy(); self.outrosenganacao = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.gradoinformacao ~= nil then self.gradoinformacao:destroy(); self.gradoinformacao = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.rectangle90 ~= nil then self.rectangle90:destroy(); self.rectangle90 = nil; end;
        if self.outrosatuacao1 ~= nil then self.outrosatuacao1:destroy(); self.outrosatuacao1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.modintimidacao ~= nil then self.modintimidacao:destroy(); self.modintimidacao = nil; end;
        if self.modadestrar ~= nil then self.modadestrar:destroy(); self.modadestrar = nil; end;
        if self.outrosconhecimento2 ~= nil then self.outrosconhecimento2:destroy(); self.outrosconhecimento2 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle92 ~= nil then self.rectangle92:destroy(); self.rectangle92 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.outrosladinagem ~= nil then self.outrosladinagem:destroy(); self.outrosladinagem = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.totaloinformacao ~= nil then self.totaloinformacao:destroy(); self.totaloinformacao = nil; end;
        if self.rectangle94 ~= nil then self.rectangle94:destroy(); self.rectangle94 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.cbxpercepcao ~= nil then self.cbxpercepcao:destroy(); self.cbxpercepcao = nil; end;
        if self.rectangle88 ~= nil then self.rectangle88:destroy(); self.rectangle88 = nil; end;
        if self.outrosatletismo ~= nil then self.outrosatletismo:destroy(); self.outrosatletismo = nil; end;
        if self.rectangle96 ~= nil then self.rectangle96:destroy(); self.rectangle96 = nil; end;
        if self.totaladestrar ~= nil then self.totaladestrar:destroy(); self.totaladestrar = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.totalimagia ~= nil then self.totalimagia:destroy(); self.totalimagia = nil; end;
        if self.gradconhecimento2 ~= nil then self.gradconhecimento2:destroy(); self.gradconhecimento2 = nil; end;
        if self.totalfurtividade ~= nil then self.totalfurtividade:destroy(); self.totalfurtividade = nil; end;
        if self.modenganacao ~= nil then self.modenganacao:destroy(); self.modenganacao = nil; end;
        if self.outrosiniciativa ~= nil then self.outrosiniciativa:destroy(); self.outrosiniciativa = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.graddiplomacia ~= nil then self.graddiplomacia:destroy(); self.graddiplomacia = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.totalacrobacia ~= nil then self.totalacrobacia:destroy(); self.totalacrobacia = nil; end;
        if self.rectangle77 ~= nil then self.rectangle77:destroy(); self.rectangle77 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.rectangle82 ~= nil then self.rectangle82:destroy(); self.rectangle82 = nil; end;
        if self.modpercepcao ~= nil then self.modpercepcao:destroy(); self.modpercepcao = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.gradfurtividade ~= nil then self.gradfurtividade:destroy(); self.gradfurtividade = nil; end;
        if self.rectangle98 ~= nil then self.rectangle98:destroy(); self.rectangle98 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle71 ~= nil then self.rectangle71:destroy(); self.rectangle71 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.gradatletismo ~= nil then self.gradatletismo:destroy(); self.gradatletismo = nil; end;
        if self.modatletismo ~= nil then self.modatletismo:destroy(); self.modatletismo = nil; end;
        if self.totalconhecimento2 ~= nil then self.totalconhecimento2:destroy(); self.totalconhecimento2 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.rectangle76 ~= nil then self.rectangle76:destroy(); self.rectangle76 = nil; end;
        if self.gradadestrar ~= nil then self.gradadestrar:destroy(); self.gradadestrar = nil; end;
        if self.modoficio1 ~= nil then self.modoficio1:destroy(); self.modoficio1 = nil; end;
        if self.rectangle86 ~= nil then self.rectangle86:destroy(); self.rectangle86 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.cbxconhecimento1 ~= nil then self.cbxconhecimento1:destroy(); self.cbxconhecimento1 = nil; end;
        if self.moddiplomacia ~= nil then self.moddiplomacia:destroy(); self.moddiplomacia = nil; end;
        if self.gradmeditacao ~= nil then self.gradmeditacao:destroy(); self.gradmeditacao = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.gradconhecimento1 ~= nil then self.gradconhecimento1:destroy(); self.gradconhecimento1 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.rectangle79 ~= nil then self.rectangle79:destroy(); self.rectangle79 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.rectangle66 ~= nil then self.rectangle66:destroy(); self.rectangle66 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.outrosacrobacia ~= nil then self.outrosacrobacia:destroy(); self.outrosacrobacia = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.gradimagia ~= nil then self.gradimagia:destroy(); self.gradimagia = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.cbxladinagem ~= nil then self.cbxladinagem:destroy(); self.cbxladinagem = nil; end;
        if self.modconhecimento2 ~= nil then self.modconhecimento2:destroy(); self.modconhecimento2 = nil; end;
        if self.totaldiplomacia ~= nil then self.totaldiplomacia:destroy(); self.totaldiplomacia = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.modfurtividade ~= nil then self.modfurtividade:destroy(); self.modfurtividade = nil; end;
        if self.modcavalgar ~= nil then self.modcavalgar:destroy(); self.modcavalgar = nil; end;
        if self.outrosfurtividade ~= nil then self.outrosfurtividade:destroy(); self.outrosfurtividade = nil; end;
        if self.cbximagia ~= nil then self.cbximagia:destroy(); self.cbximagia = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.cbxmeditacao ~= nil then self.cbxmeditacao:destroy(); self.cbxmeditacao = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.totalatletismo ~= nil then self.totalatletismo:destroy(); self.totalatletismo = nil; end;
        if self.modimagia ~= nil then self.modimagia:destroy(); self.modimagia = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.outrosadestrar ~= nil then self.outrosadestrar:destroy(); self.outrosadestrar = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.outrosdiplomacia ~= nil then self.outrosdiplomacia:destroy(); self.outrosdiplomacia = nil; end;
        if self.outrospercepcao ~= nil then self.outrospercepcao:destroy(); self.outrospercepcao = nil; end;
        if self.rectangle97 ~= nil then self.rectangle97:destroy(); self.rectangle97 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.outroscavalgar ~= nil then self.outroscavalgar:destroy(); self.outroscavalgar = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.totalconhecimento1 ~= nil then self.totalconhecimento1:destroy(); self.totalconhecimento1 = nil; end;
        if self.cbxcura ~= nil then self.cbxcura:destroy(); self.cbxcura = nil; end;
        if self.gradpercepcao ~= nil then self.gradpercepcao:destroy(); self.gradpercepcao = nil; end;
        if self.totalladinagem ~= nil then self.totalladinagem:destroy(); self.totalladinagem = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.totaljogatina ~= nil then self.totaljogatina:destroy(); self.totaljogatina = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.gradcura ~= nil then self.gradcura:destroy(); self.gradcura = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.cbxenganacao ~= nil then self.cbxenganacao:destroy(); self.cbxenganacao = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.rectangle69 ~= nil then self.rectangle69:destroy(); self.rectangle69 = nil; end;
        if self.totalmeditacao ~= nil then self.totalmeditacao:destroy(); self.totalmeditacao = nil; end;
        if self.outrosconhecimento1 ~= nil then self.outrosconhecimento1:destroy(); self.outrosconhecimento1 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.cbxintuicao ~= nil then self.cbxintuicao:destroy(); self.cbxintuicao = nil; end;
        if self.outrosjogatina ~= nil then self.outrosjogatina:destroy(); self.outrosjogatina = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.rectangle73 ~= nil then self.rectangle73:destroy(); self.rectangle73 = nil; end;
        if self.modconhecimento1 ~= nil then self.modconhecimento1:destroy(); self.modconhecimento1 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.modcura ~= nil then self.modcura:destroy(); self.modcura = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.modiniciativa ~= nil then self.modiniciativa:destroy(); self.modiniciativa = nil; end;
        if self.gradladinagem ~= nil then self.gradladinagem:destroy(); self.gradladinagem = nil; end;
        if self.totaloficio1 ~= nil then self.totaloficio1:destroy(); self.totaloficio1 = nil; end;
        if self.outrosmeditacao ~= nil then self.outrosmeditacao:destroy(); self.outrosmeditacao = nil; end;
        if self.cbxjogatina ~= nil then self.cbxjogatina:destroy(); self.cbxjogatina = nil; end;
        if self.rectangle95 ~= nil then self.rectangle95:destroy(); self.rectangle95 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.modjogatina ~= nil then self.modjogatina:destroy(); self.modjogatina = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rectangle78 ~= nil then self.rectangle78:destroy(); self.rectangle78 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.totalintuicao ~= nil then self.totalintuicao:destroy(); self.totalintuicao = nil; end;
        if self.rectangle63 ~= nil then self.rectangle63:destroy(); self.rectangle63 = nil; end;
        if self.gradoficio1 ~= nil then self.gradoficio1:destroy(); self.gradoficio1 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle74 ~= nil then self.rectangle74:destroy(); self.rectangle74 = nil; end;
        if self.totalsobrevivencia ~= nil then self.totalsobrevivencia:destroy(); self.totalsobrevivencia = nil; end;
        if self.outrossobrevivencia ~= nil then self.outrossobrevivencia:destroy(); self.outrossobrevivencia = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.gradintimidacao ~= nil then self.gradintimidacao:destroy(); self.gradintimidacao = nil; end;
        if self.totalpercepcao ~= nil then self.totalpercepcao:destroy(); self.totalpercepcao = nil; end;
        if self.gradjogatina ~= nil then self.gradjogatina:destroy(); self.gradjogatina = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.rectangle84 ~= nil then self.rectangle84:destroy(); self.rectangle84 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle72 ~= nil then self.rectangle72:destroy(); self.rectangle72 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.gradiniciativa ~= nil then self.gradiniciativa:destroy(); self.gradiniciativa = nil; end;
        if self.totalintimidacao ~= nil then self.totalintimidacao:destroy(); self.totalintimidacao = nil; end;
        if self.outrosintuicao ~= nil then self.outrosintuicao:destroy(); self.outrosintuicao = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta02()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta02();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta02 = {
    newEditor = newTormenta02, 
    new = newTormenta02, 
    name = "Tormenta02", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta02 = _Tormenta02;
Firecast.registrarForm(_Tormenta02);

return _Tormenta02;
