.class final Lcom/ford/syncV4/proxy/i$48;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/ford/syncV4/proxy/rpc/ai;
.field final synthetic b:Lcom/ford/syncV4/proxy/i;
.method constructor <init>(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/proxy/rpc/ai;)V
.registers 3
iput-object p1, p0, Lcom/ford/syncV4/proxy/i$48;->b:Lcom/ford/syncV4/proxy/i;
iput-object p2, p0, Lcom/ford/syncV4/proxy/i$48;->a:Lcom/ford/syncV4/proxy/rpc/ai;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
iget-object v0, p0, Lcom/ford/syncV4/proxy/i$48;->b:Lcom/ford/syncV4/proxy/i;
iget-object v1, p0, Lcom/ford/syncV4/proxy/i$48;->a:Lcom/ford/syncV4/proxy/rpc/ai;
invoke-virtual {v1}, Lcom/ford/syncV4/proxy/rpc/ai;->c()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/ford/syncV4/proxy/i$48;->a:Lcom/ford/syncV4/proxy/rpc/ai;
invoke-virtual {v2}, Lcom/ford/syncV4/proxy/rpc/ai;->e()[B
move-result-object v2
iget-object v3, p0, Lcom/ford/syncV4/proxy/i$48;->a:Lcom/ford/syncV4/proxy/rpc/ai;
invoke-virtual {v3}, Lcom/ford/syncV4/proxy/rpc/ai;->d()Ljava/lang/Integer;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/ford/syncV4/proxy/i;->a(Lcom/ford/syncV4/proxy/i;Ljava/lang/String;[BLjava/lang/Integer;)V
return-void
.end method