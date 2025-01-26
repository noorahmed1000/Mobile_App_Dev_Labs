from django.shortcuts import render
from .serializers import UserSerializer
from rest_framework import generics
from django.contrib.auth.models import User

# Create your views here.


class UserCreate(generics.CreateAPIView):
  queryset = User.objects.all()
  serializer_class = UserSerializer


class UserList(generics.ListAPIView):
    queryset = User.objects.all()  # Fetch all users
    serializer_class = UserSerializer

class UserDelete(generics.DestroyAPIView):
  queryset = User.objects.all()
  serializer_class = UserSerializer

class UserUpdate(generics.UpdateAPIView):
  queryset = User.objects.all()
  serializer_class = UserSerializer

