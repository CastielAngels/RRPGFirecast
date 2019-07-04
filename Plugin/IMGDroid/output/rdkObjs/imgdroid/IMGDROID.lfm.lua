require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newimgdroidform()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("popupForm"));
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
    obj:setName("imgdroidform");
    obj:setWidth(200);
    obj:setHeight(200);
    obj:setTitle("IMGDROID");
    obj:setDrawContainer(false);
    obj:setTheme("dark");
    obj:setLockWhileNodeIsLoading(true);
    obj:setPlacement("center");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setSRC("http://blob.firecast.com.br/blobs/MELBTCAP_217398.png");
    obj.image1:setLeft(10);
    obj.image1:setTop(10);
    obj.image1:setWidth(50);
    obj.image1:setHeight(50);
    obj.image1:setName("image1");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj);
    obj.image2:setSRC("http://blob.firecast.com.br/blobs/EPSFGHBU_730740/BaldurAvatar.jpg");
    obj.image2:setLeft(70);
    obj.image2:setTop(10);
    obj.image2:setWidth(50);
    obj.image2:setHeight(50);
    obj.image2:setName("image2");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj);
    obj.image3:setSRC("http://blob.firecast.com.br/blobs/BDDCIFJI_961114/FloraPortrait.png");
    obj.image3:setLeft(130);
    obj.image3:setTop(10);
    obj.image3:setWidth(50);
    obj.image3:setHeight(50);
    obj.image3:setName("image3");

    obj.image4 = gui.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj);
    obj.image4:setSRC("http://blob.firecast.com.br/blobs/OVCHGWCU_762718/criss01avatar.jpg");
    obj.image4:setLeft(10);
    obj.image4:setTop(70);
    obj.image4:setWidth(50);
    obj.image4:setHeight(50);
    obj.image4:setName("image4");

    obj.image5 = gui.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj);
    obj.image5:setSRC("http://blob.firecast.com.br/blobs/GPJDSBHO_941011/ElenyAvatar.jpg");
    obj.image5:setLeft(70);
    obj.image5:setTop(70);
    obj.image5:setWidth(50);
    obj.image5:setHeight(50);
    obj.image5:setName("image5");

    obj.image6 = gui.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj);
    obj.image6:setSRC("http://blob.firecast.com.br/blobs/GPJDSBHO_941011/ElenyAvatar.jpg");
    obj.image6:setLeft(130);
    obj.image6:setTop(70);
    obj.image6:setWidth(50);
    obj.image6:setHeight(50);
    obj.image6:setName("image6");

    obj.image7 = gui.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj);
    obj.image7:setSRC("http://blob.firecast.com.br/blobs/GDLGBDDQ_857079/LindsayAvatar.jpg");
    obj.image7:setLeft(10);
    obj.image7:setTop(130);
    obj.image7:setWidth(50);
    obj.image7:setHeight(50);
    obj.image7:setName("image7");

    obj.image8 = gui.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj);
    obj.image8:setSRC("http://blob.firecast.com.br/blobs/OLNJPVTJ_943020/Helena.png");
    obj.image8:setLeft(70);
    obj.image8:setTop(130);
    obj.image8:setWidth(50);
    obj.image8:setHeight(50);
    obj.image8:setName("image8");

    obj.image9 = gui.fromHandle(_obj_newObject("image"));
    obj.image9:setParent(obj);
    obj.image9:setSRC("http://blob.firecast.com.br/blobs/BCRHPNUN_765354/Jacob01.jpg");
    obj.image9:setLeft(130);
    obj.image9:setTop(130);
    obj.image9:setWidth(50);
    obj.image9:setHeight(50);
    obj.image9:setName("image9");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.image9 ~= nil then self.image9:destroy(); self.image9 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _imgdroidform = {
    newEditor = newimgdroidform, 
    new = newimgdroidform, 
    name = "imgdroidform", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "popupForm", 
    title = "IMGDROID", 
    description=""};

imgdroidform = _imgdroidform;
rrpg.registrarForm(_imgdroidform);

return _imgdroidform;
