.class public abstract Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.super Ljava/lang/Object;
.source "EffectAppend.java"
.implements Ljava/lang/Cloneable;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected clone()Ljava/lang/Object;
.registers 2
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public abstract getEffectAppendParam(ZILcom/pinguo/camera360/effect/model/entity/Effect;)Ljava/lang/String;
.end method
.method public abstract makeCopy()Lcom/pinguo/camera360/photoedit/effect/EffectAppend;
.end method
.method public abstract toJson()Ljava/lang/String;
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/effect/EffectAppend;->toJson()Ljava/lang/String;
move-result-object v0
return-object v0
.end method