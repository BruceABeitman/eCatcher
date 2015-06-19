.class public abstract Lcom/pinguo/camera360/shop/activity/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static isInValidEffect(Ljava/lang/String;)Z
.registers 8
const/4 v5, 0x0
const/4 v4, 0x0
:try_start_2
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_2f
move-result-object v4
invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v2
const-string/jumbo v6, "effect"
invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_1c
const-string/jumbo v6, "effectopen"
invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_2e
:cond_1c
const-string/jumbo v6, "effectId"
invoke-virtual {v4, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v6
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v3
if-nez v3, :cond_2e
const/4 v5, 0x1
:goto_2e
:cond_2e
return v5
:catch_2f
move-exception v0
goto :goto_2e
.end method
.method public static isValid(Ljava/lang/String;)Z
.registers 9
const/4 v6, 0x0
const/4 v5, 0x0
:try_start_2
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
:try_end_5
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_2e
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v3
const-string/jumbo v7, "effect"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_1c
const-string/jumbo v7, "effectopen"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_30
:cond_1c
const-string/jumbo v7, "effectId"
invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v7
invoke-virtual {v7, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v4
if-nez v4, :cond_53
:goto_2d
:cond_2d
return v6
:catch_2e
move-exception v1
goto :goto_2d
:cond_30
const-string/jumbo v7, "camera"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_42
const-string/jumbo v7, "cameraopen"
invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_53
:cond_42
const-string/jumbo v7, "cameraId"
invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
move-result-object v7
invoke-virtual {v7, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v4
if-eqz v4, :cond_2d
:cond_53
const/4 v6, 0x1
goto :goto_2d
.end method
.method public abstract onClick(Ljava/lang/String;I)V
.end method