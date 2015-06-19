.class public final Lcom/userzoom/bp;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private synthetic a:Luserzoom/com/a;
.method public constructor <init>(Luserzoom/com/a;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/bp;->a:Luserzoom/com/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
const-wide/16 v0, 0x1f4
:try_start_2
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_5
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1c
:goto_5
iget-object v0, p0, Lcom/userzoom/bp;->a:Luserzoom/com/a;
iget-object v0, v0, Luserzoom/com/a;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "UzLibInstance"
const-string v1, "Closed App"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/bp;->a:Luserzoom/com/a;
invoke-static {v0}, Luserzoom/com/a;->a(Luserzoom/com/a;)V
:cond_1b
return-void
:catch_1c
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_5
.end method