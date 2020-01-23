require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_Tormenta06()
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
    obj:setName("Tormenta06");
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
    obj.layout1:setLeft(5);
    obj.layout1:setTop(5);
    obj.layout1:setWidth(497);
    obj.layout1:setHeight(95);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(0);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setWidth(495);
    obj.rectangle2:setHeight(90);
    obj.rectangle2:setColor("Gray");
    obj.rectangle2:setXradius(2);
    obj.rectangle2:setYradius(2);
    obj.rectangle2:setName("rectangle2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(5);
    obj.layout2:setTop(105);
    obj.layout2:setWidth(497);
    obj.layout2:setHeight(95);
    obj.layout2:setName("layout2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(0);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setWidth(495);
    obj.rectangle3:setHeight(90);
    obj.rectangle3:setColor("Gray");
    obj.rectangle3:setXradius(2);
    obj.rectangle3:setYradius(2);
    obj.rectangle3:setName("rectangle3");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(5);
    obj.layout3:setTop(205);
    obj.layout3:setWidth(497);
    obj.layout3:setHeight(95);
    obj.layout3:setName("layout3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(0);
    obj.rectangle4:setTop(0);
    obj.rectangle4:setWidth(495);
    obj.rectangle4:setHeight(90);
    obj.rectangle4:setColor("Gray");
    obj.rectangle4:setXradius(2);
    obj.rectangle4:setYradius(2);
    obj.rectangle4:setName("rectangle4");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(5);
    obj.layout4:setTop(305);
    obj.layout4:setWidth(497);
    obj.layout4:setHeight(95);
    obj.layout4:setName("layout4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setLeft(0);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setWidth(495);
    obj.rectangle5:setHeight(90);
    obj.rectangle5:setColor("Gray");
    obj.rectangle5:setXradius(2);
    obj.rectangle5:setYradius(2);
    obj.rectangle5:setName("rectangle5");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(5);
    obj.layout5:setTop(405);
    obj.layout5:setWidth(497);
    obj.layout5:setHeight(95);
    obj.layout5:setName("layout5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setLeft(0);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setWidth(495);
    obj.rectangle6:setHeight(90);
    obj.rectangle6:setColor("Gray");
    obj.rectangle6:setXradius(2);
    obj.rectangle6:setYradius(2);
    obj.rectangle6:setName("rectangle6");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(5);
    obj.layout6:setTop(505);
    obj.layout6:setWidth(497);
    obj.layout6:setHeight(95);
    obj.layout6:setName("layout6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(0);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setWidth(495);
    obj.rectangle7:setHeight(90);
    obj.rectangle7:setColor("Gray");
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(5);
    obj.layout7:setTop(605);
    obj.layout7:setWidth(497);
    obj.layout7:setHeight(95);
    obj.layout7:setName("layout7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setLeft(0);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setWidth(495);
    obj.rectangle8:setHeight(90);
    obj.rectangle8:setColor("Gray");
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(510);
    obj.layout8:setTop(5);
    obj.layout8:setWidth(497);
    obj.layout8:setHeight(95);
    obj.layout8:setName("layout8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setLeft(0);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setWidth(495);
    obj.rectangle9:setHeight(90);
    obj.rectangle9:setColor("Gray");
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(510);
    obj.layout9:setTop(105);
    obj.layout9:setWidth(497);
    obj.layout9:setHeight(95);
    obj.layout9:setName("layout9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(0);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setWidth(495);
    obj.rectangle10:setHeight(90);
    obj.rectangle10:setColor("Gray");
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(510);
    obj.layout10:setTop(205);
    obj.layout10:setWidth(497);
    obj.layout10:setHeight(95);
    obj.layout10:setName("layout10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout10);
    obj.rectangle11:setLeft(0);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setWidth(495);
    obj.rectangle11:setHeight(90);
    obj.rectangle11:setColor("Gray");
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(510);
    obj.layout11:setTop(305);
    obj.layout11:setWidth(497);
    obj.layout11:setHeight(95);
    obj.layout11:setName("layout11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout11);
    obj.rectangle12:setLeft(0);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setWidth(495);
    obj.rectangle12:setHeight(90);
    obj.rectangle12:setColor("Gray");
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setLeft(510);
    obj.layout12:setTop(405);
    obj.layout12:setWidth(497);
    obj.layout12:setHeight(95);
    obj.layout12:setName("layout12");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout12);
    obj.rectangle13:setLeft(0);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setWidth(495);
    obj.rectangle13:setHeight(90);
    obj.rectangle13:setColor("Gray");
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(510);
    obj.layout13:setTop(505);
    obj.layout13:setWidth(497);
    obj.layout13:setHeight(95);
    obj.layout13:setName("layout13");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout13);
    obj.rectangle14:setLeft(0);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setWidth(495);
    obj.rectangle14:setHeight(90);
    obj.rectangle14:setColor("Gray");
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(510);
    obj.layout14:setTop(605);
    obj.layout14:setWidth(497);
    obj.layout14:setHeight(95);
    obj.layout14:setName("layout14");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout14);
    obj.rectangle15:setLeft(0);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setWidth(495);
    obj.rectangle15:setHeight(90);
    obj.rectangle15:setColor("Gray");
    obj.rectangle15:setXradius(2);
    obj.rectangle15:setYradius(2);
    obj.rectangle15:setName("rectangle15");

    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            desCalculos();
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

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newTormenta06()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_Tormenta06();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _Tormenta06 = {
    newEditor = newTormenta06, 
    new = newTormenta06, 
    name = "Tormenta06", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Tormenta06 = _Tormenta06;
Firecast.registrarForm(_Tormenta06);

return _Tormenta06;
