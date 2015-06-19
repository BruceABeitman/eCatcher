.class public final Lcom/google/android/gms/internal/cz;
.super Ljava/lang/Object;
.method public static a(Landroid/os/Bundle;)I
.registers 4
const-string v0, "RESPONSE_CODE"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_f
const-string v0, "Bundle with null response code, assuming OK (known issue)"
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_e
return v0
:cond_f
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_1a
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_e
:cond_1a
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_26
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
goto :goto_e
:cond_26
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected type for intent response code. "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x5
goto :goto_e
.end method
.method public static c(Landroid/content/Intent;)I
.registers 4
invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "RESPONSE_CODE"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_13
const-string v0, "Intent with no response code, assuming OK (known issue)"
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_12
return v0
:cond_13
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_1e
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_12
:cond_1e
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_2a
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
long-to-int v0, v0
goto :goto_12
:cond_2a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unexpected type for intent response code. "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x5
goto :goto_12
.end method
.method public static d(Landroid/content/Intent;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "INAPP_PURCHASE_DATA"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static e(Landroid/content/Intent;)Ljava/lang/String;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "INAPP_DATA_SIGNATURE"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public static p(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "developerPayload"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_e
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_e} :catch_10
move-result-object v0
goto :goto_3
:catch_10
move-exception v1
const-string v1, "Fail to parse purchase data"
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_3
.end method
.method public static q(Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "purchaseToken"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_e
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_e} :catch_10
move-result-object v0
goto :goto_3
:catch_10
move-exception v1
const-string v1, "Fail to parse purchase data"
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
goto :goto_3
.end method