.class final Lcom/lenovo/anyshare/sdk/internal/be$2;
.super Ljava/lang/Object;
.source "TaskHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/ar;
.field final synthetic b:Lcom/lenovo/anyshare/sdk/internal/be$b;
.field final synthetic c:J
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/ar;Lcom/lenovo/anyshare/sdk/internal/be$b;J)V
.registers 5
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->a:Lcom/lenovo/anyshare/sdk/internal/ar;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->b:Lcom/lenovo/anyshare/sdk/internal/be$b;
iput-wide p3, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->c:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->a:Lcom/lenovo/anyshare/sdk/internal/ar;
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ar;->a()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/be$c;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a()Z
move-result v3
if-eqz v3, :cond_17
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->b:Lcom/lenovo/anyshare/sdk/internal/be$b;
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/be$c;->a(Lcom/lenovo/anyshare/sdk/internal/be$c;)I
move-result v4
invoke-virtual {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/be$b;->a(I)V
:cond_17
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/be$c;->b()Z
move-result v3
if-eqz v3, :cond_1e
:goto_1d
:cond_1d
return-void
:try_start_1e
:cond_1e
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/be$c;->a()V
:goto_21
:try_end_21
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_3c
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/be$c;->b()Z
move-result v3
if-nez v3, :cond_1d
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be;->a()Landroid/os/Handler;
move-result-object v3
const/4 v4, 0x1
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->a:Lcom/lenovo/anyshare/sdk/internal/ar;
invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/be;->a()Landroid/os/Handler;
move-result-object v3
iget-wide v4, p0, Lcom/lenovo/anyshare/sdk/internal/be$2;->c:J
invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_1d
:catch_3c
move-exception v0
iput-object v0, v2, Lcom/lenovo/anyshare/sdk/internal/be$c;->d:Ljava/lang/Exception;
goto :goto_21
.end method