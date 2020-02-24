require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newOdisseiaCastfrm()
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
    obj:setName("OdisseiaCastfrm");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Cast.Odisseia.RPGFirecast");
    obj:setTitle("Ficha Odisseia");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.Odisseia01 = gui.fromHandle(_obj_newObject("form"));
    obj.Odisseia01:setParent(obj.tab1);
    obj.Odisseia01:setName("Odisseia01");
    obj.Odisseia01:setAlign("client");
    obj.Odisseia01:setTheme("dark");
    obj.Odisseia01:setLockWhileNodeIsLoading(true);

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.Odisseia01);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setWidth(809);
    obj.image1:setHeight(1145);
    obj.image1:setSRC("/OD/img/01.png");
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(139);
    obj.layout1:setTop(414);
    obj.layout1:setWidth(459);
    obj.layout1:setHeight(112);
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("yellow");
    obj.rectangle1:setName("rectangle1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(628);
    obj.layout2:setTop(436);
    obj.layout2:setWidth(63);
    obj.layout2:setHeight(63);
    obj.layout2:setName("layout2");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("yellow");
    obj.rectangle2:setName("rectangle2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(101);
    obj.layout3:setTop(670);
    obj.layout3:setWidth(254);
    obj.layout3:setHeight(264);
    obj.layout3:setName("layout3");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("yellow");
    obj.rectangle3:setName("rectangle3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(534);
    obj.layout4:setTop(660);
    obj.layout4:setWidth(234);
    obj.layout4:setHeight(132);
    obj.layout4:setName("layout4");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("yellow");
    obj.rectangle4:setName("rectangle4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(423);
    obj.layout5:setTop(865);
    obj.layout5:setWidth(151);
    obj.layout5:setHeight(111);
    obj.layout5:setName("layout5");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("yellow");
    obj.rectangle5:setName("rectangle5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(607);
    obj.layout6:setTop(865);
    obj.layout6:setWidth(151);
    obj.layout6:setHeight(111);
    obj.layout6:setName("layout6");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("yellow");
    obj.rectangle6:setName("rectangle6");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Verso");
    obj.tab2:setName("tab2");

    obj.Odisseia02 = gui.fromHandle(_obj_newObject("form"));
    obj.Odisseia02:setParent(obj.tab2);
    obj.Odisseia02:setName("Odisseia02");
    obj.Odisseia02:setAlign("client");
    obj.Odisseia02:setTheme("dark");
    obj.Odisseia02:setLockWhileNodeIsLoading(true);

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.Odisseia02);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox2);
    obj.image2:setWidth(809);
    obj.image2:setHeight(1145);
    obj.image2:setSRC("/OD/img/02.png");
    obj.image2:setName("image2");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox2);
    obj.layout7:setLeft(297);
    obj.layout7:setTop(269);
    obj.layout7:setWidth(390);
    obj.layout7:setHeight(249);
    obj.layout7:setName("layout7");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("yellow");
    obj.rectangle7:setName("rectangle7");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox2);
    obj.layout8:setLeft(304);
    obj.layout8:setTop(605);
    obj.layout8:setWidth(415);
    obj.layout8:setHeight(337);
    obj.layout8:setName("layout8");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("yellow");
    obj.rectangle8:setName("rectangle8");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox2);
    obj.layout9:setLeft(534);
    obj.layout9:setTop(978);
    obj.layout9:setWidth(118);
    obj.layout9:setHeight(33);
    obj.layout9:setName("layout9");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("yellow");
    obj.rectangle9:setName("rectangle9");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Habilidades");
    obj.tab3:setName("tab3");

    obj.Odisseia04 = gui.fromHandle(_obj_newObject("form"));
    obj.Odisseia04:setParent(obj.tab3);
    obj.Odisseia04:setName("Odisseia04");
    obj.Odisseia04:setAlign("client");
    obj.Odisseia04:setTheme("dark");
    obj.Odisseia04:setLockWhileNodeIsLoading(true);

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.Odisseia04);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.scrollBox3);
    obj.image3:setWidth(809);
    obj.image3:setHeight(1145);
    obj.image3:setSRC("/OD/img/04.png");
    obj.image3:setName("image3");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox3);
    obj.layout10:setLeft(65);
    obj.layout10:setTop(203);
    obj.layout10:setWidth(670);
    obj.layout10:setHeight(815);
    obj.layout10:setName("layout10");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("yellow");
    obj.rectangle10:setName("rectangle10");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Créditos");
    obj.tab4:setName("tab4");

    obj.OdisseiaC = gui.fromHandle(_obj_newObject("form"));
    obj.OdisseiaC:setParent(obj.tab4);
    obj.OdisseiaC:setName("OdisseiaC");
    obj.OdisseiaC:setAlign("client");
    obj.OdisseiaC:setTheme("dark");


		local GUI = require("gui.lua");
	


    obj.flowLayout1 = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.flowLayout1:setParent(obj.OdisseiaC);
    obj.flowLayout1:setAlign("client");
    obj.flowLayout1:setHorzAlign("center");
    obj.flowLayout1:setName("flowLayout1");

    obj.flowPart1 = gui.fromHandle(_obj_newObject("flowPart"));
    obj.flowPart1:setParent(obj.flowLayout1);
    obj.flowPart1:setMinWidth(500);
    obj.flowPart1:setMaxWidth(510);
    obj.flowPart1:setHeight(350);
    obj.flowPart1:setName("flowPart1");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.flowPart1);
    obj.rectangle11:setTop(10);
    obj.rectangle11:setWidth(500);
    obj.rectangle11:setHeight(200);
    obj.rectangle11:setColor("Gray");
    obj.rectangle11:setXradius(10);
    obj.rectangle11:setYradius(10);
    obj.rectangle11:setName("rectangle11");

    obj.path1 = gui.fromHandle(_obj_newObject("path"));
    obj.path1:setParent(obj.flowPart1);
    obj.path1:setLeft(10);
    obj.path1:setTop(20);
    obj.path1:setWidth(150);
    obj.path1:setHeight(177);
    obj.path1:setRoundToPixel(true);
    obj.path1:setRotationAngle(180.0);
    obj.path1:setMargins({left=10, right=10, bottom=10, top=10});
    obj.path1:setMode("fit");
    obj.path1:setColor("Black");
    obj.path1:setPathData("M360 2430 c0 -5 -6 -9 -12 -7 -8 1 -12 -6 -10 -17 2 -10 0 -16 -5 -13 -5 3 -9 -2 -10 -11 -1 -26 -76 -191 -84 -186 -4 2 -5 -6 -1 -18 4 -16 2 -19 -8 -13 -10 6 -12 3 -8 -13 4 -13 -3 -40 -14 -63 -38 -79 -106 -449 -96 -525 2 -16 7 7 12 51 4 44 20 143 34 220 l27 140 6 -210 c4 -115 11 -221 17 -235 6 -14 11 -18 11 -10 1 16 53 -88 54 -107 0 -7 4 -10 9 -7 4 3 8 -3 8 -13 0 -33 -28 -188 -39 -216 -15 -39 -13 -47 4 -15 16 28 64 254 67 310 0 18 4 -7 8 -57 10 -130 21 -185 31 -160 l8 20 1 -20 c2 -17 3 -16 10 5 7 21 8 22 9 5 2 -19 2 -19 12 -1 10 16 14 12 33 -35 12 -30 28 -54 35 -54 8 0 18 -13 22 -28 6 -23 5 -26 -6 -17 -7 6 -16 7 -19 2 -12 -20 -7 -110 8 -152 32 -85 65 -185 62 -188 -6 -6 -45 68 -56 105 -13 46 -39 94 -40 73 0 -13 -1 -13 -11 0 -19 28 2 -31 38 -105 18 -38 44 -81 57 -95 20 -21 26 -43 36 -133 7 -59 18 -133 25 -163 12 -53 11 -58 -11 -97 -13 -23 -24 -54 -24 -69 0 -46 -16 -40 -37 15 -59 146 -74 231 -81 431 -3 101 -9 178 -17 192 -9 18 -11 -4 -9 -119 3 -202 45 -411 109 -549 14 -29 25 -69 25 -88 0 -19 8 -70 17 -112 l16 -78 744 0 743 0 0 1060 c0 1062 -2 1116 -34 1104 -20 -8 -64 120 -45 132 5 3 9 14 9 25 0 23 -52 129 -56 114 -1 -5 -5 -23 -9 -40 -7 -27 -8 -28 -15 -10 -12 28 -12 37 0 30 6 -3 7 1 4 9 -8 21 -31 20 -42 0 -8 -15 -10 -15 -15 0 -6 14 -37 16 -273 16 l-266 0 7 -27 c4 -16 3 -25 -1 -21 -4 4 -13 0 -20 -10 -12 -16 -13 -16 -14 0 0 9 5 20 10 23 6 3 10 13 10 21 0 11 -25 14 -144 14 -142 0 -145 0 -149 -22 l-4 -23 -2 23 c0 12 -7 22 -15 22 -9 0 -12 -7 -10 -18 3 -9 1 -28 -5 -42 -9 -23 -10 -21 -10 18 l-1 42 -205 0 c-171 0 -203 -2 -199 -14 3 -8 1 -17 -5 -21 -7 -3 -11 3 -11 15 0 19 -5 21 -52 18 -45 -3 -52 -6 -53 -25 -2 -21 -34 -67 -42 -59 -2 2 1 16 7 32 14 35 5 27 -26 -23 -32 -52 -30 -27 2 31 l26 46 -26 0 c-14 0 -26 -4 -26 -10z m343 -442 c4 -62 3 -68 -14 -68 -11 0 -19 -5 -19 -11 0 -6 8 -8 19 -4 38 12 30 -13 -12 -39 -36 -22 -39 -25 -18 -26 19 0 21 -3 12 -14 -10 -12 -6 -15 18 -21 35 -7 40 -18 36 -74 l-4 -44 59 6 c59 7 130 33 130 50 0 4 -9 6 -19 2 -16 -5 -18 -2 -14 16 5 18 3 21 -11 16 -10 -4 -15 -3 -11 3 3 6 12 10 19 10 8 0 16 10 19 21 5 19 11 21 38 15 44 -9 46 -12 18 -42 l-24 -26 25 7 c14 4 41 22 60 41 20 19 40 34 46 34 6 0 21 -34 34 -76 23 -72 48 -118 30 -52 -14 45 -4 47 10 2 24 -72 0 -297 -44 -429 -4 -11 0 -7 10 10 21 36 44 119 44 160 0 23 3 27 10 15 5 -8 10 -53 11 -100 2 -79 2 -82 9 -35 5 28 9 86 10 130 l2 80 14 -50 13 -50 -5 55 c-3 30 -9 89 -13 130 -5 41 -7 76 -6 78 6 7 35 -31 30 -39 -4 -5 -1 -9 4 -9 7 0 11 -37 11 -103 0 -106 -26 -239 -55 -280 -7 -11 -11 -26 -8 -34 3 -8 0 -13 -7 -11 -6 2 -19 -8 -27 -22 l-15 -25 21 24 c28 31 26 19 -5 -35 -14 -24 -31 -41 -36 -37 -7 3 -8 1 -4 -6 4 -6 2 -20 -4 -29 -7 -9 3 0 21 20 75 82 159 287 159 389 0 45 17 42 29 -6 12 -47 15 -224 5 -297 -6 -43 -9 -46 -83 -91 -180 -109 -433 -181 -595 -170 -44 3 -61 27 -99 143 -90 274 -105 346 -69 333 9 -4 -7 16 -35 43 -29 28 -53 55 -53 62 0 6 27 41 60 77 42 47 61 77 65 103 9 50 13 61 14 35 1 -12 5 -24 10 -27 4 -3 6 6 3 19 -3 20 -1 24 12 19 12 -4 22 7 40 48 l24 53 2 -50 3 -50 7 40 c34 180 52 244 73 257 15 9 14 13 20 -64z m-438 -106 c1 -126 5 -182 18 -229 17 -61 21 -223 6 -223 -18 0 -66 171 -75 270 -7 77 8 219 33 296 9 30 17 54 17 54 1 0 1 -75 1 -168z m1000 -871 c-14 -56 -35 -124 -46 -153 -11 -28 -18 -52 -16 -55 7 -7 47 96 65 165 17 66 17 66 20 27 5 -53 -15 -171 -39 -241 -11 -31 -17 -65 -14 -77 5 -16 4 -18 -3 -8 -8 11 -14 6 -27 -24 -8 -22 -23 -47 -32 -57 -9 -10 -13 -18 -10 -18 4 0 20 19 37 42 16 22 30 36 30 30 0 -13 -112 -182 -120 -182 -13 0 -45 87 -105 291 -9 30 -32 77 -51 105 l-34 49 33 28 c17 15 61 41 97 58 112 53 209 103 205 108 -3 2 3 10 13 17 9 7 18 9 20 4 2 -4 -9 -53 -23 -109z");
    obj.path1:setName("path1");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.flowPart1);
    obj.layout11:setLeft(140);
    obj.layout11:setTop(18);
    obj.layout11:setWidth(250);
    obj.layout11:setHeight(200);
    obj.layout11:setName("layout11");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout11);
    obj.label1:setLeft(0);
    obj.label1:setTop(30);
    obj.label1:setWidth(250);
    obj.label1:setFontColor("silver");
    obj.label1:setHeight(20);
    obj.label1:setText("Programador: CastielAngels");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout11);
    obj.label2:setLeft(0);
    obj.label2:setTop(55);
    obj.label2:setWidth(250);
    obj.label2:setFontColor("silver");
    obj.label2:setHeight(20);
    obj.label2:setText("Odisseia RRPG Firecast");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout11);
    obj.label3:setLeft(0);
    obj.label3:setTop(80);
    obj.label3:setWidth(250);
    obj.label3:setFontColor("silver");
    obj.label3:setHeight(20);
    obj.label3:setText("Versão: 1.0a 23/01/20");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setFontSize(13);
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout11);
    obj.label4:setLeft(0);
    obj.label4:setTop(105);
    obj.label4:setWidth(250);
    obj.label4:setFontColor("silver");
    obj.label4:setHeight(20);
    obj.label4:setText("Por favor, mantenha seu plugin atualizado.");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setFontSize(13);
    obj.label4:setName("label4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout11);
    obj.label5:setLeft(3);
    obj.label5:setTop(130);
    obj.label5:setWidth(250);
    obj.label5:setFontColor("silver");
    obj.label5:setHeight(20);
    obj.label5:setText("Clique aqui para acessar o repositório.");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setFontSize(13);
    obj.label5:setName("label5");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.flowPart1);
    obj.button1:setLeft(0);
    obj.button1:setTop(10);
    obj.button1:setWidth(500);
    obj.button1:setHeight(200);
    obj.button1:setOpacity(0.0);
    obj.button1:setCanFocus(false);
    obj.button1:setCursor("handPoint");
    obj.button1:setName("button1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            GUI.openInBrowser('https://github.com/CastielAngels/RRPGFirecast');
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
        if self.Odisseia01 ~= nil then self.Odisseia01:destroy(); self.Odisseia01 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.Odisseia02 ~= nil then self.Odisseia02:destroy(); self.Odisseia02 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.OdisseiaC ~= nil then self.OdisseiaC:destroy(); self.OdisseiaC = nil; end;
        if self.flowLayout1 ~= nil then self.flowLayout1:destroy(); self.flowLayout1 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.Odisseia04 ~= nil then self.Odisseia04:destroy(); self.Odisseia04 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.flowPart1 ~= nil then self.flowPart1:destroy(); self.flowPart1 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _OdisseiaCastfrm = {
    newEditor = newOdisseiaCastfrm, 
    new = newOdisseiaCastfrm, 
    name = "OdisseiaCastfrm", 
    dataType = "Cast.Odisseia.RPGFirecast", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Ficha Odisseia", 
    description=""};

OdisseiaCastfrm = _OdisseiaCastfrm;
rrpg.registrarForm(_OdisseiaCastfrm);
rrpg.registrarDataType(_OdisseiaCastfrm);

return _OdisseiaCastfrm;
