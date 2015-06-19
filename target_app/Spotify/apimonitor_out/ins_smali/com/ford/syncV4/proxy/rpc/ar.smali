.class public final Lcom/ford/syncV4/proxy/rpc/ar;
.super Lcom/ford/syncV4/proxy/d;
.source "SourceFile"
.method public constructor <init>()V
.registers 2
const-string v0, "RegisterAppInterface"
invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/d;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/bm;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "syncMsgVersion"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "syncMsgVersion"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/enums/Language;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "languageDesired"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "languageDesired"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/Boolean;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "isMediaApplication"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "isMediaApplication"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appName"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appName"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/util/Vector;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "ttsName"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "ttsName"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final b(Lcom/ford/syncV4/proxy/rpc/enums/Language;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "hmiDisplayLanguageDesired"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "hmiDisplayLanguageDesired"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "ngnMediaScreenAppName"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "ngnMediaScreenAppName"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final b(Ljava/util/Vector;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "vrSynonyms"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "vrSynonyms"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appID"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appID"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final c(Ljava/util/Vector;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appHMIType"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/ar;->b:Ljava/util/Hashtable;
const-string v1, "appHMIType"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method