# For license information, please see license.txt


# import frappe
from frappe.model.document import Document


class TherapyPlanDetail(Document):
	def get_quantity(self):
		return self.no_of_sessions or 0
