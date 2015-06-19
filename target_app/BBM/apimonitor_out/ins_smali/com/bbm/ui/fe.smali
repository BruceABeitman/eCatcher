.class final Lcom/bbm/ui/fe;
.super Lcom/bbm/j/k;
.source "QuickShareVoicenoteView.java"
.field final synthetic a:Lcom/bbm/ui/QuickShareVoicenoteView;
.method constructor <init>(Lcom/bbm/ui/QuickShareVoicenoteView;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 3
iget-object v1, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
iget-object v0, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-virtual {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/n/b;->e()Z
move-result v0
if-nez v0, :cond_3f
const/4 v0, 0x1
:goto_13
invoke-static {v1, v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->a(Lcom/bbm/ui/QuickShareVoicenoteView;Z)Z
iget-object v0, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->d(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/ImageView;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->c(Lcom/bbm/ui/QuickShareVoicenoteView;)Z
move-result v0
if-eqz v0, :cond_41
const v0, 0x7f020388
:goto_27
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->e(Lcom/bbm/ui/QuickShareVoicenoteView;)Landroid/widget/TextView;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/fe;->a:Lcom/bbm/ui/QuickShareVoicenoteView;
invoke-static {v0}, Lcom/bbm/ui/QuickShareVoicenoteView;->c(Lcom/bbm/ui/QuickShareVoicenoteView;)Z
move-result v0
if-eqz v0, :cond_45
const v0, 0x7f0e05f2
:goto_3b
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
return-void
:cond_3f
const/4 v0, 0x0
goto :goto_13
:cond_41
const v0, 0x7f020387
goto :goto_27
:cond_45
const v0, 0x7f0e05f1
goto :goto_3b
.end method