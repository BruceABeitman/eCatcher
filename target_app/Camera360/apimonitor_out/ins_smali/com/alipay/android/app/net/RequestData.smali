.class public Lcom/alipay/android/app/net/RequestData;
.super Ljava/lang/Object;
.source "RequestData.java"
.field private mAlixTid:Ljava/lang/String;
.field private mClientId:Ljava/lang/String;
.field private mClientKey:Ljava/lang/String;
.field private mInstalledClient:Ljava/lang/String;
.field private mNetwork:Ljava/lang/String;
.field private mOrderInfo:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mClientKey:Ljava/lang/String;
iput-object p2, p0, Lcom/alipay/android/app/net/RequestData;->mClientId:Ljava/lang/String;
iput-object p3, p0, Lcom/alipay/android/app/net/RequestData;->mAlixTid:Ljava/lang/String;
iput-object p4, p0, Lcom/alipay/android/app/net/RequestData;->mInstalledClient:Ljava/lang/String;
iput-object p5, p0, Lcom/alipay/android/app/net/RequestData;->mNetwork:Ljava/lang/String;
iput-object p6, p0, Lcom/alipay/android/app/net/RequestData;->mOrderInfo:Ljava/lang/String;
return-void
.end method
.method public getAlixTid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mAlixTid:Ljava/lang/String;
return-object v0
.end method
.method public getClientId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mClientId:Ljava/lang/String;
return-object v0
.end method
.method public getClientKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mClientKey:Ljava/lang/String;
return-object v0
.end method
.method public getInstalledClient()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mInstalledClient:Ljava/lang/String;
return-object v0
.end method
.method public getNetwork()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mNetwork:Ljava/lang/String;
return-object v0
.end method
.method public getOrderInfo()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/RequestData;->mOrderInfo:Ljava/lang/String;
return-object v0
.end method
.method public setAlixTid(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mAlixTid:Ljava/lang/String;
return-void
.end method
.method public setClientId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mClientId:Ljava/lang/String;
return-void
.end method
.method public setClientKey(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mClientKey:Ljava/lang/String;
return-void
.end method
.method public setInstalledClient(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mInstalledClient:Ljava/lang/String;
return-void
.end method
.method public setNetwork(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mNetwork:Ljava/lang/String;
return-void
.end method
.method public setOrderInfo(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/RequestData;->mOrderInfo:Ljava/lang/String;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 7
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v4, "deviceVersion"
const-string/jumbo v5, "Simulator"
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "clientKey"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mClientKey:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "clientId"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mClientId:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "alixtid"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mAlixTid:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "installedClient"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mInstalledClient:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "network"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mNetwork:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "orderInfo"
iget-object v5, p0, Lcom/alipay/android/app/net/RequestData;->mOrderInfo:Ljava/lang/String;
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "platform"
const-string/jumbo v5, "ANDROID"
invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v4, "namespace"
const-string/jumbo v5, "com.alipay.mcashier"
invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "api_version"
const-string/jumbo v5, "1.0.0"
invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "api_name"
const-string/jumbo v5, "sdk_pay"
invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v4, "params"
invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string/jumbo v4, "data"
invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7d
move-result-object v4
:goto_7c
return-object v4
:catch_7d
move-exception v0
const-string/jumbo v4, ""
goto :goto_7c
.end method