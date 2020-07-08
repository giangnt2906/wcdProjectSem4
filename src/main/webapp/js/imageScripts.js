let strUrl = $('#strImageUrl').val();
let arrUrl = [];
if (strUrl != null && strUrl != '') {
    let str = strUrl.substring(1, strUrl.length);
    arrUrl = str.split(',');
}

$.each(arrUrl, function (i, val) {
    $('.images').prepend($('<img>', { id: 'theProductImg', src: val }))
})

//var i = arrUrl.length;

//document.getElementById("filesCount").innerHTML = i + ' files';
let myWidget = cloudinary.createUploadWidget({
        cloudName: 'debutwyfp',
        uploadPreset: 'ml_default'
    }, (error, result) => {
        if (!error && result && result.event === "success") {
            //console.log('Done! Here is the image info: ', result.info.secure_url);
            strUrl = strUrl + ',' + result.info.secure_url;
            $('#strImageUrl').val(strUrl);
            //$('.images').append("<img id='theImg' src='" + result.info.secure_url + "'/>")
            $('.images').prepend($('<img>', { id: 'theProductImg', src: result.info.secure_url }))
            //image(result.info.secure_url);
            //i++;
            //$('#filesCount').val(i)
            //document.getElementById("filesCount").innerHTML = i + ' files';
        }
    }
)

function image(url) {
    let image = document.createElement("IMG");
    image.alt = "Alt information for image";
    image.setAttribute('class', 'photo');
    image.src = url;
    $('.images').html(image);
}

document.getElementById("upload_widget").addEventListener("click", function () {
    myWidget.open();
}, false);