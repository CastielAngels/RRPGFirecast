require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newChangeling04()
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
    obj:setName("Changeling04");
    obj:setAlign("client");
    obj:setTheme("light");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setWidth(883);
    obj.image1:setHeight(1145);
    obj.image1:setSRC("/sub/img/04.png");
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(62);
    obj.layout1:setTop(100);
    obj.layout1:setWidth(760);
    obj.layout1:setHeight(980);
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setLeft(4);
    obj.rectangle1:setTop(55);
    obj.rectangle1:setWidth(754);
    obj.rectangle1:setHeight(253);
    obj.rectangle1:setColor("#FDFDFD");
    obj.rectangle1:setName("rectangle1");

    obj.backgroundn = gui.fromHandle(_obj_newObject("richEdit"));
    obj.backgroundn:setParent(obj.layout1);
    obj.backgroundn:setLeft(4);
    obj.backgroundn:setTop(55);
    obj.backgroundn:setWidth(754);
    obj.backgroundn:setHeight(253);
    obj.backgroundn:setName("backgroundn");
    obj.backgroundn:setField("background");

    obj.datatitulan = gui.fromHandle(_obj_newObject("edit"));
    obj.datatitulan:setParent(obj.layout1);
    obj.datatitulan:setLeft(148);
    obj.datatitulan:setTop(302);
    obj.datatitulan:setWidth(102);
    obj.datatitulan:setHeight(26);
    obj.datatitulan:setName("datatitulan");
    obj.datatitulan:setField("datatitula");
    obj.datatitulan:setFontColor("#48484A");
    obj.datatitulan:setHorzTextAlign("center");
    obj.datatitulan:setFontSize(15);
    obj.datatitulan:setTransparent(true);

    obj.sociedadesn = gui.fromHandle(_obj_newObject("edit"));
    obj.sociedadesn:setParent(obj.layout1);
    obj.sociedadesn:setLeft(425);
    obj.sociedadesn:setTop(302);
    obj.sociedadesn:setWidth(333);
    obj.sociedadesn:setHeight(26);
    obj.sociedadesn:setName("sociedadesn");
    obj.sociedadesn:setField("sociedades");
    obj.sociedadesn:setFontColor("#48484A");
    obj.sociedadesn:setFontSize(15);
    obj.sociedadesn:setTransparent(true);

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(5);
    obj.layout2:setTop(366);
    obj.layout2:setWidth(754);
    obj.layout2:setHeight(214);
    obj.layout2:setName("layout2");

    obj.nverdadeiron = gui.fromHandle(_obj_newObject("edit"));
    obj.nverdadeiron:setParent(obj.layout2);
    obj.nverdadeiron:setLeft(130);
    obj.nverdadeiron:setTop(1);
    obj.nverdadeiron:setWidth(116);
    obj.nverdadeiron:setHeight(26);
    obj.nverdadeiron:setName("nverdadeiron");
    obj.nverdadeiron:setField("nverdadeiro");
    obj.nverdadeiron:setFontColor("#48484A");
    obj.nverdadeiron:setFontSize(15);
    obj.nverdadeiron:setTransparent(true);

    obj.idadecn = gui.fromHandle(_obj_newObject("edit"));
    obj.idadecn:setParent(obj.layout2);
    obj.idadecn:setLeft(132);
    obj.idadecn:setTop(20);
    obj.idadecn:setWidth(114);
    obj.idadecn:setHeight(26);
    obj.idadecn:setName("idadecn");
    obj.idadecn:setField("idadec");
    obj.idadecn:setFontColor("#48484A");
    obj.idadecn:setFontSize(15);
    obj.idadecn:setTransparent(true);

    obj.idadean = gui.fromHandle(_obj_newObject("edit"));
    obj.idadean:setParent(obj.layout2);
    obj.idadean:setLeft(113);
    obj.idadean:setTop(39);
    obj.idadean:setWidth(133);
    obj.idadean:setHeight(26);
    obj.idadean:setName("idadean");
    obj.idadean:setField("idadea");
    obj.idadean:setFontColor("#48484A");
    obj.idadean:setFontSize(15);
    obj.idadean:setTransparent(true);

    obj.datadenan = gui.fromHandle(_obj_newObject("edit"));
    obj.datadenan:setParent(obj.layout2);
    obj.datadenan:setLeft(149);
    obj.datadenan:setTop(58);
    obj.datadenan:setWidth(97);
    obj.datadenan:setHeight(26);
    obj.datadenan:setName("datadenan");
    obj.datadenan:setField("datadena");
    obj.datadenan:setFontColor("#48484A");
    obj.datadenan:setFontSize(15);
    obj.datadenan:setTransparent(true);

    obj.cabelosn = gui.fromHandle(_obj_newObject("edit"));
    obj.cabelosn:setParent(obj.layout2);
    obj.cabelosn:setLeft(60);
    obj.cabelosn:setTop(78);
    obj.cabelosn:setWidth(186);
    obj.cabelosn:setHeight(26);
    obj.cabelosn:setName("cabelosn");
    obj.cabelosn:setField("cabelos");
    obj.cabelosn:setFontColor("#48484A");
    obj.cabelosn:setFontSize(15);
    obj.cabelosn:setTransparent(true);

    obj.olhosn = gui.fromHandle(_obj_newObject("edit"));
    obj.olhosn:setParent(obj.layout2);
    obj.olhosn:setLeft(47);
    obj.olhosn:setTop(97);
    obj.olhosn:setWidth(199);
    obj.olhosn:setHeight(26);
    obj.olhosn:setName("olhosn");
    obj.olhosn:setField("olhos");
    obj.olhosn:setFontColor("#48484A");
    obj.olhosn:setFontSize(15);
    obj.olhosn:setTransparent(true);

    obj.racan = gui.fromHandle(_obj_newObject("edit"));
    obj.racan:setParent(obj.layout2);
    obj.racan:setLeft(39);
    obj.racan:setTop(116);
    obj.racan:setWidth(207);
    obj.racan:setHeight(26);
    obj.racan:setName("racan");
    obj.racan:setField("raca");
    obj.racan:setFontColor("#48484A");
    obj.racan:setFontSize(15);
    obj.racan:setTransparent(true);

    obj.nacionalidan = gui.fromHandle(_obj_newObject("edit"));
    obj.nacionalidan:setParent(obj.layout2);
    obj.nacionalidan:setLeft(101);
    obj.nacionalidan:setTop(135);
    obj.nacionalidan:setWidth(145);
    obj.nacionalidan:setHeight(26);
    obj.nacionalidan:setName("nacionalidan");
    obj.nacionalidan:setField("nacionalida");
    obj.nacionalidan:setFontColor("#48484A");
    obj.nacionalidan:setFontSize(15);
    obj.nacionalidan:setTransparent(true);

    obj.alturan = gui.fromHandle(_obj_newObject("edit"));
    obj.alturan:setParent(obj.layout2);
    obj.alturan:setLeft(52);
    obj.alturan:setTop(154);
    obj.alturan:setWidth(194);
    obj.alturan:setHeight(26);
    obj.alturan:setName("alturan");
    obj.alturan:setField("altura");
    obj.alturan:setFontColor("#48484A");
    obj.alturan:setFontSize(15);
    obj.alturan:setTransparent(true);

    obj.peson = gui.fromHandle(_obj_newObject("edit"));
    obj.peson:setParent(obj.layout2);
    obj.peson:setLeft(37);
    obj.peson:setTop(172);
    obj.peson:setWidth(209);
    obj.peson:setHeight(26);
    obj.peson:setName("peson");
    obj.peson:setField("peso");
    obj.peson:setFontColor("#48484A");
    obj.peson:setFontSize(15);
    obj.peson:setTransparent(true);

    obj.generon = gui.fromHandle(_obj_newObject("edit"));
    obj.generon:setParent(obj.layout2);
    obj.generon:setLeft(56);
    obj.generon:setTop(191);
    obj.generon:setWidth(190);
    obj.generon:setHeight(26);
    obj.generon:setName("generon");
    obj.generon:setField("genero");
    obj.generon:setFontColor("#48484A");
    obj.generon:setFontSize(15);
    obj.generon:setTransparent(true);

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(274);
    obj.layout3:setTop(366);
    obj.layout3:setWidth(484);
    obj.layout3:setHeight(215);
    obj.layout3:setName("layout3");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout3);
    obj.rectangle2:setLeft(138);
    obj.rectangle2:setTop(20);
    obj.rectangle2:setWidth(346);
    obj.rectangle2:setHeight(5);
    obj.rectangle2:setColor("#FDFDFD");
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setLeft(133);
    obj.rectangle3:setTop(114);
    obj.rectangle3:setWidth(351);
    obj.rectangle3:setHeight(5);
    obj.rectangle3:setColor("#FDFDFD");
    obj.rectangle3:setName("rectangle3");

    obj.aparenciamn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.aparenciamn:setParent(obj.layout3);
    obj.aparenciamn:setTop(27);
    obj.aparenciamn:setWidth(484);
    obj.aparenciamn:setHeight(74);
    obj.aparenciamn:setName("aparenciamn");
    obj.aparenciamn:setField("aparenciam");
    obj.aparenciamn:setFontColor("#48484A");
    obj.aparenciamn:setFontSize(15);

    obj.aparenciafn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.aparenciafn:setParent(obj.layout3);
    obj.aparenciafn:setTop(122);
    obj.aparenciafn:setWidth(484);
    obj.aparenciafn:setHeight(93);
    obj.aparenciafn:setName("aparenciafn");
    obj.aparenciafn:setField("aparenciaf");
    obj.aparenciafn:setFontColor("#48484A");
    obj.aparenciafn:setFontSize(15);

    obj.limagen = gui.fromHandle(_obj_newObject("image"));
    obj.limagen:setParent(obj.layout1);
    obj.limagen:setLeft(49);
    obj.limagen:setTop(659);
    obj.limagen:setWidth(320);
    obj.limagen:setHeight(320);
    obj.limagen:setName("limagen");
    obj.limagen:setField("limage");
    obj.limagen:setEditable(true);
    obj.limagen:setStyle("stretch");

    obj.cimagen = gui.fromHandle(_obj_newObject("image"));
    obj.cimagen:setParent(obj.layout1);
    obj.cimagen:setLeft(420);
    obj.cimagen:setTop(659);
    obj.cimagen:setWidth(320);
    obj.cimagen:setHeight(320);
    obj.cimagen:setName("cimagen");
    obj.cimagen:setField("cimage");
    obj.cimagen:setEditable(true);
    obj.cimagen:setStyle("stretch");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.scrollBox1);
    obj.rectangle4:setLeft(58);
    obj.rectangle4:setTop(845);
    obj.rectangle4:setWidth(7);
    obj.rectangle4:setHeight(84);
    obj.rectangle4:setColor("#FDFDFD");
    obj.rectangle4:setName("rectangle4");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.idadecn ~= nil then self.idadecn:destroy(); self.idadecn = nil; end;
        if self.cimagen ~= nil then self.cimagen:destroy(); self.cimagen = nil; end;
        if self.olhosn ~= nil then self.olhosn:destroy(); self.olhosn = nil; end;
        if self.limagen ~= nil then self.limagen:destroy(); self.limagen = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.cabelosn ~= nil then self.cabelosn:destroy(); self.cabelosn = nil; end;
        if self.nverdadeiron ~= nil then self.nverdadeiron:destroy(); self.nverdadeiron = nil; end;
        if self.generon ~= nil then self.generon:destroy(); self.generon = nil; end;
        if self.alturan ~= nil then self.alturan:destroy(); self.alturan = nil; end;
        if self.nacionalidan ~= nil then self.nacionalidan:destroy(); self.nacionalidan = nil; end;
        if self.backgroundn ~= nil then self.backgroundn:destroy(); self.backgroundn = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.datatitulan ~= nil then self.datatitulan:destroy(); self.datatitulan = nil; end;
        if self.datadenan ~= nil then self.datadenan:destroy(); self.datadenan = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.aparenciafn ~= nil then self.aparenciafn:destroy(); self.aparenciafn = nil; end;
        if self.peson ~= nil then self.peson:destroy(); self.peson = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.racan ~= nil then self.racan:destroy(); self.racan = nil; end;
        if self.idadean ~= nil then self.idadean:destroy(); self.idadean = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.sociedadesn ~= nil then self.sociedadesn:destroy(); self.sociedadesn = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.aparenciamn ~= nil then self.aparenciamn:destroy(); self.aparenciamn = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Changeling04 = {
    newEditor = newChangeling04, 
    new = newChangeling04, 
    name = "Changeling04", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Changeling04 = _Changeling04;
rrpg.registrarForm(_Changeling04);

return _Changeling04;
