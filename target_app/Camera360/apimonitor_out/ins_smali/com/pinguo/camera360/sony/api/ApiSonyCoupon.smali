.class public Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiSonyCoupon.java"
.field private mResourceId:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mResourceId:Ljava/lang/String;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mResourceId:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Ljava/lang/String;)Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->createResponseInstance(Ljava/lang/String;)Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
move-result-object v0
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
return-void
.end method
.method private createResponseInstance(Ljava/lang/String;)Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
.registers 12
new-instance v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;
invoke-direct {v7}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;-><init>()V
:try_start_5
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v6
:cond_e
:goto_e
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-nez v8, :cond_15
:goto_14
return-object v7
:cond_15
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
const-string/jumbo v8, "status"
invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_39
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
iput v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->status:I
:try_end_2a
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2a} :catch_2b
goto :goto_e
:catch_2b
move-exception v3
invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
const/4 v8, -0x1
iput v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->status:I
invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v8
iput-object v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->message:Ljava/lang/String;
goto :goto_14
:cond_39
:try_start_39
const-string/jumbo v8, "message"
invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_49
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
iput-object v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->message:Ljava/lang/String;
goto :goto_e
:cond_49
const-string/jumbo v8, "data"
invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_e
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v8, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;
invoke-direct {v8}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;-><init>()V
iput-object v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->data:Ljava/lang/Object;
invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:cond_61
:goto_61
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v8, p0, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->mResourceId:Ljava/lang/String;
invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_61
iget-object v8, v7, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse;->data:Ljava/lang/Object;
check-cast v8, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v9
iput v9, v8, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$SonyCouponResponse$Data;->showCoupon:I
:try_end_7f
.catch Lorg/json/JSONException; {:try_start_39 .. :try_end_7f} :catch_2b
goto :goto_61
.end method
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
.registers 6
const-string/jumbo v0, "http://store.camera360.com/v1/store/switcher"
new-instance v1, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;
const/4 v2, 0x1
const-string/jumbo v3, "http://store.camera360.com/v1/store/switcher"
invoke-direct {v1, p0, v2, v3, p1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon$1;-><init>(Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/sony/api/ApiSonyCoupon;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
return-void
.end method