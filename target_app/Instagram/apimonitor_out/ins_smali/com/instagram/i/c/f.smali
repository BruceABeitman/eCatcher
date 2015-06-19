.class final Lcom/instagram/i/c/f;
.super Lcom/instagram/api/k/a/h;
.source "NewsfeedFollowingFragment.java"
.field final synthetic a:Lcom/instagram/i/c/e;
.method private constructor <init>(Lcom/instagram/i/c/e;)V
.registers 2
iput-object p1, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/i/c/e;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/i/c/f;-><init>(Lcom/instagram/i/c/e;)V
return-void
.end method
.method private a(Lcom/instagram/i/d/a;)V
.registers 6
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/i/c/e;->a(Lcom/instagram/i/c/e;Z)Z
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/instagram/i/d/a;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_13
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/i/d/c;
invoke-virtual {v0}, Lcom/instagram/i/d/c;->a()Lcom/instagram/i/d/g;
move-result-object v3
if-eqz v3, :cond_13
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_13
:cond_29
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0}, Lcom/instagram/i/c/e;->a(Lcom/instagram/i/c/e;)Lcom/instagram/i/a/a;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/i/a/a;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0}, Lcom/instagram/i/c/e;->b(Lcom/instagram/i/c/e;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->V()V
return-void
.end method
.method private b(Lcom/instagram/api/k/a/i;)V
.registers 4
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0, v1}, Lcom/instagram/i/c/e;->b(Lcom/instagram/i/c/e;Z)Z
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0}, Lcom/instagram/i/c/e;->d(Lcom/instagram/i/c/e;)Z
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->r()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/c/g;
iget-object v1, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0, v1}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/l;)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Lcom/instagram/api/k/a/h;->a()V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0, v1}, Lcom/instagram/i/c/e;->b(Lcom/instagram/i/c/e;Z)Z
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0}, Lcom/instagram/i/c/e;->c(Lcom/instagram/i/c/e;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->D()Landroid/view/View;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
:cond_1a
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->r()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/c/g;
iget-object v1, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0, v1}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/l;)V
return-void
.end method
.method public final a(Lcom/instagram/api/k/a/i;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/api/k/a/h;->a(Lcom/instagram/api/k/a/i;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/i/c/e;->a(Lcom/instagram/i/c/e;Z)Z
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-static {v0}, Lcom/instagram/i/c/e;->b(Lcom/instagram/i/c/e;)V
iget-object v0, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0}, Lcom/instagram/i/c/e;->r()Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/instagram/i/c/g;
iget-object v1, p0, Lcom/instagram/i/c/f;->a:Lcom/instagram/i/c/e;
invoke-virtual {v0, v1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/l;)V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/i/d/a;
invoke-direct {p0, p1}, Lcom/instagram/i/c/f;->a(Lcom/instagram/i/d/a;)V
return-void
.end method
.method public final bridge synthetic b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/api/k/a/i;
invoke-direct {p0, p1}, Lcom/instagram/i/c/f;->b(Lcom/instagram/api/k/a/i;)V
return-void
.end method