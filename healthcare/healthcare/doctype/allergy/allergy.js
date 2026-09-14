// Copyright (c) 2026, Tiba and contributors
// For license information, please see license.txt

frappe.ui.form.on("Allergy", {
	substance_type: function (frm) {
		frm.set_value("substance", "");
	},
});
