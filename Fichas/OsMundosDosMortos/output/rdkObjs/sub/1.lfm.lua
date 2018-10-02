require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newOsMundosDosMortos1()
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
    obj:setName("OsMundosDosMortos1");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setAlign("client");
    obj.image1:setField("backgroundimg");
    obj.image1:setStyle("stretch");
    obj.image1:setSRC("");
    obj.image1:setName("image1");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(20);
    obj.rectangle1:setHeight(30);
    obj.rectangle1:setWidth(880);
    obj.rectangle1:setColor("gray");
    obj.rectangle1:setName("rectangle1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox1);
    obj.rectangle2:setLeft(373);
    obj.rectangle2:setTop(33);
    obj.rectangle2:setWidth(135);
    obj.rectangle2:setHeight(135);
    obj.rectangle2:setColor("DimGray");
    obj.rectangle2:setXradius(5);
    obj.rectangle2:setYradius(5);
    obj.rectangle2:setName("rectangle2");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setLeft(401);
    obj.label1:setTop(65);
    obj.label1:setWidth(80);
    obj.label1:setHeight(60);
    obj.label1:setText("Sem Avatar");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setField("imagempersona");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setSRC("");
    obj.image2:setLeft(373);
    obj.image2:setTop(33);
    obj.image2:setWidth(135);
    obj.image2:setHeight(135);
    obj.image2:setName("image2");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(900);
    obj.layout1:setHeight(30);
    obj.layout1:setName("layout1");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("gray");
    obj.rectangle3:setName("rectangle3");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(18);
    obj.label2:setTop(5);
    obj.label2:setWidth(138);
    obj.label2:setHeight(20);
    obj.label2:setText("Dados do Personagem");
    obj.label2:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label2, "fontStyle",  "bold");
    obj.label2:setFontColor("black");
    obj.label2:setName("label2");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setLeft(780);
    obj.button1:setTop(2);
    obj.button1:setWidth(40);
    obj.button1:setHeight(25);
    obj.button1:setHint("Bloqueia a ficha.");
    obj.button1:setText("Lock");
    obj.button1:setCanFocus(false);
    obj.button1:setName("button1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(830);
    obj.button2:setTop(2);
    obj.button2:setWidth(40);
    obj.button2:setHeight(25);
    obj.button2:setText("BG");
    obj.button2:setHitTest(true);
    obj.button2:setCanFocus(false);
    obj.button2:setHint("Altera a imagem de fundo da ficha.");
    obj.button2:setName("button2");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(170);
    obj.layout2:setWidth(900);
    obj.layout2:setHeight(30);
    obj.layout2:setName("layout2");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout2);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("gray");
    obj.rectangle4:setName("rectangle4");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(8);
    obj.label3:setTop(5);
    obj.label3:setWidth(138);
    obj.label3:setHeight(20);
    obj.label3:setText("Tendências");
    obj.label3:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label3, "fontStyle",  "bold");
    obj.label3:setFontColor("black");
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(640);
    obj.label4:setTop(5);
    obj.label4:setWidth(138);
    obj.label4:setHeight(20);
    obj.label4:setText("Pontos de Experiência:");
    obj.label4:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label4, "fontStyle",  "bold");
    obj.label4:setFontColor("black");
    obj.label4:setName("label4");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(780);
    obj.edit1:setTop(2);
    obj.edit1:setWidth(40);
    obj.edit1:setHeight(25);
    obj.edit1:setType("number");
    obj.edit1:setField("exptotal");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setLeft(830);
    obj.edit2:setTop(2);
    obj.edit2:setWidth(40);
    obj.edit2:setHeight(25);
    obj.edit2:setType("number");
    obj.edit2:setField("expatual");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(415);
    obj.layout3:setWidth(900);
    obj.layout3:setHeight(30);
    obj.layout3:setName("layout3");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout3);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("gray");
    obj.rectangle5:setName("rectangle5");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(8);
    obj.label5:setTop(5);
    obj.label5:setWidth(168);
    obj.label5:setHeight(20);
    obj.label5:setText("Limites");
    obj.label5:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label5, "fontStyle",  "bold");
    obj.label5:setFontColor("black");
    obj.label5:setName("label5");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(615);
    obj.layout4:setWidth(900);
    obj.layout4:setHeight(30);
    obj.layout4:setName("layout4");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout4);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("gray");
    obj.rectangle6:setName("rectangle6");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout4);
    obj.label6:setLeft(8);
    obj.label6:setTop(5);
    obj.label6:setWidth(168);
    obj.label6:setHeight(20);
    obj.label6:setText("Anotações");
    obj.label6:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label6, "fontStyle",  "bold");
    obj.label6:setFontColor("black");
    obj.label6:setName("label6");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(38);
    obj.layout5:setWidth(900);
    obj.layout5:setHeight(125);
    obj.layout5:setName("layout5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout5);
    obj.layout6:setLeft(5);
    obj.layout6:setTop(5);
    obj.layout6:setWidth(290);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setLeft(5);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setColor("Gainsboro");
    obj.rectangle7:setWidth(80);
    obj.rectangle7:setXradius(2);
    obj.rectangle7:setYradius(2);
    obj.rectangle7:setName("rectangle7");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout6);
    obj.label7:setLeft(8);
    obj.label7:setTop(5);
    obj.label7:setWidth(77);
    obj.label7:setHeight(20);
    obj.label7:setText("Nome");
    obj.label7:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label7, "fontStyle",  "bold");
    obj.label7:setFontColor("black");
    obj.label7:setName("label7");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout6);
    obj.edit3:setLeft(90);
    obj.edit3:setTop(0);
    obj.edit3:setWidth(200);
    obj.edit3:setHeight(25);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setField("nome");
    obj.edit3:setType("text");
    obj.edit3:setName("edit3");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout5);
    obj.layout7:setLeft(580);
    obj.layout7:setTop(5);
    obj.layout7:setWidth(290);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setLeft(5);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setColor("Gainsboro");
    obj.rectangle8:setWidth(80);
    obj.rectangle8:setXradius(2);
    obj.rectangle8:setYradius(2);
    obj.rectangle8:setName("rectangle8");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout7);
    obj.label8:setLeft(8);
    obj.label8:setTop(5);
    obj.label8:setWidth(77);
    obj.label8:setHeight(20);
    obj.label8:setText("Classe");
    obj.label8:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label8, "fontStyle",  "bold");
    obj.label8:setFontColor("black");
    obj.label8:setName("label8");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout7);
    obj.edit4:setLeft(90);
    obj.edit4:setTop(0);
    obj.edit4:setWidth(200);
    obj.edit4:setHeight(25);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setField("classe");
    obj.edit4:setType("text");
    obj.edit4:setName("edit4");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout5);
    obj.layout8:setLeft(5);
    obj.layout8:setTop(35);
    obj.layout8:setWidth(290);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setLeft(5);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setColor("Gainsboro");
    obj.rectangle9:setWidth(80);
    obj.rectangle9:setXradius(2);
    obj.rectangle9:setYradius(2);
    obj.rectangle9:setName("rectangle9");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout8);
    obj.label9:setLeft(8);
    obj.label9:setTop(5);
    obj.label9:setWidth(77);
    obj.label9:setHeight(20);
    obj.label9:setText("Caráter");
    obj.label9:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label9, "fontStyle",  "bold");
    obj.label9:setFontColor("black");
    obj.label9:setName("label9");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout8);
    obj.edit5:setLeft(90);
    obj.edit5:setTop(0);
    obj.edit5:setWidth(200);
    obj.edit5:setHeight(25);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setField("persona");
    obj.edit5:setType("text");
    obj.edit5:setName("edit5");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout5);
    obj.layout9:setLeft(580);
    obj.layout9:setTop(35);
    obj.layout9:setWidth(290);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(5);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setColor("Gainsboro");
    obj.rectangle10:setWidth(80);
    obj.rectangle10:setXradius(2);
    obj.rectangle10:setYradius(2);
    obj.rectangle10:setName("rectangle10");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout9);
    obj.label10:setLeft(8);
    obj.label10:setTop(5);
    obj.label10:setWidth(77);
    obj.label10:setHeight(20);
    obj.label10:setText("Nv da Classe");
    obj.label10:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label10, "fontStyle",  "bold");
    obj.label10:setFontColor("black");
    obj.label10:setName("label10");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout9);
    obj.edit6:setLeft(90);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(200);
    obj.edit6:setHeight(25);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setField("nvclasse");
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout5);
    obj.layout10:setLeft(5);
    obj.layout10:setTop(65);
    obj.layout10:setWidth(290);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout10);
    obj.rectangle11:setLeft(5);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setColor("Gainsboro");
    obj.rectangle11:setWidth(80);
    obj.rectangle11:setXradius(2);
    obj.rectangle11:setYradius(2);
    obj.rectangle11:setName("rectangle11");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout10);
    obj.label11:setLeft(8);
    obj.label11:setTop(5);
    obj.label11:setWidth(77);
    obj.label11:setHeight(20);
    obj.label11:setText("Conceito");
    obj.label11:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label11, "fontStyle",  "bold");
    obj.label11:setFontColor("black");
    obj.label11:setName("label11");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout10);
    obj.edit7:setLeft(90);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(200);
    obj.edit7:setHeight(25);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setField("conceito");
    obj.edit7:setType("text");
    obj.edit7:setName("edit7");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout5);
    obj.layout11:setLeft(580);
    obj.layout11:setTop(65);
    obj.layout11:setWidth(290);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout11);
    obj.rectangle12:setLeft(5);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setColor("Gainsboro");
    obj.rectangle12:setWidth(80);
    obj.rectangle12:setXradius(2);
    obj.rectangle12:setYradius(2);
    obj.rectangle12:setName("rectangle12");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout11);
    obj.label12:setLeft(8);
    obj.label12:setTop(5);
    obj.label12:setWidth(77);
    obj.label12:setHeight(20);
    obj.label12:setText("Tribo");
    obj.label12:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label12, "fontStyle",  "bold");
    obj.label12:setFontColor("black");
    obj.label12:setName("label12");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout11);
    obj.edit8:setLeft(90);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(200);
    obj.edit8:setHeight(25);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setField("tribo");
    obj.edit8:setType("text");
    obj.edit8:setName("edit8");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout5);
    obj.layout12:setLeft(5);
    obj.layout12:setTop(95);
    obj.layout12:setWidth(290);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout12);
    obj.rectangle13:setLeft(5);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setColor("Gainsboro");
    obj.rectangle13:setWidth(80);
    obj.rectangle13:setXradius(2);
    obj.rectangle13:setYradius(2);
    obj.rectangle13:setName("rectangle13");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout12);
    obj.label13:setLeft(8);
    obj.label13:setTop(5);
    obj.label13:setWidth(77);
    obj.label13:setHeight(20);
    obj.label13:setText("Recurso");
    obj.label13:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label13, "fontStyle",  "bold");
    obj.label13:setFontColor("black");
    obj.label13:setName("label13");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout12);
    obj.edit9:setLeft(90);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(200);
    obj.edit9:setHeight(25);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setField("recurso");
    obj.edit9:setType("text");
    obj.edit9:setName("edit9");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout5);
    obj.layout13:setLeft(580);
    obj.layout13:setTop(95);
    obj.layout13:setWidth(290);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout13);
    obj.rectangle14:setLeft(5);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setColor("Gainsboro");
    obj.rectangle14:setWidth(80);
    obj.rectangle14:setXradius(2);
    obj.rectangle14:setYradius(2);
    obj.rectangle14:setName("rectangle14");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout13);
    obj.label14:setLeft(8);
    obj.label14:setTop(5);
    obj.label14:setWidth(77);
    obj.label14:setHeight(20);
    obj.label14:setText("Idade");
    obj.label14:setHorzTextAlign("leading");
    lfm_setPropAsString(obj.label14, "fontStyle",  "bold");
    obj.label14:setFontColor("black");
    obj.label14:setName("label14");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout13);
    obj.edit10:setLeft(90);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(200);
    obj.edit10:setHeight(25);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setField("idade");
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj._e_event0 = obj.button2:addEventListener("onClick",
        function (self)
            Dialogs.selectImageURL('', function(url) sheet.backgroundimg = url end)
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

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
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
rrpg.registrarForm(_OsMundosDosMortos1);

return _OsMundosDosMortos1;
