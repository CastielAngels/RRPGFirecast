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
    obj.caarmadura:setField("caarmadura");
    obj.caarmadura:setType("number");
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
    obj.falhamarmadura:setMax(999);
    obj.falhamarmadura:setHorzTextAlign("center");
    obj.falhamarmadura:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamarmadura, "fontStyle",  "bold");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(370);
    obj.layout3:setTop(189);
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
    obj.caescudo:setField("caescudo");
    obj.caescudo:setType("number");
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
    obj.falhamescudo:setMax(999);
    obj.falhamescudo:setHorzTextAlign("center");
    obj.falhamescudo:setFontSize(15.0);
    lfm_setPropAsString(obj.falhamescudo, "fontStyle",  "bold");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(605);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(395);
    obj.layout4:setHeight(700);
    obj.layout4:setName("layout4");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout4);
    obj.rectangle6:setLeft(150);
    obj.rectangle6:setTop(1);
    obj.rectangle6:setColor("Gainsboro");
    obj.rectangle6:setWidth(104);
    obj.rectangle6:setHeight(15);
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout4);
    obj.label10:setLeft(153);
    obj.label10:setTop(1);
    obj.label10:setWidth(98);
    obj.label10:setHeight(12);
    obj.label10:setFontSize(10);
    obj.label10:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setText("Equipamentos");
    obj.label10:setName("label10");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(13);
    obj.layout5:setWidth(395);
    obj.layout5:setHeight(418);
    obj.layout5:setName("layout5");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout5);
    obj.textEditor1:setAlign("client");
    obj.textEditor1:setField("equipamentos");
    lfm_setPropAsString(obj.textEditor1, "fontStyle",  "bold");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout4);
    obj.rectangle7:setLeft(150);
    obj.rectangle7:setTop(439);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(104);
    obj.rectangle7:setHeight(15);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout4);
    obj.label11:setLeft(153);
    obj.label11:setTop(439);
    obj.label11:setWidth(98);
    obj.label11:setHeight(12);
    obj.label11:setFontSize(10);
    obj.label11:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setText("Anotações");
    obj.label11:setName("label11");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout4);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(451);
    obj.layout6:setWidth(395);
    obj.layout6:setHeight(240);
    obj.layout6:setName("layout6");

    obj.textEditor2 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout6);
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

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.falhamescudo ~= nil then self.falhamescudo:destroy(); self.falhamescudo = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.penarmadura ~= nil then self.penarmadura:destroy(); self.penarmadura = nil; end;
        if self.nescudo ~= nil then self.nescudo:destroy(); self.nescudo = nil; end;
        if self.penescudo ~= nil then self.penescudo:destroy(); self.penescudo = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.desmnarmadura ~= nil then self.desmnarmadura:destroy(); self.desmnarmadura = nil; end;
        if self.falhamarmadura ~= nil then self.falhamarmadura:destroy(); self.falhamarmadura = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.narmadura ~= nil then self.narmadura:destroy(); self.narmadura = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.caarmadura ~= nil then self.caarmadura:destroy(); self.caarmadura = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.caescudo ~= nil then self.caescudo:destroy(); self.caescudo = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
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
