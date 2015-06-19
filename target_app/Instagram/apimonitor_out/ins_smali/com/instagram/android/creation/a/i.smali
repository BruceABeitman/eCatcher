.class final Lcom/instagram/android/creation/a/i;
.super Lcom/instagram/api/j/f;
.source "DirectShareFragment.java"
.field final synthetic a:Lcom/instagram/android/creation/a/d;
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/l/b/e;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->e(Lcom/instagram/android/creation/a/d;)V
invoke-virtual {p1}, Lcom/instagram/android/l/b/e;->a()Ljava/util/List;
move-result-object v0
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->b()Ljava/util/List;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
iget-object v1, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v1}, Lcom/instagram/android/creation/a/d;->f(Lcom/instagram/android/creation/a/d;)Lcom/instagram/android/directshare/widget/i;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/i;->a(Ljava/util/List;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/l/b/e;
invoke-direct {p0, p1}, Lcom/instagram/android/creation/a/i;->a(Lcom/instagram/android/l/b/e;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/creation/a/i;->a:Lcom/instagram/android/creation/a/d;
invoke-static {v0}, Lcom/instagram/android/creation/a/d;->g(Lcom/instagram/android/creation/a/d;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_13
return-void
.end method