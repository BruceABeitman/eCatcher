.class public abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.end method
.method public abstract forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.end method
.method public abstract generateId(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public abstract getScope()Ljava/lang/Class;
.end method
.method public abstract key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.end method
.method public abstract newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.end method