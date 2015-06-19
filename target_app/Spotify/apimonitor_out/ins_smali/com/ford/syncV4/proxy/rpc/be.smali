.class public final Lcom/ford/syncV4/proxy/rpc/be;
.super Lcom/ford/syncV4/proxy/g;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ford/syncV4/proxy/g;-><init>()V
return-void
.end method
.method public final a()Lcom/ford/syncV4/proxy/rpc/v;
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "image"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/ford/syncV4/proxy/rpc/v;
if-eqz v1, :cond_f
check-cast v0, Lcom/ford/syncV4/proxy/rpc/v;
:goto_e
return-object v0
:cond_f
instance-of v1, v0, Ljava/util/Hashtable;
if-eqz v1, :cond_3d
:try_start_13
new-instance v1, Lcom/ford/syncV4/proxy/rpc/v;
check-cast v0, Ljava/util/Hashtable;
invoke-direct {v1, v0}, Lcom/ford/syncV4/proxy/rpc/v;-><init>(Ljava/util/Hashtable;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1c
move-object v0, v1
goto :goto_e
:catch_1c
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to parse "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".image"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_3d
const/4 v0, 0x0
goto :goto_e
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/enums/SoftButtonType;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "type"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "type"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Lcom/ford/syncV4/proxy/rpc/v;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "image"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "image"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/Boolean;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "isHighlighted"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "isHighlighted"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/Integer;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "softButtonID"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "softButtonID"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "text"
invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/ford/syncV4/proxy/rpc/be;->d:Ljava/util/Hashtable;
const-string v1, "text"
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method