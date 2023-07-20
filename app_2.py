from flask import Flask
from flask_restful import Api, Resource, reqparse
import json

app = Flask(__name__)
api = Api()

somedata ={
        1: {"name": "Python", "otherdata": 14223},
        2: {"name": "Java", "otherdata": 16453}
        }


parser = reqparse.RequestParser()
parser.add_argument("name", type=str, location='form')
parser.add_argument("othetdata", type=int, location='form')


class Main(Resource):
    def get(self, somedata_id):
        if somedata_id == 0:
            return somedata
        else:
            return somedata[somedata_id]


    def delete(self, somedata_id):
        del somedata[somedata_id]
        return somedata


    def post(self, somedata_id):
        somedata[somedata_id] = parser.parse_args()
        return somedata


    def put(self, somedata_id):
        somedata[somedata_id] = parser.parse_args()
        return somedata


api.add_resource(Main, "/api/somedata/<int:somedata_id>")
api.init_app(app)
if __name__ == "__main__":
    from waitress import serve
    serve(app, port=8080)

