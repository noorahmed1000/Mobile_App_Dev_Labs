from rest_framework import serializers
from django.contrib.auth.models import User  # Or your custom User model if you're using one

class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True, required=True)

    class Meta:
        model = User
        fields = ['id', 'username', 'password', 'is_active']

    def create(self, validated_data):
        # Create a new user and hash the password
        user = User.objects.create(
            username=validated_data['username'],
            is_active=True  # Default active status
        )
        user.set_password(validated_data['password'])
        user.save()
        return user
