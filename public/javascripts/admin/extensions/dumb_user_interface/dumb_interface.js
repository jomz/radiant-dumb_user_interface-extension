document.observe("dom:loaded", function() {
	$$("div.part p select").select(function(el) { return /filter_id/.test(el.name) }).invoke("hide")
	$$("div.part p label").select(function(el) { return /filter_id/.test(el.readAttribute("for")) }).invoke("hide")
	
	$$("div.part .reference_links").invoke("hide")
	
	$$("select#page_class_name").first().up("p").hide()
	$$("select#page_layout_id").first().up("p").hide()
	
	$$("select#page_status_id option").select(function(el) { return ![1,100].include(el.value) }).invoke("remove")
	
	$$(".drawer_contents td.actions").invoke("hide")
})