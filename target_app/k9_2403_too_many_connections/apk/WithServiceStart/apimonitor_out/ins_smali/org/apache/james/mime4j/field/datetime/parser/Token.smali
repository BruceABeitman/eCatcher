.class public Lorg/apache/james/mime4j/field/datetime/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"
.field public beginColumn:I
.field public beginLine:I
.field public endColumn:I
.field public endLine:I
.field public image:Ljava/lang/String;
.field public kind:I
.field public next:Lorg/apache/james/mime4j/field/datetime/parser/Token;
.field public specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static final newToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
.registers 2
new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;
invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/Token;-><init>()V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;
return-object v0
.end method