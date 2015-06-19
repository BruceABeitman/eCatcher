.class final Lcom/bbm/ui/activities/jk;
.super Lcom/bbm/util/b;
.source "EphemeralImageActivity.java"
.field final synthetic a:J
.field final synthetic b:Lcom/bbm/ui/activities/jj;
.method constructor <init>(Lcom/bbm/ui/activities/jj;J)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/activities/jk;->b:Lcom/bbm/ui/activities/jj;
iput-wide p2, p0, Lcom/bbm/ui/activities/jk;->a:J
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-wide v2, p0, Lcom/bbm/ui/activities/jk;->a:J
sub-long/2addr v0, v2
:goto_7
iget-object v2, p0, Lcom/bbm/ui/activities/jk;->b:Lcom/bbm/ui/activities/jj;
iget-object v2, v2, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/EphemeralImageActivity;->b(Lcom/bbm/ui/activities/EphemeralImageActivity;)J
move-result-wide v2
cmp-long v2, v0, v2
if-gtz v2, :cond_32
iget-object v2, p0, Lcom/bbm/ui/activities/jk;->b:Lcom/bbm/ui/activities/jj;
iget-object v2, v2, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/EphemeralImageActivity;->c(Lcom/bbm/ui/activities/EphemeralImageActivity;)Landroid/widget/ProgressBar;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/jk;->b:Lcom/bbm/ui/activities/jj;
iget-object v3, v3, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/EphemeralImageActivity;->b(Lcom/bbm/ui/activities/EphemeralImageActivity;)J
move-result-wide v3
long-to-int v3, v3
long-to-int v0, v0
sub-int v0, v3, v0
invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-wide v2, p0, Lcom/bbm/ui/activities/jk;->a:J
sub-long/2addr v0, v2
goto :goto_7
:cond_32
const/4 v0, 0x0
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/jk;->b:Lcom/bbm/ui/activities/jj;
iget-object v0, v0, Lcom/bbm/ui/activities/jj;->c:Lcom/bbm/ui/activities/EphemeralImageActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/EphemeralImageActivity;->finish()V
return-void
.end method