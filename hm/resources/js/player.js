var playerPos = 0

function rollRandom() {
    var gridSize = document.getElementById("gridMain").childElementCount
    var selectedGrid = Math.random() * (gridSize - 0) + 0

    return Math.floor(selectedGrid)
}

function resetPlayer() {
    var selectedGrid = 0

    selectedGrid = rollRandom()

    if (getBlockByName(document.getElementById(`obj${selectedGrid}`).innerHTML)["solid"] == false) {
        resetPlayer()
        return
    }

    movePlayer(selectedGrid)
}

function movePlayer(newPos) {
    var grids = document.getElementById("gridMain").children
    var obj = document.getElementById(`obj${newPos}`)


    if (obj == null || obj == undefined) {
        return
    }
    if (getBlockByName(obj.innerHTML)["solid"] == false) {
        return
    }

    for (let grid of grids) {
        if (grid.id == `obj${newPos}`) {
            grid.style.borderColor = "#00FFFF"
            grid.style.borderRadius = 4
            grid.style.borderWidth = "thin medium"
        }
        else {
            grid.style.borderColor = "#000000"
            grid.style.borderWidth = "thin"
        }
    }

    playerPos = newPos
}

function getPlayerPosition() {
    return playerPos
}

document.onkeypress = function(evt) {
    evt = evt || window.event;
    var key = evt.key.toLowerCase()
    var p = playerPos

    if (key == "w") {
        movePlayer(p - 16)
    }
    if (key == "a") {
        if (isMultiple(playerPos)) {
            return
        }

        movePlayer(p - 1)
    }
    if (key == "s") {
        movePlayer(p + 16)
    }
    if (key == "d") {
        if (isMultiple(playerPos + 1)) {
            return
        }

        movePlayer(p + 1)
    }
    if (key == "enter") {
        breakBlock()
    }
}