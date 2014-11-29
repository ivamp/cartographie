function loadPage(urlPage, nomBalise) {
    $.ajax({
        type: "GET",
        url: urlPage,
        success: function(data) {

            //affiche le contenu du fichier dans le conteneur dédié

            $(nomBalise).html(data + " ");
	
        },error: function(msg){
				$("#captureArea").html($("#captureArea").html()+msg);
			}
    });

}

