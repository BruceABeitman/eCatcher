.class public final Lcom/instagram/android/d/j;
.super Lcom/instagram/api/j/a;
.source "AvatarHelper.java"
.field final synthetic a:Lcom/instagram/android/d/f;
.method protected constructor <init>(Lcom/instagram/android/d/f;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/user/c/a;)V
.registers 5
if-eqz p1, :cond_9
invoke-static {}, Lcom/instagram/user/c/i;->a()Lcom/instagram/user/c/h;
move-result-object v0
invoke-interface {v0, p1}, Lcom/instagram/user/c/h;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;
:cond_9
iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->profile_picture_changed:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public final a()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/j/a;->a()V
iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/d/l;
invoke-direct {v1, p0}, Lcom/instagram/android/d/l;-><init>(Lcom/instagram/android/d/j;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
iget-object v1, v1, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->error:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->could_not_update_profile_picture:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->dismiss:I
new-instance v2, Lcom/instagram/android/d/k;
invoke-direct {v2, p0}, Lcom/instagram/android/d/k;-><init>(Lcom/instagram/android/d/j;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/user/c/a;
invoke-direct {p0, p1}, Lcom/instagram/android/d/j;->a(Lcom/instagram/user/c/a;)V
return-void
.end method
.method public final b()V
.registers 3
invoke-super {p0}, Lcom/instagram/api/j/a;->b()V
iget-object v0, p0, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/d/m;
invoke-direct {v1, p0}, Lcom/instagram/android/d/m;-><init>(Lcom/instagram/android/d/j;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method