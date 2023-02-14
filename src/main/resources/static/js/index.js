function initPanel(){
    let subtitles = document.querySelectorAll(":scope .content .content-subtitle")
    console.log(subtitles)

    for (const sub in subtitles) {
        console.log(sub.childNodes[1].textContent)
    }

}

function main(){
    initPanel()
}


window.onload = main