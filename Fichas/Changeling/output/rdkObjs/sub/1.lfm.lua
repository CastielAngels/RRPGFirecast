require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newChangeling01()
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
    obj:setName("Changeling01");
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
    obj.image1:setSRC("/sub/img/01.png");
    obj.image1:setName("image1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(62);
    obj.layout1:setTop(100);
    obj.layout1:setWidth(760);
    obj.layout1:setHeight(980);
    obj.layout1:setName("layout1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setLeft(2);
    obj.layout2:setWidth(756);
    obj.layout2:setHeight(90);
    obj.layout2:setName("layout2");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setLeft(50);
    obj.edit1:setTop(9);
    obj.edit1:setWidth(210);
    obj.edit1:setHeight(29);
    obj.edit1:setField("cnome");
    obj.edit1:setFontColor("#48484A");
    obj.edit1:setFontSize(16);
    lfm_setPropAsString(obj.edit1, "fontStyle",  "bold");
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setLeft(62);
    obj.edit2:setTop(34);
    obj.edit2:setWidth(198);
    obj.edit2:setHeight(29);
    obj.edit2:setField("cjogador");
    obj.edit2:setFontColor("#48484A");
    obj.edit2:setFontSize(16);
    lfm_setPropAsString(obj.edit2, "fontStyle",  "bold");
    obj.edit2:setTransparent(true);
    obj.edit2:setName("edit2");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setLeft(66);
    obj.edit3:setTop(59);
    obj.edit3:setWidth(194);
    obj.edit3:setHeight(29);
    obj.edit3:setField("mcronica");
    obj.edit3:setFontColor("#48484A");
    obj.edit3:setFontSize(16);
    lfm_setPropAsString(obj.edit3, "fontStyle",  "bold");
    obj.edit3:setTransparent(true);
    obj.edit3:setName("edit3");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout2);
    obj.edit4:setLeft(312);
    obj.edit4:setTop(9);
    obj.edit4:setWidth(206);
    obj.edit4:setHeight(29);
    obj.edit4:setField("ccorte");
    obj.edit4:setFontColor("#48484A");
    obj.edit4:setFontSize(16);
    lfm_setPropAsString(obj.edit4, "fontStyle",  "bold");
    obj.edit4:setTransparent(true);
    obj.edit4:setName("edit4");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout2);
    obj.edit5:setLeft(363);
    obj.edit5:setTop(34);
    obj.edit5:setWidth(155);
    obj.edit5:setHeight(29);
    obj.edit5:setField("cseelie");
    obj.edit5:setFontColor("#48484A");
    obj.edit5:setFontSize(16);
    lfm_setPropAsString(obj.edit5, "fontStyle",  "bold");
    obj.edit5:setTransparent(true);
    obj.edit5:setName("edit5");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout2);
    obj.edit6:setLeft(383);
    obj.edit6:setTop(59);
    obj.edit6:setWidth(135);
    obj.edit6:setHeight(29);
    obj.edit6:setField("cunseelie");
    obj.edit6:setFontColor("#48484A");
    obj.edit6:setFontSize(16);
    lfm_setPropAsString(obj.edit6, "fontStyle",  "bold");
    obj.edit6:setTransparent(true);
    obj.edit6:setName("edit6");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout2);
    obj.edit7:setLeft(585);
    obj.edit7:setTop(9);
    obj.edit7:setWidth(170);
    obj.edit7:setHeight(29);
    obj.edit7:setField("caspecto");
    obj.edit7:setFontColor("#48484A");
    obj.edit7:setFontSize(16);
    lfm_setPropAsString(obj.edit7, "fontStyle",  "bold");
    obj.edit7:setTransparent(true);
    obj.edit7:setName("edit7");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout2);
    obj.edit8:setLeft(598);
    obj.edit8:setTop(34);
    obj.edit8:setWidth(157);
    obj.edit8:setHeight(29);
    obj.edit8:setField("cmixordia");
    obj.edit8:setFontColor("#48484A");
    obj.edit8:setFontSize(16);
    lfm_setPropAsString(obj.edit8, "fontStyle",  "bold");
    obj.edit8:setTransparent(true);
    obj.edit8:setName("edit8");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout2);
    obj.edit9:setLeft(562);
    obj.edit9:setTop(59);
    obj.edit9:setWidth(193);
    obj.edit9:setHeight(29);
    obj.edit9:setField("ccasa");
    obj.edit9:setFontColor("#48484A");
    obj.edit9:setFontSize(16);
    lfm_setPropAsString(obj.edit9, "fontStyle",  "bold");
    obj.edit9:setTransparent(true);
    obj.edit9:setName("edit9");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setLeft(2);
    obj.layout3:setTop(154);
    obj.layout3:setWidth(756);
    obj.layout3:setHeight(55);
    obj.layout3:setName("layout3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setLeft(188);
    obj.layout4:setTop(4);
    obj.layout4:setWidth(49);
    obj.layout4:setHeight(12);
    obj.layout4:setName("layout4");

    obj.forcan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.forcan_2:setParent(obj.layout4);
    obj.forcan_2:setName("forcan_2");
    obj.forcan_2:setField("forca_2");
    obj.forcan_2:setWidth(11);
    obj.forcan_2:setHeight(12);
    obj.forcan_2:setImageChecked("/sub/img/bboll.png");

    obj.forcan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.forcan_3:setParent(obj.layout4);
    obj.forcan_3:setName("forcan_3");
    obj.forcan_3:setField("forca_3");
    obj.forcan_3:setLeft(12);
    obj.forcan_3:setWidth(11);
    obj.forcan_3:setHeight(12);
    obj.forcan_3:setImageChecked("/sub/img/bboll.png");

    obj.forcan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.forcan_4:setParent(obj.layout4);
    obj.forcan_4:setName("forcan_4");
    obj.forcan_4:setField("forca_4");
    obj.forcan_4:setLeft(25);
    obj.forcan_4:setWidth(11);
    obj.forcan_4:setHeight(12);
    obj.forcan_4:setImageChecked("/sub/img/bboll.png");

    obj.forcan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.forcan_5:setParent(obj.layout4);
    obj.forcan_5:setName("forcan_5");
    obj.forcan_5:setField("forca_5");
    obj.forcan_5:setLeft(37);
    obj.forcan_5:setWidth(11);
    obj.forcan_5:setHeight(12);
    obj.forcan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout3);
    obj.layout5:setLeft(188);
    obj.layout5:setTop(23);
    obj.layout5:setWidth(49);
    obj.layout5:setHeight(12);
    obj.layout5:setName("layout5");

    obj.destrezan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.destrezan_2:setParent(obj.layout5);
    obj.destrezan_2:setName("destrezan_2");
    obj.destrezan_2:setField("destreza_2");
    obj.destrezan_2:setWidth(11);
    obj.destrezan_2:setHeight(12);
    obj.destrezan_2:setImageChecked("/sub/img/bboll.png");

    obj.destrezan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.destrezan_3:setParent(obj.layout5);
    obj.destrezan_3:setName("destrezan_3");
    obj.destrezan_3:setField("destreza_3");
    obj.destrezan_3:setLeft(12);
    obj.destrezan_3:setWidth(11);
    obj.destrezan_3:setHeight(12);
    obj.destrezan_3:setImageChecked("/sub/img/bboll.png");

    obj.destrezan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.destrezan_4:setParent(obj.layout5);
    obj.destrezan_4:setName("destrezan_4");
    obj.destrezan_4:setField("destreza_4");
    obj.destrezan_4:setLeft(25);
    obj.destrezan_4:setWidth(11);
    obj.destrezan_4:setHeight(12);
    obj.destrezan_4:setImageChecked("/sub/img/bboll.png");

    obj.destrezan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.destrezan_5:setParent(obj.layout5);
    obj.destrezan_5:setName("destrezan_5");
    obj.destrezan_5:setField("destreza_5");
    obj.destrezan_5:setLeft(37);
    obj.destrezan_5:setWidth(11);
    obj.destrezan_5:setHeight(12);
    obj.destrezan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout3);
    obj.layout6:setLeft(188);
    obj.layout6:setTop(42);
    obj.layout6:setWidth(49);
    obj.layout6:setHeight(12);
    obj.layout6:setName("layout6");

    obj.vigorn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vigorn_2:setParent(obj.layout6);
    obj.vigorn_2:setName("vigorn_2");
    obj.vigorn_2:setField("vigor_2");
    obj.vigorn_2:setWidth(11);
    obj.vigorn_2:setHeight(12);
    obj.vigorn_2:setImageChecked("/sub/img/bboll.png");

    obj.vigorn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vigorn_3:setParent(obj.layout6);
    obj.vigorn_3:setName("vigorn_3");
    obj.vigorn_3:setField("vigor_3");
    obj.vigorn_3:setLeft(12);
    obj.vigorn_3:setWidth(11);
    obj.vigorn_3:setHeight(12);
    obj.vigorn_3:setImageChecked("/sub/img/bboll.png");

    obj.vigorn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vigorn_4:setParent(obj.layout6);
    obj.vigorn_4:setName("vigorn_4");
    obj.vigorn_4:setField("vigor_4");
    obj.vigorn_4:setLeft(25);
    obj.vigorn_4:setWidth(11);
    obj.vigorn_4:setHeight(12);
    obj.vigorn_4:setImageChecked("/sub/img/bboll.png");

    obj.vigorn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vigorn_5:setParent(obj.layout6);
    obj.vigorn_5:setName("vigorn_5");
    obj.vigorn_5:setField("vigor_5");
    obj.vigorn_5:setLeft(37);
    obj.vigorn_5:setWidth(11);
    obj.vigorn_5:setHeight(12);
    obj.vigorn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout3);
    obj.layout7:setLeft(449);
    obj.layout7:setTop(3);
    obj.layout7:setWidth(49);
    obj.layout7:setHeight(12);
    obj.layout7:setName("layout7");

    obj.carisman_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.carisman_2:setParent(obj.layout7);
    obj.carisman_2:setName("carisman_2");
    obj.carisman_2:setField("carisma_2");
    obj.carisman_2:setWidth(11);
    obj.carisman_2:setHeight(12);
    obj.carisman_2:setImageChecked("/sub/img/bboll.png");

    obj.carisman_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.carisman_3:setParent(obj.layout7);
    obj.carisman_3:setName("carisman_3");
    obj.carisman_3:setField("carisma_3");
    obj.carisman_3:setLeft(12);
    obj.carisman_3:setWidth(11);
    obj.carisman_3:setHeight(12);
    obj.carisman_3:setImageChecked("/sub/img/bboll.png");

    obj.carisman_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.carisman_4:setParent(obj.layout7);
    obj.carisman_4:setName("carisman_4");
    obj.carisman_4:setField("carisma_4");
    obj.carisman_4:setLeft(25);
    obj.carisman_4:setWidth(11);
    obj.carisman_4:setHeight(12);
    obj.carisman_4:setImageChecked("/sub/img/bboll.png");

    obj.carisman_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.carisman_5:setParent(obj.layout7);
    obj.carisman_5:setName("carisman_5");
    obj.carisman_5:setField("carisma_5");
    obj.carisman_5:setLeft(37);
    obj.carisman_5:setWidth(11);
    obj.carisman_5:setHeight(12);
    obj.carisman_5:setImageChecked("/sub/img/bboll.png");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout3);
    obj.layout8:setLeft(449);
    obj.layout8:setTop(22);
    obj.layout8:setWidth(49);
    obj.layout8:setHeight(12);
    obj.layout8:setName("layout8");

    obj.manipulan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manipulan_2:setParent(obj.layout8);
    obj.manipulan_2:setName("manipulan_2");
    obj.manipulan_2:setField("manipula_2");
    obj.manipulan_2:setWidth(11);
    obj.manipulan_2:setHeight(12);
    obj.manipulan_2:setImageChecked("/sub/img/bboll.png");

    obj.manipulan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manipulan_3:setParent(obj.layout8);
    obj.manipulan_3:setName("manipulan_3");
    obj.manipulan_3:setField("manipula_3");
    obj.manipulan_3:setLeft(12);
    obj.manipulan_3:setWidth(11);
    obj.manipulan_3:setHeight(12);
    obj.manipulan_3:setImageChecked("/sub/img/bboll.png");

    obj.manipulan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manipulan_4:setParent(obj.layout8);
    obj.manipulan_4:setName("manipulan_4");
    obj.manipulan_4:setField("manipula_4");
    obj.manipulan_4:setLeft(25);
    obj.manipulan_4:setWidth(11);
    obj.manipulan_4:setHeight(12);
    obj.manipulan_4:setImageChecked("/sub/img/bboll.png");

    obj.manipulan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manipulan_5:setParent(obj.layout8);
    obj.manipulan_5:setName("manipulan_5");
    obj.manipulan_5:setField("manipula_5");
    obj.manipulan_5:setLeft(37);
    obj.manipulan_5:setWidth(11);
    obj.manipulan_5:setHeight(12);
    obj.manipulan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout3);
    obj.layout9:setLeft(449);
    obj.layout9:setTop(41);
    obj.layout9:setWidth(49);
    obj.layout9:setHeight(12);
    obj.layout9:setName("layout9");

    obj.aparencian_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aparencian_2:setParent(obj.layout9);
    obj.aparencian_2:setName("aparencian_2");
    obj.aparencian_2:setField("aparencia_2");
    obj.aparencian_2:setWidth(11);
    obj.aparencian_2:setHeight(12);
    obj.aparencian_2:setImageChecked("/sub/img/bboll.png");

    obj.aparencian_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aparencian_3:setParent(obj.layout9);
    obj.aparencian_3:setName("aparencian_3");
    obj.aparencian_3:setField("aparencia_3");
    obj.aparencian_3:setLeft(12);
    obj.aparencian_3:setWidth(11);
    obj.aparencian_3:setHeight(12);
    obj.aparencian_3:setImageChecked("/sub/img/bboll.png");

    obj.aparencian_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aparencian_4:setParent(obj.layout9);
    obj.aparencian_4:setName("aparencian_4");
    obj.aparencian_4:setField("aparencia_4");
    obj.aparencian_4:setLeft(25);
    obj.aparencian_4:setWidth(11);
    obj.aparencian_4:setHeight(12);
    obj.aparencian_4:setImageChecked("/sub/img/bboll.png");

    obj.aparencian_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aparencian_5:setParent(obj.layout9);
    obj.aparencian_5:setName("aparencian_5");
    obj.aparencian_5:setField("aparencia_5");
    obj.aparencian_5:setLeft(37);
    obj.aparencian_5:setWidth(11);
    obj.aparencian_5:setHeight(12);
    obj.aparencian_5:setImageChecked("/sub/img/bboll.png");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout3);
    obj.layout10:setLeft(706);
    obj.layout10:setTop(4);
    obj.layout10:setWidth(49);
    obj.layout10:setHeight(12);
    obj.layout10:setName("layout10");

    obj.percepn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.percepn_2:setParent(obj.layout10);
    obj.percepn_2:setName("percepn_2");
    obj.percepn_2:setField("percep_2");
    obj.percepn_2:setWidth(11);
    obj.percepn_2:setHeight(12);
    obj.percepn_2:setImageChecked("/sub/img/bboll.png");

    obj.percepn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.percepn_3:setParent(obj.layout10);
    obj.percepn_3:setName("percepn_3");
    obj.percepn_3:setField("percep_3");
    obj.percepn_3:setLeft(12);
    obj.percepn_3:setWidth(11);
    obj.percepn_3:setHeight(12);
    obj.percepn_3:setImageChecked("/sub/img/bboll.png");

    obj.percepn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.percepn_4:setParent(obj.layout10);
    obj.percepn_4:setName("percepn_4");
    obj.percepn_4:setField("percep_4");
    obj.percepn_4:setLeft(25);
    obj.percepn_4:setWidth(11);
    obj.percepn_4:setHeight(12);
    obj.percepn_4:setImageChecked("/sub/img/bboll.png");

    obj.percepn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.percepn_5:setParent(obj.layout10);
    obj.percepn_5:setName("percepn_5");
    obj.percepn_5:setField("percep_5");
    obj.percepn_5:setLeft(37);
    obj.percepn_5:setWidth(11);
    obj.percepn_5:setHeight(12);
    obj.percepn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout3);
    obj.layout11:setLeft(706);
    obj.layout11:setTop(23);
    obj.layout11:setWidth(49);
    obj.layout11:setHeight(12);
    obj.layout11:setName("layout11");

    obj.inteligen_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.inteligen_2:setParent(obj.layout11);
    obj.inteligen_2:setName("inteligen_2");
    obj.inteligen_2:setField("intelige_2");
    obj.inteligen_2:setWidth(11);
    obj.inteligen_2:setHeight(12);
    obj.inteligen_2:setImageChecked("/sub/img/bboll.png");

    obj.inteligen_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.inteligen_3:setParent(obj.layout11);
    obj.inteligen_3:setName("inteligen_3");
    obj.inteligen_3:setField("intelige_3");
    obj.inteligen_3:setLeft(12);
    obj.inteligen_3:setWidth(11);
    obj.inteligen_3:setHeight(12);
    obj.inteligen_3:setImageChecked("/sub/img/bboll.png");

    obj.inteligen_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.inteligen_4:setParent(obj.layout11);
    obj.inteligen_4:setName("inteligen_4");
    obj.inteligen_4:setField("intelige_4");
    obj.inteligen_4:setLeft(25);
    obj.inteligen_4:setWidth(11);
    obj.inteligen_4:setHeight(12);
    obj.inteligen_4:setImageChecked("/sub/img/bboll.png");

    obj.inteligen_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.inteligen_5:setParent(obj.layout11);
    obj.inteligen_5:setName("inteligen_5");
    obj.inteligen_5:setField("intelige_5");
    obj.inteligen_5:setLeft(37);
    obj.inteligen_5:setWidth(11);
    obj.inteligen_5:setHeight(12);
    obj.inteligen_5:setImageChecked("/sub/img/bboll.png");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout3);
    obj.layout12:setLeft(706);
    obj.layout12:setTop(42);
    obj.layout12:setWidth(49);
    obj.layout12:setHeight(12);
    obj.layout12:setName("layout12");

    obj.racion_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.racion_2:setParent(obj.layout12);
    obj.racion_2:setName("racion_2");
    obj.racion_2:setField("racio_2");
    obj.racion_2:setWidth(11);
    obj.racion_2:setHeight(12);
    obj.racion_2:setImageChecked("/sub/img/bboll.png");

    obj.racion_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.racion_3:setParent(obj.layout12);
    obj.racion_3:setName("racion_3");
    obj.racion_3:setField("racio_3");
    obj.racion_3:setLeft(12);
    obj.racion_3:setWidth(11);
    obj.racion_3:setHeight(12);
    obj.racion_3:setImageChecked("/sub/img/bboll.png");

    obj.racion_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.racion_4:setParent(obj.layout12);
    obj.racion_4:setName("racion_4");
    obj.racion_4:setField("racio_4");
    obj.racion_4:setLeft(25);
    obj.racion_4:setWidth(11);
    obj.racion_4:setHeight(12);
    obj.racion_4:setImageChecked("/sub/img/bboll.png");

    obj.racion_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.racion_5:setParent(obj.layout12);
    obj.racion_5:setName("racion_5");
    obj.racion_5:setField("racio_5");
    obj.racion_5:setLeft(37);
    obj.racion_5:setWidth(11);
    obj.racion_5:setHeight(12);
    obj.racion_5:setImageChecked("/sub/img/bboll.png");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout1);
    obj.layout13:setLeft(2);
    obj.layout13:setTop(278);
    obj.layout13:setWidth(756);
    obj.layout13:setHeight(190);
    obj.layout13:setName("layout13");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setLeft(176);
    obj.layout14:setTop(6);
    obj.layout14:setWidth(60);
    obj.layout14:setHeight(12);
    obj.layout14:setName("layout14");

    obj.prontin_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.prontin_1:setParent(obj.layout14);
    obj.prontin_1:setName("prontin_1");
    obj.prontin_1:setField("pronti_1");
    obj.prontin_1:setWidth(11);
    obj.prontin_1:setHeight(12);
    obj.prontin_1:setImageChecked("/sub/img/bboll.png");

    obj.prontin_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.prontin_2:setParent(obj.layout14);
    obj.prontin_2:setName("prontin_2");
    obj.prontin_2:setField("pronti_2");
    obj.prontin_2:setLeft(12);
    obj.prontin_2:setWidth(11);
    obj.prontin_2:setHeight(12);
    obj.prontin_2:setImageChecked("/sub/img/bboll.png");

    obj.prontin_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.prontin_3:setParent(obj.layout14);
    obj.prontin_3:setName("prontin_3");
    obj.prontin_3:setField("pronti_3");
    obj.prontin_3:setLeft(25);
    obj.prontin_3:setWidth(11);
    obj.prontin_3:setHeight(12);
    obj.prontin_3:setImageChecked("/sub/img/bboll.png");

    obj.prontin_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.prontin_4:setParent(obj.layout14);
    obj.prontin_4:setName("prontin_4");
    obj.prontin_4:setField("pronti_4");
    obj.prontin_4:setLeft(37);
    obj.prontin_4:setWidth(11);
    obj.prontin_4:setHeight(12);
    obj.prontin_4:setImageChecked("/sub/img/bboll.png");

    obj.prontin_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.prontin_5:setParent(obj.layout14);
    obj.prontin_5:setName("prontin_5");
    obj.prontin_5:setField("pronti_5");
    obj.prontin_5:setLeft(50);
    obj.prontin_5:setWidth(11);
    obj.prontin_5:setHeight(12);
    obj.prontin_5:setImageChecked("/sub/img/bboll.png");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layout13);
    obj.layout15:setLeft(176);
    obj.layout15:setTop(25);
    obj.layout15:setWidth(60);
    obj.layout15:setHeight(12);
    obj.layout15:setName("layout15");

    obj.esportn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esportn_1:setParent(obj.layout15);
    obj.esportn_1:setName("esportn_1");
    obj.esportn_1:setField("esport_1");
    obj.esportn_1:setWidth(11);
    obj.esportn_1:setHeight(12);
    obj.esportn_1:setImageChecked("/sub/img/bboll.png");

    obj.esportn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esportn_2:setParent(obj.layout15);
    obj.esportn_2:setName("esportn_2");
    obj.esportn_2:setField("esport_2");
    obj.esportn_2:setLeft(12);
    obj.esportn_2:setWidth(11);
    obj.esportn_2:setHeight(12);
    obj.esportn_2:setImageChecked("/sub/img/bboll.png");

    obj.esportn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esportn_3:setParent(obj.layout15);
    obj.esportn_3:setName("esportn_3");
    obj.esportn_3:setField("esport_3");
    obj.esportn_3:setLeft(25);
    obj.esportn_3:setWidth(11);
    obj.esportn_3:setHeight(12);
    obj.esportn_3:setImageChecked("/sub/img/bboll.png");

    obj.esportn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esportn_4:setParent(obj.layout15);
    obj.esportn_4:setName("esportn_4");
    obj.esportn_4:setField("esport_4");
    obj.esportn_4:setLeft(37);
    obj.esportn_4:setWidth(11);
    obj.esportn_4:setHeight(12);
    obj.esportn_4:setImageChecked("/sub/img/bboll.png");

    obj.esportn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esportn_5:setParent(obj.layout15);
    obj.esportn_5:setName("esportn_5");
    obj.esportn_5:setField("esport_5");
    obj.esportn_5:setLeft(50);
    obj.esportn_5:setWidth(11);
    obj.esportn_5:setHeight(12);
    obj.esportn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout13);
    obj.layout16:setLeft(176);
    obj.layout16:setTop(43);
    obj.layout16:setWidth(60);
    obj.layout16:setHeight(12);
    obj.layout16:setName("layout16");

    obj.brigan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.brigan_1:setParent(obj.layout16);
    obj.brigan_1:setName("brigan_1");
    obj.brigan_1:setField("briga_1");
    obj.brigan_1:setWidth(11);
    obj.brigan_1:setHeight(12);
    obj.brigan_1:setImageChecked("/sub/img/bboll.png");

    obj.brigan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.brigan_2:setParent(obj.layout16);
    obj.brigan_2:setName("brigan_2");
    obj.brigan_2:setField("briga_2");
    obj.brigan_2:setLeft(12);
    obj.brigan_2:setWidth(11);
    obj.brigan_2:setHeight(12);
    obj.brigan_2:setImageChecked("/sub/img/bboll.png");

    obj.brigan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.brigan_3:setParent(obj.layout16);
    obj.brigan_3:setName("brigan_3");
    obj.brigan_3:setField("briga_3");
    obj.brigan_3:setLeft(25);
    obj.brigan_3:setWidth(11);
    obj.brigan_3:setHeight(12);
    obj.brigan_3:setImageChecked("/sub/img/bboll.png");

    obj.brigan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.brigan_4:setParent(obj.layout16);
    obj.brigan_4:setName("brigan_4");
    obj.brigan_4:setField("briga_4");
    obj.brigan_4:setLeft(37);
    obj.brigan_4:setWidth(11);
    obj.brigan_4:setHeight(12);
    obj.brigan_4:setImageChecked("/sub/img/bboll.png");

    obj.brigan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.brigan_5:setParent(obj.layout16);
    obj.brigan_5:setName("brigan_5");
    obj.brigan_5:setField("briga_5");
    obj.brigan_5:setLeft(50);
    obj.brigan_5:setWidth(11);
    obj.brigan_5:setHeight(12);
    obj.brigan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout13);
    obj.layout17:setLeft(176);
    obj.layout17:setTop(62);
    obj.layout17:setWidth(60);
    obj.layout17:setHeight(12);
    obj.layout17:setName("layout17");

    obj.esquivan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esquivan_1:setParent(obj.layout17);
    obj.esquivan_1:setName("esquivan_1");
    obj.esquivan_1:setField("esquiva_1");
    obj.esquivan_1:setWidth(11);
    obj.esquivan_1:setHeight(12);
    obj.esquivan_1:setImageChecked("/sub/img/bboll.png");

    obj.esquivan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esquivan_2:setParent(obj.layout17);
    obj.esquivan_2:setName("esquivan_2");
    obj.esquivan_2:setField("esquiva_2");
    obj.esquivan_2:setLeft(12);
    obj.esquivan_2:setWidth(11);
    obj.esquivan_2:setHeight(12);
    obj.esquivan_2:setImageChecked("/sub/img/bboll.png");

    obj.esquivan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esquivan_3:setParent(obj.layout17);
    obj.esquivan_3:setName("esquivan_3");
    obj.esquivan_3:setField("esquiva_3");
    obj.esquivan_3:setLeft(25);
    obj.esquivan_3:setWidth(11);
    obj.esquivan_3:setHeight(12);
    obj.esquivan_3:setImageChecked("/sub/img/bboll.png");

    obj.esquivan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esquivan_4:setParent(obj.layout17);
    obj.esquivan_4:setName("esquivan_4");
    obj.esquivan_4:setField("esquiva_4");
    obj.esquivan_4:setLeft(37);
    obj.esquivan_4:setWidth(11);
    obj.esquivan_4:setHeight(12);
    obj.esquivan_4:setImageChecked("/sub/img/bboll.png");

    obj.esquivan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.esquivan_5:setParent(obj.layout17);
    obj.esquivan_5:setName("esquivan_5");
    obj.esquivan_5:setField("esquiva_5");
    obj.esquivan_5:setLeft(50);
    obj.esquivan_5:setWidth(11);
    obj.esquivan_5:setHeight(12);
    obj.esquivan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layout13);
    obj.layout18:setLeft(176);
    obj.layout18:setTop(81);
    obj.layout18:setWidth(60);
    obj.layout18:setHeight(12);
    obj.layout18:setName("layout18");

    obj.empatian_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.empatian_1:setParent(obj.layout18);
    obj.empatian_1:setName("empatian_1");
    obj.empatian_1:setField("empatia_1");
    obj.empatian_1:setWidth(11);
    obj.empatian_1:setHeight(12);
    obj.empatian_1:setImageChecked("/sub/img/bboll.png");

    obj.empatian_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.empatian_2:setParent(obj.layout18);
    obj.empatian_2:setName("empatian_2");
    obj.empatian_2:setField("empatia_2");
    obj.empatian_2:setLeft(12);
    obj.empatian_2:setWidth(11);
    obj.empatian_2:setHeight(12);
    obj.empatian_2:setImageChecked("/sub/img/bboll.png");

    obj.empatian_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.empatian_3:setParent(obj.layout18);
    obj.empatian_3:setName("empatian_3");
    obj.empatian_3:setField("empatia_3");
    obj.empatian_3:setLeft(25);
    obj.empatian_3:setWidth(11);
    obj.empatian_3:setHeight(12);
    obj.empatian_3:setImageChecked("/sub/img/bboll.png");

    obj.empatian_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.empatian_4:setParent(obj.layout18);
    obj.empatian_4:setName("empatian_4");
    obj.empatian_4:setField("empatia_4");
    obj.empatian_4:setLeft(37);
    obj.empatian_4:setWidth(11);
    obj.empatian_4:setHeight(12);
    obj.empatian_4:setImageChecked("/sub/img/bboll.png");

    obj.empatian_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.empatian_5:setParent(obj.layout18);
    obj.empatian_5:setName("empatian_5");
    obj.empatian_5:setField("empatia_5");
    obj.empatian_5:setLeft(50);
    obj.empatian_5:setWidth(11);
    obj.empatian_5:setHeight(12);
    obj.empatian_5:setImageChecked("/sub/img/bboll.png");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout13);
    obj.layout19:setLeft(176);
    obj.layout19:setTop(99);
    obj.layout19:setWidth(60);
    obj.layout19:setHeight(12);
    obj.layout19:setName("layout19");

    obj.intimin_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.intimin_1:setParent(obj.layout19);
    obj.intimin_1:setName("intimin_1");
    obj.intimin_1:setField("intimi_1");
    obj.intimin_1:setWidth(11);
    obj.intimin_1:setHeight(12);
    obj.intimin_1:setImageChecked("/sub/img/bboll.png");

    obj.intimin_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.intimin_2:setParent(obj.layout19);
    obj.intimin_2:setName("intimin_2");
    obj.intimin_2:setField("intimi_2");
    obj.intimin_2:setLeft(12);
    obj.intimin_2:setWidth(11);
    obj.intimin_2:setHeight(12);
    obj.intimin_2:setImageChecked("/sub/img/bboll.png");

    obj.intimin_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.intimin_3:setParent(obj.layout19);
    obj.intimin_3:setName("intimin_3");
    obj.intimin_3:setField("intimi_3");
    obj.intimin_3:setLeft(25);
    obj.intimin_3:setWidth(11);
    obj.intimin_3:setHeight(12);
    obj.intimin_3:setImageChecked("/sub/img/bboll.png");

    obj.intimin_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.intimin_4:setParent(obj.layout19);
    obj.intimin_4:setName("intimin_4");
    obj.intimin_4:setField("intimi_4");
    obj.intimin_4:setLeft(37);
    obj.intimin_4:setWidth(11);
    obj.intimin_4:setHeight(12);
    obj.intimin_4:setImageChecked("/sub/img/bboll.png");

    obj.intimin_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.intimin_5:setParent(obj.layout19);
    obj.intimin_5:setName("intimin_5");
    obj.intimin_5:setField("intimi_5");
    obj.intimin_5:setLeft(50);
    obj.intimin_5:setWidth(11);
    obj.intimin_5:setHeight(12);
    obj.intimin_5:setImageChecked("/sub/img/bboll.png");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout13);
    obj.layout20:setLeft(176);
    obj.layout20:setTop(118);
    obj.layout20:setWidth(60);
    obj.layout20:setHeight(12);
    obj.layout20:setName("layout20");

    obj.tinon_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tinon_1:setParent(obj.layout20);
    obj.tinon_1:setName("tinon_1");
    obj.tinon_1:setField("tino_1");
    obj.tinon_1:setWidth(11);
    obj.tinon_1:setHeight(12);
    obj.tinon_1:setImageChecked("/sub/img/bboll.png");

    obj.tinon_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tinon_2:setParent(obj.layout20);
    obj.tinon_2:setName("tinon_2");
    obj.tinon_2:setField("tino_2");
    obj.tinon_2:setLeft(12);
    obj.tinon_2:setWidth(11);
    obj.tinon_2:setHeight(12);
    obj.tinon_2:setImageChecked("/sub/img/bboll.png");

    obj.tinon_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tinon_3:setParent(obj.layout20);
    obj.tinon_3:setName("tinon_3");
    obj.tinon_3:setField("tino_3");
    obj.tinon_3:setLeft(25);
    obj.tinon_3:setWidth(11);
    obj.tinon_3:setHeight(12);
    obj.tinon_3:setImageChecked("/sub/img/bboll.png");

    obj.tinon_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tinon_4:setParent(obj.layout20);
    obj.tinon_4:setName("tinon_4");
    obj.tinon_4:setField("tino_4");
    obj.tinon_4:setLeft(37);
    obj.tinon_4:setWidth(11);
    obj.tinon_4:setHeight(12);
    obj.tinon_4:setImageChecked("/sub/img/bboll.png");

    obj.tinon_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tinon_5:setParent(obj.layout20);
    obj.tinon_5:setName("tinon_5");
    obj.tinon_5:setField("tino_5");
    obj.tinon_5:setLeft(50);
    obj.tinon_5:setWidth(11);
    obj.tinon_5:setHeight(12);
    obj.tinon_5:setImageChecked("/sub/img/bboll.png");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout13);
    obj.layout21:setLeft(176);
    obj.layout21:setTop(136);
    obj.layout21:setWidth(60);
    obj.layout21:setHeight(12);
    obj.layout21:setName("layout21");

    obj.persuan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.persuan_1:setParent(obj.layout21);
    obj.persuan_1:setName("persuan_1");
    obj.persuan_1:setField("persua_1");
    obj.persuan_1:setWidth(11);
    obj.persuan_1:setHeight(12);
    obj.persuan_1:setImageChecked("/sub/img/bboll.png");

    obj.persuan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.persuan_2:setParent(obj.layout21);
    obj.persuan_2:setName("persuan_2");
    obj.persuan_2:setField("persua_2");
    obj.persuan_2:setLeft(12);
    obj.persuan_2:setWidth(11);
    obj.persuan_2:setHeight(12);
    obj.persuan_2:setImageChecked("/sub/img/bboll.png");

    obj.persuan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.persuan_3:setParent(obj.layout21);
    obj.persuan_3:setName("persuan_3");
    obj.persuan_3:setField("persua_3");
    obj.persuan_3:setLeft(25);
    obj.persuan_3:setWidth(11);
    obj.persuan_3:setHeight(12);
    obj.persuan_3:setImageChecked("/sub/img/bboll.png");

    obj.persuan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.persuan_4:setParent(obj.layout21);
    obj.persuan_4:setName("persuan_4");
    obj.persuan_4:setField("persua_4");
    obj.persuan_4:setLeft(37);
    obj.persuan_4:setWidth(11);
    obj.persuan_4:setHeight(12);
    obj.persuan_4:setImageChecked("/sub/img/bboll.png");

    obj.persuan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.persuan_5:setParent(obj.layout21);
    obj.persuan_5:setName("persuan_5");
    obj.persuan_5:setField("persua_5");
    obj.persuan_5:setLeft(50);
    obj.persuan_5:setWidth(11);
    obj.persuan_5:setHeight(12);
    obj.persuan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layout13);
    obj.layout22:setLeft(176);
    obj.layout22:setTop(157);
    obj.layout22:setWidth(60);
    obj.layout22:setHeight(12);
    obj.layout22:setName("layout22");

    obj.manhan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manhan_1:setParent(obj.layout22);
    obj.manhan_1:setName("manhan_1");
    obj.manhan_1:setField("manha_1");
    obj.manhan_1:setWidth(11);
    obj.manhan_1:setHeight(12);
    obj.manhan_1:setImageChecked("/sub/img/bboll.png");

    obj.manhan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manhan_2:setParent(obj.layout22);
    obj.manhan_2:setName("manhan_2");
    obj.manhan_2:setField("manha_2");
    obj.manhan_2:setLeft(12);
    obj.manhan_2:setWidth(11);
    obj.manhan_2:setHeight(12);
    obj.manhan_2:setImageChecked("/sub/img/bboll.png");

    obj.manhan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manhan_3:setParent(obj.layout22);
    obj.manhan_3:setName("manhan_3");
    obj.manhan_3:setField("manha_3");
    obj.manhan_3:setLeft(25);
    obj.manhan_3:setWidth(11);
    obj.manhan_3:setHeight(12);
    obj.manhan_3:setImageChecked("/sub/img/bboll.png");

    obj.manhan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manhan_4:setParent(obj.layout22);
    obj.manhan_4:setName("manhan_4");
    obj.manhan_4:setField("manha_4");
    obj.manhan_4:setLeft(37);
    obj.manhan_4:setWidth(11);
    obj.manhan_4:setHeight(12);
    obj.manhan_4:setImageChecked("/sub/img/bboll.png");

    obj.manhan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.manhan_5:setParent(obj.layout22);
    obj.manhan_5:setName("manhan_5");
    obj.manhan_5:setField("manha_5");
    obj.manhan_5:setLeft(50);
    obj.manhan_5:setWidth(11);
    obj.manhan_5:setHeight(12);
    obj.manhan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layout13);
    obj.layout23:setLeft(176);
    obj.layout23:setTop(176);
    obj.layout23:setWidth(60);
    obj.layout23:setHeight(12);
    obj.layout23:setName("layout23");

    obj.labian_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.labian_1:setParent(obj.layout23);
    obj.labian_1:setName("labian_1");
    obj.labian_1:setField("labia_1");
    obj.labian_1:setWidth(11);
    obj.labian_1:setHeight(12);
    obj.labian_1:setImageChecked("/sub/img/bboll.png");

    obj.labian_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.labian_2:setParent(obj.layout23);
    obj.labian_2:setName("labian_2");
    obj.labian_2:setField("labia_2");
    obj.labian_2:setLeft(12);
    obj.labian_2:setWidth(11);
    obj.labian_2:setHeight(12);
    obj.labian_2:setImageChecked("/sub/img/bboll.png");

    obj.labian_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.labian_3:setParent(obj.layout23);
    obj.labian_3:setName("labian_3");
    obj.labian_3:setField("labia_3");
    obj.labian_3:setLeft(25);
    obj.labian_3:setWidth(11);
    obj.labian_3:setHeight(12);
    obj.labian_3:setImageChecked("/sub/img/bboll.png");

    obj.labian_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.labian_4:setParent(obj.layout23);
    obj.labian_4:setName("labian_4");
    obj.labian_4:setField("labia_4");
    obj.labian_4:setLeft(37);
    obj.labian_4:setWidth(11);
    obj.labian_4:setHeight(12);
    obj.labian_4:setImageChecked("/sub/img/bboll.png");

    obj.labian_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.labian_5:setParent(obj.layout23);
    obj.labian_5:setName("labian_5");
    obj.labian_5:setField("labia_5");
    obj.labian_5:setLeft(50);
    obj.labian_5:setWidth(11);
    obj.labian_5:setHeight(12);
    obj.labian_5:setImageChecked("/sub/img/bboll.png");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layout13);
    obj.layout24:setLeft(435);
    obj.layout24:setTop(6);
    obj.layout24:setWidth(61);
    obj.layout24:setHeight(12);
    obj.layout24:setName("layout24");

    obj.oficiosn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.oficiosn_1:setParent(obj.layout24);
    obj.oficiosn_1:setName("oficiosn_1");
    obj.oficiosn_1:setField("oficios_1");
    obj.oficiosn_1:setWidth(11);
    obj.oficiosn_1:setHeight(12);
    obj.oficiosn_1:setImageChecked("/sub/img/bboll.png");

    obj.oficiosn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.oficiosn_2:setParent(obj.layout24);
    obj.oficiosn_2:setName("oficiosn_2");
    obj.oficiosn_2:setField("oficios_2");
    obj.oficiosn_2:setLeft(12);
    obj.oficiosn_2:setWidth(11);
    obj.oficiosn_2:setHeight(12);
    obj.oficiosn_2:setImageChecked("/sub/img/bboll.png");

    obj.oficiosn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.oficiosn_3:setParent(obj.layout24);
    obj.oficiosn_3:setName("oficiosn_3");
    obj.oficiosn_3:setField("oficios_3");
    obj.oficiosn_3:setLeft(25);
    obj.oficiosn_3:setWidth(11);
    obj.oficiosn_3:setHeight(12);
    obj.oficiosn_3:setImageChecked("/sub/img/bboll.png");

    obj.oficiosn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.oficiosn_4:setParent(obj.layout24);
    obj.oficiosn_4:setName("oficiosn_4");
    obj.oficiosn_4:setField("oficios_4");
    obj.oficiosn_4:setLeft(37);
    obj.oficiosn_4:setWidth(11);
    obj.oficiosn_4:setHeight(12);
    obj.oficiosn_4:setImageChecked("/sub/img/bboll.png");

    obj.oficiosn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.oficiosn_5:setParent(obj.layout24);
    obj.oficiosn_5:setName("oficiosn_5");
    obj.oficiosn_5:setField("oficios_5");
    obj.oficiosn_5:setLeft(50);
    obj.oficiosn_5:setWidth(11);
    obj.oficiosn_5:setHeight(12);
    obj.oficiosn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout13);
    obj.layout25:setLeft(435);
    obj.layout25:setTop(25);
    obj.layout25:setWidth(61);
    obj.layout25:setHeight(12);
    obj.layout25:setName("layout25");

    obj.conducaon_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.conducaon_1:setParent(obj.layout25);
    obj.conducaon_1:setName("conducaon_1");
    obj.conducaon_1:setField("conducao_1");
    obj.conducaon_1:setWidth(11);
    obj.conducaon_1:setHeight(12);
    obj.conducaon_1:setImageChecked("/sub/img/bboll.png");

    obj.conducaon_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.conducaon_2:setParent(obj.layout25);
    obj.conducaon_2:setName("conducaon_2");
    obj.conducaon_2:setField("conducao_2");
    obj.conducaon_2:setLeft(12);
    obj.conducaon_2:setWidth(11);
    obj.conducaon_2:setHeight(12);
    obj.conducaon_2:setImageChecked("/sub/img/bboll.png");

    obj.conducaon_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.conducaon_3:setParent(obj.layout25);
    obj.conducaon_3:setName("conducaon_3");
    obj.conducaon_3:setField("conducao_3");
    obj.conducaon_3:setLeft(25);
    obj.conducaon_3:setWidth(11);
    obj.conducaon_3:setHeight(12);
    obj.conducaon_3:setImageChecked("/sub/img/bboll.png");

    obj.conducaon_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.conducaon_4:setParent(obj.layout25);
    obj.conducaon_4:setName("conducaon_4");
    obj.conducaon_4:setField("conducao_4");
    obj.conducaon_4:setLeft(37);
    obj.conducaon_4:setWidth(11);
    obj.conducaon_4:setHeight(12);
    obj.conducaon_4:setImageChecked("/sub/img/bboll.png");

    obj.conducaon_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.conducaon_5:setParent(obj.layout25);
    obj.conducaon_5:setName("conducaon_5");
    obj.conducaon_5:setField("conducao_5");
    obj.conducaon_5:setLeft(50);
    obj.conducaon_5:setWidth(11);
    obj.conducaon_5:setHeight(12);
    obj.conducaon_5:setImageChecked("/sub/img/bboll.png");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout13);
    obj.layout26:setLeft(435);
    obj.layout26:setTop(43);
    obj.layout26:setWidth(61);
    obj.layout26:setHeight(12);
    obj.layout26:setName("layout26");

    obj.etiquetan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.etiquetan_1:setParent(obj.layout26);
    obj.etiquetan_1:setName("etiquetan_1");
    obj.etiquetan_1:setField("etiqueta_1");
    obj.etiquetan_1:setWidth(11);
    obj.etiquetan_1:setHeight(12);
    obj.etiquetan_1:setImageChecked("/sub/img/bboll.png");

    obj.etiquetan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.etiquetan_2:setParent(obj.layout26);
    obj.etiquetan_2:setName("etiquetan_2");
    obj.etiquetan_2:setField("etiqueta_2");
    obj.etiquetan_2:setLeft(12);
    obj.etiquetan_2:setWidth(11);
    obj.etiquetan_2:setHeight(12);
    obj.etiquetan_2:setImageChecked("/sub/img/bboll.png");

    obj.etiquetan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.etiquetan_3:setParent(obj.layout26);
    obj.etiquetan_3:setName("etiquetan_3");
    obj.etiquetan_3:setField("etiqueta_3");
    obj.etiquetan_3:setLeft(25);
    obj.etiquetan_3:setWidth(11);
    obj.etiquetan_3:setHeight(12);
    obj.etiquetan_3:setImageChecked("/sub/img/bboll.png");

    obj.etiquetan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.etiquetan_4:setParent(obj.layout26);
    obj.etiquetan_4:setName("etiquetan_4");
    obj.etiquetan_4:setField("etiqueta_4");
    obj.etiquetan_4:setLeft(37);
    obj.etiquetan_4:setWidth(11);
    obj.etiquetan_4:setHeight(12);
    obj.etiquetan_4:setImageChecked("/sub/img/bboll.png");

    obj.etiquetan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.etiquetan_5:setParent(obj.layout26);
    obj.etiquetan_5:setName("etiquetan_5");
    obj.etiquetan_5:setField("etiqueta_5");
    obj.etiquetan_5:setLeft(50);
    obj.etiquetan_5:setWidth(11);
    obj.etiquetan_5:setHeight(12);
    obj.etiquetan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout13);
    obj.layout27:setLeft(435);
    obj.layout27:setTop(62);
    obj.layout27:setWidth(61);
    obj.layout27:setHeight(12);
    obj.layout27:setName("layout27");

    obj.afogon_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.afogon_1:setParent(obj.layout27);
    obj.afogon_1:setName("afogon_1");
    obj.afogon_1:setField("afogo_1");
    obj.afogon_1:setWidth(11);
    obj.afogon_1:setHeight(12);
    obj.afogon_1:setImageChecked("/sub/img/bboll.png");

    obj.afogon_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.afogon_2:setParent(obj.layout27);
    obj.afogon_2:setName("afogon_2");
    obj.afogon_2:setField("afogo_2");
    obj.afogon_2:setLeft(12);
    obj.afogon_2:setWidth(11);
    obj.afogon_2:setHeight(12);
    obj.afogon_2:setImageChecked("/sub/img/bboll.png");

    obj.afogon_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.afogon_3:setParent(obj.layout27);
    obj.afogon_3:setName("afogon_3");
    obj.afogon_3:setField("afogo_3");
    obj.afogon_3:setLeft(25);
    obj.afogon_3:setWidth(11);
    obj.afogon_3:setHeight(12);
    obj.afogon_3:setImageChecked("/sub/img/bboll.png");

    obj.afogon_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.afogon_4:setParent(obj.layout27);
    obj.afogon_4:setName("afogon_4");
    obj.afogon_4:setField("afogo_4");
    obj.afogon_4:setLeft(37);
    obj.afogon_4:setWidth(11);
    obj.afogon_4:setHeight(12);
    obj.afogon_4:setImageChecked("/sub/img/bboll.png");

    obj.afogon_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.afogon_5:setParent(obj.layout27);
    obj.afogon_5:setName("afogon_5");
    obj.afogon_5:setField("afogo_5");
    obj.afogon_5:setLeft(50);
    obj.afogon_5:setWidth(11);
    obj.afogon_5:setHeight(12);
    obj.afogon_5:setImageChecked("/sub/img/bboll.png");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout13);
    obj.layout28:setLeft(435);
    obj.layout28:setTop(80);
    obj.layout28:setWidth(61);
    obj.layout28:setHeight(12);
    obj.layout28:setName("layout28");

    obj.lideran_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.lideran_1:setParent(obj.layout28);
    obj.lideran_1:setName("lideran_1");
    obj.lideran_1:setField("lidera_1");
    obj.lideran_1:setWidth(11);
    obj.lideran_1:setHeight(12);
    obj.lideran_1:setImageChecked("/sub/img/bboll.png");

    obj.lideran_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.lideran_2:setParent(obj.layout28);
    obj.lideran_2:setName("lideran_2");
    obj.lideran_2:setField("lidera_2");
    obj.lideran_2:setLeft(12);
    obj.lideran_2:setWidth(11);
    obj.lideran_2:setHeight(12);
    obj.lideran_2:setImageChecked("/sub/img/bboll.png");

    obj.lideran_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.lideran_3:setParent(obj.layout28);
    obj.lideran_3:setName("lideran_3");
    obj.lideran_3:setField("lidera_3");
    obj.lideran_3:setLeft(25);
    obj.lideran_3:setWidth(11);
    obj.lideran_3:setHeight(12);
    obj.lideran_3:setImageChecked("/sub/img/bboll.png");

    obj.lideran_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.lideran_4:setParent(obj.layout28);
    obj.lideran_4:setName("lideran_4");
    obj.lideran_4:setField("lidera_4");
    obj.lideran_4:setLeft(37);
    obj.lideran_4:setWidth(11);
    obj.lideran_4:setHeight(12);
    obj.lideran_4:setImageChecked("/sub/img/bboll.png");

    obj.lideran_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.lideran_5:setParent(obj.layout28);
    obj.lideran_5:setName("lideran_5");
    obj.lideran_5:setField("lidera_5");
    obj.lideran_5:setLeft(50);
    obj.lideran_5:setWidth(11);
    obj.lideran_5:setHeight(12);
    obj.lideran_5:setImageChecked("/sub/img/bboll.png");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout13);
    obj.layout29:setLeft(435);
    obj.layout29:setTop(99);
    obj.layout29:setWidth(61);
    obj.layout29:setHeight(12);
    obj.layout29:setName("layout29");

    obj.abrancasn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.abrancasn_1:setParent(obj.layout29);
    obj.abrancasn_1:setName("abrancasn_1");
    obj.abrancasn_1:setField("abrancas_1");
    obj.abrancasn_1:setWidth(11);
    obj.abrancasn_1:setHeight(12);
    obj.abrancasn_1:setImageChecked("/sub/img/bboll.png");

    obj.abrancasn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.abrancasn_2:setParent(obj.layout29);
    obj.abrancasn_2:setName("abrancasn_2");
    obj.abrancasn_2:setField("abrancas_2");
    obj.abrancasn_2:setLeft(12);
    obj.abrancasn_2:setWidth(11);
    obj.abrancasn_2:setHeight(12);
    obj.abrancasn_2:setImageChecked("/sub/img/bboll.png");

    obj.abrancasn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.abrancasn_3:setParent(obj.layout29);
    obj.abrancasn_3:setName("abrancasn_3");
    obj.abrancasn_3:setField("abrancas_3");
    obj.abrancasn_3:setLeft(25);
    obj.abrancasn_3:setWidth(11);
    obj.abrancasn_3:setHeight(12);
    obj.abrancasn_3:setImageChecked("/sub/img/bboll.png");

    obj.abrancasn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.abrancasn_4:setParent(obj.layout29);
    obj.abrancasn_4:setName("abrancasn_4");
    obj.abrancasn_4:setField("abrancas_4");
    obj.abrancasn_4:setLeft(37);
    obj.abrancasn_4:setWidth(11);
    obj.abrancasn_4:setHeight(12);
    obj.abrancasn_4:setImageChecked("/sub/img/bboll.png");

    obj.abrancasn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.abrancasn_5:setParent(obj.layout29);
    obj.abrancasn_5:setName("abrancasn_5");
    obj.abrancasn_5:setField("abrancas_5");
    obj.abrancasn_5:setLeft(50);
    obj.abrancasn_5:setWidth(11);
    obj.abrancasn_5:setHeight(12);
    obj.abrancasn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout13);
    obj.layout30:setLeft(435);
    obj.layout30:setTop(118);
    obj.layout30:setWidth(61);
    obj.layout30:setHeight(12);
    obj.layout30:setName("layout30");

    obj.performan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.performan_1:setParent(obj.layout30);
    obj.performan_1:setName("performan_1");
    obj.performan_1:setField("performa_1");
    obj.performan_1:setWidth(11);
    obj.performan_1:setHeight(12);
    obj.performan_1:setImageChecked("/sub/img/bboll.png");

    obj.performan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.performan_2:setParent(obj.layout30);
    obj.performan_2:setName("performan_2");
    obj.performan_2:setField("performa_2");
    obj.performan_2:setLeft(12);
    obj.performan_2:setWidth(11);
    obj.performan_2:setHeight(12);
    obj.performan_2:setImageChecked("/sub/img/bboll.png");

    obj.performan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.performan_3:setParent(obj.layout30);
    obj.performan_3:setName("performan_3");
    obj.performan_3:setField("performa_3");
    obj.performan_3:setLeft(25);
    obj.performan_3:setWidth(11);
    obj.performan_3:setHeight(12);
    obj.performan_3:setImageChecked("/sub/img/bboll.png");

    obj.performan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.performan_4:setParent(obj.layout30);
    obj.performan_4:setName("performan_4");
    obj.performan_4:setField("performa_4");
    obj.performan_4:setLeft(37);
    obj.performan_4:setWidth(11);
    obj.performan_4:setHeight(12);
    obj.performan_4:setImageChecked("/sub/img/bboll.png");

    obj.performan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.performan_5:setParent(obj.layout30);
    obj.performan_5:setName("performan_5");
    obj.performan_5:setField("performa_5");
    obj.performan_5:setLeft(50);
    obj.performan_5:setWidth(11);
    obj.performan_5:setHeight(12);
    obj.performan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout13);
    obj.layout31:setLeft(435);
    obj.layout31:setTop(136);
    obj.layout31:setWidth(61);
    obj.layout31:setHeight(12);
    obj.layout31:setName("layout31");

    obj.seguran_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.seguran_1:setParent(obj.layout31);
    obj.seguran_1:setName("seguran_1");
    obj.seguran_1:setField("segura_1");
    obj.seguran_1:setWidth(11);
    obj.seguran_1:setHeight(12);
    obj.seguran_1:setImageChecked("/sub/img/bboll.png");

    obj.seguran_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.seguran_2:setParent(obj.layout31);
    obj.seguran_2:setName("seguran_2");
    obj.seguran_2:setField("segura_2");
    obj.seguran_2:setLeft(12);
    obj.seguran_2:setWidth(11);
    obj.seguran_2:setHeight(12);
    obj.seguran_2:setImageChecked("/sub/img/bboll.png");

    obj.seguran_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.seguran_3:setParent(obj.layout31);
    obj.seguran_3:setName("seguran_3");
    obj.seguran_3:setField("segura_3");
    obj.seguran_3:setLeft(25);
    obj.seguran_3:setWidth(11);
    obj.seguran_3:setHeight(12);
    obj.seguran_3:setImageChecked("/sub/img/bboll.png");

    obj.seguran_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.seguran_4:setParent(obj.layout31);
    obj.seguran_4:setName("seguran_4");
    obj.seguran_4:setField("segura_4");
    obj.seguran_4:setLeft(37);
    obj.seguran_4:setWidth(11);
    obj.seguran_4:setHeight(12);
    obj.seguran_4:setImageChecked("/sub/img/bboll.png");

    obj.seguran_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.seguran_5:setParent(obj.layout31);
    obj.seguran_5:setName("seguran_5");
    obj.seguran_5:setField("segura_5");
    obj.seguran_5:setLeft(50);
    obj.seguran_5:setWidth(11);
    obj.seguran_5:setHeight(12);
    obj.seguran_5:setImageChecked("/sub/img/bboll.png");

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout13);
    obj.layout32:setLeft(435);
    obj.layout32:setTop(157);
    obj.layout32:setWidth(61);
    obj.layout32:setHeight(12);
    obj.layout32:setName("layout32");

    obj.furtivin_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.furtivin_1:setParent(obj.layout32);
    obj.furtivin_1:setName("furtivin_1");
    obj.furtivin_1:setField("furtivi_1");
    obj.furtivin_1:setWidth(11);
    obj.furtivin_1:setHeight(12);
    obj.furtivin_1:setImageChecked("/sub/img/bboll.png");

    obj.furtivin_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.furtivin_2:setParent(obj.layout32);
    obj.furtivin_2:setName("furtivin_2");
    obj.furtivin_2:setField("furtivi_2");
    obj.furtivin_2:setLeft(12);
    obj.furtivin_2:setWidth(11);
    obj.furtivin_2:setHeight(12);
    obj.furtivin_2:setImageChecked("/sub/img/bboll.png");

    obj.furtivin_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.furtivin_3:setParent(obj.layout32);
    obj.furtivin_3:setName("furtivin_3");
    obj.furtivin_3:setField("furtivi_3");
    obj.furtivin_3:setLeft(25);
    obj.furtivin_3:setWidth(11);
    obj.furtivin_3:setHeight(12);
    obj.furtivin_3:setImageChecked("/sub/img/bboll.png");

    obj.furtivin_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.furtivin_4:setParent(obj.layout32);
    obj.furtivin_4:setName("furtivin_4");
    obj.furtivin_4:setField("furtivi_4");
    obj.furtivin_4:setLeft(37);
    obj.furtivin_4:setWidth(11);
    obj.furtivin_4:setHeight(12);
    obj.furtivin_4:setImageChecked("/sub/img/bboll.png");

    obj.furtivin_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.furtivin_5:setParent(obj.layout32);
    obj.furtivin_5:setName("furtivin_5");
    obj.furtivin_5:setField("furtivi_5");
    obj.furtivin_5:setLeft(50);
    obj.furtivin_5:setWidth(11);
    obj.furtivin_5:setHeight(12);
    obj.furtivin_5:setImageChecked("/sub/img/bboll.png");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout13);
    obj.layout33:setLeft(435);
    obj.layout33:setTop(176);
    obj.layout33:setWidth(61);
    obj.layout33:setHeight(12);
    obj.layout33:setName("layout33");

    obj.sobrevin_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.sobrevin_1:setParent(obj.layout33);
    obj.sobrevin_1:setName("sobrevin_1");
    obj.sobrevin_1:setField("sobrevi_1");
    obj.sobrevin_1:setWidth(11);
    obj.sobrevin_1:setHeight(12);
    obj.sobrevin_1:setImageChecked("/sub/img/bboll.png");

    obj.sobrevin_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.sobrevin_2:setParent(obj.layout33);
    obj.sobrevin_2:setName("sobrevin_2");
    obj.sobrevin_2:setField("sobrevi_2");
    obj.sobrevin_2:setLeft(12);
    obj.sobrevin_2:setWidth(11);
    obj.sobrevin_2:setHeight(12);
    obj.sobrevin_2:setImageChecked("/sub/img/bboll.png");

    obj.sobrevin_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.sobrevin_3:setParent(obj.layout33);
    obj.sobrevin_3:setName("sobrevin_3");
    obj.sobrevin_3:setField("sobrevi_3");
    obj.sobrevin_3:setLeft(25);
    obj.sobrevin_3:setWidth(11);
    obj.sobrevin_3:setHeight(12);
    obj.sobrevin_3:setImageChecked("/sub/img/bboll.png");

    obj.sobrevin_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.sobrevin_4:setParent(obj.layout33);
    obj.sobrevin_4:setName("sobrevin_4");
    obj.sobrevin_4:setField("sobrevi_4");
    obj.sobrevin_4:setLeft(37);
    obj.sobrevin_4:setWidth(11);
    obj.sobrevin_4:setHeight(12);
    obj.sobrevin_4:setImageChecked("/sub/img/bboll.png");

    obj.sobrevin_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.sobrevin_5:setParent(obj.layout33);
    obj.sobrevin_5:setName("sobrevin_5");
    obj.sobrevin_5:setField("sobrevi_5");
    obj.sobrevin_5:setLeft(50);
    obj.sobrevin_5:setWidth(11);
    obj.sobrevin_5:setHeight(12);
    obj.sobrevin_5:setImageChecked("/sub/img/bboll.png");

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout13);
    obj.layout34:setLeft(693);
    obj.layout34:setTop(6);
    obj.layout34:setWidth(60);
    obj.layout34:setHeight(12);
    obj.layout34:setName("layout34");

    obj.computan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.computan_1:setParent(obj.layout34);
    obj.computan_1:setName("computan_1");
    obj.computan_1:setField("_1");
    obj.computan_1:setWidth(11);
    obj.computan_1:setHeight(12);
    obj.computan_1:setImageChecked("/sub/img/bboll.png");

    obj.computan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.computan_2:setParent(obj.layout34);
    obj.computan_2:setName("computan_2");
    obj.computan_2:setField("_2");
    obj.computan_2:setLeft(12);
    obj.computan_2:setWidth(11);
    obj.computan_2:setHeight(12);
    obj.computan_2:setImageChecked("/sub/img/bboll.png");

    obj.computan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.computan_3:setParent(obj.layout34);
    obj.computan_3:setName("computan_3");
    obj.computan_3:setField("_3");
    obj.computan_3:setLeft(25);
    obj.computan_3:setWidth(11);
    obj.computan_3:setHeight(12);
    obj.computan_3:setImageChecked("/sub/img/bboll.png");

    obj.computan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.computan_4:setParent(obj.layout34);
    obj.computan_4:setName("computan_4");
    obj.computan_4:setField("_4");
    obj.computan_4:setLeft(37);
    obj.computan_4:setWidth(11);
    obj.computan_4:setHeight(12);
    obj.computan_4:setImageChecked("/sub/img/bboll.png");

    obj.computan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.computan_5:setParent(obj.layout34);
    obj.computan_5:setName("computan_5");
    obj.computan_5:setField("_5");
    obj.computan_5:setLeft(50);
    obj.computan_5:setWidth(11);
    obj.computan_5:setHeight(12);
    obj.computan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout13);
    obj.layout35:setLeft(693);
    obj.layout35:setTop(25);
    obj.layout35:setWidth(60);
    obj.layout35:setHeight(12);
    obj.layout35:setName("layout35");

    obj.enigmasn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.enigmasn_1:setParent(obj.layout35);
    obj.enigmasn_1:setName("enigmasn_1");
    obj.enigmasn_1:setField("enigmas_1");
    obj.enigmasn_1:setWidth(11);
    obj.enigmasn_1:setHeight(12);
    obj.enigmasn_1:setImageChecked("/sub/img/bboll.png");

    obj.enigmasn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.enigmasn_2:setParent(obj.layout35);
    obj.enigmasn_2:setName("enigmasn_2");
    obj.enigmasn_2:setField("enigmas_2");
    obj.enigmasn_2:setLeft(12);
    obj.enigmasn_2:setWidth(11);
    obj.enigmasn_2:setHeight(12);
    obj.enigmasn_2:setImageChecked("/sub/img/bboll.png");

    obj.enigmasn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.enigmasn_3:setParent(obj.layout35);
    obj.enigmasn_3:setName("enigmasn_3");
    obj.enigmasn_3:setField("enigmas_3");
    obj.enigmasn_3:setLeft(25);
    obj.enigmasn_3:setWidth(11);
    obj.enigmasn_3:setHeight(12);
    obj.enigmasn_3:setImageChecked("/sub/img/bboll.png");

    obj.enigmasn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.enigmasn_4:setParent(obj.layout35);
    obj.enigmasn_4:setName("enigmasn_4");
    obj.enigmasn_4:setField("enigmas_4");
    obj.enigmasn_4:setLeft(37);
    obj.enigmasn_4:setWidth(11);
    obj.enigmasn_4:setHeight(12);
    obj.enigmasn_4:setImageChecked("/sub/img/bboll.png");

    obj.enigmasn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.enigmasn_5:setParent(obj.layout35);
    obj.enigmasn_5:setName("enigmasn_5");
    obj.enigmasn_5:setField("enigmas_5");
    obj.enigmasn_5:setLeft(50);
    obj.enigmasn_5:setWidth(11);
    obj.enigmasn_5:setHeight(12);
    obj.enigmasn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout36 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout13);
    obj.layout36:setLeft(693);
    obj.layout36:setTop(43);
    obj.layout36:setWidth(60);
    obj.layout36:setHeight(12);
    obj.layout36:setName("layout36");

    obj.gmagican_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.gmagican_1:setParent(obj.layout36);
    obj.gmagican_1:setName("gmagican_1");
    obj.gmagican_1:setField("gmagica_1");
    obj.gmagican_1:setWidth(11);
    obj.gmagican_1:setHeight(12);
    obj.gmagican_1:setImageChecked("/sub/img/bboll.png");

    obj.gmagican_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.gmagican_2:setParent(obj.layout36);
    obj.gmagican_2:setName("gmagican_2");
    obj.gmagican_2:setField("gmagica_2");
    obj.gmagican_2:setLeft(12);
    obj.gmagican_2:setWidth(11);
    obj.gmagican_2:setHeight(12);
    obj.gmagican_2:setImageChecked("/sub/img/bboll.png");

    obj.gmagican_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.gmagican_3:setParent(obj.layout36);
    obj.gmagican_3:setName("gmagican_3");
    obj.gmagican_3:setField("gmagica_3");
    obj.gmagican_3:setLeft(25);
    obj.gmagican_3:setWidth(11);
    obj.gmagican_3:setHeight(12);
    obj.gmagican_3:setImageChecked("/sub/img/bboll.png");

    obj.gmagican_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.gmagican_4:setParent(obj.layout36);
    obj.gmagican_4:setName("gmagican_4");
    obj.gmagican_4:setField("gmagica_4");
    obj.gmagican_4:setLeft(37);
    obj.gmagican_4:setWidth(11);
    obj.gmagican_4:setHeight(12);
    obj.gmagican_4:setImageChecked("/sub/img/bboll.png");

    obj.gmagican_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.gmagican_5:setParent(obj.layout36);
    obj.gmagican_5:setName("gmagican_5");
    obj.gmagican_5:setField("gmagica_5");
    obj.gmagican_5:setLeft(50);
    obj.gmagican_5:setWidth(11);
    obj.gmagican_5:setHeight(12);
    obj.gmagican_5:setImageChecked("/sub/img/bboll.png");

    obj.layout37 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layout13);
    obj.layout37:setLeft(693);
    obj.layout37:setTop(62);
    obj.layout37:setWidth(60);
    obj.layout37:setHeight(12);
    obj.layout37:setName("layout37");

    obj.investigan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.investigan_1:setParent(obj.layout37);
    obj.investigan_1:setName("investigan_1");
    obj.investigan_1:setField("investiga_1");
    obj.investigan_1:setWidth(11);
    obj.investigan_1:setHeight(12);
    obj.investigan_1:setImageChecked("/sub/img/bboll.png");

    obj.investigan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.investigan_2:setParent(obj.layout37);
    obj.investigan_2:setName("investigan_2");
    obj.investigan_2:setField("investiga_2");
    obj.investigan_2:setLeft(12);
    obj.investigan_2:setWidth(11);
    obj.investigan_2:setHeight(12);
    obj.investigan_2:setImageChecked("/sub/img/bboll.png");

    obj.investigan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.investigan_3:setParent(obj.layout37);
    obj.investigan_3:setName("investigan_3");
    obj.investigan_3:setField("investiga_3");
    obj.investigan_3:setLeft(25);
    obj.investigan_3:setWidth(11);
    obj.investigan_3:setHeight(12);
    obj.investigan_3:setImageChecked("/sub/img/bboll.png");

    obj.investigan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.investigan_4:setParent(obj.layout37);
    obj.investigan_4:setName("investigan_4");
    obj.investigan_4:setField("investiga_4");
    obj.investigan_4:setLeft(37);
    obj.investigan_4:setWidth(11);
    obj.investigan_4:setHeight(12);
    obj.investigan_4:setImageChecked("/sub/img/bboll.png");

    obj.investigan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.investigan_5:setParent(obj.layout37);
    obj.investigan_5:setName("investigan_5");
    obj.investigan_5:setField("investiga_5");
    obj.investigan_5:setLeft(50);
    obj.investigan_5:setWidth(11);
    obj.investigan_5:setHeight(12);
    obj.investigan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout38 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layout13);
    obj.layout38:setLeft(693);
    obj.layout38:setTop(80);
    obj.layout38:setWidth(60);
    obj.layout38:setHeight(12);
    obj.layout38:setName("layout38");

    obj.direiton_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.direiton_1:setParent(obj.layout38);
    obj.direiton_1:setName("direiton_1");
    obj.direiton_1:setField("direito_1");
    obj.direiton_1:setWidth(11);
    obj.direiton_1:setHeight(12);
    obj.direiton_1:setImageChecked("/sub/img/bboll.png");

    obj.direiton_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.direiton_2:setParent(obj.layout38);
    obj.direiton_2:setName("direiton_2");
    obj.direiton_2:setField("direito_2");
    obj.direiton_2:setLeft(12);
    obj.direiton_2:setWidth(11);
    obj.direiton_2:setHeight(12);
    obj.direiton_2:setImageChecked("/sub/img/bboll.png");

    obj.direiton_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.direiton_3:setParent(obj.layout38);
    obj.direiton_3:setName("direiton_3");
    obj.direiton_3:setField("direito_3");
    obj.direiton_3:setLeft(25);
    obj.direiton_3:setWidth(11);
    obj.direiton_3:setHeight(12);
    obj.direiton_3:setImageChecked("/sub/img/bboll.png");

    obj.direiton_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.direiton_4:setParent(obj.layout38);
    obj.direiton_4:setName("direiton_4");
    obj.direiton_4:setField("direito_4");
    obj.direiton_4:setLeft(37);
    obj.direiton_4:setWidth(11);
    obj.direiton_4:setHeight(12);
    obj.direiton_4:setImageChecked("/sub/img/bboll.png");

    obj.direiton_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.direiton_5:setParent(obj.layout38);
    obj.direiton_5:setName("direiton_5");
    obj.direiton_5:setField("direito_5");
    obj.direiton_5:setLeft(50);
    obj.direiton_5:setWidth(11);
    obj.direiton_5:setHeight(12);
    obj.direiton_5:setImageChecked("/sub/img/bboll.png");

    obj.layout39 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layout13);
    obj.layout39:setLeft(693);
    obj.layout39:setTop(99);
    obj.layout39:setWidth(60);
    obj.layout39:setHeight(12);
    obj.layout39:setName("layout39");

    obj.linguisn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.linguisn_1:setParent(obj.layout39);
    obj.linguisn_1:setName("linguisn_1");
    obj.linguisn_1:setField("linguis_1");
    obj.linguisn_1:setWidth(11);
    obj.linguisn_1:setHeight(12);
    obj.linguisn_1:setImageChecked("/sub/img/bboll.png");

    obj.linguisn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.linguisn_2:setParent(obj.layout39);
    obj.linguisn_2:setName("linguisn_2");
    obj.linguisn_2:setField("linguis_2");
    obj.linguisn_2:setLeft(12);
    obj.linguisn_2:setWidth(11);
    obj.linguisn_2:setHeight(12);
    obj.linguisn_2:setImageChecked("/sub/img/bboll.png");

    obj.linguisn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.linguisn_3:setParent(obj.layout39);
    obj.linguisn_3:setName("linguisn_3");
    obj.linguisn_3:setField("linguis_3");
    obj.linguisn_3:setLeft(25);
    obj.linguisn_3:setWidth(11);
    obj.linguisn_3:setHeight(12);
    obj.linguisn_3:setImageChecked("/sub/img/bboll.png");

    obj.linguisn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.linguisn_4:setParent(obj.layout39);
    obj.linguisn_4:setName("linguisn_4");
    obj.linguisn_4:setField("linguis_4");
    obj.linguisn_4:setLeft(37);
    obj.linguisn_4:setWidth(11);
    obj.linguisn_4:setHeight(12);
    obj.linguisn_4:setImageChecked("/sub/img/bboll.png");

    obj.linguisn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.linguisn_5:setParent(obj.layout39);
    obj.linguisn_5:setName("linguisn_5");
    obj.linguisn_5:setField("linguis_5");
    obj.linguisn_5:setLeft(50);
    obj.linguisn_5:setWidth(11);
    obj.linguisn_5:setHeight(12);
    obj.linguisn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout40 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layout13);
    obj.layout40:setLeft(693);
    obj.layout40:setTop(118);
    obj.layout40:setWidth(60);
    obj.layout40:setHeight(12);
    obj.layout40:setName("layout40");

    obj.culturan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.culturan_1:setParent(obj.layout40);
    obj.culturan_1:setName("culturan_1");
    obj.culturan_1:setField("cultura_1");
    obj.culturan_1:setWidth(11);
    obj.culturan_1:setHeight(12);
    obj.culturan_1:setImageChecked("/sub/img/bboll.png");

    obj.culturan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.culturan_2:setParent(obj.layout40);
    obj.culturan_2:setName("culturan_2");
    obj.culturan_2:setField("cultura_2");
    obj.culturan_2:setLeft(12);
    obj.culturan_2:setWidth(11);
    obj.culturan_2:setHeight(12);
    obj.culturan_2:setImageChecked("/sub/img/bboll.png");

    obj.culturan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.culturan_3:setParent(obj.layout40);
    obj.culturan_3:setName("culturan_3");
    obj.culturan_3:setField("cultura_3");
    obj.culturan_3:setLeft(25);
    obj.culturan_3:setWidth(11);
    obj.culturan_3:setHeight(12);
    obj.culturan_3:setImageChecked("/sub/img/bboll.png");

    obj.culturan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.culturan_4:setParent(obj.layout40);
    obj.culturan_4:setName("culturan_4");
    obj.culturan_4:setField("cultura_4");
    obj.culturan_4:setLeft(37);
    obj.culturan_4:setWidth(11);
    obj.culturan_4:setHeight(12);
    obj.culturan_4:setImageChecked("/sub/img/bboll.png");

    obj.culturan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.culturan_5:setParent(obj.layout40);
    obj.culturan_5:setName("culturan_5");
    obj.culturan_5:setField("cultura_5");
    obj.culturan_5:setLeft(50);
    obj.culturan_5:setWidth(11);
    obj.culturan_5:setHeight(12);
    obj.culturan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout41 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layout13);
    obj.layout41:setLeft(693);
    obj.layout41:setTop(136);
    obj.layout41:setWidth(60);
    obj.layout41:setHeight(12);
    obj.layout41:setName("layout41");

    obj.medicinan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.medicinan_1:setParent(obj.layout41);
    obj.medicinan_1:setName("medicinan_1");
    obj.medicinan_1:setField("medicina_1");
    obj.medicinan_1:setWidth(11);
    obj.medicinan_1:setHeight(12);
    obj.medicinan_1:setImageChecked("/sub/img/bboll.png");

    obj.medicinan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.medicinan_2:setParent(obj.layout41);
    obj.medicinan_2:setName("medicinan_2");
    obj.medicinan_2:setField("medicina_2");
    obj.medicinan_2:setLeft(12);
    obj.medicinan_2:setWidth(11);
    obj.medicinan_2:setHeight(12);
    obj.medicinan_2:setImageChecked("/sub/img/bboll.png");

    obj.medicinan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.medicinan_3:setParent(obj.layout41);
    obj.medicinan_3:setName("medicinan_3");
    obj.medicinan_3:setField("medicina_3");
    obj.medicinan_3:setLeft(25);
    obj.medicinan_3:setWidth(11);
    obj.medicinan_3:setHeight(12);
    obj.medicinan_3:setImageChecked("/sub/img/bboll.png");

    obj.medicinan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.medicinan_4:setParent(obj.layout41);
    obj.medicinan_4:setName("medicinan_4");
    obj.medicinan_4:setField("medicina_4");
    obj.medicinan_4:setLeft(37);
    obj.medicinan_4:setWidth(11);
    obj.medicinan_4:setHeight(12);
    obj.medicinan_4:setImageChecked("/sub/img/bboll.png");

    obj.medicinan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.medicinan_5:setParent(obj.layout41);
    obj.medicinan_5:setName("medicinan_5");
    obj.medicinan_5:setField("medicina_5");
    obj.medicinan_5:setLeft(50);
    obj.medicinan_5:setWidth(11);
    obj.medicinan_5:setHeight(12);
    obj.medicinan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout42 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layout13);
    obj.layout42:setLeft(693);
    obj.layout42:setTop(157);
    obj.layout42:setWidth(60);
    obj.layout42:setHeight(12);
    obj.layout42:setName("layout42");

    obj.politican_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.politican_1:setParent(obj.layout42);
    obj.politican_1:setName("politican_1");
    obj.politican_1:setField("politica_1");
    obj.politican_1:setWidth(11);
    obj.politican_1:setHeight(12);
    obj.politican_1:setImageChecked("/sub/img/bboll.png");

    obj.politican_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.politican_2:setParent(obj.layout42);
    obj.politican_2:setName("politican_2");
    obj.politican_2:setField("politica_2");
    obj.politican_2:setLeft(12);
    obj.politican_2:setWidth(11);
    obj.politican_2:setHeight(12);
    obj.politican_2:setImageChecked("/sub/img/bboll.png");

    obj.politican_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.politican_3:setParent(obj.layout42);
    obj.politican_3:setName("politican_3");
    obj.politican_3:setField("politica_3");
    obj.politican_3:setLeft(25);
    obj.politican_3:setWidth(11);
    obj.politican_3:setHeight(12);
    obj.politican_3:setImageChecked("/sub/img/bboll.png");

    obj.politican_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.politican_4:setParent(obj.layout42);
    obj.politican_4:setName("politican_4");
    obj.politican_4:setField("politica_4");
    obj.politican_4:setLeft(37);
    obj.politican_4:setWidth(11);
    obj.politican_4:setHeight(12);
    obj.politican_4:setImageChecked("/sub/img/bboll.png");

    obj.politican_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.politican_5:setParent(obj.layout42);
    obj.politican_5:setName("politican_5");
    obj.politican_5:setField("politica_5");
    obj.politican_5:setLeft(50);
    obj.politican_5:setWidth(11);
    obj.politican_5:setHeight(12);
    obj.politican_5:setImageChecked("/sub/img/bboll.png");

    obj.layout43 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layout13);
    obj.layout43:setLeft(693);
    obj.layout43:setTop(176);
    obj.layout43:setWidth(60);
    obj.layout43:setHeight(12);
    obj.layout43:setName("layout43");

    obj.ciencian_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.ciencian_1:setParent(obj.layout43);
    obj.ciencian_1:setName("ciencian_1");
    obj.ciencian_1:setField("ciencia_1");
    obj.ciencian_1:setWidth(11);
    obj.ciencian_1:setHeight(12);
    obj.ciencian_1:setImageChecked("/sub/img/bboll.png");

    obj.ciencian_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.ciencian_2:setParent(obj.layout43);
    obj.ciencian_2:setName("ciencian_2");
    obj.ciencian_2:setField("ciencia_2");
    obj.ciencian_2:setLeft(12);
    obj.ciencian_2:setWidth(11);
    obj.ciencian_2:setHeight(12);
    obj.ciencian_2:setImageChecked("/sub/img/bboll.png");

    obj.ciencian_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.ciencian_3:setParent(obj.layout43);
    obj.ciencian_3:setName("ciencian_3");
    obj.ciencian_3:setField("ciencia_3");
    obj.ciencian_3:setLeft(25);
    obj.ciencian_3:setWidth(11);
    obj.ciencian_3:setHeight(12);
    obj.ciencian_3:setImageChecked("/sub/img/bboll.png");

    obj.ciencian_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.ciencian_4:setParent(obj.layout43);
    obj.ciencian_4:setName("ciencian_4");
    obj.ciencian_4:setField("ciencia_4");
    obj.ciencian_4:setLeft(37);
    obj.ciencian_4:setWidth(11);
    obj.ciencian_4:setHeight(12);
    obj.ciencian_4:setImageChecked("/sub/img/bboll.png");

    obj.ciencian_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.ciencian_5:setParent(obj.layout43);
    obj.ciencian_5:setName("ciencian_5");
    obj.ciencian_5:setField("ciencia_5");
    obj.ciencian_5:setLeft(50);
    obj.ciencian_5:setWidth(11);
    obj.ciencian_5:setHeight(12);
    obj.ciencian_5:setImageChecked("/sub/img/bboll.png");

    obj.layout44 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layout1);
    obj.layout44:setLeft(2);
    obj.layout44:setTop(530);
    obj.layout44:setWidth(756);
    obj.layout44:setHeight(135);
    obj.layout44:setName("layout44");

    obj.layout45 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layout44);
    obj.layout45:setLeft(176);
    obj.layout45:setTop(10);
    obj.layout45:setWidth(60);
    obj.layout45:setHeight(12);
    obj.layout45:setName("layout45");

    obj.antecede1n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede1n_1:setParent(obj.layout45);
    obj.antecede1n_1:setName("antecede1n_1");
    obj.antecede1n_1:setField("antecede1_1");
    obj.antecede1n_1:setWidth(11);
    obj.antecede1n_1:setHeight(12);
    obj.antecede1n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede1n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede1n_2:setParent(obj.layout45);
    obj.antecede1n_2:setName("antecede1n_2");
    obj.antecede1n_2:setField("antecede1_2");
    obj.antecede1n_2:setLeft(12);
    obj.antecede1n_2:setWidth(11);
    obj.antecede1n_2:setHeight(12);
    obj.antecede1n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede1n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede1n_3:setParent(obj.layout45);
    obj.antecede1n_3:setName("antecede1n_3");
    obj.antecede1n_3:setField("antecede1_3");
    obj.antecede1n_3:setLeft(25);
    obj.antecede1n_3:setWidth(11);
    obj.antecede1n_3:setHeight(12);
    obj.antecede1n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede1n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede1n_4:setParent(obj.layout45);
    obj.antecede1n_4:setName("antecede1n_4");
    obj.antecede1n_4:setField("antecede1_4");
    obj.antecede1n_4:setLeft(37);
    obj.antecede1n_4:setWidth(11);
    obj.antecede1n_4:setHeight(12);
    obj.antecede1n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede1n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede1n_5:setParent(obj.layout45);
    obj.antecede1n_5:setName("antecede1n_5");
    obj.antecede1n_5:setField("antecede1_5");
    obj.antecede1n_5:setLeft(50);
    obj.antecede1n_5:setWidth(11);
    obj.antecede1n_5:setHeight(12);
    obj.antecede1n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout46 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layout44);
    obj.layout46:setLeft(176);
    obj.layout46:setTop(28);
    obj.layout46:setWidth(60);
    obj.layout46:setHeight(12);
    obj.layout46:setName("layout46");

    obj.antecede2n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede2n_1:setParent(obj.layout46);
    obj.antecede2n_1:setName("antecede2n_1");
    obj.antecede2n_1:setField("antecede2_1");
    obj.antecede2n_1:setWidth(11);
    obj.antecede2n_1:setHeight(12);
    obj.antecede2n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede2n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede2n_2:setParent(obj.layout46);
    obj.antecede2n_2:setName("antecede2n_2");
    obj.antecede2n_2:setField("antecede2_2");
    obj.antecede2n_2:setLeft(12);
    obj.antecede2n_2:setWidth(11);
    obj.antecede2n_2:setHeight(12);
    obj.antecede2n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede2n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede2n_3:setParent(obj.layout46);
    obj.antecede2n_3:setName("antecede2n_3");
    obj.antecede2n_3:setField("antecede2_3");
    obj.antecede2n_3:setLeft(25);
    obj.antecede2n_3:setWidth(11);
    obj.antecede2n_3:setHeight(12);
    obj.antecede2n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede2n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede2n_4:setParent(obj.layout46);
    obj.antecede2n_4:setName("antecede2n_4");
    obj.antecede2n_4:setField("antecede2_4");
    obj.antecede2n_4:setLeft(37);
    obj.antecede2n_4:setWidth(11);
    obj.antecede2n_4:setHeight(12);
    obj.antecede2n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede2n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede2n_5:setParent(obj.layout46);
    obj.antecede2n_5:setName("antecede2n_5");
    obj.antecede2n_5:setField("antecede2_5");
    obj.antecede2n_5:setLeft(50);
    obj.antecede2n_5:setWidth(11);
    obj.antecede2n_5:setHeight(12);
    obj.antecede2n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout47 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layout44);
    obj.layout47:setLeft(176);
    obj.layout47:setTop(47);
    obj.layout47:setWidth(60);
    obj.layout47:setHeight(12);
    obj.layout47:setName("layout47");

    obj.antecede3n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede3n_1:setParent(obj.layout47);
    obj.antecede3n_1:setName("antecede3n_1");
    obj.antecede3n_1:setField("antecede3_1");
    obj.antecede3n_1:setWidth(11);
    obj.antecede3n_1:setHeight(12);
    obj.antecede3n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede3n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede3n_2:setParent(obj.layout47);
    obj.antecede3n_2:setName("antecede3n_2");
    obj.antecede3n_2:setField("antecede3_2");
    obj.antecede3n_2:setLeft(12);
    obj.antecede3n_2:setWidth(11);
    obj.antecede3n_2:setHeight(12);
    obj.antecede3n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede3n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede3n_3:setParent(obj.layout47);
    obj.antecede3n_3:setName("antecede3n_3");
    obj.antecede3n_3:setField("antecede3_3");
    obj.antecede3n_3:setLeft(25);
    obj.antecede3n_3:setWidth(11);
    obj.antecede3n_3:setHeight(12);
    obj.antecede3n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede3n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede3n_4:setParent(obj.layout47);
    obj.antecede3n_4:setName("antecede3n_4");
    obj.antecede3n_4:setField("antecede3_4");
    obj.antecede3n_4:setLeft(37);
    obj.antecede3n_4:setWidth(11);
    obj.antecede3n_4:setHeight(12);
    obj.antecede3n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede3n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede3n_5:setParent(obj.layout47);
    obj.antecede3n_5:setName("antecede3n_5");
    obj.antecede3n_5:setField("antecede3_5");
    obj.antecede3n_5:setLeft(50);
    obj.antecede3n_5:setWidth(11);
    obj.antecede3n_5:setHeight(12);
    obj.antecede3n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout48 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layout44);
    obj.layout48:setLeft(176);
    obj.layout48:setTop(66);
    obj.layout48:setWidth(60);
    obj.layout48:setHeight(12);
    obj.layout48:setName("layout48");

    obj.antecede4n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede4n_1:setParent(obj.layout48);
    obj.antecede4n_1:setName("antecede4n_1");
    obj.antecede4n_1:setField("antecede4_1");
    obj.antecede4n_1:setWidth(11);
    obj.antecede4n_1:setHeight(12);
    obj.antecede4n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede4n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede4n_2:setParent(obj.layout48);
    obj.antecede4n_2:setName("antecede4n_2");
    obj.antecede4n_2:setField("antecede4_2");
    obj.antecede4n_2:setLeft(12);
    obj.antecede4n_2:setWidth(11);
    obj.antecede4n_2:setHeight(12);
    obj.antecede4n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede4n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede4n_3:setParent(obj.layout48);
    obj.antecede4n_3:setName("antecede4n_3");
    obj.antecede4n_3:setField("antecede4_3");
    obj.antecede4n_3:setLeft(25);
    obj.antecede4n_3:setWidth(11);
    obj.antecede4n_3:setHeight(12);
    obj.antecede4n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede4n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede4n_4:setParent(obj.layout48);
    obj.antecede4n_4:setName("antecede4n_4");
    obj.antecede4n_4:setField("antecede4_4");
    obj.antecede4n_4:setLeft(37);
    obj.antecede4n_4:setWidth(11);
    obj.antecede4n_4:setHeight(12);
    obj.antecede4n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede4n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede4n_5:setParent(obj.layout48);
    obj.antecede4n_5:setName("antecede4n_5");
    obj.antecede4n_5:setField("antecede4_5");
    obj.antecede4n_5:setLeft(50);
    obj.antecede4n_5:setWidth(11);
    obj.antecede4n_5:setHeight(12);
    obj.antecede4n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout49 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layout44);
    obj.layout49:setLeft(176);
    obj.layout49:setTop(84);
    obj.layout49:setWidth(60);
    obj.layout49:setHeight(12);
    obj.layout49:setName("layout49");

    obj.antecede5n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede5n_1:setParent(obj.layout49);
    obj.antecede5n_1:setName("antecede5n_1");
    obj.antecede5n_1:setField("antecede5_1");
    obj.antecede5n_1:setWidth(11);
    obj.antecede5n_1:setHeight(12);
    obj.antecede5n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede5n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede5n_2:setParent(obj.layout49);
    obj.antecede5n_2:setName("antecede5n_2");
    obj.antecede5n_2:setField("antecede5_2");
    obj.antecede5n_2:setLeft(12);
    obj.antecede5n_2:setWidth(11);
    obj.antecede5n_2:setHeight(12);
    obj.antecede5n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede5n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede5n_3:setParent(obj.layout49);
    obj.antecede5n_3:setName("antecede5n_3");
    obj.antecede5n_3:setField("antecede5_3");
    obj.antecede5n_3:setLeft(25);
    obj.antecede5n_3:setWidth(11);
    obj.antecede5n_3:setHeight(12);
    obj.antecede5n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede5n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede5n_4:setParent(obj.layout49);
    obj.antecede5n_4:setName("antecede5n_4");
    obj.antecede5n_4:setField("antecede5_4");
    obj.antecede5n_4:setLeft(37);
    obj.antecede5n_4:setWidth(11);
    obj.antecede5n_4:setHeight(12);
    obj.antecede5n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede5n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede5n_5:setParent(obj.layout49);
    obj.antecede5n_5:setName("antecede5n_5");
    obj.antecede5n_5:setField("antecede5_5");
    obj.antecede5n_5:setLeft(50);
    obj.antecede5n_5:setWidth(11);
    obj.antecede5n_5:setHeight(12);
    obj.antecede5n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout50 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layout44);
    obj.layout50:setLeft(176);
    obj.layout50:setTop(103);
    obj.layout50:setWidth(60);
    obj.layout50:setHeight(12);
    obj.layout50:setName("layout50");

    obj.antecede6n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede6n_1:setParent(obj.layout50);
    obj.antecede6n_1:setName("antecede6n_1");
    obj.antecede6n_1:setField("antecede6_1");
    obj.antecede6n_1:setWidth(11);
    obj.antecede6n_1:setHeight(12);
    obj.antecede6n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede6n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede6n_2:setParent(obj.layout50);
    obj.antecede6n_2:setName("antecede6n_2");
    obj.antecede6n_2:setField("antecede6_2");
    obj.antecede6n_2:setLeft(12);
    obj.antecede6n_2:setWidth(11);
    obj.antecede6n_2:setHeight(12);
    obj.antecede6n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede6n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede6n_3:setParent(obj.layout50);
    obj.antecede6n_3:setName("antecede6n_3");
    obj.antecede6n_3:setField("antecede6_3");
    obj.antecede6n_3:setLeft(25);
    obj.antecede6n_3:setWidth(11);
    obj.antecede6n_3:setHeight(12);
    obj.antecede6n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede6n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede6n_4:setParent(obj.layout50);
    obj.antecede6n_4:setName("antecede6n_4");
    obj.antecede6n_4:setField("antecede6_4");
    obj.antecede6n_4:setLeft(37);
    obj.antecede6n_4:setWidth(11);
    obj.antecede6n_4:setHeight(12);
    obj.antecede6n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede6n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede6n_5:setParent(obj.layout50);
    obj.antecede6n_5:setName("antecede6n_5");
    obj.antecede6n_5:setField("antecede6_5");
    obj.antecede6n_5:setLeft(50);
    obj.antecede6n_5:setWidth(11);
    obj.antecede6n_5:setHeight(12);
    obj.antecede6n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout51 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layout44);
    obj.layout51:setLeft(176);
    obj.layout51:setTop(122);
    obj.layout51:setWidth(60);
    obj.layout51:setHeight(12);
    obj.layout51:setName("layout51");

    obj.antecede7n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede7n_1:setParent(obj.layout51);
    obj.antecede7n_1:setName("antecede7n_1");
    obj.antecede7n_1:setField("antecede7_1");
    obj.antecede7n_1:setWidth(11);
    obj.antecede7n_1:setHeight(12);
    obj.antecede7n_1:setImageChecked("/sub/img/bboll.png");

    obj.antecede7n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede7n_2:setParent(obj.layout51);
    obj.antecede7n_2:setName("antecede7n_2");
    obj.antecede7n_2:setField("antecede7_2");
    obj.antecede7n_2:setLeft(12);
    obj.antecede7n_2:setWidth(11);
    obj.antecede7n_2:setHeight(12);
    obj.antecede7n_2:setImageChecked("/sub/img/bboll.png");

    obj.antecede7n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede7n_3:setParent(obj.layout51);
    obj.antecede7n_3:setName("antecede7n_3");
    obj.antecede7n_3:setField("antecede7_3");
    obj.antecede7n_3:setLeft(25);
    obj.antecede7n_3:setWidth(11);
    obj.antecede7n_3:setHeight(12);
    obj.antecede7n_3:setImageChecked("/sub/img/bboll.png");

    obj.antecede7n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede7n_4:setParent(obj.layout51);
    obj.antecede7n_4:setName("antecede7n_4");
    obj.antecede7n_4:setField("antecede7_4");
    obj.antecede7n_4:setLeft(37);
    obj.antecede7n_4:setWidth(11);
    obj.antecede7n_4:setHeight(12);
    obj.antecede7n_4:setImageChecked("/sub/img/bboll.png");

    obj.antecede7n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.antecede7n_5:setParent(obj.layout51);
    obj.antecede7n_5:setName("antecede7n_5");
    obj.antecede7n_5:setField("antecede7_5");
    obj.antecede7n_5:setLeft(50);
    obj.antecede7n_5:setWidth(11);
    obj.antecede7n_5:setHeight(12);
    obj.antecede7n_5:setImageChecked("/sub/img/bboll.png");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout44);
    obj.edit10:setLeft(2);
    obj.edit10:setTop(1);
    obj.edit10:setWidth(171);
    obj.edit10:setHeight(21);
    obj.edit10:setField("antecede1");
    obj.edit10:setFontColor("#48484A");
    obj.edit10:setFontSize(16);
    lfm_setPropAsString(obj.edit10, "fontStyle",  "bold");
    obj.edit10:setTransparent(true);
    obj.edit10:setName("edit10");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout44);
    obj.edit11:setLeft(2);
    obj.edit11:setTop(20);
    obj.edit11:setWidth(171);
    obj.edit11:setHeight(21);
    obj.edit11:setField("antecede2");
    obj.edit11:setFontColor("#48484A");
    obj.edit11:setFontSize(16);
    lfm_setPropAsString(obj.edit11, "fontStyle",  "bold");
    obj.edit11:setTransparent(true);
    obj.edit11:setName("edit11");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout44);
    obj.edit12:setLeft(2);
    obj.edit12:setTop(39);
    obj.edit12:setWidth(171);
    obj.edit12:setHeight(21);
    obj.edit12:setField("antecede3");
    obj.edit12:setFontColor("#48484A");
    obj.edit12:setFontSize(16);
    lfm_setPropAsString(obj.edit12, "fontStyle",  "bold");
    obj.edit12:setTransparent(true);
    obj.edit12:setName("edit12");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout44);
    obj.edit13:setLeft(2);
    obj.edit13:setTop(58);
    obj.edit13:setWidth(171);
    obj.edit13:setHeight(21);
    obj.edit13:setField("antecede4");
    obj.edit13:setFontColor("#48484A");
    obj.edit13:setFontSize(16);
    lfm_setPropAsString(obj.edit13, "fontStyle",  "bold");
    obj.edit13:setTransparent(true);
    obj.edit13:setName("edit13");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout44);
    obj.edit14:setLeft(2);
    obj.edit14:setTop(77);
    obj.edit14:setWidth(171);
    obj.edit14:setHeight(21);
    obj.edit14:setField("antecede5");
    obj.edit14:setFontColor("#48484A");
    obj.edit14:setFontSize(16);
    lfm_setPropAsString(obj.edit14, "fontStyle",  "bold");
    obj.edit14:setTransparent(true);
    obj.edit14:setName("edit14");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout44);
    obj.edit15:setLeft(2);
    obj.edit15:setTop(96);
    obj.edit15:setWidth(171);
    obj.edit15:setHeight(21);
    obj.edit15:setField("antecede6");
    obj.edit15:setFontColor("#48484A");
    obj.edit15:setFontSize(16);
    lfm_setPropAsString(obj.edit15, "fontStyle",  "bold");
    obj.edit15:setTransparent(true);
    obj.edit15:setName("edit15");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout44);
    obj.edit16:setLeft(2);
    obj.edit16:setTop(115);
    obj.edit16:setWidth(171);
    obj.edit16:setHeight(21);
    obj.edit16:setField("antecede7");
    obj.edit16:setFontColor("#48484A");
    obj.edit16:setFontSize(16);
    lfm_setPropAsString(obj.edit16, "fontStyle",  "bold");
    obj.edit16:setTransparent(true);
    obj.edit16:setName("edit16");

    obj.layout52 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layout44);
    obj.layout52:setLeft(437);
    obj.layout52:setTop(10);
    obj.layout52:setWidth(60);
    obj.layout52:setHeight(12);
    obj.layout52:setName("layout52");

    obj.artes1n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes1n_1:setParent(obj.layout52);
    obj.artes1n_1:setName("artes1n_1");
    obj.artes1n_1:setField("artes1_1");
    obj.artes1n_1:setWidth(11);
    obj.artes1n_1:setHeight(12);
    obj.artes1n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes1n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes1n_2:setParent(obj.layout52);
    obj.artes1n_2:setName("artes1n_2");
    obj.artes1n_2:setField("artes1_2");
    obj.artes1n_2:setLeft(12);
    obj.artes1n_2:setWidth(11);
    obj.artes1n_2:setHeight(12);
    obj.artes1n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes1n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes1n_3:setParent(obj.layout52);
    obj.artes1n_3:setName("artes1n_3");
    obj.artes1n_3:setField("artes1_3");
    obj.artes1n_3:setLeft(25);
    obj.artes1n_3:setWidth(11);
    obj.artes1n_3:setHeight(12);
    obj.artes1n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes1n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes1n_4:setParent(obj.layout52);
    obj.artes1n_4:setName("artes1n_4");
    obj.artes1n_4:setField("artes1_4");
    obj.artes1n_4:setLeft(37);
    obj.artes1n_4:setWidth(11);
    obj.artes1n_4:setHeight(12);
    obj.artes1n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes1n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes1n_5:setParent(obj.layout52);
    obj.artes1n_5:setName("artes1n_5");
    obj.artes1n_5:setField("artes1_5");
    obj.artes1n_5:setLeft(50);
    obj.artes1n_5:setWidth(11);
    obj.artes1n_5:setHeight(12);
    obj.artes1n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout53 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layout44);
    obj.layout53:setLeft(437);
    obj.layout53:setTop(28);
    obj.layout53:setWidth(60);
    obj.layout53:setHeight(12);
    obj.layout53:setName("layout53");

    obj.artes2n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes2n_1:setParent(obj.layout53);
    obj.artes2n_1:setName("artes2n_1");
    obj.artes2n_1:setField("artes2_1");
    obj.artes2n_1:setWidth(11);
    obj.artes2n_1:setHeight(12);
    obj.artes2n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes2n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes2n_2:setParent(obj.layout53);
    obj.artes2n_2:setName("artes2n_2");
    obj.artes2n_2:setField("artes2_2");
    obj.artes2n_2:setLeft(12);
    obj.artes2n_2:setWidth(11);
    obj.artes2n_2:setHeight(12);
    obj.artes2n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes2n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes2n_3:setParent(obj.layout53);
    obj.artes2n_3:setName("artes2n_3");
    obj.artes2n_3:setField("artes2_3");
    obj.artes2n_3:setLeft(25);
    obj.artes2n_3:setWidth(11);
    obj.artes2n_3:setHeight(12);
    obj.artes2n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes2n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes2n_4:setParent(obj.layout53);
    obj.artes2n_4:setName("artes2n_4");
    obj.artes2n_4:setField("artes2_4");
    obj.artes2n_4:setLeft(37);
    obj.artes2n_4:setWidth(11);
    obj.artes2n_4:setHeight(12);
    obj.artes2n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes2n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes2n_5:setParent(obj.layout53);
    obj.artes2n_5:setName("artes2n_5");
    obj.artes2n_5:setField("artes2_5");
    obj.artes2n_5:setLeft(50);
    obj.artes2n_5:setWidth(11);
    obj.artes2n_5:setHeight(12);
    obj.artes2n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout54 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layout44);
    obj.layout54:setLeft(437);
    obj.layout54:setTop(47);
    obj.layout54:setWidth(60);
    obj.layout54:setHeight(12);
    obj.layout54:setName("layout54");

    obj.artes3n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes3n_1:setParent(obj.layout54);
    obj.artes3n_1:setName("artes3n_1");
    obj.artes3n_1:setField("artes3_1");
    obj.artes3n_1:setWidth(11);
    obj.artes3n_1:setHeight(12);
    obj.artes3n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes3n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes3n_2:setParent(obj.layout54);
    obj.artes3n_2:setName("artes3n_2");
    obj.artes3n_2:setField("artes3_2");
    obj.artes3n_2:setLeft(12);
    obj.artes3n_2:setWidth(11);
    obj.artes3n_2:setHeight(12);
    obj.artes3n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes3n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes3n_3:setParent(obj.layout54);
    obj.artes3n_3:setName("artes3n_3");
    obj.artes3n_3:setField("artes3_3");
    obj.artes3n_3:setLeft(25);
    obj.artes3n_3:setWidth(11);
    obj.artes3n_3:setHeight(12);
    obj.artes3n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes3n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes3n_4:setParent(obj.layout54);
    obj.artes3n_4:setName("artes3n_4");
    obj.artes3n_4:setField("artes3_4");
    obj.artes3n_4:setLeft(37);
    obj.artes3n_4:setWidth(11);
    obj.artes3n_4:setHeight(12);
    obj.artes3n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes3n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes3n_5:setParent(obj.layout54);
    obj.artes3n_5:setName("artes3n_5");
    obj.artes3n_5:setField("artes3_5");
    obj.artes3n_5:setLeft(50);
    obj.artes3n_5:setWidth(11);
    obj.artes3n_5:setHeight(12);
    obj.artes3n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout55 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout44);
    obj.layout55:setLeft(437);
    obj.layout55:setTop(66);
    obj.layout55:setWidth(60);
    obj.layout55:setHeight(12);
    obj.layout55:setName("layout55");

    obj.artes4n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes4n_1:setParent(obj.layout55);
    obj.artes4n_1:setName("artes4n_1");
    obj.artes4n_1:setField("artes4_1");
    obj.artes4n_1:setWidth(11);
    obj.artes4n_1:setHeight(12);
    obj.artes4n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes4n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes4n_2:setParent(obj.layout55);
    obj.artes4n_2:setName("artes4n_2");
    obj.artes4n_2:setField("artes4_2");
    obj.artes4n_2:setLeft(12);
    obj.artes4n_2:setWidth(11);
    obj.artes4n_2:setHeight(12);
    obj.artes4n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes4n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes4n_3:setParent(obj.layout55);
    obj.artes4n_3:setName("artes4n_3");
    obj.artes4n_3:setField("artes4_3");
    obj.artes4n_3:setLeft(25);
    obj.artes4n_3:setWidth(11);
    obj.artes4n_3:setHeight(12);
    obj.artes4n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes4n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes4n_4:setParent(obj.layout55);
    obj.artes4n_4:setName("artes4n_4");
    obj.artes4n_4:setField("artes4_4");
    obj.artes4n_4:setLeft(37);
    obj.artes4n_4:setWidth(11);
    obj.artes4n_4:setHeight(12);
    obj.artes4n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes4n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes4n_5:setParent(obj.layout55);
    obj.artes4n_5:setName("artes4n_5");
    obj.artes4n_5:setField("artes4_5");
    obj.artes4n_5:setLeft(50);
    obj.artes4n_5:setWidth(11);
    obj.artes4n_5:setHeight(12);
    obj.artes4n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout56 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layout44);
    obj.layout56:setLeft(437);
    obj.layout56:setTop(84);
    obj.layout56:setWidth(60);
    obj.layout56:setHeight(12);
    obj.layout56:setName("layout56");

    obj.artes5n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes5n_1:setParent(obj.layout56);
    obj.artes5n_1:setName("artes5n_1");
    obj.artes5n_1:setField("artes5_1");
    obj.artes5n_1:setWidth(11);
    obj.artes5n_1:setHeight(12);
    obj.artes5n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes5n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes5n_2:setParent(obj.layout56);
    obj.artes5n_2:setName("artes5n_2");
    obj.artes5n_2:setField("artes5_2");
    obj.artes5n_2:setLeft(12);
    obj.artes5n_2:setWidth(11);
    obj.artes5n_2:setHeight(12);
    obj.artes5n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes5n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes5n_3:setParent(obj.layout56);
    obj.artes5n_3:setName("artes5n_3");
    obj.artes5n_3:setField("artes5_3");
    obj.artes5n_3:setLeft(25);
    obj.artes5n_3:setWidth(11);
    obj.artes5n_3:setHeight(12);
    obj.artes5n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes5n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes5n_4:setParent(obj.layout56);
    obj.artes5n_4:setName("artes5n_4");
    obj.artes5n_4:setField("artes5_4");
    obj.artes5n_4:setLeft(37);
    obj.artes5n_4:setWidth(11);
    obj.artes5n_4:setHeight(12);
    obj.artes5n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes5n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes5n_5:setParent(obj.layout56);
    obj.artes5n_5:setName("artes5n_5");
    obj.artes5n_5:setField("artes5_5");
    obj.artes5n_5:setLeft(50);
    obj.artes5n_5:setWidth(11);
    obj.artes5n_5:setHeight(12);
    obj.artes5n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout57 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layout44);
    obj.layout57:setLeft(437);
    obj.layout57:setTop(103);
    obj.layout57:setWidth(60);
    obj.layout57:setHeight(12);
    obj.layout57:setName("layout57");

    obj.artes6n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes6n_1:setParent(obj.layout57);
    obj.artes6n_1:setName("artes6n_1");
    obj.artes6n_1:setField("artes6_1");
    obj.artes6n_1:setWidth(11);
    obj.artes6n_1:setHeight(12);
    obj.artes6n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes6n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes6n_2:setParent(obj.layout57);
    obj.artes6n_2:setName("artes6n_2");
    obj.artes6n_2:setField("artes6_2");
    obj.artes6n_2:setLeft(12);
    obj.artes6n_2:setWidth(11);
    obj.artes6n_2:setHeight(12);
    obj.artes6n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes6n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes6n_3:setParent(obj.layout57);
    obj.artes6n_3:setName("artes6n_3");
    obj.artes6n_3:setField("artes6_3");
    obj.artes6n_3:setLeft(25);
    obj.artes6n_3:setWidth(11);
    obj.artes6n_3:setHeight(12);
    obj.artes6n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes6n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes6n_4:setParent(obj.layout57);
    obj.artes6n_4:setName("artes6n_4");
    obj.artes6n_4:setField("artes6_4");
    obj.artes6n_4:setLeft(37);
    obj.artes6n_4:setWidth(11);
    obj.artes6n_4:setHeight(12);
    obj.artes6n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes6n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes6n_5:setParent(obj.layout57);
    obj.artes6n_5:setName("artes6n_5");
    obj.artes6n_5:setField("artes6_5");
    obj.artes6n_5:setLeft(50);
    obj.artes6n_5:setWidth(11);
    obj.artes6n_5:setHeight(12);
    obj.artes6n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout58 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.layout44);
    obj.layout58:setLeft(437);
    obj.layout58:setTop(122);
    obj.layout58:setWidth(60);
    obj.layout58:setHeight(12);
    obj.layout58:setName("layout58");

    obj.artes7n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes7n_1:setParent(obj.layout58);
    obj.artes7n_1:setName("artes7n_1");
    obj.artes7n_1:setField("artes7_1");
    obj.artes7n_1:setWidth(11);
    obj.artes7n_1:setHeight(12);
    obj.artes7n_1:setImageChecked("/sub/img/bboll.png");

    obj.artes7n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes7n_2:setParent(obj.layout58);
    obj.artes7n_2:setName("artes7n_2");
    obj.artes7n_2:setField("artes7_2");
    obj.artes7n_2:setLeft(12);
    obj.artes7n_2:setWidth(11);
    obj.artes7n_2:setHeight(12);
    obj.artes7n_2:setImageChecked("/sub/img/bboll.png");

    obj.artes7n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes7n_3:setParent(obj.layout58);
    obj.artes7n_3:setName("artes7n_3");
    obj.artes7n_3:setField("artes7_3");
    obj.artes7n_3:setLeft(25);
    obj.artes7n_3:setWidth(11);
    obj.artes7n_3:setHeight(12);
    obj.artes7n_3:setImageChecked("/sub/img/bboll.png");

    obj.artes7n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes7n_4:setParent(obj.layout58);
    obj.artes7n_4:setName("artes7n_4");
    obj.artes7n_4:setField("artes7_4");
    obj.artes7n_4:setLeft(37);
    obj.artes7n_4:setWidth(11);
    obj.artes7n_4:setHeight(12);
    obj.artes7n_4:setImageChecked("/sub/img/bboll.png");

    obj.artes7n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.artes7n_5:setParent(obj.layout58);
    obj.artes7n_5:setName("artes7n_5");
    obj.artes7n_5:setField("artes7_5");
    obj.artes7n_5:setLeft(50);
    obj.artes7n_5:setWidth(11);
    obj.artes7n_5:setHeight(12);
    obj.artes7n_5:setImageChecked("/sub/img/bboll.png");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout44);
    obj.edit17:setLeft(263);
    obj.edit17:setTop(1);
    obj.edit17:setWidth(171);
    obj.edit17:setHeight(21);
    obj.edit17:setField("artes1");
    obj.edit17:setFontColor("#48484A");
    obj.edit17:setFontSize(16);
    lfm_setPropAsString(obj.edit17, "fontStyle",  "bold");
    obj.edit17:setTransparent(true);
    obj.edit17:setName("edit17");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout44);
    obj.edit18:setLeft(263);
    obj.edit18:setTop(20);
    obj.edit18:setWidth(171);
    obj.edit18:setHeight(21);
    obj.edit18:setField("artes2");
    obj.edit18:setFontColor("#48484A");
    obj.edit18:setFontSize(16);
    lfm_setPropAsString(obj.edit18, "fontStyle",  "bold");
    obj.edit18:setTransparent(true);
    obj.edit18:setName("edit18");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout44);
    obj.edit19:setLeft(263);
    obj.edit19:setTop(39);
    obj.edit19:setWidth(171);
    obj.edit19:setHeight(21);
    obj.edit19:setField("artes3");
    obj.edit19:setFontColor("#48484A");
    obj.edit19:setFontSize(16);
    lfm_setPropAsString(obj.edit19, "fontStyle",  "bold");
    obj.edit19:setTransparent(true);
    obj.edit19:setName("edit19");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout44);
    obj.edit20:setLeft(263);
    obj.edit20:setTop(58);
    obj.edit20:setWidth(171);
    obj.edit20:setHeight(21);
    obj.edit20:setField("artes4");
    obj.edit20:setFontColor("#48484A");
    obj.edit20:setFontSize(16);
    lfm_setPropAsString(obj.edit20, "fontStyle",  "bold");
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout44);
    obj.edit21:setLeft(263);
    obj.edit21:setTop(77);
    obj.edit21:setWidth(171);
    obj.edit21:setHeight(21);
    obj.edit21:setField("artes5");
    obj.edit21:setFontColor("#48484A");
    obj.edit21:setFontSize(16);
    lfm_setPropAsString(obj.edit21, "fontStyle",  "bold");
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout44);
    obj.edit22:setLeft(263);
    obj.edit22:setTop(96);
    obj.edit22:setWidth(171);
    obj.edit22:setHeight(21);
    obj.edit22:setField("artes6");
    obj.edit22:setFontColor("#48484A");
    obj.edit22:setFontSize(16);
    lfm_setPropAsString(obj.edit22, "fontStyle",  "bold");
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout44);
    obj.edit23:setLeft(263);
    obj.edit23:setTop(115);
    obj.edit23:setWidth(171);
    obj.edit23:setHeight(21);
    obj.edit23:setField("artes7");
    obj.edit23:setFontColor("#48484A");
    obj.edit23:setFontSize(16);
    lfm_setPropAsString(obj.edit23, "fontStyle",  "bold");
    obj.edit23:setTransparent(true);
    obj.edit23:setName("edit23");

    obj.layout59 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout44);
    obj.layout59:setLeft(693);
    obj.layout59:setTop(10);
    obj.layout59:setWidth(65);
    obj.layout59:setHeight(12);
    obj.layout59:setName("layout59");

    obj.atorn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.atorn_1:setParent(obj.layout59);
    obj.atorn_1:setName("atorn_1");
    obj.atorn_1:setField("ator_1");
    obj.atorn_1:setWidth(11);
    obj.atorn_1:setHeight(12);
    obj.atorn_1:setImageChecked("/sub/img/bboll.png");

    obj.atorn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.atorn_2:setParent(obj.layout59);
    obj.atorn_2:setName("atorn_2");
    obj.atorn_2:setField("ator_2");
    obj.atorn_2:setLeft(12);
    obj.atorn_2:setWidth(11);
    obj.atorn_2:setHeight(12);
    obj.atorn_2:setImageChecked("/sub/img/bboll.png");

    obj.atorn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.atorn_3:setParent(obj.layout59);
    obj.atorn_3:setName("atorn_3");
    obj.atorn_3:setField("ator_3");
    obj.atorn_3:setLeft(25);
    obj.atorn_3:setWidth(11);
    obj.atorn_3:setHeight(12);
    obj.atorn_3:setImageChecked("/sub/img/bboll.png");

    obj.atorn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.atorn_4:setParent(obj.layout59);
    obj.atorn_4:setName("atorn_4");
    obj.atorn_4:setField("ator_4");
    obj.atorn_4:setLeft(37);
    obj.atorn_4:setWidth(11);
    obj.atorn_4:setHeight(12);
    obj.atorn_4:setImageChecked("/sub/img/bboll.png");

    obj.atorn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.atorn_5:setParent(obj.layout59);
    obj.atorn_5:setName("atorn_5");
    obj.atorn_5:setField("ator_5");
    obj.atorn_5:setLeft(50);
    obj.atorn_5:setWidth(11);
    obj.atorn_5:setHeight(12);
    obj.atorn_5:setImageChecked("/sub/img/bboll.png");

    obj.layout60 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout44);
    obj.layout60:setLeft(693);
    obj.layout60:setTop(28);
    obj.layout60:setWidth(65);
    obj.layout60:setHeight(12);
    obj.layout60:setName("layout60");

    obj.fadan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.fadan_1:setParent(obj.layout60);
    obj.fadan_1:setName("fadan_1");
    obj.fadan_1:setField("fada_1");
    obj.fadan_1:setWidth(11);
    obj.fadan_1:setHeight(12);
    obj.fadan_1:setImageChecked("/sub/img/bboll.png");

    obj.fadan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.fadan_2:setParent(obj.layout60);
    obj.fadan_2:setName("fadan_2");
    obj.fadan_2:setField("fada_2");
    obj.fadan_2:setLeft(12);
    obj.fadan_2:setWidth(11);
    obj.fadan_2:setHeight(12);
    obj.fadan_2:setImageChecked("/sub/img/bboll.png");

    obj.fadan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.fadan_3:setParent(obj.layout60);
    obj.fadan_3:setName("fadan_3");
    obj.fadan_3:setField("fada_3");
    obj.fadan_3:setLeft(25);
    obj.fadan_3:setWidth(11);
    obj.fadan_3:setHeight(12);
    obj.fadan_3:setImageChecked("/sub/img/bboll.png");

    obj.fadan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.fadan_4:setParent(obj.layout60);
    obj.fadan_4:setName("fadan_4");
    obj.fadan_4:setField("fada_4");
    obj.fadan_4:setLeft(37);
    obj.fadan_4:setWidth(11);
    obj.fadan_4:setHeight(12);
    obj.fadan_4:setImageChecked("/sub/img/bboll.png");

    obj.fadan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.fadan_5:setParent(obj.layout60);
    obj.fadan_5:setName("fadan_5");
    obj.fadan_5:setField("fada_5");
    obj.fadan_5:setLeft(50);
    obj.fadan_5:setWidth(11);
    obj.fadan_5:setHeight(12);
    obj.fadan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout61 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout44);
    obj.layout61:setLeft(693);
    obj.layout61:setTop(47);
    obj.layout61:setWidth(65);
    obj.layout61:setHeight(12);
    obj.layout61:setName("layout61");

    obj.naturezan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.naturezan_1:setParent(obj.layout61);
    obj.naturezan_1:setName("naturezan_1");
    obj.naturezan_1:setField("natureza_1");
    obj.naturezan_1:setWidth(11);
    obj.naturezan_1:setHeight(12);
    obj.naturezan_1:setImageChecked("/sub/img/bboll.png");

    obj.naturezan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.naturezan_2:setParent(obj.layout61);
    obj.naturezan_2:setName("naturezan_2");
    obj.naturezan_2:setField("natureza_2");
    obj.naturezan_2:setLeft(12);
    obj.naturezan_2:setWidth(11);
    obj.naturezan_2:setHeight(12);
    obj.naturezan_2:setImageChecked("/sub/img/bboll.png");

    obj.naturezan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.naturezan_3:setParent(obj.layout61);
    obj.naturezan_3:setName("naturezan_3");
    obj.naturezan_3:setField("natureza_3");
    obj.naturezan_3:setLeft(25);
    obj.naturezan_3:setWidth(11);
    obj.naturezan_3:setHeight(12);
    obj.naturezan_3:setImageChecked("/sub/img/bboll.png");

    obj.naturezan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.naturezan_4:setParent(obj.layout61);
    obj.naturezan_4:setName("naturezan_4");
    obj.naturezan_4:setField("natureza_4");
    obj.naturezan_4:setLeft(37);
    obj.naturezan_4:setWidth(11);
    obj.naturezan_4:setHeight(12);
    obj.naturezan_4:setImageChecked("/sub/img/bboll.png");

    obj.naturezan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.naturezan_5:setParent(obj.layout61);
    obj.naturezan_5:setName("naturezan_5");
    obj.naturezan_5:setField("natureza_5");
    obj.naturezan_5:setLeft(50);
    obj.naturezan_5:setWidth(11);
    obj.naturezan_5:setHeight(12);
    obj.naturezan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout62 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout44);
    obj.layout62:setLeft(693);
    obj.layout62:setTop(66);
    obj.layout62:setWidth(65);
    obj.layout62:setHeight(12);
    obj.layout62:setName("layout62");

    obj.acessorion_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acessorion_1:setParent(obj.layout62);
    obj.acessorion_1:setName("acessorion_1");
    obj.acessorion_1:setField("acessorio_1");
    obj.acessorion_1:setWidth(11);
    obj.acessorion_1:setHeight(12);
    obj.acessorion_1:setImageChecked("/sub/img/bboll.png");

    obj.acessorion_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acessorion_2:setParent(obj.layout62);
    obj.acessorion_2:setName("acessorion_2");
    obj.acessorion_2:setField("acessorio_2");
    obj.acessorion_2:setLeft(12);
    obj.acessorion_2:setWidth(11);
    obj.acessorion_2:setHeight(12);
    obj.acessorion_2:setImageChecked("/sub/img/bboll.png");

    obj.acessorion_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acessorion_3:setParent(obj.layout62);
    obj.acessorion_3:setName("acessorion_3");
    obj.acessorion_3:setField("acessorio_3");
    obj.acessorion_3:setLeft(25);
    obj.acessorion_3:setWidth(11);
    obj.acessorion_3:setHeight(12);
    obj.acessorion_3:setImageChecked("/sub/img/bboll.png");

    obj.acessorion_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acessorion_4:setParent(obj.layout62);
    obj.acessorion_4:setName("acessorion_4");
    obj.acessorion_4:setField("acessorio_4");
    obj.acessorion_4:setLeft(37);
    obj.acessorion_4:setWidth(11);
    obj.acessorion_4:setHeight(12);
    obj.acessorion_4:setImageChecked("/sub/img/bboll.png");

    obj.acessorion_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.acessorion_5:setParent(obj.layout62);
    obj.acessorion_5:setName("acessorion_5");
    obj.acessorion_5:setField("acessorio_5");
    obj.acessorion_5:setLeft(50);
    obj.acessorion_5:setWidth(11);
    obj.acessorion_5:setHeight(12);
    obj.acessorion_5:setImageChecked("/sub/img/bboll.png");

    obj.layout63 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.layout44);
    obj.layout63:setLeft(693);
    obj.layout63:setTop(84);
    obj.layout63:setWidth(65);
    obj.layout63:setHeight(12);
    obj.layout63:setName("layout63");

    obj.cenan_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cenan_1:setParent(obj.layout63);
    obj.cenan_1:setName("cenan_1");
    obj.cenan_1:setField("cena_1");
    obj.cenan_1:setWidth(11);
    obj.cenan_1:setHeight(12);
    obj.cenan_1:setImageChecked("/sub/img/bboll.png");

    obj.cenan_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cenan_2:setParent(obj.layout63);
    obj.cenan_2:setName("cenan_2");
    obj.cenan_2:setField("cena_2");
    obj.cenan_2:setLeft(12);
    obj.cenan_2:setWidth(11);
    obj.cenan_2:setHeight(12);
    obj.cenan_2:setImageChecked("/sub/img/bboll.png");

    obj.cenan_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cenan_3:setParent(obj.layout63);
    obj.cenan_3:setName("cenan_3");
    obj.cenan_3:setField("cena_3");
    obj.cenan_3:setLeft(25);
    obj.cenan_3:setWidth(11);
    obj.cenan_3:setHeight(12);
    obj.cenan_3:setImageChecked("/sub/img/bboll.png");

    obj.cenan_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cenan_4:setParent(obj.layout63);
    obj.cenan_4:setName("cenan_4");
    obj.cenan_4:setField("cena_4");
    obj.cenan_4:setLeft(37);
    obj.cenan_4:setWidth(11);
    obj.cenan_4:setHeight(12);
    obj.cenan_4:setImageChecked("/sub/img/bboll.png");

    obj.cenan_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.cenan_5:setParent(obj.layout63);
    obj.cenan_5:setName("cenan_5");
    obj.cenan_5:setField("cena_5");
    obj.cenan_5:setLeft(50);
    obj.cenan_5:setWidth(11);
    obj.cenan_5:setHeight(12);
    obj.cenan_5:setImageChecked("/sub/img/bboll.png");

    obj.layout64 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.layout44);
    obj.layout64:setLeft(693);
    obj.layout64:setTop(103);
    obj.layout64:setWidth(65);
    obj.layout64:setHeight(12);
    obj.layout64:setName("layout64");

    obj.tempon_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tempon_1:setParent(obj.layout64);
    obj.tempon_1:setName("tempon_1");
    obj.tempon_1:setField("tempo_1");
    obj.tempon_1:setWidth(11);
    obj.tempon_1:setHeight(12);
    obj.tempon_1:setImageChecked("/sub/img/bboll.png");

    obj.tempon_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tempon_2:setParent(obj.layout64);
    obj.tempon_2:setName("tempon_2");
    obj.tempon_2:setField("tempo_2");
    obj.tempon_2:setLeft(12);
    obj.tempon_2:setWidth(11);
    obj.tempon_2:setHeight(12);
    obj.tempon_2:setImageChecked("/sub/img/bboll.png");

    obj.tempon_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tempon_3:setParent(obj.layout64);
    obj.tempon_3:setName("tempon_3");
    obj.tempon_3:setField("tempo_3");
    obj.tempon_3:setLeft(25);
    obj.tempon_3:setWidth(11);
    obj.tempon_3:setHeight(12);
    obj.tempon_3:setImageChecked("/sub/img/bboll.png");

    obj.tempon_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tempon_4:setParent(obj.layout64);
    obj.tempon_4:setName("tempon_4");
    obj.tempon_4:setField("tempo_4");
    obj.tempon_4:setLeft(37);
    obj.tempon_4:setWidth(11);
    obj.tempon_4:setHeight(12);
    obj.tempon_4:setImageChecked("/sub/img/bboll.png");

    obj.tempon_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.tempon_5:setParent(obj.layout64);
    obj.tempon_5:setName("tempon_5");
    obj.tempon_5:setField("tempo_5");
    obj.tempon_5:setLeft(50);
    obj.tempon_5:setWidth(11);
    obj.tempon_5:setHeight(12);
    obj.tempon_5:setImageChecked("/sub/img/bboll.png");

    obj.layout65 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout1);
    obj.layout65:setLeft(2);
    obj.layout65:setTop(708);
    obj.layout65:setWidth(756);
    obj.layout65:setHeight(275);
    obj.layout65:setName("layout65");

    obj.layout66 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout65);
    obj.layout66:setLeft(176);
    obj.layout66:setTop(19);
    obj.layout66:setWidth(60);
    obj.layout66:setHeight(12);
    obj.layout66:setName("layout66");

    obj.caracteris1n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris1n_1:setParent(obj.layout66);
    obj.caracteris1n_1:setName("caracteris1n_1");
    obj.caracteris1n_1:setField("caracteris1_1");
    obj.caracteris1n_1:setWidth(11);
    obj.caracteris1n_1:setHeight(12);
    obj.caracteris1n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris1n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris1n_2:setParent(obj.layout66);
    obj.caracteris1n_2:setName("caracteris1n_2");
    obj.caracteris1n_2:setField("caracteris1_2");
    obj.caracteris1n_2:setLeft(12);
    obj.caracteris1n_2:setWidth(11);
    obj.caracteris1n_2:setHeight(12);
    obj.caracteris1n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris1n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris1n_3:setParent(obj.layout66);
    obj.caracteris1n_3:setName("caracteris1n_3");
    obj.caracteris1n_3:setField("caracteris1_3");
    obj.caracteris1n_3:setLeft(25);
    obj.caracteris1n_3:setWidth(11);
    obj.caracteris1n_3:setHeight(12);
    obj.caracteris1n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris1n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris1n_4:setParent(obj.layout66);
    obj.caracteris1n_4:setName("caracteris1n_4");
    obj.caracteris1n_4:setField("caracteris1_4");
    obj.caracteris1n_4:setLeft(37);
    obj.caracteris1n_4:setWidth(11);
    obj.caracteris1n_4:setHeight(12);
    obj.caracteris1n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris1n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris1n_5:setParent(obj.layout66);
    obj.caracteris1n_5:setName("caracteris1n_5");
    obj.caracteris1n_5:setField("caracteris1_5");
    obj.caracteris1n_5:setLeft(50);
    obj.caracteris1n_5:setWidth(11);
    obj.caracteris1n_5:setHeight(12);
    obj.caracteris1n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout67 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout65);
    obj.layout67:setLeft(176);
    obj.layout67:setTop(38);
    obj.layout67:setWidth(60);
    obj.layout67:setHeight(12);
    obj.layout67:setName("layout67");

    obj.caracteris2n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris2n_1:setParent(obj.layout67);
    obj.caracteris2n_1:setName("caracteris2n_1");
    obj.caracteris2n_1:setField("caracteris2_1");
    obj.caracteris2n_1:setWidth(11);
    obj.caracteris2n_1:setHeight(12);
    obj.caracteris2n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris2n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris2n_2:setParent(obj.layout67);
    obj.caracteris2n_2:setName("caracteris2n_2");
    obj.caracteris2n_2:setField("caracteris2_2");
    obj.caracteris2n_2:setLeft(12);
    obj.caracteris2n_2:setWidth(11);
    obj.caracteris2n_2:setHeight(12);
    obj.caracteris2n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris2n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris2n_3:setParent(obj.layout67);
    obj.caracteris2n_3:setName("caracteris2n_3");
    obj.caracteris2n_3:setField("caracteris2_3");
    obj.caracteris2n_3:setLeft(25);
    obj.caracteris2n_3:setWidth(11);
    obj.caracteris2n_3:setHeight(12);
    obj.caracteris2n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris2n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris2n_4:setParent(obj.layout67);
    obj.caracteris2n_4:setName("caracteris2n_4");
    obj.caracteris2n_4:setField("caracteris2_4");
    obj.caracteris2n_4:setLeft(37);
    obj.caracteris2n_4:setWidth(11);
    obj.caracteris2n_4:setHeight(12);
    obj.caracteris2n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris2n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris2n_5:setParent(obj.layout67);
    obj.caracteris2n_5:setName("caracteris2n_5");
    obj.caracteris2n_5:setField("caracteris2_5");
    obj.caracteris2n_5:setLeft(50);
    obj.caracteris2n_5:setWidth(11);
    obj.caracteris2n_5:setHeight(12);
    obj.caracteris2n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout68 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout65);
    obj.layout68:setLeft(176);
    obj.layout68:setTop(57);
    obj.layout68:setWidth(60);
    obj.layout68:setHeight(12);
    obj.layout68:setName("layout68");

    obj.caracteris3n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris3n_1:setParent(obj.layout68);
    obj.caracteris3n_1:setName("caracteris3n_1");
    obj.caracteris3n_1:setField("caracteris3_1");
    obj.caracteris3n_1:setWidth(11);
    obj.caracteris3n_1:setHeight(12);
    obj.caracteris3n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris3n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris3n_2:setParent(obj.layout68);
    obj.caracteris3n_2:setName("caracteris3n_2");
    obj.caracteris3n_2:setField("caracteris3_2");
    obj.caracteris3n_2:setLeft(12);
    obj.caracteris3n_2:setWidth(11);
    obj.caracteris3n_2:setHeight(12);
    obj.caracteris3n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris3n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris3n_3:setParent(obj.layout68);
    obj.caracteris3n_3:setName("caracteris3n_3");
    obj.caracteris3n_3:setField("caracteris3_3");
    obj.caracteris3n_3:setLeft(25);
    obj.caracteris3n_3:setWidth(11);
    obj.caracteris3n_3:setHeight(12);
    obj.caracteris3n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris3n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris3n_4:setParent(obj.layout68);
    obj.caracteris3n_4:setName("caracteris3n_4");
    obj.caracteris3n_4:setField("caracteris3_4");
    obj.caracteris3n_4:setLeft(37);
    obj.caracteris3n_4:setWidth(11);
    obj.caracteris3n_4:setHeight(12);
    obj.caracteris3n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris3n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris3n_5:setParent(obj.layout68);
    obj.caracteris3n_5:setName("caracteris3n_5");
    obj.caracteris3n_5:setField("caracteris3_5");
    obj.caracteris3n_5:setLeft(50);
    obj.caracteris3n_5:setWidth(11);
    obj.caracteris3n_5:setHeight(12);
    obj.caracteris3n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout69 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout65);
    obj.layout69:setLeft(176);
    obj.layout69:setTop(75);
    obj.layout69:setWidth(60);
    obj.layout69:setHeight(12);
    obj.layout69:setName("layout69");

    obj.caracteris4n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris4n_1:setParent(obj.layout69);
    obj.caracteris4n_1:setName("caracteris4n_1");
    obj.caracteris4n_1:setField("caracteris4_1");
    obj.caracteris4n_1:setWidth(11);
    obj.caracteris4n_1:setHeight(12);
    obj.caracteris4n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris4n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris4n_2:setParent(obj.layout69);
    obj.caracteris4n_2:setName("caracteris4n_2");
    obj.caracteris4n_2:setField("caracteris4_2");
    obj.caracteris4n_2:setLeft(12);
    obj.caracteris4n_2:setWidth(11);
    obj.caracteris4n_2:setHeight(12);
    obj.caracteris4n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris4n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris4n_3:setParent(obj.layout69);
    obj.caracteris4n_3:setName("caracteris4n_3");
    obj.caracteris4n_3:setField("caracteris4_3");
    obj.caracteris4n_3:setLeft(25);
    obj.caracteris4n_3:setWidth(11);
    obj.caracteris4n_3:setHeight(12);
    obj.caracteris4n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris4n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris4n_4:setParent(obj.layout69);
    obj.caracteris4n_4:setName("caracteris4n_4");
    obj.caracteris4n_4:setField("caracteris4_4");
    obj.caracteris4n_4:setLeft(37);
    obj.caracteris4n_4:setWidth(11);
    obj.caracteris4n_4:setHeight(12);
    obj.caracteris4n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris4n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris4n_5:setParent(obj.layout69);
    obj.caracteris4n_5:setName("caracteris4n_5");
    obj.caracteris4n_5:setField("caracteris4_5");
    obj.caracteris4n_5:setLeft(50);
    obj.caracteris4n_5:setWidth(11);
    obj.caracteris4n_5:setHeight(12);
    obj.caracteris4n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout70 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layout65);
    obj.layout70:setLeft(176);
    obj.layout70:setTop(94);
    obj.layout70:setWidth(60);
    obj.layout70:setHeight(12);
    obj.layout70:setName("layout70");

    obj.caracteris5n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris5n_1:setParent(obj.layout70);
    obj.caracteris5n_1:setName("caracteris5n_1");
    obj.caracteris5n_1:setField("caracteris5_1");
    obj.caracteris5n_1:setWidth(11);
    obj.caracteris5n_1:setHeight(12);
    obj.caracteris5n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris5n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris5n_2:setParent(obj.layout70);
    obj.caracteris5n_2:setName("caracteris5n_2");
    obj.caracteris5n_2:setField("caracteris5_2");
    obj.caracteris5n_2:setLeft(12);
    obj.caracteris5n_2:setWidth(11);
    obj.caracteris5n_2:setHeight(12);
    obj.caracteris5n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris5n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris5n_3:setParent(obj.layout70);
    obj.caracteris5n_3:setName("caracteris5n_3");
    obj.caracteris5n_3:setField("caracteris5_3");
    obj.caracteris5n_3:setLeft(25);
    obj.caracteris5n_3:setWidth(11);
    obj.caracteris5n_3:setHeight(12);
    obj.caracteris5n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris5n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris5n_4:setParent(obj.layout70);
    obj.caracteris5n_4:setName("caracteris5n_4");
    obj.caracteris5n_4:setField("caracteris5_4");
    obj.caracteris5n_4:setLeft(37);
    obj.caracteris5n_4:setWidth(11);
    obj.caracteris5n_4:setHeight(12);
    obj.caracteris5n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris5n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris5n_5:setParent(obj.layout70);
    obj.caracteris5n_5:setName("caracteris5n_5");
    obj.caracteris5n_5:setField("caracteris5_5");
    obj.caracteris5n_5:setLeft(50);
    obj.caracteris5n_5:setWidth(11);
    obj.caracteris5n_5:setHeight(12);
    obj.caracteris5n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout71 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layout65);
    obj.layout71:setLeft(176);
    obj.layout71:setTop(113);
    obj.layout71:setWidth(60);
    obj.layout71:setHeight(12);
    obj.layout71:setName("layout71");

    obj.caracteris6n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris6n_1:setParent(obj.layout71);
    obj.caracteris6n_1:setName("caracteris6n_1");
    obj.caracteris6n_1:setField("caracteris6_1");
    obj.caracteris6n_1:setWidth(11);
    obj.caracteris6n_1:setHeight(12);
    obj.caracteris6n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris6n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris6n_2:setParent(obj.layout71);
    obj.caracteris6n_2:setName("caracteris6n_2");
    obj.caracteris6n_2:setField("caracteris6_2");
    obj.caracteris6n_2:setLeft(12);
    obj.caracteris6n_2:setWidth(11);
    obj.caracteris6n_2:setHeight(12);
    obj.caracteris6n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris6n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris6n_3:setParent(obj.layout71);
    obj.caracteris6n_3:setName("caracteris6n_3");
    obj.caracteris6n_3:setField("caracteris6_3");
    obj.caracteris6n_3:setLeft(25);
    obj.caracteris6n_3:setWidth(11);
    obj.caracteris6n_3:setHeight(12);
    obj.caracteris6n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris6n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris6n_4:setParent(obj.layout71);
    obj.caracteris6n_4:setName("caracteris6n_4");
    obj.caracteris6n_4:setField("caracteris6_4");
    obj.caracteris6n_4:setLeft(37);
    obj.caracteris6n_4:setWidth(11);
    obj.caracteris6n_4:setHeight(12);
    obj.caracteris6n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris6n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris6n_5:setParent(obj.layout71);
    obj.caracteris6n_5:setName("caracteris6n_5");
    obj.caracteris6n_5:setField("caracteris6_5");
    obj.caracteris6n_5:setLeft(50);
    obj.caracteris6n_5:setWidth(11);
    obj.caracteris6n_5:setHeight(12);
    obj.caracteris6n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout72 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout65);
    obj.layout72:setLeft(176);
    obj.layout72:setTop(134);
    obj.layout72:setWidth(60);
    obj.layout72:setHeight(12);
    obj.layout72:setName("layout72");

    obj.caracteris7n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris7n_1:setParent(obj.layout72);
    obj.caracteris7n_1:setName("caracteris7n_1");
    obj.caracteris7n_1:setField("caracteris7_1");
    obj.caracteris7n_1:setWidth(11);
    obj.caracteris7n_1:setHeight(12);
    obj.caracteris7n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris7n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris7n_2:setParent(obj.layout72);
    obj.caracteris7n_2:setName("caracteris7n_2");
    obj.caracteris7n_2:setField("caracteris7_2");
    obj.caracteris7n_2:setLeft(12);
    obj.caracteris7n_2:setWidth(11);
    obj.caracteris7n_2:setHeight(12);
    obj.caracteris7n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris7n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris7n_3:setParent(obj.layout72);
    obj.caracteris7n_3:setName("caracteris7n_3");
    obj.caracteris7n_3:setField("caracteris7_3");
    obj.caracteris7n_3:setLeft(25);
    obj.caracteris7n_3:setWidth(11);
    obj.caracteris7n_3:setHeight(12);
    obj.caracteris7n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris7n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris7n_4:setParent(obj.layout72);
    obj.caracteris7n_4:setName("caracteris7n_4");
    obj.caracteris7n_4:setField("caracteris7_4");
    obj.caracteris7n_4:setLeft(37);
    obj.caracteris7n_4:setWidth(11);
    obj.caracteris7n_4:setHeight(12);
    obj.caracteris7n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris7n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris7n_5:setParent(obj.layout72);
    obj.caracteris7n_5:setName("caracteris7n_5");
    obj.caracteris7n_5:setField("caracteris7_5");
    obj.caracteris7n_5:setLeft(50);
    obj.caracteris7n_5:setWidth(11);
    obj.caracteris7n_5:setHeight(12);
    obj.caracteris7n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout73 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layout65);
    obj.layout73:setLeft(176);
    obj.layout73:setTop(152);
    obj.layout73:setWidth(60);
    obj.layout73:setHeight(12);
    obj.layout73:setName("layout73");

    obj.caracteris8n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris8n_1:setParent(obj.layout73);
    obj.caracteris8n_1:setName("caracteris8n_1");
    obj.caracteris8n_1:setField("caracteris8_1");
    obj.caracteris8n_1:setWidth(11);
    obj.caracteris8n_1:setHeight(12);
    obj.caracteris8n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris8n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris8n_2:setParent(obj.layout73);
    obj.caracteris8n_2:setName("caracteris8n_2");
    obj.caracteris8n_2:setField("caracteris8_2");
    obj.caracteris8n_2:setLeft(12);
    obj.caracteris8n_2:setWidth(11);
    obj.caracteris8n_2:setHeight(12);
    obj.caracteris8n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris8n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris8n_3:setParent(obj.layout73);
    obj.caracteris8n_3:setName("caracteris8n_3");
    obj.caracteris8n_3:setField("caracteris8_3");
    obj.caracteris8n_3:setLeft(25);
    obj.caracteris8n_3:setWidth(11);
    obj.caracteris8n_3:setHeight(12);
    obj.caracteris8n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris8n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris8n_4:setParent(obj.layout73);
    obj.caracteris8n_4:setName("caracteris8n_4");
    obj.caracteris8n_4:setField("caracteris8_4");
    obj.caracteris8n_4:setLeft(37);
    obj.caracteris8n_4:setWidth(11);
    obj.caracteris8n_4:setHeight(12);
    obj.caracteris8n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris8n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris8n_5:setParent(obj.layout73);
    obj.caracteris8n_5:setName("caracteris8n_5");
    obj.caracteris8n_5:setField("caracteris8_5");
    obj.caracteris8n_5:setLeft(50);
    obj.caracteris8n_5:setWidth(11);
    obj.caracteris8n_5:setHeight(12);
    obj.caracteris8n_5:setImageChecked("/sub/img/bboll.png");

    obj.layout74 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layout65);
    obj.layout74:setLeft(176);
    obj.layout74:setTop(171);
    obj.layout74:setWidth(60);
    obj.layout74:setHeight(12);
    obj.layout74:setName("layout74");

    obj.caracteris9n_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris9n_1:setParent(obj.layout74);
    obj.caracteris9n_1:setName("caracteris9n_1");
    obj.caracteris9n_1:setField("caracteris9_1");
    obj.caracteris9n_1:setWidth(11);
    obj.caracteris9n_1:setHeight(12);
    obj.caracteris9n_1:setImageChecked("/sub/img/bboll.png");

    obj.caracteris9n_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris9n_2:setParent(obj.layout74);
    obj.caracteris9n_2:setName("caracteris9n_2");
    obj.caracteris9n_2:setField("caracteris9_2");
    obj.caracteris9n_2:setLeft(12);
    obj.caracteris9n_2:setWidth(11);
    obj.caracteris9n_2:setHeight(12);
    obj.caracteris9n_2:setImageChecked("/sub/img/bboll.png");

    obj.caracteris9n_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris9n_3:setParent(obj.layout74);
    obj.caracteris9n_3:setName("caracteris9n_3");
    obj.caracteris9n_3:setField("caracteris9_3");
    obj.caracteris9n_3:setLeft(25);
    obj.caracteris9n_3:setWidth(11);
    obj.caracteris9n_3:setHeight(12);
    obj.caracteris9n_3:setImageChecked("/sub/img/bboll.png");

    obj.caracteris9n_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris9n_4:setParent(obj.layout74);
    obj.caracteris9n_4:setName("caracteris9n_4");
    obj.caracteris9n_4:setField("caracteris9_4");
    obj.caracteris9n_4:setLeft(37);
    obj.caracteris9n_4:setWidth(11);
    obj.caracteris9n_4:setHeight(12);
    obj.caracteris9n_4:setImageChecked("/sub/img/bboll.png");

    obj.caracteris9n_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.caracteris9n_5:setParent(obj.layout74);
    obj.caracteris9n_5:setName("caracteris9n_5");
    obj.caracteris9n_5:setField("caracteris9_5");
    obj.caracteris9n_5:setLeft(50);
    obj.caracteris9n_5:setWidth(11);
    obj.caracteris9n_5:setHeight(12);
    obj.caracteris9n_5:setImageChecked("/sub/img/bboll.png");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout65);
    obj.rectangle1:setLeft(3);
    obj.rectangle1:setTop(10);
    obj.rectangle1:setWidth(170);
    obj.rectangle1:setHeight(3);
    obj.rectangle1:setColor("#FDFDFD");
    obj.rectangle1:setName("rectangle1");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout65);
    obj.rectangle2:setLeft(175);
    obj.rectangle2:setWidth(63);
    obj.rectangle2:setHeight(13);
    obj.rectangle2:setColor("#FDFDFD");
    obj.rectangle2:setName("rectangle2");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout65);
    obj.edit24:setLeft(2);
    obj.edit24:setTop(11);
    obj.edit24:setWidth(171);
    obj.edit24:setHeight(21);
    obj.edit24:setField("caracteris1");
    obj.edit24:setFontColor("#48484A");
    obj.edit24:setFontSize(16);
    lfm_setPropAsString(obj.edit24, "fontStyle",  "bold");
    obj.edit24:setTransparent(true);
    obj.edit24:setName("edit24");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout65);
    obj.edit25:setLeft(2);
    obj.edit25:setTop(30);
    obj.edit25:setWidth(171);
    obj.edit25:setHeight(21);
    obj.edit25:setField("caracteris2");
    obj.edit25:setFontColor("#48484A");
    obj.edit25:setFontSize(16);
    lfm_setPropAsString(obj.edit25, "fontStyle",  "bold");
    obj.edit25:setTransparent(true);
    obj.edit25:setName("edit25");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout65);
    obj.edit26:setLeft(2);
    obj.edit26:setTop(49);
    obj.edit26:setWidth(171);
    obj.edit26:setHeight(21);
    obj.edit26:setField("caracteris3");
    obj.edit26:setFontColor("#48484A");
    obj.edit26:setFontSize(16);
    lfm_setPropAsString(obj.edit26, "fontStyle",  "bold");
    obj.edit26:setTransparent(true);
    obj.edit26:setName("edit26");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout65);
    obj.edit27:setLeft(2);
    obj.edit27:setTop(68);
    obj.edit27:setWidth(171);
    obj.edit27:setHeight(21);
    obj.edit27:setField("caracteris4");
    obj.edit27:setFontColor("#48484A");
    obj.edit27:setFontSize(16);
    lfm_setPropAsString(obj.edit27, "fontStyle",  "bold");
    obj.edit27:setTransparent(true);
    obj.edit27:setName("edit27");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout65);
    obj.edit28:setLeft(2);
    obj.edit28:setTop(87);
    obj.edit28:setWidth(171);
    obj.edit28:setHeight(21);
    obj.edit28:setField("caracteris5");
    obj.edit28:setFontColor("#48484A");
    obj.edit28:setFontSize(16);
    lfm_setPropAsString(obj.edit28, "fontStyle",  "bold");
    obj.edit28:setTransparent(true);
    obj.edit28:setName("edit28");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout65);
    obj.edit29:setLeft(2);
    obj.edit29:setTop(106);
    obj.edit29:setWidth(171);
    obj.edit29:setHeight(21);
    obj.edit29:setField("caracteris6");
    obj.edit29:setFontColor("#48484A");
    obj.edit29:setFontSize(16);
    lfm_setPropAsString(obj.edit29, "fontStyle",  "bold");
    obj.edit29:setTransparent(true);
    obj.edit29:setName("edit29");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout65);
    obj.edit30:setLeft(2);
    obj.edit30:setTop(125);
    obj.edit30:setWidth(171);
    obj.edit30:setHeight(21);
    obj.edit30:setField("caracteris7");
    obj.edit30:setFontColor("#48484A");
    obj.edit30:setFontSize(16);
    lfm_setPropAsString(obj.edit30, "fontStyle",  "bold");
    obj.edit30:setTransparent(true);
    obj.edit30:setName("edit30");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout65);
    obj.edit31:setLeft(2);
    obj.edit31:setTop(144);
    obj.edit31:setWidth(171);
    obj.edit31:setHeight(21);
    obj.edit31:setField("caracteris8");
    obj.edit31:setFontColor("#48484A");
    obj.edit31:setFontSize(16);
    lfm_setPropAsString(obj.edit31, "fontStyle",  "bold");
    obj.edit31:setTransparent(true);
    obj.edit31:setName("edit31");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout65);
    obj.edit32:setLeft(2);
    obj.edit32:setTop(163);
    obj.edit32:setWidth(171);
    obj.edit32:setHeight(21);
    obj.edit32:setField("caracteris9");
    obj.edit32:setFontColor("#48484A");
    obj.edit32:setFontSize(16);
    lfm_setPropAsString(obj.edit32, "fontStyle",  "bold");
    obj.edit32:setTransparent(true);
    obj.edit32:setName("edit32");

    obj.layout75 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layout65);
    obj.layout75:setLeft(14);
    obj.layout75:setTop(242);
    obj.layout75:setWidth(235);
    obj.layout75:setHeight(36);
    obj.layout75:setName("layout75");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout75);
    obj.edit33:setWidth(209);
    obj.edit33:setHeight(27);
    obj.edit33:setField("experiencia");
    obj.edit33:setFontColor("#48484A");
    obj.edit33:setFontSize(16);
    lfm_setPropAsString(obj.edit33, "fontStyle",  "bold");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setTransparent(true);
    obj.edit33:setName("edit33");

    obj.layout76 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layout65);
    obj.layout76:setLeft(276);
    obj.layout76:setTop(0);
    obj.layout76:setWidth(207);
    obj.layout76:setHeight(30);
    obj.layout76:setName("layout76");

    obj.glamourn_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_1:setParent(obj.layout76);
    obj.glamourn_1:setName("glamourn_1");
    obj.glamourn_1:setField("glamour_1");
    obj.glamourn_1:setLeft(1);
    obj.glamourn_1:setWidth(11);
    obj.glamourn_1:setHeight(12);
    obj.glamourn_1:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_2:setParent(obj.layout76);
    obj.glamourn_2:setName("glamourn_2");
    obj.glamourn_2:setField("glamour_2");
    obj.glamourn_2:setLeft(22);
    obj.glamourn_2:setWidth(11);
    obj.glamourn_2:setHeight(12);
    obj.glamourn_2:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_3:setParent(obj.layout76);
    obj.glamourn_3:setName("glamourn_3");
    obj.glamourn_3:setField("glamour_3");
    obj.glamourn_3:setLeft(43);
    obj.glamourn_3:setWidth(11);
    obj.glamourn_3:setHeight(12);
    obj.glamourn_3:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_4:setParent(obj.layout76);
    obj.glamourn_4:setName("glamourn_4");
    obj.glamourn_4:setField("glamour_4");
    obj.glamourn_4:setLeft(65);
    obj.glamourn_4:setWidth(11);
    obj.glamourn_4:setHeight(12);
    obj.glamourn_4:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_5:setParent(obj.layout76);
    obj.glamourn_5:setName("glamourn_5");
    obj.glamourn_5:setField("glamour_5");
    obj.glamourn_5:setLeft(87);
    obj.glamourn_5:setWidth(11);
    obj.glamourn_5:setHeight(12);
    obj.glamourn_5:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_6 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_6:setParent(obj.layout76);
    obj.glamourn_6:setName("glamourn_6");
    obj.glamourn_6:setField("glamour_6");
    obj.glamourn_6:setLeft(109);
    obj.glamourn_6:setWidth(11);
    obj.glamourn_6:setHeight(12);
    obj.glamourn_6:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_7 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_7:setParent(obj.layout76);
    obj.glamourn_7:setName("glamourn_7");
    obj.glamourn_7:setField("glamour_7");
    obj.glamourn_7:setLeft(130);
    obj.glamourn_7:setWidth(11);
    obj.glamourn_7:setHeight(12);
    obj.glamourn_7:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_8 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_8:setParent(obj.layout76);
    obj.glamourn_8:setName("glamourn_8");
    obj.glamourn_8:setField("glamour_8");
    obj.glamourn_8:setLeft(152);
    obj.glamourn_8:setWidth(11);
    obj.glamourn_8:setHeight(12);
    obj.glamourn_8:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_9 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_9:setParent(obj.layout76);
    obj.glamourn_9:setName("glamourn_9");
    obj.glamourn_9:setField("glamour_9");
    obj.glamourn_9:setLeft(174);
    obj.glamourn_9:setWidth(11);
    obj.glamourn_9:setHeight(12);
    obj.glamourn_9:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_10 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_10:setParent(obj.layout76);
    obj.glamourn_10:setName("glamourn_10");
    obj.glamourn_10:setField("glamour_10");
    obj.glamourn_10:setLeft(196);
    obj.glamourn_10:setWidth(11);
    obj.glamourn_10:setHeight(12);
    obj.glamourn_10:setImageChecked("/sub/img/bboll.png");

    obj.glamourn_11 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_11:setParent(obj.layout76);
    obj.glamourn_11:setName("glamourn_11");
    obj.glamourn_11:setField("glamour_11");
    obj.glamourn_11:setTop(17);
    obj.glamourn_11:setLeft(1);
    obj.glamourn_11:setWidth(11);
    obj.glamourn_11:setHeight(12);
    obj.glamourn_11:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_12 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_12:setParent(obj.layout76);
    obj.glamourn_12:setName("glamourn_12");
    obj.glamourn_12:setField("glamour_12");
    obj.glamourn_12:setTop(17);
    obj.glamourn_12:setLeft(22);
    obj.glamourn_12:setWidth(11);
    obj.glamourn_12:setHeight(12);
    obj.glamourn_12:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_13 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_13:setParent(obj.layout76);
    obj.glamourn_13:setName("glamourn_13");
    obj.glamourn_13:setField("glamour_13");
    obj.glamourn_13:setTop(17);
    obj.glamourn_13:setLeft(43);
    obj.glamourn_13:setWidth(11);
    obj.glamourn_13:setHeight(12);
    obj.glamourn_13:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_14 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_14:setParent(obj.layout76);
    obj.glamourn_14:setName("glamourn_14");
    obj.glamourn_14:setField("glamour_14");
    obj.glamourn_14:setTop(17);
    obj.glamourn_14:setLeft(65);
    obj.glamourn_14:setWidth(11);
    obj.glamourn_14:setHeight(12);
    obj.glamourn_14:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_15 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_15:setParent(obj.layout76);
    obj.glamourn_15:setName("glamourn_15");
    obj.glamourn_15:setField("glamour_15");
    obj.glamourn_15:setTop(17);
    obj.glamourn_15:setLeft(87);
    obj.glamourn_15:setWidth(11);
    obj.glamourn_15:setHeight(12);
    obj.glamourn_15:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_16 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_16:setParent(obj.layout76);
    obj.glamourn_16:setName("glamourn_16");
    obj.glamourn_16:setField("glamour_16");
    obj.glamourn_16:setTop(17);
    obj.glamourn_16:setLeft(109);
    obj.glamourn_16:setWidth(11);
    obj.glamourn_16:setHeight(12);
    obj.glamourn_16:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_17 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_17:setParent(obj.layout76);
    obj.glamourn_17:setName("glamourn_17");
    obj.glamourn_17:setField("glamour_17");
    obj.glamourn_17:setTop(17);
    obj.glamourn_17:setLeft(130);
    obj.glamourn_17:setWidth(11);
    obj.glamourn_17:setHeight(12);
    obj.glamourn_17:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_18 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_18:setParent(obj.layout76);
    obj.glamourn_18:setName("glamourn_18");
    obj.glamourn_18:setField("glamour_18");
    obj.glamourn_18:setTop(17);
    obj.glamourn_18:setLeft(152);
    obj.glamourn_18:setWidth(11);
    obj.glamourn_18:setHeight(12);
    obj.glamourn_18:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_19 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_19:setParent(obj.layout76);
    obj.glamourn_19:setName("glamourn_19");
    obj.glamourn_19:setField("glamour_19");
    obj.glamourn_19:setTop(17);
    obj.glamourn_19:setLeft(174);
    obj.glamourn_19:setWidth(11);
    obj.glamourn_19:setHeight(12);
    obj.glamourn_19:setImageChecked("/sub/img/bsquare.png");

    obj.glamourn_20 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.glamourn_20:setParent(obj.layout76);
    obj.glamourn_20:setName("glamourn_20");
    obj.glamourn_20:setField("glamour_20");
    obj.glamourn_20:setTop(17);
    obj.glamourn_20:setLeft(196);
    obj.glamourn_20:setWidth(11);
    obj.glamourn_20:setHeight(12);
    obj.glamourn_20:setImageChecked("/sub/img/bsquare.png");

    obj.layout77 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.layout65);
    obj.layout77:setLeft(276);
    obj.layout77:setTop(120);
    obj.layout77:setWidth(207);
    obj.layout77:setHeight(30);
    obj.layout77:setName("layout77");

    obj.vontaden_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_1:setParent(obj.layout77);
    obj.vontaden_1:setName("vontaden_1");
    obj.vontaden_1:setField("vontade_1");
    obj.vontaden_1:setLeft(1);
    obj.vontaden_1:setWidth(11);
    obj.vontaden_1:setHeight(12);
    obj.vontaden_1:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_2:setParent(obj.layout77);
    obj.vontaden_2:setName("vontaden_2");
    obj.vontaden_2:setField("vontade_2");
    obj.vontaden_2:setLeft(22);
    obj.vontaden_2:setWidth(11);
    obj.vontaden_2:setHeight(12);
    obj.vontaden_2:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_3:setParent(obj.layout77);
    obj.vontaden_3:setName("vontaden_3");
    obj.vontaden_3:setField("vontade_3");
    obj.vontaden_3:setLeft(43);
    obj.vontaden_3:setWidth(11);
    obj.vontaden_3:setHeight(12);
    obj.vontaden_3:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_4:setParent(obj.layout77);
    obj.vontaden_4:setName("vontaden_4");
    obj.vontaden_4:setField("vontade_4");
    obj.vontaden_4:setLeft(65);
    obj.vontaden_4:setWidth(11);
    obj.vontaden_4:setHeight(12);
    obj.vontaden_4:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_5:setParent(obj.layout77);
    obj.vontaden_5:setName("vontaden_5");
    obj.vontaden_5:setField("vontade_5");
    obj.vontaden_5:setLeft(87);
    obj.vontaden_5:setWidth(11);
    obj.vontaden_5:setHeight(12);
    obj.vontaden_5:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_6 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_6:setParent(obj.layout77);
    obj.vontaden_6:setName("vontaden_6");
    obj.vontaden_6:setField("vontade_6");
    obj.vontaden_6:setLeft(109);
    obj.vontaden_6:setWidth(11);
    obj.vontaden_6:setHeight(12);
    obj.vontaden_6:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_7 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_7:setParent(obj.layout77);
    obj.vontaden_7:setName("vontaden_7");
    obj.vontaden_7:setField("vontade_7");
    obj.vontaden_7:setLeft(130);
    obj.vontaden_7:setWidth(11);
    obj.vontaden_7:setHeight(12);
    obj.vontaden_7:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_8 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_8:setParent(obj.layout77);
    obj.vontaden_8:setName("vontaden_8");
    obj.vontaden_8:setField("vontade_8");
    obj.vontaden_8:setLeft(152);
    obj.vontaden_8:setWidth(11);
    obj.vontaden_8:setHeight(12);
    obj.vontaden_8:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_9 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_9:setParent(obj.layout77);
    obj.vontaden_9:setName("vontaden_9");
    obj.vontaden_9:setField("vontade_9");
    obj.vontaden_9:setLeft(174);
    obj.vontaden_9:setWidth(11);
    obj.vontaden_9:setHeight(12);
    obj.vontaden_9:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_10 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_10:setParent(obj.layout77);
    obj.vontaden_10:setName("vontaden_10");
    obj.vontaden_10:setField("vontade_10");
    obj.vontaden_10:setLeft(196);
    obj.vontaden_10:setWidth(11);
    obj.vontaden_10:setHeight(12);
    obj.vontaden_10:setImageChecked("/sub/img/bboll.png");

    obj.vontaden_11 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_11:setParent(obj.layout77);
    obj.vontaden_11:setName("vontaden_11");
    obj.vontaden_11:setField("vontade_11");
    obj.vontaden_11:setTop(17);
    obj.vontaden_11:setLeft(1);
    obj.vontaden_11:setWidth(11);
    obj.vontaden_11:setHeight(12);
    obj.vontaden_11:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_12 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_12:setParent(obj.layout77);
    obj.vontaden_12:setName("vontaden_12");
    obj.vontaden_12:setField("vontade_12");
    obj.vontaden_12:setTop(17);
    obj.vontaden_12:setLeft(22);
    obj.vontaden_12:setWidth(11);
    obj.vontaden_12:setHeight(12);
    obj.vontaden_12:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_13 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_13:setParent(obj.layout77);
    obj.vontaden_13:setName("vontaden_13");
    obj.vontaden_13:setField("vontade_13");
    obj.vontaden_13:setTop(17);
    obj.vontaden_13:setLeft(43);
    obj.vontaden_13:setWidth(11);
    obj.vontaden_13:setHeight(12);
    obj.vontaden_13:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_14 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_14:setParent(obj.layout77);
    obj.vontaden_14:setName("vontaden_14");
    obj.vontaden_14:setField("vontade_14");
    obj.vontaden_14:setTop(17);
    obj.vontaden_14:setLeft(65);
    obj.vontaden_14:setWidth(11);
    obj.vontaden_14:setHeight(12);
    obj.vontaden_14:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_15 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_15:setParent(obj.layout77);
    obj.vontaden_15:setName("vontaden_15");
    obj.vontaden_15:setField("vontade_15");
    obj.vontaden_15:setTop(17);
    obj.vontaden_15:setLeft(87);
    obj.vontaden_15:setWidth(11);
    obj.vontaden_15:setHeight(12);
    obj.vontaden_15:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_16 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_16:setParent(obj.layout77);
    obj.vontaden_16:setName("vontaden_16");
    obj.vontaden_16:setField("vontade_16");
    obj.vontaden_16:setTop(17);
    obj.vontaden_16:setLeft(109);
    obj.vontaden_16:setWidth(11);
    obj.vontaden_16:setHeight(12);
    obj.vontaden_16:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_17 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_17:setParent(obj.layout77);
    obj.vontaden_17:setName("vontaden_17");
    obj.vontaden_17:setField("vontade_17");
    obj.vontaden_17:setTop(17);
    obj.vontaden_17:setLeft(130);
    obj.vontaden_17:setWidth(11);
    obj.vontaden_17:setHeight(12);
    obj.vontaden_17:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_18 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_18:setParent(obj.layout77);
    obj.vontaden_18:setName("vontaden_18");
    obj.vontaden_18:setField("vontade_18");
    obj.vontaden_18:setTop(17);
    obj.vontaden_18:setLeft(152);
    obj.vontaden_18:setWidth(11);
    obj.vontaden_18:setHeight(12);
    obj.vontaden_18:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_19 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_19:setParent(obj.layout77);
    obj.vontaden_19:setName("vontaden_19");
    obj.vontaden_19:setField("vontade_19");
    obj.vontaden_19:setTop(17);
    obj.vontaden_19:setLeft(174);
    obj.vontaden_19:setWidth(11);
    obj.vontaden_19:setHeight(12);
    obj.vontaden_19:setImageChecked("/sub/img/bsquare.png");

    obj.vontaden_20 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.vontaden_20:setParent(obj.layout77);
    obj.vontaden_20:setName("vontaden_20");
    obj.vontaden_20:setField("vontade_20");
    obj.vontaden_20:setTop(17);
    obj.vontaden_20:setLeft(196);
    obj.vontaden_20:setWidth(11);
    obj.vontaden_20:setHeight(12);
    obj.vontaden_20:setImageChecked("/sub/img/bsquare.png");

    obj.layout78 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.layout65);
    obj.layout78:setLeft(276);
    obj.layout78:setTop(241);
    obj.layout78:setWidth(207);
    obj.layout78:setHeight(30);
    obj.layout78:setName("layout78");

    obj.banalidaden_1 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_1:setParent(obj.layout78);
    obj.banalidaden_1:setName("banalidaden_1");
    obj.banalidaden_1:setField("banalidade_1");
    obj.banalidaden_1:setLeft(1);
    obj.banalidaden_1:setWidth(11);
    obj.banalidaden_1:setHeight(12);
    obj.banalidaden_1:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_2 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_2:setParent(obj.layout78);
    obj.banalidaden_2:setName("banalidaden_2");
    obj.banalidaden_2:setField("banalidade_2");
    obj.banalidaden_2:setLeft(22);
    obj.banalidaden_2:setWidth(11);
    obj.banalidaden_2:setHeight(12);
    obj.banalidaden_2:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_3 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_3:setParent(obj.layout78);
    obj.banalidaden_3:setName("banalidaden_3");
    obj.banalidaden_3:setField("banalidade_3");
    obj.banalidaden_3:setLeft(43);
    obj.banalidaden_3:setWidth(11);
    obj.banalidaden_3:setHeight(12);
    obj.banalidaden_3:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_4 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_4:setParent(obj.layout78);
    obj.banalidaden_4:setName("banalidaden_4");
    obj.banalidaden_4:setField("banalidade_4");
    obj.banalidaden_4:setLeft(65);
    obj.banalidaden_4:setWidth(11);
    obj.banalidaden_4:setHeight(12);
    obj.banalidaden_4:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_5 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_5:setParent(obj.layout78);
    obj.banalidaden_5:setName("banalidaden_5");
    obj.banalidaden_5:setField("banalidade_5");
    obj.banalidaden_5:setLeft(87);
    obj.banalidaden_5:setWidth(11);
    obj.banalidaden_5:setHeight(12);
    obj.banalidaden_5:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_6 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_6:setParent(obj.layout78);
    obj.banalidaden_6:setName("banalidaden_6");
    obj.banalidaden_6:setField("banalidade_6");
    obj.banalidaden_6:setLeft(109);
    obj.banalidaden_6:setWidth(11);
    obj.banalidaden_6:setHeight(12);
    obj.banalidaden_6:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_7 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_7:setParent(obj.layout78);
    obj.banalidaden_7:setName("banalidaden_7");
    obj.banalidaden_7:setField("banalidade_7");
    obj.banalidaden_7:setLeft(130);
    obj.banalidaden_7:setWidth(11);
    obj.banalidaden_7:setHeight(12);
    obj.banalidaden_7:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_8 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_8:setParent(obj.layout78);
    obj.banalidaden_8:setName("banalidaden_8");
    obj.banalidaden_8:setField("banalidade_8");
    obj.banalidaden_8:setLeft(152);
    obj.banalidaden_8:setWidth(11);
    obj.banalidaden_8:setHeight(12);
    obj.banalidaden_8:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_9 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_9:setParent(obj.layout78);
    obj.banalidaden_9:setName("banalidaden_9");
    obj.banalidaden_9:setField("banalidade_9");
    obj.banalidaden_9:setLeft(174);
    obj.banalidaden_9:setWidth(11);
    obj.banalidaden_9:setHeight(12);
    obj.banalidaden_9:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_10 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_10:setParent(obj.layout78);
    obj.banalidaden_10:setName("banalidaden_10");
    obj.banalidaden_10:setField("banalidade_10");
    obj.banalidaden_10:setLeft(196);
    obj.banalidaden_10:setWidth(11);
    obj.banalidaden_10:setHeight(12);
    obj.banalidaden_10:setImageChecked("/sub/img/bboll.png");

    obj.banalidaden_11 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_11:setParent(obj.layout78);
    obj.banalidaden_11:setName("banalidaden_11");
    obj.banalidaden_11:setField("banalidade_11");
    obj.banalidaden_11:setTop(17);
    obj.banalidaden_11:setLeft(1);
    obj.banalidaden_11:setWidth(11);
    obj.banalidaden_11:setHeight(12);
    obj.banalidaden_11:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_12 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_12:setParent(obj.layout78);
    obj.banalidaden_12:setName("banalidaden_12");
    obj.banalidaden_12:setField("banalidade_12");
    obj.banalidaden_12:setTop(17);
    obj.banalidaden_12:setLeft(22);
    obj.banalidaden_12:setWidth(11);
    obj.banalidaden_12:setHeight(12);
    obj.banalidaden_12:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_13 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_13:setParent(obj.layout78);
    obj.banalidaden_13:setName("banalidaden_13");
    obj.banalidaden_13:setField("banalidade_13");
    obj.banalidaden_13:setTop(17);
    obj.banalidaden_13:setLeft(43);
    obj.banalidaden_13:setWidth(11);
    obj.banalidaden_13:setHeight(12);
    obj.banalidaden_13:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_14 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_14:setParent(obj.layout78);
    obj.banalidaden_14:setName("banalidaden_14");
    obj.banalidaden_14:setField("banalidade_14");
    obj.banalidaden_14:setTop(17);
    obj.banalidaden_14:setLeft(65);
    obj.banalidaden_14:setWidth(11);
    obj.banalidaden_14:setHeight(12);
    obj.banalidaden_14:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_15 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_15:setParent(obj.layout78);
    obj.banalidaden_15:setName("banalidaden_15");
    obj.banalidaden_15:setField("banalidade_15");
    obj.banalidaden_15:setTop(17);
    obj.banalidaden_15:setLeft(87);
    obj.banalidaden_15:setWidth(11);
    obj.banalidaden_15:setHeight(12);
    obj.banalidaden_15:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_16 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_16:setParent(obj.layout78);
    obj.banalidaden_16:setName("banalidaden_16");
    obj.banalidaden_16:setField("banalidade_16");
    obj.banalidaden_16:setTop(17);
    obj.banalidaden_16:setLeft(109);
    obj.banalidaden_16:setWidth(11);
    obj.banalidaden_16:setHeight(12);
    obj.banalidaden_16:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_17 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_17:setParent(obj.layout78);
    obj.banalidaden_17:setName("banalidaden_17");
    obj.banalidaden_17:setField("banalidade_17");
    obj.banalidaden_17:setTop(17);
    obj.banalidaden_17:setLeft(130);
    obj.banalidaden_17:setWidth(11);
    obj.banalidaden_17:setHeight(12);
    obj.banalidaden_17:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_18 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_18:setParent(obj.layout78);
    obj.banalidaden_18:setName("banalidaden_18");
    obj.banalidaden_18:setField("banalidade_18");
    obj.banalidaden_18:setTop(17);
    obj.banalidaden_18:setLeft(152);
    obj.banalidaden_18:setWidth(11);
    obj.banalidaden_18:setHeight(12);
    obj.banalidaden_18:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_19 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_19:setParent(obj.layout78);
    obj.banalidaden_19:setName("banalidaden_19");
    obj.banalidaden_19:setField("banalidade_19");
    obj.banalidaden_19:setTop(17);
    obj.banalidaden_19:setLeft(174);
    obj.banalidaden_19:setWidth(11);
    obj.banalidaden_19:setHeight(12);
    obj.banalidaden_19:setImageChecked("/sub/img/bsquare.png");

    obj.banalidaden_20 = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.banalidaden_20:setParent(obj.layout78);
    obj.banalidaden_20:setName("banalidaden_20");
    obj.banalidaden_20:setField("banalidade_20");
    obj.banalidaden_20:setTop(17);
    obj.banalidaden_20:setLeft(196);
    obj.banalidaden_20:setWidth(11);
    obj.banalidaden_20:setHeight(12);
    obj.banalidaden_20:setImageChecked("/sub/img/bsquare.png");

    obj.layout79 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.layout65);
    obj.layout79:setLeft(679);
    obj.layout79:setTop(7);
    obj.layout79:setWidth(59);
    obj.layout79:setHeight(135);
    obj.layout79:setName("layout79");

    obj.escoriadon = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.escoriadon:setParent(obj.layout79);
    obj.escoriadon:setName("escoriadon");
    obj.escoriadon:setField("escoriado");
    obj.escoriadon:setTop(0);
    obj.escoriadon:setLeft(1);
    obj.escoriadon:setWidth(11);
    obj.escoriadon:setHeight(12);
    obj.escoriadon:setImageChecked("/sub/img/bsquare.png");

    obj.machucadon = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.machucadon:setParent(obj.layout79);
    obj.machucadon:setName("machucadon");
    obj.machucadon:setField("machucado");
    obj.machucadon:setTop(21);
    obj.machucadon:setLeft(1);
    obj.machucadon:setWidth(11);
    obj.machucadon:setHeight(12);
    obj.machucadon:setImageChecked("/sub/img/bsquare.png");

    obj.feridon = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.feridon:setParent(obj.layout79);
    obj.feridon:setName("feridon");
    obj.feridon:setField("ferido");
    obj.feridon:setTop(41);
    obj.feridon:setLeft(1);
    obj.feridon:setWidth(11);
    obj.feridon:setHeight(12);
    obj.feridon:setImageChecked("/sub/img/bsquare.png");

    obj.feridogn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.feridogn:setParent(obj.layout79);
    obj.feridogn:setName("feridogn");
    obj.feridogn:setField("feridog");
    obj.feridogn:setTop(62);
    obj.feridogn:setLeft(1);
    obj.feridogn:setWidth(11);
    obj.feridogn:setHeight(12);
    obj.feridogn:setImageChecked("/sub/img/bsquare.png");

    obj.espancadon = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.espancadon:setParent(obj.layout79);
    obj.espancadon:setName("espancadon");
    obj.espancadon:setField("espancado");
    obj.espancadon:setTop(81);
    obj.espancadon:setLeft(1);
    obj.espancadon:setWidth(11);
    obj.espancadon:setHeight(12);
    obj.espancadon:setImageChecked("/sub/img/bsquare.png");

    obj.aleijadon = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aleijadon:setParent(obj.layout79);
    obj.aleijadon:setName("aleijadon");
    obj.aleijadon:setField("aleijado");
    obj.aleijadon:setTop(102);
    obj.aleijadon:setLeft(1);
    obj.aleijadon:setWidth(11);
    obj.aleijadon:setHeight(12);
    obj.aleijadon:setImageChecked("/sub/img/bsquare.png");

    obj.incapacin = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.incapacin:setParent(obj.layout79);
    obj.incapacin:setName("incapacin");
    obj.incapacin:setField("incapaci");
    obj.incapacin:setTop(122);
    obj.incapacin:setLeft(1);
    obj.incapacin:setWidth(11);
    obj.incapacin:setHeight(12);
    obj.incapacin:setImageChecked("/sub/img/bsquare.png");

    obj.escoriadoqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.escoriadoqn:setParent(obj.layout79);
    obj.escoriadoqn:setName("escoriadoqn");
    obj.escoriadoqn:setField("escoriadoq");
    obj.escoriadoqn:setTop(0);
    obj.escoriadoqn:setLeft(46);
    obj.escoriadoqn:setWidth(11);
    obj.escoriadoqn:setHeight(12);
    obj.escoriadoqn:setImageChecked("/sub/img/bsquare.png");

    obj.machucadoqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.machucadoqn:setParent(obj.layout79);
    obj.machucadoqn:setName("machucadoqn");
    obj.machucadoqn:setField("machucadoq");
    obj.machucadoqn:setTop(21);
    obj.machucadoqn:setLeft(46);
    obj.machucadoqn:setWidth(11);
    obj.machucadoqn:setHeight(12);
    obj.machucadoqn:setImageChecked("/sub/img/bsquare.png");

    obj.feridoqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.feridoqn:setParent(obj.layout79);
    obj.feridoqn:setName("feridoqn");
    obj.feridoqn:setField("feridoq");
    obj.feridoqn:setTop(40);
    obj.feridoqn:setLeft(46);
    obj.feridoqn:setWidth(11);
    obj.feridoqn:setHeight(12);
    obj.feridoqn:setImageChecked("/sub/img/bsquare.png");

    obj.feridogqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.feridogqn:setParent(obj.layout79);
    obj.feridogqn:setName("feridogqn");
    obj.feridogqn:setField("feridogq");
    obj.feridogqn:setTop(62);
    obj.feridogqn:setLeft(46);
    obj.feridogqn:setWidth(11);
    obj.feridogqn:setHeight(12);
    obj.feridogqn:setImageChecked("/sub/img/bsquare.png");

    obj.espancadoqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.espancadoqn:setParent(obj.layout79);
    obj.espancadoqn:setName("espancadoqn");
    obj.espancadoqn:setField("espancadoq");
    obj.espancadoqn:setTop(81);
    obj.espancadoqn:setLeft(46);
    obj.espancadoqn:setWidth(11);
    obj.espancadoqn:setHeight(12);
    obj.espancadoqn:setImageChecked("/sub/img/bsquare.png");

    obj.aleijadoqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.aleijadoqn:setParent(obj.layout79);
    obj.aleijadoqn:setName("aleijadoqn");
    obj.aleijadoqn:setField("aleijadoq");
    obj.aleijadoqn:setTop(102);
    obj.aleijadoqn:setLeft(46);
    obj.aleijadoqn:setWidth(11);
    obj.aleijadoqn:setHeight(12);
    obj.aleijadoqn:setImageChecked("/sub/img/bsquare.png");

    obj.incapaciqn = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.incapaciqn:setParent(obj.layout79);
    obj.incapaciqn:setName("incapaciqn");
    obj.incapaciqn:setField("incapaciq");
    obj.incapaciqn:setTop(122);
    obj.incapaciqn:setLeft(46);
    obj.incapaciqn:setWidth(11);
    obj.incapaciqn:setHeight(12);
    obj.incapaciqn:setImageChecked("/sub/img/bsquare.png");

    obj.layout80 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.layout65);
    obj.layout80:setLeft(521);
    obj.layout80:setTop(185);
    obj.layout80:setWidth(235);
    obj.layout80:setHeight(25);
    obj.layout80:setName("layout80");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout80);
    obj.edit34:setWidth(235);
    obj.edit34:setHeight(25);
    obj.edit34:setField("direitos");
    obj.edit34:setFontColor("#48484A");
    obj.edit34:setFontSize(16);
    lfm_setPropAsString(obj.edit34, "fontStyle",  "bold");
    obj.edit34:setTransparent(true);
    obj.edit34:setName("edit34");

    obj.layout81 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.layout65);
    obj.layout81:setLeft(521);
    obj.layout81:setTop(247);
    obj.layout81:setWidth(235);
    obj.layout81:setHeight(25);
    obj.layout81:setName("layout81");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout81);
    obj.edit35:setWidth(235);
    obj.edit35:setHeight(25);
    obj.edit35:setField("limiar");
    obj.edit35:setFontColor("#48484A");
    obj.edit35:setFontSize(16);
    lfm_setPropAsString(obj.edit35, "fontStyle",  "bold");
    obj.edit35:setTransparent(true);
    obj.edit35:setName("edit35");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.scrollBox1);
    obj.rectangle3:setLeft(58);
    obj.rectangle3:setTop(845);
    obj.rectangle3:setWidth(7);
    obj.rectangle3:setHeight(84);
    obj.rectangle3:setColor("#FDFDFD");
    obj.rectangle3:setName("rectangle3");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.furtivin_1 ~= nil then self.furtivin_1:destroy(); self.furtivin_1 = nil; end;
        if self.prontin_3 ~= nil then self.prontin_3:destroy(); self.prontin_3 = nil; end;
        if self.racion_2 ~= nil then self.racion_2:destroy(); self.racion_2 = nil; end;
        if self.acessorion_2 ~= nil then self.acessorion_2:destroy(); self.acessorion_2 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.caracteris6n_5 ~= nil then self.caracteris6n_5:destroy(); self.caracteris6n_5 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.direiton_4 ~= nil then self.direiton_4:destroy(); self.direiton_4 = nil; end;
        if self.artes2n_2 ~= nil then self.artes2n_2:destroy(); self.artes2n_2 = nil; end;
        if self.caracteris3n_5 ~= nil then self.caracteris3n_5:destroy(); self.caracteris3n_5 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.banalidaden_17 ~= nil then self.banalidaden_17:destroy(); self.banalidaden_17 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.caracteris6n_1 ~= nil then self.caracteris6n_1:destroy(); self.caracteris6n_1 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.oficiosn_3 ~= nil then self.oficiosn_3:destroy(); self.oficiosn_3 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.sobrevin_4 ~= nil then self.sobrevin_4:destroy(); self.sobrevin_4 = nil; end;
        if self.feridogqn ~= nil then self.feridogqn:destroy(); self.feridogqn = nil; end;
        if self.abrancasn_3 ~= nil then self.abrancasn_3:destroy(); self.abrancasn_3 = nil; end;
        if self.banalidaden_1 ~= nil then self.banalidaden_1:destroy(); self.banalidaden_1 = nil; end;
        if self.conducaon_3 ~= nil then self.conducaon_3:destroy(); self.conducaon_3 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.caracteris3n_3 ~= nil then self.caracteris3n_3:destroy(); self.caracteris3n_3 = nil; end;
        if self.seguran_2 ~= nil then self.seguran_2:destroy(); self.seguran_2 = nil; end;
        if self.banalidaden_8 ~= nil then self.banalidaden_8:destroy(); self.banalidaden_8 = nil; end;
        if self.tinon_2 ~= nil then self.tinon_2:destroy(); self.tinon_2 = nil; end;
        if self.forcan_4 ~= nil then self.forcan_4:destroy(); self.forcan_4 = nil; end;
        if self.seguran_5 ~= nil then self.seguran_5:destroy(); self.seguran_5 = nil; end;
        if self.computan_3 ~= nil then self.computan_3:destroy(); self.computan_3 = nil; end;
        if self.antecede7n_4 ~= nil then self.antecede7n_4:destroy(); self.antecede7n_4 = nil; end;
        if self.labian_3 ~= nil then self.labian_3:destroy(); self.labian_3 = nil; end;
        if self.artes6n_3 ~= nil then self.artes6n_3:destroy(); self.artes6n_3 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.intimin_5 ~= nil then self.intimin_5:destroy(); self.intimin_5 = nil; end;
        if self.caracteris1n_1 ~= nil then self.caracteris1n_1:destroy(); self.caracteris1n_1 = nil; end;
        if self.vontaden_16 ~= nil then self.vontaden_16:destroy(); self.vontaden_16 = nil; end;
        if self.aparencian_3 ~= nil then self.aparencian_3:destroy(); self.aparencian_3 = nil; end;
        if self.prontin_5 ~= nil then self.prontin_5:destroy(); self.prontin_5 = nil; end;
        if self.banalidaden_6 ~= nil then self.banalidaden_6:destroy(); self.banalidaden_6 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.enigmasn_3 ~= nil then self.enigmasn_3:destroy(); self.enigmasn_3 = nil; end;
        if self.vontaden_12 ~= nil then self.vontaden_12:destroy(); self.vontaden_12 = nil; end;
        if self.direiton_2 ~= nil then self.direiton_2:destroy(); self.direiton_2 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.manipulan_5 ~= nil then self.manipulan_5:destroy(); self.manipulan_5 = nil; end;
        if self.abrancasn_5 ~= nil then self.abrancasn_5:destroy(); self.abrancasn_5 = nil; end;
        if self.antecede2n_1 ~= nil then self.antecede2n_1:destroy(); self.antecede2n_1 = nil; end;
        if self.oficiosn_2 ~= nil then self.oficiosn_2:destroy(); self.oficiosn_2 = nil; end;
        if self.performan_4 ~= nil then self.performan_4:destroy(); self.performan_4 = nil; end;
        if self.glamourn_14 ~= nil then self.glamourn_14:destroy(); self.glamourn_14 = nil; end;
        if self.tempon_3 ~= nil then self.tempon_3:destroy(); self.tempon_3 = nil; end;
        if self.caracteris8n_1 ~= nil then self.caracteris8n_1:destroy(); self.caracteris8n_1 = nil; end;
        if self.glamourn_16 ~= nil then self.glamourn_16:destroy(); self.glamourn_16 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.esquivan_3 ~= nil then self.esquivan_3:destroy(); self.esquivan_3 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.tempon_1 ~= nil then self.tempon_1:destroy(); self.tempon_1 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.esquivan_4 ~= nil then self.esquivan_4:destroy(); self.esquivan_4 = nil; end;
        if self.conducaon_5 ~= nil then self.conducaon_5:destroy(); self.conducaon_5 = nil; end;
        if self.lideran_3 ~= nil then self.lideran_3:destroy(); self.lideran_3 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.antecede7n_2 ~= nil then self.antecede7n_2:destroy(); self.antecede7n_2 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.vontaden_19 ~= nil then self.vontaden_19:destroy(); self.vontaden_19 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.vontaden_6 ~= nil then self.vontaden_6:destroy(); self.vontaden_6 = nil; end;
        if self.banalidaden_3 ~= nil then self.banalidaden_3:destroy(); self.banalidaden_3 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.vontaden_20 ~= nil then self.vontaden_20:destroy(); self.vontaden_20 = nil; end;
        if self.vontaden_15 ~= nil then self.vontaden_15:destroy(); self.vontaden_15 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.sobrevin_1 ~= nil then self.sobrevin_1:destroy(); self.sobrevin_1 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.politican_5 ~= nil then self.politican_5:destroy(); self.politican_5 = nil; end;
        if self.persuan_5 ~= nil then self.persuan_5:destroy(); self.persuan_5 = nil; end;
        if self.direiton_1 ~= nil then self.direiton_1:destroy(); self.direiton_1 = nil; end;
        if self.antecede7n_1 ~= nil then self.antecede7n_1:destroy(); self.antecede7n_1 = nil; end;
        if self.glamourn_20 ~= nil then self.glamourn_20:destroy(); self.glamourn_20 = nil; end;
        if self.caracteris3n_2 ~= nil then self.caracteris3n_2:destroy(); self.caracteris3n_2 = nil; end;
        if self.inteligen_4 ~= nil then self.inteligen_4:destroy(); self.inteligen_4 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.escoriadon ~= nil then self.escoriadon:destroy(); self.escoriadon = nil; end;
        if self.escoriadoqn ~= nil then self.escoriadoqn:destroy(); self.escoriadoqn = nil; end;
        if self.antecede4n_5 ~= nil then self.antecede4n_5:destroy(); self.antecede4n_5 = nil; end;
        if self.artes5n_5 ~= nil then self.artes5n_5:destroy(); self.artes5n_5 = nil; end;
        if self.vontaden_4 ~= nil then self.vontaden_4:destroy(); self.vontaden_4 = nil; end;
        if self.abrancasn_1 ~= nil then self.abrancasn_1:destroy(); self.abrancasn_1 = nil; end;
        if self.performan_5 ~= nil then self.performan_5:destroy(); self.performan_5 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.intimin_1 ~= nil then self.intimin_1:destroy(); self.intimin_1 = nil; end;
        if self.lideran_4 ~= nil then self.lideran_4:destroy(); self.lideran_4 = nil; end;
        if self.forcan_2 ~= nil then self.forcan_2:destroy(); self.forcan_2 = nil; end;
        if self.linguisn_5 ~= nil then self.linguisn_5:destroy(); self.linguisn_5 = nil; end;
        if self.medicinan_5 ~= nil then self.medicinan_5:destroy(); self.medicinan_5 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.machucadon ~= nil then self.machucadon:destroy(); self.machucadon = nil; end;
        if self.inteligen_2 ~= nil then self.inteligen_2:destroy(); self.inteligen_2 = nil; end;
        if self.antecede2n_3 ~= nil then self.antecede2n_3:destroy(); self.antecede2n_3 = nil; end;
        if self.caracteris8n_2 ~= nil then self.caracteris8n_2:destroy(); self.caracteris8n_2 = nil; end;
        if self.feridogn ~= nil then self.feridogn:destroy(); self.feridogn = nil; end;
        if self.artes3n_5 ~= nil then self.artes3n_5:destroy(); self.artes3n_5 = nil; end;
        if self.caracteris1n_2 ~= nil then self.caracteris1n_2:destroy(); self.caracteris1n_2 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.antecede7n_5 ~= nil then self.antecede7n_5:destroy(); self.antecede7n_5 = nil; end;
        if self.racion_5 ~= nil then self.racion_5:destroy(); self.racion_5 = nil; end;
        if self.furtivin_3 ~= nil then self.furtivin_3:destroy(); self.furtivin_3 = nil; end;
        if self.banalidaden_10 ~= nil then self.banalidaden_10:destroy(); self.banalidaden_10 = nil; end;
        if self.espancadon ~= nil then self.espancadon:destroy(); self.espancadon = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.artes6n_5 ~= nil then self.artes6n_5:destroy(); self.artes6n_5 = nil; end;
        if self.etiquetan_4 ~= nil then self.etiquetan_4:destroy(); self.etiquetan_4 = nil; end;
        if self.artes1n_1 ~= nil then self.artes1n_1:destroy(); self.artes1n_1 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.investigan_5 ~= nil then self.investigan_5:destroy(); self.investigan_5 = nil; end;
        if self.cenan_5 ~= nil then self.cenan_5:destroy(); self.cenan_5 = nil; end;
        if self.caracteris8n_3 ~= nil then self.caracteris8n_3:destroy(); self.caracteris8n_3 = nil; end;
        if self.vontaden_8 ~= nil then self.vontaden_8:destroy(); self.vontaden_8 = nil; end;
        if self.fadan_1 ~= nil then self.fadan_1:destroy(); self.fadan_1 = nil; end;
        if self.empatian_4 ~= nil then self.empatian_4:destroy(); self.empatian_4 = nil; end;
        if self.caracteris5n_5 ~= nil then self.caracteris5n_5:destroy(); self.caracteris5n_5 = nil; end;
        if self.glamourn_5 ~= nil then self.glamourn_5:destroy(); self.glamourn_5 = nil; end;
        if self.banalidaden_4 ~= nil then self.banalidaden_4:destroy(); self.banalidaden_4 = nil; end;
        if self.antecede1n_2 ~= nil then self.antecede1n_2:destroy(); self.antecede1n_2 = nil; end;
        if self.glamourn_9 ~= nil then self.glamourn_9:destroy(); self.glamourn_9 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.caracteris2n_3 ~= nil then self.caracteris2n_3:destroy(); self.caracteris2n_3 = nil; end;
        if self.percepn_2 ~= nil then self.percepn_2:destroy(); self.percepn_2 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.caracteris3n_4 ~= nil then self.caracteris3n_4:destroy(); self.caracteris3n_4 = nil; end;
        if self.artes5n_2 ~= nil then self.artes5n_2:destroy(); self.artes5n_2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.labian_5 ~= nil then self.labian_5:destroy(); self.labian_5 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.glamourn_18 ~= nil then self.glamourn_18:destroy(); self.glamourn_18 = nil; end;
        if self.antecede1n_1 ~= nil then self.antecede1n_1:destroy(); self.antecede1n_1 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.percepn_4 ~= nil then self.percepn_4:destroy(); self.percepn_4 = nil; end;
        if self.antecede1n_4 ~= nil then self.antecede1n_4:destroy(); self.antecede1n_4 = nil; end;
        if self.vontaden_17 ~= nil then self.vontaden_17:destroy(); self.vontaden_17 = nil; end;
        if self.persuan_2 ~= nil then self.persuan_2:destroy(); self.persuan_2 = nil; end;
        if self.destrezan_5 ~= nil then self.destrezan_5:destroy(); self.destrezan_5 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.glamourn_6 ~= nil then self.glamourn_6:destroy(); self.glamourn_6 = nil; end;
        if self.brigan_3 ~= nil then self.brigan_3:destroy(); self.brigan_3 = nil; end;
        if self.oficiosn_5 ~= nil then self.oficiosn_5:destroy(); self.oficiosn_5 = nil; end;
        if self.antecede6n_2 ~= nil then self.antecede6n_2:destroy(); self.antecede6n_2 = nil; end;
        if self.artes3n_4 ~= nil then self.artes3n_4:destroy(); self.artes3n_4 = nil; end;
        if self.artes7n_1 ~= nil then self.artes7n_1:destroy(); self.artes7n_1 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.atorn_4 ~= nil then self.atorn_4:destroy(); self.atorn_4 = nil; end;
        if self.banalidaden_12 ~= nil then self.banalidaden_12:destroy(); self.banalidaden_12 = nil; end;
        if self.caracteris6n_2 ~= nil then self.caracteris6n_2:destroy(); self.caracteris6n_2 = nil; end;
        if self.vigorn_4 ~= nil then self.vigorn_4:destroy(); self.vigorn_4 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.caracteris2n_5 ~= nil then self.caracteris2n_5:destroy(); self.caracteris2n_5 = nil; end;
        if self.lideran_5 ~= nil then self.lideran_5:destroy(); self.lideran_5 = nil; end;
        if self.caracteris7n_5 ~= nil then self.caracteris7n_5:destroy(); self.caracteris7n_5 = nil; end;
        if self.gmagican_4 ~= nil then self.gmagican_4:destroy(); self.gmagican_4 = nil; end;
        if self.ciencian_2 ~= nil then self.ciencian_2:destroy(); self.ciencian_2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.glamourn_17 ~= nil then self.glamourn_17:destroy(); self.glamourn_17 = nil; end;
        if self.carisman_5 ~= nil then self.carisman_5:destroy(); self.carisman_5 = nil; end;
        if self.atorn_3 ~= nil then self.atorn_3:destroy(); self.atorn_3 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.sobrevin_3 ~= nil then self.sobrevin_3:destroy(); self.sobrevin_3 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.caracteris8n_5 ~= nil then self.caracteris8n_5:destroy(); self.caracteris8n_5 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.manhan_1 ~= nil then self.manhan_1:destroy(); self.manhan_1 = nil; end;
        if self.inteligen_5 ~= nil then self.inteligen_5:destroy(); self.inteligen_5 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.artes4n_2 ~= nil then self.artes4n_2:destroy(); self.artes4n_2 = nil; end;
        if self.investigan_3 ~= nil then self.investigan_3:destroy(); self.investigan_3 = nil; end;
        if self.tinon_3 ~= nil then self.tinon_3:destroy(); self.tinon_3 = nil; end;
        if self.caracteris6n_4 ~= nil then self.caracteris6n_4:destroy(); self.caracteris6n_4 = nil; end;
        if self.caracteris9n_4 ~= nil then self.caracteris9n_4:destroy(); self.caracteris9n_4 = nil; end;
        if self.vontaden_13 ~= nil then self.vontaden_13:destroy(); self.vontaden_13 = nil; end;
        if self.afogon_3 ~= nil then self.afogon_3:destroy(); self.afogon_3 = nil; end;
        if self.afogon_5 ~= nil then self.afogon_5:destroy(); self.afogon_5 = nil; end;
        if self.caracteris7n_2 ~= nil then self.caracteris7n_2:destroy(); self.caracteris7n_2 = nil; end;
        if self.antecede3n_5 ~= nil then self.antecede3n_5:destroy(); self.antecede3n_5 = nil; end;
        if self.computan_2 ~= nil then self.computan_2:destroy(); self.computan_2 = nil; end;
        if self.caracteris2n_4 ~= nil then self.caracteris2n_4:destroy(); self.caracteris2n_4 = nil; end;
        if self.vigorn_2 ~= nil then self.vigorn_2:destroy(); self.vigorn_2 = nil; end;
        if self.caracteris9n_2 ~= nil then self.caracteris9n_2:destroy(); self.caracteris9n_2 = nil; end;
        if self.etiquetan_5 ~= nil then self.etiquetan_5:destroy(); self.etiquetan_5 = nil; end;
        if self.conducaon_4 ~= nil then self.conducaon_4:destroy(); self.conducaon_4 = nil; end;
        if self.furtivin_4 ~= nil then self.furtivin_4:destroy(); self.furtivin_4 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.glamourn_7 ~= nil then self.glamourn_7:destroy(); self.glamourn_7 = nil; end;
        if self.artes2n_4 ~= nil then self.artes2n_4:destroy(); self.artes2n_4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.destrezan_2 ~= nil then self.destrezan_2:destroy(); self.destrezan_2 = nil; end;
        if self.caracteris2n_1 ~= nil then self.caracteris2n_1:destroy(); self.caracteris2n_1 = nil; end;
        if self.banalidaden_20 ~= nil then self.banalidaden_20:destroy(); self.banalidaden_20 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.banalidaden_13 ~= nil then self.banalidaden_13:destroy(); self.banalidaden_13 = nil; end;
        if self.banalidaden_15 ~= nil then self.banalidaden_15:destroy(); self.banalidaden_15 = nil; end;
        if self.naturezan_2 ~= nil then self.naturezan_2:destroy(); self.naturezan_2 = nil; end;
        if self.acessorion_3 ~= nil then self.acessorion_3:destroy(); self.acessorion_3 = nil; end;
        if self.percepn_5 ~= nil then self.percepn_5:destroy(); self.percepn_5 = nil; end;
        if self.caracteris7n_1 ~= nil then self.caracteris7n_1:destroy(); self.caracteris7n_1 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.aparencian_4 ~= nil then self.aparencian_4:destroy(); self.aparencian_4 = nil; end;
        if self.glamourn_3 ~= nil then self.glamourn_3:destroy(); self.glamourn_3 = nil; end;
        if self.medicinan_1 ~= nil then self.medicinan_1:destroy(); self.medicinan_1 = nil; end;
        if self.conducaon_2 ~= nil then self.conducaon_2:destroy(); self.conducaon_2 = nil; end;
        if self.forcan_5 ~= nil then self.forcan_5:destroy(); self.forcan_5 = nil; end;
        if self.acessorion_4 ~= nil then self.acessorion_4:destroy(); self.acessorion_4 = nil; end;
        if self.artes2n_5 ~= nil then self.artes2n_5:destroy(); self.artes2n_5 = nil; end;
        if self.caracteris4n_5 ~= nil then self.caracteris4n_5:destroy(); self.caracteris4n_5 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.espancadoqn ~= nil then self.espancadoqn:destroy(); self.espancadoqn = nil; end;
        if self.investigan_1 ~= nil then self.investigan_1:destroy(); self.investigan_1 = nil; end;
        if self.culturan_4 ~= nil then self.culturan_4:destroy(); self.culturan_4 = nil; end;
        if self.vigorn_3 ~= nil then self.vigorn_3:destroy(); self.vigorn_3 = nil; end;
        if self.manhan_3 ~= nil then self.manhan_3:destroy(); self.manhan_3 = nil; end;
        if self.banalidaden_19 ~= nil then self.banalidaden_19:destroy(); self.banalidaden_19 = nil; end;
        if self.carisman_4 ~= nil then self.carisman_4:destroy(); self.carisman_4 = nil; end;
        if self.antecede3n_2 ~= nil then self.antecede3n_2:destroy(); self.antecede3n_2 = nil; end;
        if self.aleijadon ~= nil then self.aleijadon:destroy(); self.aleijadon = nil; end;
        if self.labian_2 ~= nil then self.labian_2:destroy(); self.labian_2 = nil; end;
        if self.medicinan_2 ~= nil then self.medicinan_2:destroy(); self.medicinan_2 = nil; end;
        if self.incapaciqn ~= nil then self.incapaciqn:destroy(); self.incapaciqn = nil; end;
        if self.furtivin_2 ~= nil then self.furtivin_2:destroy(); self.furtivin_2 = nil; end;
        if self.fadan_2 ~= nil then self.fadan_2:destroy(); self.fadan_2 = nil; end;
        if self.carisman_2 ~= nil then self.carisman_2:destroy(); self.carisman_2 = nil; end;
        if self.tempon_4 ~= nil then self.tempon_4:destroy(); self.tempon_4 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.direiton_5 ~= nil then self.direiton_5:destroy(); self.direiton_5 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.afogon_1 ~= nil then self.afogon_1:destroy(); self.afogon_1 = nil; end;
        if self.seguran_4 ~= nil then self.seguran_4:destroy(); self.seguran_4 = nil; end;
        if self.antecede2n_4 ~= nil then self.antecede2n_4:destroy(); self.antecede2n_4 = nil; end;
        if self.lideran_1 ~= nil then self.lideran_1:destroy(); self.lideran_1 = nil; end;
        if self.naturezan_3 ~= nil then self.naturezan_3:destroy(); self.naturezan_3 = nil; end;
        if self.cenan_3 ~= nil then self.cenan_3:destroy(); self.cenan_3 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.caracteris2n_2 ~= nil then self.caracteris2n_2:destroy(); self.caracteris2n_2 = nil; end;
        if self.glamourn_19 ~= nil then self.glamourn_19:destroy(); self.glamourn_19 = nil; end;
        if self.artes1n_2 ~= nil then self.artes1n_2:destroy(); self.artes1n_2 = nil; end;
        if self.feridoqn ~= nil then self.feridoqn:destroy(); self.feridoqn = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.esportn_2 ~= nil then self.esportn_2:destroy(); self.esportn_2 = nil; end;
        if self.glamourn_12 ~= nil then self.glamourn_12:destroy(); self.glamourn_12 = nil; end;
        if self.inteligen_3 ~= nil then self.inteligen_3:destroy(); self.inteligen_3 = nil; end;
        if self.lideran_2 ~= nil then self.lideran_2:destroy(); self.lideran_2 = nil; end;
        if self.caracteris7n_4 ~= nil then self.caracteris7n_4:destroy(); self.caracteris7n_4 = nil; end;
        if self.racion_4 ~= nil then self.racion_4:destroy(); self.racion_4 = nil; end;
        if self.sobrevin_2 ~= nil then self.sobrevin_2:destroy(); self.sobrevin_2 = nil; end;
        if self.antecede3n_3 ~= nil then self.antecede3n_3:destroy(); self.antecede3n_3 = nil; end;
        if self.gmagican_2 ~= nil then self.gmagican_2:destroy(); self.gmagican_2 = nil; end;
        if self.glamourn_4 ~= nil then self.glamourn_4:destroy(); self.glamourn_4 = nil; end;
        if self.vontaden_9 ~= nil then self.vontaden_9:destroy(); self.vontaden_9 = nil; end;
        if self.linguisn_4 ~= nil then self.linguisn_4:destroy(); self.linguisn_4 = nil; end;
        if self.enigmasn_1 ~= nil then self.enigmasn_1:destroy(); self.enigmasn_1 = nil; end;
        if self.seguran_1 ~= nil then self.seguran_1:destroy(); self.seguran_1 = nil; end;
        if self.destrezan_4 ~= nil then self.destrezan_4:destroy(); self.destrezan_4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.antecede2n_2 ~= nil then self.antecede2n_2:destroy(); self.antecede2n_2 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.caracteris9n_5 ~= nil then self.caracteris9n_5:destroy(); self.caracteris9n_5 = nil; end;
        if self.conducaon_1 ~= nil then self.conducaon_1:destroy(); self.conducaon_1 = nil; end;
        if self.artes1n_5 ~= nil then self.artes1n_5:destroy(); self.artes1n_5 = nil; end;
        if self.linguisn_3 ~= nil then self.linguisn_3:destroy(); self.linguisn_3 = nil; end;
        if self.manhan_5 ~= nil then self.manhan_5:destroy(); self.manhan_5 = nil; end;
        if self.artes3n_1 ~= nil then self.artes3n_1:destroy(); self.artes3n_1 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.performan_2 ~= nil then self.performan_2:destroy(); self.performan_2 = nil; end;
        if self.machucadoqn ~= nil then self.machucadoqn:destroy(); self.machucadoqn = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.brigan_4 ~= nil then self.brigan_4:destroy(); self.brigan_4 = nil; end;
        if self.empatian_3 ~= nil then self.empatian_3:destroy(); self.empatian_3 = nil; end;
        if self.culturan_1 ~= nil then self.culturan_1:destroy(); self.culturan_1 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.oficiosn_4 ~= nil then self.oficiosn_4:destroy(); self.oficiosn_4 = nil; end;
        if self.brigan_2 ~= nil then self.brigan_2:destroy(); self.brigan_2 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.manipulan_3 ~= nil then self.manipulan_3:destroy(); self.manipulan_3 = nil; end;
        if self.enigmasn_2 ~= nil then self.enigmasn_2:destroy(); self.enigmasn_2 = nil; end;
        if self.artes4n_5 ~= nil then self.artes4n_5:destroy(); self.artes4n_5 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.computan_4 ~= nil then self.computan_4:destroy(); self.computan_4 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.medicinan_4 ~= nil then self.medicinan_4:destroy(); self.medicinan_4 = nil; end;
        if self.enigmasn_4 ~= nil then self.enigmasn_4:destroy(); self.enigmasn_4 = nil; end;
        if self.fadan_5 ~= nil then self.fadan_5:destroy(); self.fadan_5 = nil; end;
        if self.caracteris9n_1 ~= nil then self.caracteris9n_1:destroy(); self.caracteris9n_1 = nil; end;
        if self.glamourn_11 ~= nil then self.glamourn_11:destroy(); self.glamourn_11 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.vontaden_2 ~= nil then self.vontaden_2:destroy(); self.vontaden_2 = nil; end;
        if self.vontaden_11 ~= nil then self.vontaden_11:destroy(); self.vontaden_11 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.labian_4 ~= nil then self.labian_4:destroy(); self.labian_4 = nil; end;
        if self.empatian_1 ~= nil then self.empatian_1:destroy(); self.empatian_1 = nil; end;
        if self.ciencian_3 ~= nil then self.ciencian_3:destroy(); self.ciencian_3 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.etiquetan_1 ~= nil then self.etiquetan_1:destroy(); self.etiquetan_1 = nil; end;
        if self.furtivin_5 ~= nil then self.furtivin_5:destroy(); self.furtivin_5 = nil; end;
        if self.caracteris5n_2 ~= nil then self.caracteris5n_2:destroy(); self.caracteris5n_2 = nil; end;
        if self.linguisn_1 ~= nil then self.linguisn_1:destroy(); self.linguisn_1 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.banalidaden_14 ~= nil then self.banalidaden_14:destroy(); self.banalidaden_14 = nil; end;
        if self.banalidaden_9 ~= nil then self.banalidaden_9:destroy(); self.banalidaden_9 = nil; end;
        if self.destrezan_3 ~= nil then self.destrezan_3:destroy(); self.destrezan_3 = nil; end;
        if self.empatian_2 ~= nil then self.empatian_2:destroy(); self.empatian_2 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.atorn_1 ~= nil then self.atorn_1:destroy(); self.atorn_1 = nil; end;
        if self.antecede2n_5 ~= nil then self.antecede2n_5:destroy(); self.antecede2n_5 = nil; end;
        if self.esportn_4 ~= nil then self.esportn_4:destroy(); self.esportn_4 = nil; end;
        if self.oficiosn_1 ~= nil then self.oficiosn_1:destroy(); self.oficiosn_1 = nil; end;
        if self.culturan_2 ~= nil then self.culturan_2:destroy(); self.culturan_2 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.caracteris1n_5 ~= nil then self.caracteris1n_5:destroy(); self.caracteris1n_5 = nil; end;
        if self.caracteris5n_1 ~= nil then self.caracteris5n_1:destroy(); self.caracteris5n_1 = nil; end;
        if self.artes5n_3 ~= nil then self.artes5n_3:destroy(); self.artes5n_3 = nil; end;
        if self.glamourn_8 ~= nil then self.glamourn_8:destroy(); self.glamourn_8 = nil; end;
        if self.antecede5n_5 ~= nil then self.antecede5n_5:destroy(); self.antecede5n_5 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.fadan_4 ~= nil then self.fadan_4:destroy(); self.fadan_4 = nil; end;
        if self.antecede1n_5 ~= nil then self.antecede1n_5:destroy(); self.antecede1n_5 = nil; end;
        if self.seguran_3 ~= nil then self.seguran_3:destroy(); self.seguran_3 = nil; end;
        if self.caracteris4n_1 ~= nil then self.caracteris4n_1:destroy(); self.caracteris4n_1 = nil; end;
        if self.caracteris4n_3 ~= nil then self.caracteris4n_3:destroy(); self.caracteris4n_3 = nil; end;
        if self.manhan_2 ~= nil then self.manhan_2:destroy(); self.manhan_2 = nil; end;
        if self.artes1n_3 ~= nil then self.artes1n_3:destroy(); self.artes1n_3 = nil; end;
        if self.antecede7n_3 ~= nil then self.antecede7n_3:destroy(); self.antecede7n_3 = nil; end;
        if self.incapacin ~= nil then self.incapacin:destroy(); self.incapacin = nil; end;
        if self.naturezan_4 ~= nil then self.naturezan_4:destroy(); self.naturezan_4 = nil; end;
        if self.esportn_5 ~= nil then self.esportn_5:destroy(); self.esportn_5 = nil; end;
        if self.vontaden_10 ~= nil then self.vontaden_10:destroy(); self.vontaden_10 = nil; end;
        if self.artes6n_1 ~= nil then self.artes6n_1:destroy(); self.artes6n_1 = nil; end;
        if self.direiton_3 ~= nil then self.direiton_3:destroy(); self.direiton_3 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.politican_1 ~= nil then self.politican_1:destroy(); self.politican_1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.tinon_1 ~= nil then self.tinon_1:destroy(); self.tinon_1 = nil; end;
        if self.artes4n_4 ~= nil then self.artes4n_4:destroy(); self.artes4n_4 = nil; end;
        if self.tempon_5 ~= nil then self.tempon_5:destroy(); self.tempon_5 = nil; end;
        if self.percepn_3 ~= nil then self.percepn_3:destroy(); self.percepn_3 = nil; end;
        if self.acessorion_5 ~= nil then self.acessorion_5:destroy(); self.acessorion_5 = nil; end;
        if self.glamourn_2 ~= nil then self.glamourn_2:destroy(); self.glamourn_2 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.caracteris9n_3 ~= nil then self.caracteris9n_3:destroy(); self.caracteris9n_3 = nil; end;
        if self.glamourn_15 ~= nil then self.glamourn_15:destroy(); self.glamourn_15 = nil; end;
        if self.manhan_4 ~= nil then self.manhan_4:destroy(); self.manhan_4 = nil; end;
        if self.linguisn_2 ~= nil then self.linguisn_2:destroy(); self.linguisn_2 = nil; end;
        if self.caracteris8n_4 ~= nil then self.caracteris8n_4:destroy(); self.caracteris8n_4 = nil; end;
        if self.artes5n_4 ~= nil then self.artes5n_4:destroy(); self.artes5n_4 = nil; end;
        if self.esportn_1 ~= nil then self.esportn_1:destroy(); self.esportn_1 = nil; end;
        if self.investigan_2 ~= nil then self.investigan_2:destroy(); self.investigan_2 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.persuan_3 ~= nil then self.persuan_3:destroy(); self.persuan_3 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.manipulan_4 ~= nil then self.manipulan_4:destroy(); self.manipulan_4 = nil; end;
        if self.artes4n_3 ~= nil then self.artes4n_3:destroy(); self.artes4n_3 = nil; end;
        if self.vontaden_18 ~= nil then self.vontaden_18:destroy(); self.vontaden_18 = nil; end;
        if self.antecede6n_4 ~= nil then self.antecede6n_4:destroy(); self.antecede6n_4 = nil; end;
        if self.persuan_1 ~= nil then self.persuan_1:destroy(); self.persuan_1 = nil; end;
        if self.caracteris5n_3 ~= nil then self.caracteris5n_3:destroy(); self.caracteris5n_3 = nil; end;
        if self.computan_5 ~= nil then self.computan_5:destroy(); self.computan_5 = nil; end;
        if self.abrancasn_2 ~= nil then self.abrancasn_2:destroy(); self.abrancasn_2 = nil; end;
        if self.naturezan_1 ~= nil then self.naturezan_1:destroy(); self.naturezan_1 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.atorn_2 ~= nil then self.atorn_2:destroy(); self.atorn_2 = nil; end;
        if self.artes3n_3 ~= nil then self.artes3n_3:destroy(); self.artes3n_3 = nil; end;
        if self.antecede5n_1 ~= nil then self.antecede5n_1:destroy(); self.antecede5n_1 = nil; end;
        if self.artes7n_3 ~= nil then self.artes7n_3:destroy(); self.artes7n_3 = nil; end;
        if self.glamourn_1 ~= nil then self.glamourn_1:destroy(); self.glamourn_1 = nil; end;
        if self.etiquetan_3 ~= nil then self.etiquetan_3:destroy(); self.etiquetan_3 = nil; end;
        if self.esportn_3 ~= nil then self.esportn_3:destroy(); self.esportn_3 = nil; end;
        if self.antecede4n_2 ~= nil then self.antecede4n_2:destroy(); self.antecede4n_2 = nil; end;
        if self.artes5n_1 ~= nil then self.artes5n_1:destroy(); self.artes5n_1 = nil; end;
        if self.artes3n_2 ~= nil then self.artes3n_2:destroy(); self.artes3n_2 = nil; end;
        if self.brigan_1 ~= nil then self.brigan_1:destroy(); self.brigan_1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.tinon_4 ~= nil then self.tinon_4:destroy(); self.tinon_4 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.vontaden_3 ~= nil then self.vontaden_3:destroy(); self.vontaden_3 = nil; end;
        if self.brigan_5 ~= nil then self.brigan_5:destroy(); self.brigan_5 = nil; end;
        if self.glamourn_10 ~= nil then self.glamourn_10:destroy(); self.glamourn_10 = nil; end;
        if self.antecede6n_1 ~= nil then self.antecede6n_1:destroy(); self.antecede6n_1 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.performan_3 ~= nil then self.performan_3:destroy(); self.performan_3 = nil; end;
        if self.prontin_2 ~= nil then self.prontin_2:destroy(); self.prontin_2 = nil; end;
        if self.vigorn_5 ~= nil then self.vigorn_5:destroy(); self.vigorn_5 = nil; end;
        if self.artes6n_4 ~= nil then self.artes6n_4:destroy(); self.artes6n_4 = nil; end;
        if self.empatian_5 ~= nil then self.empatian_5:destroy(); self.empatian_5 = nil; end;
        if self.artes7n_5 ~= nil then self.artes7n_5:destroy(); self.artes7n_5 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.culturan_5 ~= nil then self.culturan_5:destroy(); self.culturan_5 = nil; end;
        if self.esquivan_1 ~= nil then self.esquivan_1:destroy(); self.esquivan_1 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.caracteris5n_4 ~= nil then self.caracteris5n_4:destroy(); self.caracteris5n_4 = nil; end;
        if self.etiquetan_2 ~= nil then self.etiquetan_2:destroy(); self.etiquetan_2 = nil; end;
        if self.caracteris4n_4 ~= nil then self.caracteris4n_4:destroy(); self.caracteris4n_4 = nil; end;
        if self.vontaden_14 ~= nil then self.vontaden_14:destroy(); self.vontaden_14 = nil; end;
        if self.banalidaden_2 ~= nil then self.banalidaden_2:destroy(); self.banalidaden_2 = nil; end;
        if self.abrancasn_4 ~= nil then self.abrancasn_4:destroy(); self.abrancasn_4 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.esquivan_2 ~= nil then self.esquivan_2:destroy(); self.esquivan_2 = nil; end;
        if self.antecede3n_1 ~= nil then self.antecede3n_1:destroy(); self.antecede3n_1 = nil; end;
        if self.naturezan_5 ~= nil then self.naturezan_5:destroy(); self.naturezan_5 = nil; end;
        if self.carisman_3 ~= nil then self.carisman_3:destroy(); self.carisman_3 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.cenan_2 ~= nil then self.cenan_2:destroy(); self.cenan_2 = nil; end;
        if self.fadan_3 ~= nil then self.fadan_3:destroy(); self.fadan_3 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.medicinan_3 ~= nil then self.medicinan_3:destroy(); self.medicinan_3 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.tinon_5 ~= nil then self.tinon_5:destroy(); self.tinon_5 = nil; end;
        if self.atorn_5 ~= nil then self.atorn_5:destroy(); self.atorn_5 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.artes1n_4 ~= nil then self.artes1n_4:destroy(); self.artes1n_4 = nil; end;
        if self.antecede3n_4 ~= nil then self.antecede3n_4:destroy(); self.antecede3n_4 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.politican_3 ~= nil then self.politican_3:destroy(); self.politican_3 = nil; end;
        if self.forcan_3 ~= nil then self.forcan_3:destroy(); self.forcan_3 = nil; end;
        if self.artes4n_1 ~= nil then self.artes4n_1:destroy(); self.artes4n_1 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.banalidaden_18 ~= nil then self.banalidaden_18:destroy(); self.banalidaden_18 = nil; end;
        if self.performan_1 ~= nil then self.performan_1:destroy(); self.performan_1 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.banalidaden_5 ~= nil then self.banalidaden_5:destroy(); self.banalidaden_5 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.banalidaden_11 ~= nil then self.banalidaden_11:destroy(); self.banalidaden_11 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.politican_4 ~= nil then self.politican_4:destroy(); self.politican_4 = nil; end;
        if self.computan_1 ~= nil then self.computan_1:destroy(); self.computan_1 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.manipulan_2 ~= nil then self.manipulan_2:destroy(); self.manipulan_2 = nil; end;
        if self.intimin_2 ~= nil then self.intimin_2:destroy(); self.intimin_2 = nil; end;
        if self.antecede4n_1 ~= nil then self.antecede4n_1:destroy(); self.antecede4n_1 = nil; end;
        if self.investigan_4 ~= nil then self.investigan_4:destroy(); self.investigan_4 = nil; end;
        if self.enigmasn_5 ~= nil then self.enigmasn_5:destroy(); self.enigmasn_5 = nil; end;
        if self.gmagican_3 ~= nil then self.gmagican_3:destroy(); self.gmagican_3 = nil; end;
        if self.politican_2 ~= nil then self.politican_2:destroy(); self.politican_2 = nil; end;
        if self.culturan_3 ~= nil then self.culturan_3:destroy(); self.culturan_3 = nil; end;
        if self.antecede4n_3 ~= nil then self.antecede4n_3:destroy(); self.antecede4n_3 = nil; end;
        if self.artes7n_4 ~= nil then self.artes7n_4:destroy(); self.artes7n_4 = nil; end;
        if self.aparencian_5 ~= nil then self.aparencian_5:destroy(); self.aparencian_5 = nil; end;
        if self.ciencian_4 ~= nil then self.ciencian_4:destroy(); self.ciencian_4 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.antecede6n_5 ~= nil then self.antecede6n_5:destroy(); self.antecede6n_5 = nil; end;
        if self.cenan_4 ~= nil then self.cenan_4:destroy(); self.cenan_4 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.ciencian_5 ~= nil then self.ciencian_5:destroy(); self.ciencian_5 = nil; end;
        if self.feridon ~= nil then self.feridon:destroy(); self.feridon = nil; end;
        if self.banalidaden_16 ~= nil then self.banalidaden_16:destroy(); self.banalidaden_16 = nil; end;
        if self.afogon_2 ~= nil then self.afogon_2:destroy(); self.afogon_2 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.aleijadoqn ~= nil then self.aleijadoqn:destroy(); self.aleijadoqn = nil; end;
        if self.antecede4n_4 ~= nil then self.antecede4n_4:destroy(); self.antecede4n_4 = nil; end;
        if self.caracteris4n_2 ~= nil then self.caracteris4n_2:destroy(); self.caracteris4n_2 = nil; end;
        if self.antecede5n_2 ~= nil then self.antecede5n_2:destroy(); self.antecede5n_2 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.artes2n_1 ~= nil then self.artes2n_1:destroy(); self.artes2n_1 = nil; end;
        if self.vontaden_5 ~= nil then self.vontaden_5:destroy(); self.vontaden_5 = nil; end;
        if self.antecede1n_3 ~= nil then self.antecede1n_3:destroy(); self.antecede1n_3 = nil; end;
        if self.antecede5n_4 ~= nil then self.antecede5n_4:destroy(); self.antecede5n_4 = nil; end;
        if self.caracteris6n_3 ~= nil then self.caracteris6n_3:destroy(); self.caracteris6n_3 = nil; end;
        if self.sobrevin_5 ~= nil then self.sobrevin_5:destroy(); self.sobrevin_5 = nil; end;
        if self.antecede6n_3 ~= nil then self.antecede6n_3:destroy(); self.antecede6n_3 = nil; end;
        if self.caracteris3n_1 ~= nil then self.caracteris3n_1:destroy(); self.caracteris3n_1 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.persuan_4 ~= nil then self.persuan_4:destroy(); self.persuan_4 = nil; end;
        if self.caracteris1n_4 ~= nil then self.caracteris1n_4:destroy(); self.caracteris1n_4 = nil; end;
        if self.vontaden_7 ~= nil then self.vontaden_7:destroy(); self.vontaden_7 = nil; end;
        if self.artes6n_2 ~= nil then self.artes6n_2:destroy(); self.artes6n_2 = nil; end;
        if self.esquivan_5 ~= nil then self.esquivan_5:destroy(); self.esquivan_5 = nil; end;
        if self.intimin_4 ~= nil then self.intimin_4:destroy(); self.intimin_4 = nil; end;
        if self.glamourn_13 ~= nil then self.glamourn_13:destroy(); self.glamourn_13 = nil; end;
        if self.prontin_4 ~= nil then self.prontin_4:destroy(); self.prontin_4 = nil; end;
        if self.caracteris7n_3 ~= nil then self.caracteris7n_3:destroy(); self.caracteris7n_3 = nil; end;
        if self.artes2n_3 ~= nil then self.artes2n_3:destroy(); self.artes2n_3 = nil; end;
        if self.vontaden_1 ~= nil then self.vontaden_1:destroy(); self.vontaden_1 = nil; end;
        if self.gmagican_5 ~= nil then self.gmagican_5:destroy(); self.gmagican_5 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.acessorion_1 ~= nil then self.acessorion_1:destroy(); self.acessorion_1 = nil; end;
        if self.gmagican_1 ~= nil then self.gmagican_1:destroy(); self.gmagican_1 = nil; end;
        if self.ciencian_1 ~= nil then self.ciencian_1:destroy(); self.ciencian_1 = nil; end;
        if self.caracteris1n_3 ~= nil then self.caracteris1n_3:destroy(); self.caracteris1n_3 = nil; end;
        if self.tempon_2 ~= nil then self.tempon_2:destroy(); self.tempon_2 = nil; end;
        if self.banalidaden_7 ~= nil then self.banalidaden_7:destroy(); self.banalidaden_7 = nil; end;
        if self.intimin_3 ~= nil then self.intimin_3:destroy(); self.intimin_3 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.prontin_1 ~= nil then self.prontin_1:destroy(); self.prontin_1 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.racion_3 ~= nil then self.racion_3:destroy(); self.racion_3 = nil; end;
        if self.antecede5n_3 ~= nil then self.antecede5n_3:destroy(); self.antecede5n_3 = nil; end;
        if self.afogon_4 ~= nil then self.afogon_4:destroy(); self.afogon_4 = nil; end;
        if self.aparencian_2 ~= nil then self.aparencian_2:destroy(); self.aparencian_2 = nil; end;
        if self.artes7n_2 ~= nil then self.artes7n_2:destroy(); self.artes7n_2 = nil; end;
        if self.labian_1 ~= nil then self.labian_1:destroy(); self.labian_1 = nil; end;
        if self.cenan_1 ~= nil then self.cenan_1:destroy(); self.cenan_1 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _Changeling01 = {
    newEditor = newChangeling01, 
    new = newChangeling01, 
    name = "Changeling01", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

Changeling01 = _Changeling01;
rrpg.registrarForm(_Changeling01);

return _Changeling01;
