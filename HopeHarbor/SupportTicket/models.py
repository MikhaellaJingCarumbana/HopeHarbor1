from django.db import models
from AdminStaff.models import AdminStaff


class SupportTicket(AdminStaff):
    TicketID = models.BigAutoField(primary_key=True)
    Contents = models.CharField(max_length=500)

    CONFIRMATION_CHOICES = (
        ('confirmed', 'Confirmed'),
        ('pending', 'Pending'),
        ('rejected', 'Rejected'),
    )

    ConfirmationType = models.CharField(max_length=10, choices=CONFIRMATION_CHOICES, default='pending')

    def __str__(self):
        return f"Support Ticket {self.LastName} - {self.ConfirmationType}"
