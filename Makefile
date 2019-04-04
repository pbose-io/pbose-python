PACKAGE = pbose
PROTOBUF_INCLUDE = vendor/$(PACKAGE)-protobuf

.PHONY: test protobuf clean

test:
	tox

protobuf:
	protoc --python_out=. -I$(PROTOBUF_INCLUDE) vendor/$(PACKAGE)-protobuf/$(PACKAGE)/protobuf/*.proto

clean:
	rm $(PACKAGE)/protobuf/*_pb2.py
