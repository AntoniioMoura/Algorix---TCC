{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_npc_dialogo_unico",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "level",
    "path": "folders/Objects/level.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 0,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"sprite","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":[
        "spr_npc_frog",
        "spr_npc_canibal",
        "spr_npc_pink_idle",
        "spr_npc_oculto",
      ],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"spr_npc_frog","varType":6,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"distancia_colisao","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"altura_colisao","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"entrada","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":30.0,"rangeMin":0.0,"value":"0","varType":1,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_npc_canibal",
    "path": "sprites/spr_npc_canibal/spr_npc_canibal.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}