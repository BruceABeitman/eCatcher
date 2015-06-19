.class public Lorg/apache/james/mime4j/field/UnstructuredField$Parser;
.super Ljava/lang/Object;
.source "UnstructuredField.java"
.implements Lorg/apache/james/mime4j/field/FieldParser;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
.registers 6
invoke-static {p2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/apache/james/mime4j/field/UnstructuredField;
invoke-direct {v1, p1, p2, p3, v0}, Lorg/apache/james/mime4j/field/UnstructuredField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method