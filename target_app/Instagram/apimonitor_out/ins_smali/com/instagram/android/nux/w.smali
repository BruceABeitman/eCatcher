.class final Lcom/instagram/android/nux/w;
.super Ljava/lang/Object;
.source "LandingPageFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/nux/n;
.method constructor <init>(Lcom/instagram/android/nux/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/nux/w; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;
invoke-virtual {v1}, Lcom/instagram/android/nux/n;->n()Landroid/content/Context;
move-result-object v1
sget v2, Lcom/facebook/aw;->dialog_server_options:I
sget v3, Lcom/facebook/ba;->IgDialogActionBar:I
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/nux/w;->a:Lcom/instagram/android/nux/n;
invoke-virtual {v1}, Lcom/instagram/android/nux/n;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v1
const/16 v2, 0x20
invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v1
const/4 v2, 0x5
invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V
new-instance v1, Lcom/instagram/android/nux/x;
invoke-direct {v1, p0}, Lcom/instagram/android/nux/x;-><init>(Lcom/instagram/android/nux/w;)V
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
sget v1, Lcom/facebook/av;->done_button:I
invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/nux/y;
invoke-direct {v2, p0, v0}, Lcom/instagram/android/nux/y;-><init>(Lcom/instagram/android/nux/w;Landroid/app/Dialog;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v1, " - Lcom/instagram/android/nux/w; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method