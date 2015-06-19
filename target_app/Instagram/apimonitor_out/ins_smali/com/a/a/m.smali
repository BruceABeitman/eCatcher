.class final Lcom/a/a/m;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/a/a/k;
.method constructor <init>(Lcom/a/a/k;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/a/a/m;->b:Lcom/a/a/k;
iput-object p2, p0, Lcom/a/a/m;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/a/a/m;->b:Lcom/a/a/k;
invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/a/a/m;->b:Lcom/a/a/k;
invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;
move-result-object v0
iget-object v1, p0, Lcom/a/a/m;->a:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/a/a/j;->onMessage(Ljava/lang/String;)V
:cond_13
return-void
.end method