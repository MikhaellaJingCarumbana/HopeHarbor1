from django.db import models
from SupportTicket.models import SupportTicket
from AdminStaff.models import AdminStaff

class Feedback(models.Model):
    FeedbackID = models.BigAutoField(primary_key=True)
    SupportTicket = models.OneToOneField(SupportTicket, on_delete=models.CASCADE, null=False, related_name='feedback_ticket')
    AdminName = models.OneToOneField(AdminStaff, on_delete=models.CASCADE, null=False, related_name='feedback_admin')
    Contents = models.CharField(max_length=500)

    def __str__(self):
        return f"Feedback {self.FeedbackID} - Ticket: {self.SupportTicket}, Admin: {self.AdminName}"
