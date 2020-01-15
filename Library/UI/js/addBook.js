var book = {
    Nombre: "Magallanes"
}

function AddDinamicElement() {
    var div = $("<div>", { class: "media media-hover" }).appendTo("#content");

    var divMedia = $("<div>", { class: "media-left media-middle" }).appendTo(div);

    var a = $('<a>', {
        href: "#!",
        class: "tooltips-general",
        data: "tooltip",
        title: ""
    }).appendTo(divMedia);

    var img = $('<img>', {
        class: "media-object mCS_img_loaded",
        src: "../assets/img/book.png",
        alt: "Libro",
        width: 48,
        heigth: 48
    }).appendTo(a);

    var divMediaBody = $('<div>', { class: "media-body" }).appendTo(div);

    var h4 = $("<h4>", {
        class: "media-heading",
        text: 1 + "-" + book.Nombre
    }).appendTo(divMediaBody);

    var divpull = $("<div>", { class: "pull-left" }).appendTo(divMediaBody);

    var strong = $("<strong>", { text: "Autor" }).appendTo(divpull);

    strong.append("<br>");

    var strong2 = $("<strong>", { text: "Año" }).appendTo(strong);

    strong2.append("<br>");

    var p = $("<p>", { class: "text-center pull-right" }).appendTo(divMediaBody);

    var a2 = $("<a>", {
        class: "btn btn-info btn-xs",
        id: "aaa",
        href: "#!",
        text: "Mas información"
    }).appendTo(p);

    var li = $("<i>", { class: "zmdi zmdi-info-outline", id: "iii" }).appendTo(a2);
};

AddDinamicElement();


function dtUsers() {
    var table = $('#tabla-user').DataTable({
        destroy: true,
        resposive: true,
        ajax: {
            method: "POST",
            url: "Index.aspx/getUsers",
            contentType: "application/json; charset-utf-8",
            dataType:"json"
        },
        columns:[
            { "data" : "id"      },
            { "data" : "user"    },
            { "data" : "password"}
        ]
    });
}

function test() {
    $.ajax({
        
    });
}