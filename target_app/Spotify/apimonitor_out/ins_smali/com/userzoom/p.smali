.class final Lcom/userzoom/p;
.super Ljava/util/TimerTask;
.field private synthetic a:Lcom/userzoom/n;
.method constructor <init>(Lcom/userzoom/n;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/p;->a:Lcom/userzoom/n;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/userzoom/p;->a:Lcom/userzoom/n;
invoke-virtual {v0}, Lcom/userzoom/n;->c()V
return-void
.end method