.class final Lcom/instagram/android/creation/a/av;
.super Ljava/lang/Object;
.source "ShareLaterFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/creation/a/au;
.method constructor <init>(Lcom/instagram/android/creation/a/au;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/av;->a:Lcom/instagram/android/creation/a/au;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/creation/a/av;->a:Lcom/instagram/android/creation/a/au;
iget-object v0, v0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;
invoke-virtual {v0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V
return-void
.end method