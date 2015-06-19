.class public Lcom/alipay/android/app/net/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"
.field private mParams:Lorg/json/JSONObject;
.field private mSign:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "data"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string/jumbo v3, "sign"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/alipay/android/app/net/ResponseData;->mSign:Ljava/lang/String;
const-string/jumbo v3, "params"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
iput-object v3, p0, Lcom/alipay/android/app/net/ResponseData;->mParams:Lorg/json/JSONObject;
:goto_21
:try_end_21
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_21} :catch_22
return-void
:catch_22
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_21
.end method
.method public getParams()Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/ResponseData;->mParams:Lorg/json/JSONObject;
return-object v0
.end method
.method public getSign()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/ResponseData;->mSign:Ljava/lang/String;
return-object v0
.end method