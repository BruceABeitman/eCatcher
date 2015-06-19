.class final Lcom/ford/syncV4/proxy/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/ford/syncV4/c/a;
.field final synthetic a:Lcom/ford/syncV4/proxy/i;
.method private constructor <init>(Lcom/ford/syncV4/proxy/i;)V
.registers 2
iput-object p1, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/ford/syncV4/proxy/i;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/ford/syncV4/proxy/j;-><init>(Lcom/ford/syncV4/proxy/i;)V
return-void
.end method
.method public final a(Lcom/ford/syncV4/protocol/e;)V
.registers 3
:try_start_0
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->c()[B
move-result-object v0
array-length v0, v0
if-lez v0, :cond_c
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0, p1}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/protocol/e;)V
:goto_c
:cond_c
:try_start_c
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_1b
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B
move-result-object v0
array-length v0, v0
if-lez v0, :cond_18
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0, p1}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/protocol/e;)V
:try_end_18
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_19
:cond_18
:goto_18
return-void
:catch_19
move-exception v0
goto :goto_18
:catch_1b
move-exception v0
goto :goto_c
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
.registers 9
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
const-string v1, "FUNCTION_NAME"
const-string v2, "onProtocolSessionStarted"
invoke-static {v0, v1, v2}, Lcom/ford/syncV4/proxy/i;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
const-string v1, "COMMENT1"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "SessionID: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/ford/syncV4/proxy/i;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
const-string v1, "COMMENT2"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, " SessionType: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/enums/d;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/ford/syncV4/proxy/i;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v1, v0}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;Landroid/content/Intent;)V
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0, p3}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;B)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;
invoke-virtual {p1, v0}, Lcom/ford/syncV4/util/b;->a(Lcom/ford/syncV4/util/b;)Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->b(Lcom/ford/syncV4/proxy/i;)V
:cond_56
:goto_56
return-void
:cond_57
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
iget-byte v0, v0, Lcom/ford/syncV4/proxy/i;->A:B
const/4 v1, 0x2
if-ne v0, v1, :cond_56
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->b(Lcom/ford/syncV4/proxy/i;)V
goto :goto_56
.end method
.method public final a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
.registers 4
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
iget-object v0, v0, Lcom/ford/syncV4/proxy/i;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
new-instance v1, Lcom/ford/syncV4/exception/SyncException;
const-string v2, "Transport disconnected."
sget-object v3, Lcom/ford/syncV4/exception/SyncExceptionCause;->m:Lcom/ford/syncV4/exception/SyncExceptionCause;
invoke-direct {v1, v2, v3}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V
invoke-virtual {v0, p1, v1}, Lcom/ford/syncV4/proxy/i;->a(Ljava/lang/String;Ljava/lang/Exception;)V
:cond_18
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Transport failure: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p2}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
iget-object v0, v0, Lcom/ford/syncV4/proxy/i;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
sget-object v1, Lcom/ford/syncV4/proxy/rpc/enums/SyncDisconnectedReason;->k:Lcom/ford/syncV4/proxy/rpc/enums/SyncDisconnectedReason;
invoke-virtual {v0}, Lcom/ford/syncV4/proxy/i;->e()V
:goto_23
return-void
:cond_24
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-virtual {v0, p1, p2}, Lcom/ford/syncV4/proxy/i;->a(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_23
.end method
.method public final b(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 4
iget-object v0, p0, Lcom/ford/syncV4/proxy/j;->a:Lcom/ford/syncV4/proxy/i;
invoke-static {v0, p1, p2}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;Ljava/lang/String;Ljava/lang/Exception;)V
return-void
.end method