.class  Lcom/tencent/connect/avatar/b$1$1;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tencent/connect/avatar/b$1;
.method constructor <init>(Lcom/tencent/connect/avatar/b$1;)V
.registers 2
iput-object p1, p0, Lcom/tencent/connect/avatar/b$1$1;->a:Lcom/tencent/connect/avatar/b$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/tencent/connect/avatar/b$1$1;->a:Lcom/tencent/connect/avatar/b$1;
iget-object v0, v0, Lcom/tencent/connect/avatar/b$1;->a:Lcom/tencent/connect/avatar/b;
invoke-virtual {v0}, Lcom/tencent/connect/avatar/b;->clearAnimation()V
iget-object v0, p0, Lcom/tencent/connect/avatar/b$1$1;->a:Lcom/tencent/connect/avatar/b$1;
iget-object v0, v0, Lcom/tencent/connect/avatar/b$1;->a:Lcom/tencent/connect/avatar/b;
invoke-static {v0}, Lcom/tencent/connect/avatar/b;->a(Lcom/tencent/connect/avatar/b;)V
return-void
.end method