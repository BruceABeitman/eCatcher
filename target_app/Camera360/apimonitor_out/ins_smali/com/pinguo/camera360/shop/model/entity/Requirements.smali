.class public Lcom/pinguo/camera360/shop/model/entity/Requirements;
.super Ljava/lang/Object;
.source "Requirements.java"
.implements Ljava/io/Serializable;
.field public engineMax:I
.field public engineMin:I
.field public preferPregen:Z
.field public sdkMax:I
.field public sdkMin:I
.method public constructor <init>()V
.registers 3
const v1, 0x7fffffff
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x1f5
iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I
iput v1, p0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMax:I
const/16 v0, 0xa
iput v0, p0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->engineMin:I
iput v1, p0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->engineMax:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->preferPregen:Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Lcom/google/gson/Gson;
invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V
invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
return-object v1
.end method