.class final Lcom/instagram/android/feed/a/a/ac;
.super Lcom/instagram/api/j/a;
.source "MediaOptionsDialog.java"
.field final synthetic a:Lcom/instagram/android/feed/a/a/u;
.method private constructor <init>(Lcom/instagram/android/feed/a/a/u;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/u;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/feed/a/a/ac;-><init>(Lcom/instagram/android/feed/a/a/u;)V
return-void
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->we_will_review_this_photo_asap:I
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->l(Lcom/instagram/android/feed/a/a/u;)Landroid/support/v4/app/Fragment;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-static {v0}, Lcom/instagram/ui/dialog/a;->a(Landroid/support/v4/app/s;)V
invoke-super {p0}, Lcom/instagram/api/j/a;->a()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->c(Lcom/instagram/android/feed/a/a/u;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/content/Context;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/ac;->c()V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/ac;->a:Lcom/instagram/android/feed/a/a/u;
invoke-static {v0}, Lcom/instagram/android/feed/a/a/u;->m(Lcom/instagram/android/feed/a/a/u;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/feed/a/a/ad;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/ad;-><init>(Lcom/instagram/android/feed/a/a/ac;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
invoke-super {p0}, Lcom/instagram/api/j/a;->b()V
return-void
.end method