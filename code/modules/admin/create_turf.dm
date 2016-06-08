/var/create_turf_html = null
/datum/admins/proc/create_turf(mob/user)
	if (!create_turf_html)
		var/turfjs = null
		turfjs = list2text(typesof(/turf), ";")
		create_turf_html = file2text('html/create_object.html')
		create_turf_html = regEx_replacetext(create_turf_html, "null /* object types */", "\"[turfjs]\"")

	user << browse(regEx_replacetext(create_turf_html, "/* ref src */", "\ref[src]"), "window=create_turf;size=425x475")
