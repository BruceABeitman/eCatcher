.class final Lcom/instagram/android/people/b/p;
.super Lcom/instagram/android/fragment/j;
.source "PhotosOfYouFragment.java"
.field final synthetic b:Lcom/instagram/android/people/b/m;
.method private constructor <init>(Lcom/instagram/android/people/b/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/people/b/m;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/people/b/p;-><init>(Lcom/instagram/android/people/b/m;)V
return-void
.end method
.method protected final a(Lcom/instagram/feed/a/b;)V
.registers 3
invoke-super {p0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/feed/a/b;)V
iget-object v0, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-static {v0}, Lcom/instagram/android/people/b/m;->b(Lcom/instagram/android/people/b/m;)Z
iget-object v0, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-static {v0}, Lcom/instagram/android/people/b/m;->c(Lcom/instagram/android/people/b/m;)V
iget-object v0, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-virtual {v0}, Lcom/instagram/android/people/b/m;->l()Landroid/support/v4/app/k;
move-result-object v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-static {v0}, Lcom/instagram/android/people/b/m;->d(Lcom/instagram/android/people/b/m;)Z
move-result v0
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-virtual {v0}, Lcom/instagram/android/people/b/m;->u()Z
move-result v0
if-eqz v0, :cond_2c
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
:cond_2c
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/a/b;
invoke-virtual {p0, p1}, Lcom/instagram/android/people/b/p;->a(Lcom/instagram/feed/a/b;)V
return-void
.end method
.method public final b()V
.registers 3
invoke-super {p0}, Lcom/instagram/android/fragment/j;->b()V
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/android/people/b/p;->b:Lcom/instagram/android/people/b/m;
invoke-virtual {v1}, Lcom/instagram/android/people/b/m;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method