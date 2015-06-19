.class final Lcom/bbm/ui/eu;
.super Lcom/bbm/util/cn;
.source "QuickShareGlympseView.java"
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-direct {p0}, Lcom/bbm/util/cn;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->i(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/ProgressBar;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->j(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-virtual {v1}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0e04d7
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->k(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
return-void
.end method
.method public final a(Landroid/location/Location;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0, p1}, Lcom/bbm/ui/QuickShareGlympseView;->a(Lcom/bbm/ui/QuickShareGlympseView;Landroid/location/Location;)V
iget-object v0, p0, Lcom/bbm/ui/eu;->a:Lcom/bbm/ui/QuickShareGlympseView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareGlympseView;->l(Lcom/bbm/ui/QuickShareGlympseView;)V
return-void
.end method