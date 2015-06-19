.class final Lcom/bbm/ui/activities/kl;
.super Lcom/bbm/ui/cj;
.source "GlympseViewerActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GlympseViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GlympseViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kl;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/kl;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GlympseViewerActivity;->setResult(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/kl;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 5
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "OPEN_QUICK_SHARE_COMPONENT"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/kl;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2, v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->setResult(ILandroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kl;->a:Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GlympseViewerActivity;->finish()V
return-void
.end method
.method public final b()V
.registers 1
return-void
.end method