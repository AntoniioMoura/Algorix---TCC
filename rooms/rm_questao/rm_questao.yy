{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_questao",
  "creationCodeFile": "${project_dir}/rooms/rm_questao/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_53BF741E","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_689B12DD","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_9D82D52","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_5BB40A8F","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_4C9373C5","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_7906F608","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_AF5D258","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_334689BE","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_1D393F40","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_26AD214B","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_170E0D76","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_5AF29BC6","path":"rooms/rm_questao/rm_questao.yy",},
    {"name":"inst_78A72231","path":"rooms/rm_questao/rm_questao.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"casas","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":38,"SerialiseWidth":188,"TileCompressedData":[
-5120,-2147483648,-7,0,-181,-2147483648,-7,0,-181,-2147483648,-7,0,-181,-2147483648,-7,0,-181,-2147483648,-7,0,-1265,-2147483648,],"TileDataFormat":1,},"tilesetId":null,"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"solidos","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":38,"SerialiseWidth":188,"TileCompressedData":[
-6392,-2147483648,1,2,-186,3,2,7,11,-186,12,2,13,11,-186,12,2,13,20,-186,21,1,22,],"TileDataFormat":1,},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"particulas","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"player","depth":300,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_689B12DD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":512.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_extra","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"player_rastro","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"questao","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9D82D52","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_algoritmo","path":"objects/obj_algoritmo/obj_algoritmo.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":96.0,"y":320.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5BB40A8F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_questao","path":"objects/obj_questao/obj_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_questao","path":"objects/obj_questao/obj_questao.yy",},"propertyId":{"name":"questao","path":"objects/obj_questao/obj_questao.yy",},"value":"obj_algoritmo.questao5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_questao","path":"objects/obj_questao/obj_questao.yy",},"propertyId":{"name":"id_questao","path":"objects/obj_questao/obj_questao.yy",},"value":"questoes.questao5",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":352.0,"y":544.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4C9373C5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"1",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":136.0,"y":214.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7906F608","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"resposta","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":160.0,"y":214.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_AF5D258","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"3",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"resposta","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"True",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":232.0,"y":432.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_334689BE","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"4",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":144.0,"y":238.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1D393F40","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"3",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":192.0,"y":214.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_26AD214B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"5",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":192.0,"y":238.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_170E0D76","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"6",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"resposta","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"True",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":368.0,"y":432.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5AF29BC6","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_slot_questao","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"propertyId":{"name":"var_slot","path":"objects/obj_slot_questao/obj_slot_questao.yy",},"value":"6",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":136.0,"y":270.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"camera","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"plataformas","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_53BF741E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_plat","path":"objects/obj_plat/obj_plat.yy",},"properties":[],"rotation":0.0,"scaleX":94.0,"scaleY":2.0,"x":0.0,"y":544.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"bg","depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_78A72231","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_tela","path":"objects/obj_tela/obj_tela.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":123.0,"y":170.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"chao","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bg4","path":"sprites/spr_bg4/spr_bg4.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":370,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"grama","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bg3","path":"sprites/spr_bg3/spr_bg3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":180,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"nuvem","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":-0.25,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bg2","path":"sprites/spr_bg2/spr_bg2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":90,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"azul","animationFPS":15.0,"animationSpeedType":0,"colour":4294967295,"depth":1300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"spr_bg1","path":"sprites/spr_bg1/spr_bg1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 600,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 3000,
  },
  "sequenceId": null,
  "views": [
    {"hborder":320,"hport":600,"hspeed":-1,"hview":520,"inherit":false,"objectId":{"name":"obj_camera","path":"objects/obj_camera/obj_camera.yy",},"vborder":240,"visible":true,"vspeed":-1,"wport":800,"wview":620,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1024,"wview":1024,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}