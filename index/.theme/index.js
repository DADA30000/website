document.addEventListener('DOMContentLoaded', e => {
        // select the h1 by a class, id, or even tag name
        // in this example, i'm just selecting it by tag name
        const h1 = document.querySelector("h1");

        const path = h1.innerText.split(" ");

	h1.innerText = "Файлы " + path[2];
        
	const ab = document.evaluate("//a[contains(., '../')]", document, null, XPathResult.ANY_TYPE, null );
	const ac = ab.iterateNext();
	ac.textContent = "Назад";
	console.log(ac.textContent);
    })
