.class final Lcom/instagram/android/fragment/eb;
.super Lcom/instagram/common/a/a/l;
.source "ReportProblemFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dy;
.method private constructor <init>(Lcom/instagram/android/fragment/dy;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-direct {p0}, Lcom/instagram/common/a/a/l;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/fragment/dy;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/eb;-><init>(Lcom/instagram/android/fragment/dy;)V
return-void
.end method
.method private a(Lcom/instagram/bugreport/a/e;)V
.registers 4
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
invoke-virtual {p1}, Lcom/instagram/bugreport/a/e;->f_()Z
move-result v0
if-eqz v0, :cond_12
invoke-direct {p0}, Lcom/instagram/android/fragment/eb;->b()V
:goto_11
return-void
:cond_12
invoke-direct {p0}, Lcom/instagram/android/fragment/eb;->c()V
goto :goto_11
.end method
.method private b()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dy;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->thanks_for_feedback:I
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-static {v0}, Lcom/instagram/android/fragment/dy;->b(Lcom/instagram/android/fragment/dy;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/ec;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ec;-><init>(Lcom/instagram/android/fragment/eb;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private c()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-static {v0}, Lcom/instagram/android/fragment/dy;->c(Lcom/instagram/android/fragment/dy;)Landroid/widget/EditText;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
new-instance v1, Lcom/instagram/ui/dialog/b;
iget-object v2, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-virtual {v2}, Lcom/instagram/android/fragment/dy;->n()Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v2, Lcom/facebook/az;->request_error:I
invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v1
sget v2, Lcom/facebook/az;->ok:I
new-instance v3, Lcom/instagram/android/fragment/ed;
invoke-direct {v3, p0}, Lcom/instagram/android/fragment/ed;-><init>(Lcom/instagram/android/fragment/eb;)V
invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/dy;->a(Lcom/instagram/android/fragment/dy;Landroid/app/Dialog;)Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/android/fragment/eb;->a:Lcom/instagram/android/fragment/dy;
invoke-static {v0}, Lcom/instagram/android/fragment/dy;->d(Lcom/instagram/android/fragment/dy;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method public final a()V
.registers 3
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method public final synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/bugreport/a/e;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/eb;->a(Lcom/instagram/bugreport/a/e;)V
return-void
.end method