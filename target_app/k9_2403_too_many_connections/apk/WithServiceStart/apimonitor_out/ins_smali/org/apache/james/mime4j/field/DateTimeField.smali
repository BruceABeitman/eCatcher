.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/Field;
.source "DateTimeField.java"
.field private date:Ljava/util/Date;
.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lorg/apache/james/mime4j/field/datetime/parser/ParseException;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;
iput-object p5, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
return-void
.end method
.method public getDate()Ljava/util/Date;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;
return-object v0
.end method
.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
return-object v0
.end method