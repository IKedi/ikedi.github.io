var selectedFileExists = false
var gridElements = []

function fileExists() {
    var file = document.getElementById("openFileDialog").files

    //#region Check file there are any file selected

    if (file.length != 1) {
        document.getElementById("button1").disabled = true
        selectedFileExists = false
        alert("Please select a file first.")
        return
    }
    else {
        document.getElementById("button1").disabled = false
        selectedFileExists = true
    }

    //#endregion

    //#region Check file extension
    var name = file[0].name
    var ext = name.substring(name.lastIndexOf('.') + 1)

    if (ext != "json") {
        document.getElementById("button1").disabled = true
        selectedFileExists = false
        alert("This file format isn't supported.")
    }
    else {
        document.getElementById("button1").disabled = false
        selectedFileExists = true
    }
    //#endregion

    if (document.getElementById("button1").disabled == true) {
        document.getElementById("openFileDialog").value = ""
    }
}

function isMultiple(x) {
    if (x % 16 == 0) 
    {
        return true;
    } 
    else {
        return false;
    }
}

//#region Save/Load

function readFile() {
    fileExists()
    if (!selectedFileExists) { return }

    const fr = new FileReader()

    fr.addEventListener('load', (e) => {
        var data = JSON.parse(e.target.result)

        if (data["za_warudo"]["blocks"] != null) {
            drawGrid(data["za_warudo"]["blocks"])
        }

        if (data["player"]["position"] != null) {
            movePlayer(data["player"]["position"])
        }
    });

    fr.readAsText(document.getElementById("openFileDialog").files[0])
}

function saveFile() {
    var saveData = {
        za_warudo:{
            blocks:[]
        },
        player:{
            position:getPlayerPosition()
        }
    }

    gridElements.forEach(element => {
        saveData.za_warudo.blocks.push(getBlockIdByName(element.innerHTML))
    })

    var pom = document.createElement('a');
    pom.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(JSON.stringify(saveData)));
    pom.setAttribute('download', "save file thing.json");

    if (document.createEvent) {
        var event = document.createEvent('MouseEvents');
        event.initEvent('click', true, true);
        pom.dispatchEvent(event);
    }
    else {
        pom.click();
    }
}

//#region New world data
function newData() {
    var cArray = getChanceArray()

    var worldData = []

    for (i = 0; i < 16*16; i++) {
        const expanded = cArray.flatMap(cArray => Array(cArray["chance"]).fill(cArray)) //Definitely not skidded 
        const selected = expanded[Math.floor(Math.random() * expanded.length)]

        worldData.push(selected.id)
    }

    return worldData
}
//#endregion

function createWorld() {
    drawGrid(newData())
    resetPlayer()
}
//#endregion

function clearGrid() {
    gridElements.forEach(element => {
        element.remove()
    });

    gridElements = []
}

function drawGrid(data = null) {
    clearGrid()

    if (data == null) {
        data = newData()
    }

    var count = 0

    data.forEach(element => {
        var selected = getBlockById(element)
        var name = selected["name"]
        var backColor = selected["color"]

        var gridItem = document.createElement("div")
        gridItem.className = "grid-item"
        gridItem.innerHTML = name
        gridItem.id = `obj${count}`
        document.getElementById("gridMain").appendChild(gridItem)

        if (backColor != undefined) {
            gridItem.style.backgroundColor = `#${backColor}`
        }

        gridElements.push(gridItem)
        count += 1
    })
}

function breakBlock() {
    /*var pos = getPlayerPosition()
    var block = document.getElementById(`obj${pos}`)

    var type = getBlockByName(block.innerHTML)
    type = getBlockById(type["replacewith"])

    var name = type["name"]
    var backColor = type["color"]

    block.innerHTML = name

    if (backColor != undefined) {
        block.style.backgroundColor = `#${backColor}`
    }

    gridElements[pos] = getBlockIdByName(name)*/
}

createWorld()