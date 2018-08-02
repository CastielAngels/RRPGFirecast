require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newChangeling03()
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
    obj:setName("Changeling03");
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
    obj.image1:setSRC("/sub/img/03.png");
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(62);
    obj.layout1:setTop(100);
    obj.layout1:setWidth(760);
    obj.layout1:setHeight(980);
    obj.layout1:setName("layout1");

    obj.aliadosn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.aliadosn:setParent(obj.layout1);
    obj.aliadosn:setLeft(5);
    obj.aliadosn:setTop(90);
    obj.aliadosn:setWidth(360);
    obj.aliadosn:setHeight(60);
    obj.aliadosn:setName("aliadosn");
    obj.aliadosn:setField("aliados");
    obj.aliadosn:setFontColor("#48484A");
    obj.aliadosn:setFontSize(15);
    lfm_setPropAsString(obj.aliadosn, "fontStyle",  "bold");
    obj.aliadosn:setTransparent(false);

    obj.juramentosn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.juramentosn:setParent(obj.layout1);
    obj.juramentosn:setLeft(398);
    obj.juramentosn:setTop(90);
    obj.juramentosn:setWidth(360);
    obj.juramentosn:setHeight(60);
    obj.juramentosn:setName("juramentosn");
    obj.juramentosn:setField("juramentos");
    obj.juramentosn:setFontColor("#48484A");
    obj.juramentosn:setFontSize(15);
    lfm_setPropAsString(obj.juramentosn, "fontStyle",  "bold");
    obj.juramentosn:setTransparent(false);

    obj.contatosn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.contatosn:setParent(obj.layout1);
    obj.contatosn:setLeft(5);
    obj.contatosn:setTop(185);
    obj.contatosn:setWidth(360);
    obj.contatosn:setHeight(60);
    obj.contatosn:setName("contatosn");
    obj.contatosn:setField("contatos");
    obj.contatosn:setFontColor("#48484A");
    obj.contatosn:setFontSize(15);
    lfm_setPropAsString(obj.contatosn, "fontStyle",  "bold");
    obj.contatosn:setTransparent(false);

    obj.lemorancasn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.lemorancasn:setParent(obj.layout1);
    obj.lemorancasn:setLeft(398);
    obj.lemorancasn:setTop(185);
    obj.lemorancasn:setWidth(360);
    obj.lemorancasn:setHeight(60);
    obj.lemorancasn:setName("lemorancasn");
    obj.lemorancasn:setField("lemorancas");
    obj.lemorancasn:setFontColor("#48484A");
    obj.lemorancasn:setFontSize(15);
    lfm_setPropAsString(obj.lemorancasn, "fontStyle",  "bold");
    obj.lemorancasn:setTransparent(false);

    obj.sonhadoresn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.sonhadoresn:setParent(obj.layout1);
    obj.sonhadoresn:setLeft(5);
    obj.sonhadoresn:setTop(280);
    obj.sonhadoresn:setWidth(360);
    obj.sonhadoresn:setHeight(60);
    obj.sonhadoresn:setName("sonhadoresn");
    obj.sonhadoresn:setField("sonhadores");
    obj.sonhadoresn:setFontColor("#48484A");
    obj.sonhadoresn:setFontSize(15);
    lfm_setPropAsString(obj.sonhadoresn, "fontStyle",  "bold");
    obj.sonhadoresn:setTransparent(false);

    obj.recursosn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.recursosn:setParent(obj.layout1);
    obj.recursosn:setLeft(398);
    obj.recursosn:setTop(280);
    obj.recursosn:setWidth(360);
    obj.recursosn:setHeight(60);
    obj.recursosn:setName("recursosn");
    obj.recursosn:setField("recursos");
    obj.recursosn:setFontColor("#48484A");
    obj.recursosn:setFontSize(15);
    lfm_setPropAsString(obj.recursosn, "fontStyle",  "bold");
    obj.recursosn:setTransparent(false);

    obj.possesn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.possesn:setParent(obj.layout1);
    obj.possesn:setLeft(5);
    obj.possesn:setTop(375);
    obj.possesn:setWidth(360);
    obj.possesn:setHeight(60);
    obj.possesn:setName("possesn");
    obj.possesn:setField("posses");
    obj.possesn:setFontColor("#48484A");
    obj.possesn:setFontSize(15);
    lfm_setPropAsString(obj.possesn, "fontStyle",  "bold");
    obj.possesn:setTransparent(false);

    obj.sequiton = gui.fromHandle(_obj_newObject("textEditor"));
    obj.sequiton:setParent(obj.layout1);
    obj.sequiton:setLeft(398);
    obj.sequiton:setTop(375);
    obj.sequiton:setWidth(360);
    obj.sequiton:setHeight(60);
    obj.sequiton:setName("sequiton");
    obj.sequiton:setField("sequito");
    obj.sequiton:setFontColor("#48484A");
    obj.sequiton:setFontSize(15);
    lfm_setPropAsString(obj.sequiton, "fontStyle",  "bold");
    obj.sequiton:setTransparent(false);

    obj.outroanln = gui.fromHandle(_obj_newObject("edit"));
    obj.outroanln:setParent(obj.layout1);
    obj.outroanln:setLeft(540);
    obj.outroanln:setTop(436);
    obj.outroanln:setWidth(145);
    obj.outroanln:setHeight(30);
    obj.outroanln:setName("outroanln");
    obj.outroanln:setField("outroanl");
    obj.outroanln:setFontColor("#48484A");
    obj.outroanln:setHorzTextAlign("center");
    obj.outroanln:setFontSize(18);
    lfm_setPropAsString(obj.outroanln, "fontStyle",  "bold");
    obj.outroanln:setTransparent(true);

    obj.mentorn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.mentorn:setParent(obj.layout1);
    obj.mentorn:setLeft(5);
    obj.mentorn:setTop(470);
    obj.mentorn:setWidth(360);
    obj.mentorn:setHeight(60);
    obj.mentorn:setName("mentorn");
    obj.mentorn:setField("mentor");
    obj.mentorn:setFontColor("#48484A");
    obj.mentorn:setFontSize(15);
    lfm_setPropAsString(obj.mentorn, "fontStyle",  "bold");
    obj.mentorn:setTransparent(false);

    obj.outroann = gui.fromHandle(_obj_newObject("textEditor"));
    obj.outroann:setParent(obj.layout1);
    obj.outroann:setLeft(398);
    obj.outroann:setTop(470);
    obj.outroann:setWidth(360);
    obj.outroann:setHeight(60);
    obj.outroann:setName("outroann");
    obj.outroann:setField("outroan");
    obj.outroann:setFontColor("#48484A");
    obj.outroann:setFontSize(15);
    lfm_setPropAsString(obj.outroann, "fontStyle",  "bold");
    obj.outroann:setTransparent(false);

    obj.equipamentoscn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.equipamentoscn:setParent(obj.layout1);
    obj.equipamentoscn:setLeft(5);
    obj.equipamentoscn:setTop(610);
    obj.equipamentoscn:setWidth(360);
    obj.equipamentoscn:setHeight(110);
    obj.equipamentoscn:setName("equipamentoscn");
    obj.equipamentoscn:setField("equipamentosc");
    obj.equipamentoscn:setFontColor("#48484A");
    obj.equipamentoscn:setFontSize(15);
    lfm_setPropAsString(obj.equipamentoscn, "fontStyle",  "bold");
    obj.equipamentoscn:setTransparent(false);

    obj.equipamentospn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.equipamentospn:setParent(obj.layout1);
    obj.equipamentospn:setLeft(398);
    obj.equipamentospn:setTop(610);
    obj.equipamentospn:setWidth(360);
    obj.equipamentospn:setHeight(110);
    obj.equipamentospn:setName("equipamentospn");
    obj.equipamentospn:setField("equipamentopc");
    obj.equipamentospn:setFontColor("#48484A");
    obj.equipamentospn:setFontSize(15);
    lfm_setPropAsString(obj.equipamentospn, "fontStyle",  "bold");
    obj.equipamentospn:setTransparent(false);

    obj.tesourosn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.tesourosn:setParent(obj.layout1);
    obj.tesourosn:setLeft(5);
    obj.tesourosn:setTop(760);
    obj.tesourosn:setWidth(360);
    obj.tesourosn:setHeight(92);
    obj.tesourosn:setName("tesourosn");
    obj.tesourosn:setField("tesouros");
    obj.tesourosn:setFontColor("#48484A");
    obj.tesourosn:setFontSize(15);
    lfm_setPropAsString(obj.tesourosn, "fontStyle",  "bold");
    obj.tesourosn:setTransparent(false);

    obj.outrospertenn = gui.fromHandle(_obj_newObject("textEditor"));
    obj.outrospertenn:setParent(obj.layout1);
    obj.outrospertenn:setLeft(398);
    obj.outrospertenn:setTop(760);
    obj.outrospertenn:setWidth(360);
    obj.outrospertenn:setHeight(92);
    obj.outrospertenn:setName("outrospertenn");
    obj.outrospertenn:setField("outrosperten");
    obj.outrospertenn:setFontColor("#48484A");
    obj.outrospertenn:setFontSize(15);
    lfm_setPropAsString(obj.outrospertenn, "fontStyle",  "bold");
    obj.outrospertenn:setTransparent(false);

    obj.propriedan1 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedan1:setParent(obj.layout1);
    obj.propriedan1:setLeft(5);
    obj.propriedan1:setTop(910);
    obj.propriedan1:setWidth(209);
    obj.propriedan1:setHeight(26);
    obj.propriedan1:setName("propriedan1");
    obj.propriedan1:setField("proprieda1");
    obj.propriedan1:setFontColor("#48484A");
    obj.propriedan1:setFontSize(15);
    lfm_setPropAsString(obj.propriedan1, "fontStyle",  "bold");
    obj.propriedan1:setTransparent(true);

    obj.propriedan2 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedan2:setParent(obj.layout1);
    obj.propriedan2:setLeft(5);
    obj.propriedan2:setTop(930);
    obj.propriedan2:setWidth(209);
    obj.propriedan2:setHeight(26);
    obj.propriedan2:setName("propriedan2");
    obj.propriedan2:setField("proprieda2");
    obj.propriedan2:setFontColor("#48484A");
    obj.propriedan2:setFontSize(15);
    lfm_setPropAsString(obj.propriedan2, "fontStyle",  "bold");
    obj.propriedan2:setTransparent(true);

    obj.propriedan3 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedan3:setParent(obj.layout1);
    obj.propriedan3:setLeft(5);
    obj.propriedan3:setTop(949);
    obj.propriedan3:setWidth(209);
    obj.propriedan3:setHeight(26);
    obj.propriedan3:setName("propriedan3");
    obj.propriedan3:setField("proprieda3");
    obj.propriedan3:setFontColor("#48484A");
    obj.propriedan3:setFontSize(15);
    lfm_setPropAsString(obj.propriedan3, "fontStyle",  "bold");
    obj.propriedan3:setTransparent(true);

    obj.propriedadn1 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedadn1:setParent(obj.layout1);
    obj.propriedadn1:setLeft(232);
    obj.propriedadn1:setTop(910);
    obj.propriedadn1:setWidth(526);
    obj.propriedadn1:setHeight(26);
    obj.propriedadn1:setName("propriedadn1");
    obj.propriedadn1:setField("propriedad1");
    obj.propriedadn1:setFontColor("#48484A");
    obj.propriedadn1:setFontSize(15);
    lfm_setPropAsString(obj.propriedadn1, "fontStyle",  "bold");
    obj.propriedadn1:setTransparent(true);

    obj.propriedadn2 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedadn2:setParent(obj.layout1);
    obj.propriedadn2:setLeft(232);
    obj.propriedadn2:setTop(930);
    obj.propriedadn2:setWidth(526);
    obj.propriedadn2:setHeight(26);
    obj.propriedadn2:setName("propriedadn2");
    obj.propriedadn2:setField("propriedad2");
    obj.propriedadn2:setFontColor("#48484A");
    obj.propriedadn2:setFontSize(15);
    lfm_setPropAsString(obj.propriedadn2, "fontStyle",  "bold");
    obj.propriedadn2:setTransparent(true);

    obj.propriedadn3 = gui.fromHandle(_obj_newObject("edit"));
    obj.propriedadn3:setParent(obj.layout1);
    obj.propriedadn3:setLeft(232);
    obj.propriedadn3:setTop(948);
    obj.propriedadn3:setWidth(526);
    obj.propriedadn3:setHeight(26);
    obj.propriedadn3:setName("propriedadn3");
    obj.propriedadn3:setField("propriedad3");
    obj.propriedadn3:setFontColor("#48484A");
    obj.propriedadn3:setFontSize(15);
    lfm_setPropAsString(obj.propriedadn3, "fontStyle",  "bold");
    obj.propriedadn3:setTransparent(true);

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(58);
    obj.rectangle1:setTop(807);
    obj.rectangle1:setWidth(7);
    obj.rectangle1:setHeight(84);
    obj.rectangle1:setColor("#FDFDFD");
    obj.rectangle1:setName("rectangle1");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.propriedadn3 ~= nil then self.propriedadn3:destroy(); self.propriedadn3 = nil; end;
        if self.juramentosn ~= nil then self.juramentosn:destroy(); self.juramentosn = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.contatosn ~= nil then self.contatosn:destroy(); self.contatosn = nil; end;
        if self.outroanln ~= nil then self.outroanln:destroy(); self.outroanln = nil; end;
        if self.aliadosn ~= nil then self.aliadosn:destroy(); self.aliadosn = nil; end;
        if self.propriedan3 ~= nil then self.propriedan3:destroy(); self.propriedan3 = nil; end;
        if self.possesn ~= nil then self.possesn:destroy(); self.possesn = nil; end;
        if self.propriedan2 ~= nil then self.propriedan2:destroy(); self.propriedan2 = nil; end;
        if self.sequiton ~= nil then self.sequiton:destroy(); self.sequiton = nil; end;
        if self.mentorn ~= nil then self.mentorn:destroy(); self.mentorn = nil; end;
        if self.lemorancasn ~= nil then self.lemorancasn:destroy(); self.lemorancasn = nil; end;
        if self.equipamentospn ~= nil then self.equipamentospn:destroy(); self.equipamentospn = nil; end;
        if self.tesourosn ~= nil then self.tesourosn:destroy(); self.tesourosn = nil; end;
        if self.equipamentoscn ~= nil then self.equipamentoscn:destroy(); self.equipamentoscn = nil; end;
        if self.propriedadn2 ~= nil then self.propriedadn2:destroy(); self.propriedadn2 = nil; end;
        if self.outroann ~= nil then self.outroann:destroy(); self.outroann = nil; end;
        if self.recursosn ~= nil then self.recursosn:destroy(); self.recursosn = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.propriedadn1 ~= nil then self.propriedadn1:destroy(); self.propriedadn1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.propriedan1 ~= nil then self.propriedan1:destroy(); self.propriedan1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.outrospertenn ~= nil then self.outrospertenn:destroy(); self.outrospertenn = nil; end;
        if self.sonhadoresn ~= nil then self.sonhadoresn:destroy(); self.sonhadoresn = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Changeling03 = {
    newEditor = newChangeling03, 
    new = newChangeling03, 
    name = "Changeling03", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Changeling03 = _Changeling03;
rrpg.registrarForm(_Changeling03);

return _Changeling03;
