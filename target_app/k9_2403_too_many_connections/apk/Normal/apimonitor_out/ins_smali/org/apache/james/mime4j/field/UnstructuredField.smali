.class public Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/Field;
.source "UnstructuredField.java"
.field private value:Ljava/lang/String;
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object p4, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;
return-void
.end method
.method public getValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;
return-object v0
.end method