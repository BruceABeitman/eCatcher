.class public Lcom/igexin/push/core/h;
.super Ljava/lang/Thread;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Landroid/os/Looper;->prepare()V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
new-instance v1, Lcom/igexin/push/core/e;
invoke-direct {v1}, Lcom/igexin/push/core/e;-><init>()V
invoke-virtual {v0, v1}, Lcom/igexin/push/core/f;->a(Lcom/igexin/push/core/e;)V
:cond_15
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->b()V
invoke-static {}, Landroid/os/Looper;->loop()V
return-void
.end method