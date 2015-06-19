.class public abstract Lorg/apache/james/mime4j/message/AbstractBody;
.super Ljava/lang/Object;
.source "AbstractBody.java"
.implements Lorg/apache/james/mime4j/message/Body;
.field private parent:Lorg/apache/james/mime4j/message/Entity;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractBody;->parent:Lorg/apache/james/mime4j/message/Entity;
return-void
.end method
.method public getParent()Lorg/apache/james/mime4j/message/Entity;
.registers 2
iget-object v0, p0, Lorg/apache/james/mime4j/message/AbstractBody;->parent:Lorg/apache/james/mime4j/message/Entity;
return-object v0
.end method
.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
.registers 2
iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractBody;->parent:Lorg/apache/james/mime4j/message/Entity;
return-void
.end method