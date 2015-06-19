.class public final Lcom/ford/syncV4/proxy/h;
.super Lcom/ford/syncV4/proxy/i;
.source "SourceFile"
.method public constructor <init>(Lcom/ford/syncV4/proxy/b/a;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
.registers 11
new-instance v5, Lcom/ford/syncV4/transport/d;
invoke-direct {v5}, Lcom/ford/syncV4/transport/d;-><init>()V
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/ford/syncV4/proxy/i;-><init>(Lcom/ford/syncV4/proxy/b/b;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Lcom/ford/syncV4/transport/e;)V
const-string v0, "Application constructed SyncProxyALM (using legacy constructor for BT transport) instance passing in: IProxyListener, appName, isMediaApp, appID"
const-string v1, "42baba60-eb57-11df-98cf-0800200c9a66"
invoke-static {v0, v1}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a()V
.registers 2
sget-object v0, Lcom/ford/syncV4/proxy/rpc/enums/SyncDisconnectedReason;->l:Lcom/ford/syncV4/proxy/rpc/enums/SyncDisconnectedReason;
invoke-super {p0}, Lcom/ford/syncV4/proxy/i;->e()V
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Lcom/ford/syncV4/exception/SyncException;
const-string v1, "This object has been disposed, it is no long capable of executing methods."
sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->j:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
throw v0
:cond_12
const-string v0, "2.2"
return-object v0
.end method
.method public final c()Lcom/ford/syncV4/proxy/rpc/bm;
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Lcom/ford/syncV4/exception/SyncException;
const-string v1, "This object has been disposed, it is no long capable of executing methods."
sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->j:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
throw v0
:cond_12
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->c:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Lcom/ford/syncV4/exception/SyncException;
const-string v1, "SYNC is unavailable. Unable to get the syncMsgVersion."
sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->m:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
throw v0
:cond_24
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->m:Lcom/ford/syncV4/proxy/rpc/bm;
return-object v0
.end method
.method public final d()Lcom/ford/syncV4/proxy/rpc/bu;
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->g:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_12
new-instance v0, Lcom/ford/syncV4/exception/SyncException;
const-string v1, "This object has been disposed, it is no long capable of executing methods."
sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->j:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
throw v0
:cond_12
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->c:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_24
new-instance v0, Lcom/ford/syncV4/exception/SyncException;
const-string v1, "SYNC is not connected. Unable to get the vehicleType."
sget-object v2, Lcom/ford/syncV4/exception/SyncExceptionCause;->m:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
throw v0
:cond_24
iget-object v0, p0, Lcom/ford/syncV4/proxy/h;->x:Lcom/ford/syncV4/proxy/rpc/bu;
return-object v0
.end method