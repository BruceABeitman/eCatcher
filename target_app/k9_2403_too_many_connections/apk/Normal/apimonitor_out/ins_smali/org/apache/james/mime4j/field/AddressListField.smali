.class public Lorg/apache/james/mime4j/field/AddressListField;
.super Lorg/apache/james/mime4j/field/Field;
.source "AddressListField.java"
.field private addressList:Lorg/apache/james/mime4j/field/address/AddressList;
.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/AddressList;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;
iput-object p5, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
return-void
.end method
.method public getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;
return-object v0
.end method
.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;
return-object v0
.end method