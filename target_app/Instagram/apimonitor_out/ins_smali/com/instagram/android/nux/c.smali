.class final Lcom/instagram/android/nux/c;
.super Ljava/lang/Object;
.source "FacebookHelper.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/instagram/android/nux/a;
.method constructor <init>(Lcom/instagram/android/nux/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->f(Lcom/instagram/android/nux/a;)Z
iget-object v0, p0, Lcom/instagram/android/nux/c;->a:Lcom/instagram/android/nux/a;
invoke-static {v0}, Lcom/instagram/android/nux/a;->d(Lcom/instagram/android/nux/a;)Lcom/instagram/android/nux/e;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/android/nux/e;->c()V
return-void
.end method