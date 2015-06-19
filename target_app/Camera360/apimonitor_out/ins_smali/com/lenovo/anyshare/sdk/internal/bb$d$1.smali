.class  Lcom/lenovo/anyshare/sdk/internal/bb$d$1;
.super Ljava/lang/Object;
.source "RootUtils.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/Process;
.field final synthetic b:Lcom/lenovo/anyshare/sdk/internal/bb$d;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/bb$d;Ljava/lang/Process;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d$1;->b:Lcom/lenovo/anyshare/sdk/internal/bb$d;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d$1;->a:Ljava/lang/Process;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
const-wide/16 v1, 0x3a98
:try_start_2
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_b
:goto_5
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bb$d$1;->a:Ljava/lang/Process;
invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_5
.end method