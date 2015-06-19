.class public final Lcom/instagram/android/directshare/b/a;
.super Ljava/lang/Object;
.source "LearnMoreBlockingDialog.java"
.method public static a(Landroid/content/Context;)V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->directshare_blocking_education_msg:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->directshare_blocking_confirm_button:I
new-instance v2, Lcom/instagram/android/directshare/b/b;
invoke-direct {v2, p0}, Lcom/instagram/android/directshare/b/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->cancel:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method