.class  Lcom/twidroid/af$1;
.super Ljava/lang/Thread;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/af;
.method constructor <init>(Lcom/twidroid/af;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/af$1;->a:Lcom/twidroid/af;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const-wide/16 v0, 0x5dc0
:try_start_2
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
iget-object v0, p0, Lcom/twidroid/af$1;->a:Lcom/twidroid/af;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/af;->b(Z)Z
:goto_b
:try_end_b
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_c
return-void
:catch_c
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_b
.end method