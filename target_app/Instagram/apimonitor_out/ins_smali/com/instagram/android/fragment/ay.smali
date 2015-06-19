.class final Lcom/instagram/android/fragment/ay;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/av;
.method constructor <init>(Lcom/instagram/android/fragment/av;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/av;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/ay; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/av;
invoke-virtual {v1}, Lcom/instagram/android/fragment/av;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/av;
sget v2, Lcom/facebook/az;->unlink_account:I
invoke-virtual {v1, v2}, Lcom/instagram/android/fragment/av;->c(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
sget-object v4, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;
iget-object v5, p0, Lcom/instagram/android/fragment/ay;->a:Lcom/instagram/android/fragment/av;
invoke-virtual {v5}, Lcom/instagram/android/fragment/av;->n()Landroid/content/Context;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/instagram/android/widget/x;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->unlink:I
new-instance v2, Lcom/instagram/android/fragment/az;
invoke-direct {v2, p0}, Lcom/instagram/android/fragment/az;-><init>(Lcom/instagram/android/fragment/ay;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
const-string v1, " - Lcom/instagram/android/fragment/ay; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method