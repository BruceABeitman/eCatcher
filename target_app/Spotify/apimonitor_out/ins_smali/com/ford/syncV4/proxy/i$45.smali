.class final Lcom/ford/syncV4/proxy/i$45;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/ford/syncV4/proxy/rpc/ae;
.field final synthetic b:Lcom/ford/syncV4/proxy/i;
.method constructor <init>(Lcom/ford/syncV4/proxy/i;Lcom/ford/syncV4/proxy/rpc/ae;)V
.registers 3
iput-object p1, p0, Lcom/ford/syncV4/proxy/i$45;->b:Lcom/ford/syncV4/proxy/i;
iput-object p2, p0, Lcom/ford/syncV4/proxy/i$45;->a:Lcom/ford/syncV4/proxy/rpc/ae;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/ford/syncV4/proxy/i$45;->b:Lcom/ford/syncV4/proxy/i;
invoke-static {v0}, Lcom/ford/syncV4/proxy/i;->c(Lcom/ford/syncV4/proxy/i;)Lcom/ford/syncV4/proxy/b/b;
iget-object v0, p0, Lcom/ford/syncV4/proxy/i$45;->a:Lcom/ford/syncV4/proxy/rpc/ae;
return-void
.end method