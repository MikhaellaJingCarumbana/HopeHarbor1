from django.db import models
from User.models import User

class AdminStaff(User):
    Username = models.CharField(max_length=50, default='admin')

    UserType = models.CharField(
        max_length=12,
        choices=User.USER_TYPES,  # Use choices from User model
        default='Admin',  # Set the default to 'donor'
    )

    def __str__(self):
        return self.Username

# Create your models here.
