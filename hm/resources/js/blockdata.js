var blockList = {
    0:{
        name:"Air",
        mineable:false,
        solid:false,
        replacewith:0,

        generation:{
            cangenerate:true,
            chance:20
        }
    },
    1:{
        name:"Stone",
        mineable:false,
        solid:true,
        replacewith:1,
        color:"333333",

        generation:{
            cangenerate:true,
            chance:5
        }
    },
    2:{
        name:"Grass",
        mineable:false,
        solid:true,
        replacewith:1,
        color:"268b07",

        generation:{
            cangenerate:true,
            chance:75
        }
    }
}

function getBlockById(id) {
    return blockList[id]
}

function getBlockByName(name) {
    var toReturn = null

    Object.keys(blockList).forEach(function(key) {
        if (blockList[key]["name"] == name) {
            toReturn =  blockList[key]
        }
    })

    return toReturn
}

function getBlockIdByName(name) {
    var toReturn = null

    Object.keys(blockList).forEach(function(key) {
        if (blockList[key]["name"] == name) {
            toReturn =  key
        }
    })

    return toReturn
}

function getChanceArray() {
    var chanceArray = []
    
    Object.keys(blockList).forEach(function(key) {
        var element = blockList[key]

        if (element["generation"]["cangenerate"]) {
            chanceArray.push({id: key, chance: element["generation"]["chance"]})
        }
    })

    return chanceArray
}