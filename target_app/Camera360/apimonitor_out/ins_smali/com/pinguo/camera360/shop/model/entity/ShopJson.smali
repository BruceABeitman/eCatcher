.class public Lcom/pinguo/camera360/shop/model/entity/ShopJson;
.super Ljava/lang/Object;
.source "ShopJson.java"
.field public data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
.field public message:Ljava/lang/String;
.field public status:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isValid(Lcom/pinguo/camera360/shop/model/entity/ShopJson;)Z
.registers 3
if-eqz p0, :cond_1e
iget v0, p0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->status:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method