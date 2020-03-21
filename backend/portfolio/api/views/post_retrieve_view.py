import json
import requests
from django.db import connection
from rest_framework.response import Response

from portfolio.models import Post
from rest_framework.generics import RetrieveAPIView
from portfolio.api.serializers import PostSerializerRetrieve


class PostRetrieveView(RetrieveAPIView):
    queryset = Post.objects.all()
    serializer_class = PostSerializerRetrieve


    def post(self, request, pk):
        client_ip = requests.get('https://jsonip.com')
        client_ip = json.loads(client_ip.text)['ip']

        cursor = connection.cursor()
        cursor.execute(f"SELECT * FROM website.postlikes where post_liked='{pk}' and client_ip='{client_ip}'")
        row = cursor.fetchone()

        if not row:
            post = Post.objects.get(id=pk)
            likes = request.data['likes']
            post.likes = likes
            post.save()

            cursor.execute(f"INSERT INTO website.postlikes (post_liked, client_ip) values('{pk}', '{client_ip}')")

            data = {'succes': 1}

            return Response(data)
        else:
            data = {'failed': 1, 'message': 'You already liked this article'}
            return Response(data, status=210)