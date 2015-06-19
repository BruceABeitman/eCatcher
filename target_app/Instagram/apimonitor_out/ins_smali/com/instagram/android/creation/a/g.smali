.class final Lcom/instagram/android/creation/a/g;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"
.implements Lcom/instagram/android/directshare/widget/d;
.field final synthetic a:Lcom/instagram/android/creation/a/d;
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/g;->a:Lcom/instagram/android/creation/a/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/f;
iget-object v1, p0, Lcom/instagram/android/creation/a/g;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1}, Lcom/instagram/android/creation/a/d;->i(Lcom/instagram/android/creation/a/d;)Lcom/instagram/creation/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->M()Lcom/instagram/creation/b/a/g;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/g;->b(Lcom/instagram/creation/b/a/f;)V
return-void
.end method