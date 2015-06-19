.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingField$Parser;
.super Ljava/lang/Object;
.source "ContentTransferEncodingField.java"
.implements Lorg/apache/james/mime4j/field/FieldParser;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
.registers 6
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method