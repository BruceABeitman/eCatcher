.class final Lcom/instagram/common/a/a/f;
.super Ljava/lang/Object;
.source "ExecutorBasedRequestPerformer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/common/a/a/a;
.field final synthetic b:Lcom/instagram/common/a/a/e;
.method constructor <init>(Lcom/instagram/common/a/a/e;Lcom/instagram/common/a/a/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/a/a/f;->b:Lcom/instagram/common/a/a/e;
iput-object p2, p0, Lcom/instagram/common/a/a/f;->a:Lcom/instagram/common/a/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/common/a/a/f;->a:Lcom/instagram/common/a/a/a;
invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->f()Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/a/a/f;->b:Lcom/instagram/common/a/a/e;
invoke-static {v1}, Lcom/instagram/common/a/a/e;->a(Lcom/instagram/common/a/a/e;)Landroid/os/Handler;
move-result-object v1
new-instance v2, Lcom/instagram/common/a/a/g;
invoke-direct {v2, p0, v0}, Lcom/instagram/common/a/a/g;-><init>(Lcom/instagram/common/a/a/f;Ljava/lang/Object;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method