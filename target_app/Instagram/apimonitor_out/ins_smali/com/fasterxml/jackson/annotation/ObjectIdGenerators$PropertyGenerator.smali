.class public abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;
.source "ObjectIdGenerators.java"
.field private static final serialVersionUID:J = 0x1L
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method public bridge synthetic canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.registers 3
invoke-super {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$Base;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
move-result v0
return v0
.end method