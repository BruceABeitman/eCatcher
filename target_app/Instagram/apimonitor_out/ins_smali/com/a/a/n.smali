.class final Lcom/a/a/n;
.super Ljava/lang/Object;
.source "WebSocketClient.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:[B
.field final synthetic b:Lcom/a/a/k;
.method constructor <init>(Lcom/a/a/k;[B)V
.registers 3
iput-object p1, p0, Lcom/a/a/n;->b:Lcom/a/a/k;
iput-object p2, p0, Lcom/a/a/n;->a:[B
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/a/a/n;->b:Lcom/a/a/k;
invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/a/a/n;->b:Lcom/a/a/k;
invoke-static {v0}, Lcom/a/a/k;->a(Lcom/a/a/k;)Lcom/a/a/j;
move-result-object v0
iget-object v1, p0, Lcom/a/a/n;->a:[B
invoke-interface {v0, v1}, Lcom/a/a/j;->onMessage([B)V
:cond_13
return-void
.end method