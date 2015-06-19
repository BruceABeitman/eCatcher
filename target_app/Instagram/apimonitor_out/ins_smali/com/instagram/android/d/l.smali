.class final Lcom/instagram/android/d/l;
.super Ljava/lang/Object;
.source "AvatarHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/d/j;
.method constructor <init>(Lcom/instagram/android/d/j;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/l;->a:Lcom/instagram/android/d/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
new-instance v0, Lcom/instagram/ui/dialog/g;
invoke-direct {v0}, Lcom/instagram/ui/dialog/g;-><init>()V
iget-object v1, p0, Lcom/instagram/android/d/l;->a:Lcom/instagram/android/d/j;
iget-object v1, v1, Lcom/instagram/android/d/j;->a:Lcom/instagram/android/d/f;
iget-object v1, v1, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v1
const-string v2, "progress"
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/g;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
return-void
.end method