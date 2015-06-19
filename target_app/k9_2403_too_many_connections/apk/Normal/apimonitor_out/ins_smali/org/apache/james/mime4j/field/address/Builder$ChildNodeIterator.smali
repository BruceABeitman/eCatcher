.class  Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
.super Ljava/lang/Object;
.source "Builder.java"
.implements Ljava/util/Iterator;
.field private index:I
.field private len:I
.field private simpleNode:Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->jjtGetNumChildren()I
move-result v0
iput v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I
const/4 v0, 0x0
iput v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I
iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;
move-result-object v0
return-object v0
.end method
.method public nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;
.registers 4
iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lorg/apache/james/mime4j/field/address/parser/SimpleNode;
iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I
add-int/lit8 v2, v1, 0x1
iput v2, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I
invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;
move-result-object v0
return-object v0
.end method
.method public remove()V
.registers 2
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method