.class  Lcom/blackberry/ids/BBIDStorage;
.super Ljava/lang/Object;
.source "BBIDStorage.java"
.field private static final c:[Ljava/lang/String;
.field final a:Landroid/content/SharedPreferences;
.field  b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "urn:bbid:username"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "urn:bbid:email"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "urn:bbid:screenname"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "urn:bbid:firstname"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "urn:bbid:lastname"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "urn:bbid:uid"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "urn:bbid:swguid"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "urn:bbid:dob"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "urn:bbid:cc"
aput-object v2, v0, v1
sput-object v0, Lcom/blackberry/ids/BBIDStorage;->c:[Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v3, p0, Lcom/blackberry/ids/BBIDStorage;->b:Ljava/lang/String;
const-string v0, "com.blackberry.ids.PREFERENCES"
invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "client_id"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
const-string v0, "BBIDStorage() found client id in storage, removing it now!"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "client_id"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_2f
return-void
.end method
.method private static native getKeyString()Ljava/lang/String;
.end method
.method final a()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "app_guid"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final a(Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, v0, v0}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "nonce"
invoke-virtual {p0, p1}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "server_entropy"
invoke-virtual {p0, p2}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "req_token"
invoke-virtual {p0, p3}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v3, 0x1
const/4 v4, 0x0
const-string v0, "_SECRET"
invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "_LOCAL_EXPIRY"
invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz p2, :cond_3f
if-eqz p3, :cond_3f
if-eqz p4, :cond_3f
const-string v2, "BBIDStorage - setRpTokenInfo - Storing RPtoken info for %s"
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-virtual {p0, p2}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-virtual {p0, p3}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p0, p4}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:goto_3e
return-void
:cond_3f
const-string v2, "BBIDStorage - setRpTokenInfo - Clearing all RPtoken info for %s"
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v4
invoke-static {v2, v3}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v2
invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_3e
.end method
.method final a(Ljava/util/Set;)V
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token__black_list"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token__black_list"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final a([Lcom/blackberry/ids/Property;J)V
.registers 12
const/4 v7, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-wide/16 v3, 0x0
cmp-long v0, p2, v3
if-gez v0, :cond_1e
const-string v0, "BBIDStorage - setUserProperties - not a valid expiry (%d), using default value"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v0, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V
const-wide/32 p2, 0x4e458
:cond_1e
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v3
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
add-long/2addr v3, p2
const-string v0, "ids_property_expiry"
invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move v0, v1
:goto_2c
array-length v3, p1
if-ge v0, v3, :cond_49
aget-object v3, p1, v0
iget-object v3, v3, Lcom/blackberry/ids/Property;->name:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v3
aget-object v4, p1, v0
iget-object v4, v4, Lcom/blackberry/ids/Property;->value:Ljava/lang/String;
invoke-virtual {p0, v4}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_49
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "BBIDStorage - Stored user properties [%d] !"
new-array v2, v7, [Ljava/lang/Object;
array-length v3, p1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method final a([Ljava/lang/String;)[Lcom/blackberry/ids/Property;
.registers 9
const/4 v2, 0x0
const/4 v1, 0x0
array-length v0, p1
new-array v3, v0, [Lcom/blackberry/ids/Property;
move v0, v1
:goto_6
array-length v4, p1
if-ge v0, v4, :cond_40
iget-object v4, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
aget-object v5, p1, v0
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v5
invoke-static {v5}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v5
invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_34
const-string v3, "BBIDStorage - One of the requested user properties not found in storage"
new-array v4, v1, [Ljava/lang/Object;
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v3, "BBIDStorage - Missing %s property in Storage"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
aget-object v0, p1, v0
aput-object v0, v4, v1
invoke-static {v3, v4}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v2
:goto_33
return-object v0
:cond_34
new-instance v5, Lcom/blackberry/ids/Property;
aget-object v6, p1, v0
invoke-direct {v5, v6, v4}, Lcom/blackberry/ids/Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v5, v3, v0
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_40
move-object v0, v3
goto :goto_33
.end method
.method final b()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "nonce"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final b(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_2c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "setting bbmdn display name"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "bbmdn"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_2c
return-void
.end method
.method final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "nonce"
invoke-virtual {p0, p1}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "server_entropy"
invoke-virtual {p0, p2}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "req_token"
invoke-virtual {p0, p3}, Lcom/blackberry/ids/BBIDStorage;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "challenge_code"
invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final b(Ljava/util/Set;)V
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token_backoff_list"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token_backoff_list"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final c()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "server_entropy"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final c(Ljava/lang/String;)Ljava/lang/String;
.registers 5
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v0, Lcom/blackberry/ids/BBIDStorage$Encrypter;
invoke-static {}, Lcom/blackberry/ids/BBIDStorage;->getKeyString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/blackberry/ids/BBIDStorage$Encrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/blackberry/ids/BBIDStorage$Encrypter;->a(Ljava/lang/String;)Ljava/lang/String;
:try_end_14
.catch Lcom/blackberry/ids/CryptoException; {:try_start_4 .. :try_end_14} :catch_16
move-result-object v0
goto :goto_3
:catch_16
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Unexpected CryptoException in encrypt"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public clearReqBackOffConfig(J)V
.registers 5
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_req_backoff_config"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public clearRequestBackOff()V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_request_backoff"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final d()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "req_token"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/blackberry/ids/BBIDStorage;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final d(Ljava/lang/String;)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return-object v0
:try_start_4
:cond_4
new-instance v1, Lcom/blackberry/ids/BBIDStorage$Encrypter;
invoke-static {}, Lcom/blackberry/ids/BBIDStorage;->getKeyString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/blackberry/ids/BBIDStorage;->a()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/blackberry/ids/BBIDStorage$Encrypter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1, p1}, Lcom/blackberry/ids/BBIDStorage$Encrypter;->b(Ljava/lang/String;)Ljava/lang/String;
:try_end_14
.catch Lcom/blackberry/ids/CryptoException; {:try_start_4 .. :try_end_14} :catch_16
move-result-object v0
goto :goto_3
:catch_16
move-exception v1
const-string v2, "Unexpected CryptoException in decrypt, returning null"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/Ln;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_3
.end method
.method final e()Ljava/lang/String;
.registers 4
const-string v0, "getChallengeCode -- reading chalenge code from storage!"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "challenge_code"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method final f()Z
.registers 11
const-wide/16 v8, 0x0
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v3, "ids_property_expiry"
invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
sub-long/2addr v2, v4
cmp-long v4, v2, v8
if-lez v4, :cond_26
const-string v4, "BBIDStorage isPropertyValid - VALID for %d sec"
new-array v5, v0, [Ljava/lang/Object;
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v5, v1
invoke-static {v4, v5}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_25
return v0
:cond_26
move v0, v1
goto :goto_25
.end method
.method final g()V
.registers 5
const/4 v1, 0x0
const-string v0, "BBIDStorage - Clearing user properties !"
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
const-string v0, "ids_property_expiry"
invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move v0, v1
:goto_14
sget-object v3, Lcom/blackberry/ids/BBIDStorage;->c:[Ljava/lang/String;
array-length v3, v3
if-ge v0, v3, :cond_2b
sget-object v3, Lcom/blackberry/ids/BBIDStorage;->c:[Ljava/lang/String;
aget-object v3, v3, v0
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-static {v3}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_2b
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "BBIDStorage - user properties CLEARED!"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public final getReqBackOffConfig()J
.registers 5
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v1, "ids_req_backoff_config"
const-wide/16 v2, -0x1
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getRequestBackOff()Ljava/lang/String;
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v2, "ids_request_backoff"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v1
const-string v2, "Class Cast Exception while retrieving request backoff, cleaning the backoff"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "ids_request_backoff"
invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_a
.end method
.method final h()Ljava/util/Set;
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v2, "ids_token__black_list"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v1
const-string v2, "Class Cast Exception while retrieving blacklist, hence cleaning list"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "ids_token__black_list"
invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_a
.end method
.method final i()V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token__black_list"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method final j()Ljava/util/Set;
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
const-string v2, "ids_token_backoff_list"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_b
move-result-object v0
:goto_a
return-object v0
:catch_b
move-exception v1
const-string v2, "Class Cast Exception while retrieving backoff list, hence cleaning the list"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v1, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "ids_token_backoff_list"
invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_a
.end method
.method final k()V
.registers 3
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_token_backoff_list"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public setReqBackOffConfig(J)V
.registers 5
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_req_backoff_config"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public setRequestBackOff(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_request_backoff"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget-object v0, p0, Lcom/blackberry/ids/BBIDStorage;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ids_request_backoff"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method