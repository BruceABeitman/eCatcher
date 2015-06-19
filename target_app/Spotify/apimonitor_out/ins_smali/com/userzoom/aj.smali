.class final Lcom/userzoom/aj;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field private synthetic a:Lcom/userzoom/bw;
.method constructor <init>(Lcom/userzoom/bw;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/aj;->a:Lcom/userzoom/bw;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
const-string v0, "UzSurveyActivity"
const-string v1, "closeBrowser"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/aj;->a:Lcom/userzoom/bw;
iget-object v0, v0, Lcom/userzoom/bw;->a:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
return-void
.end method