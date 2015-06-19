.class final Lcom/instagram/android/fragment/da;
.super Lcom/instagram/android/fragment/j;
.source "MainFeedFragment.java"
.field final synthetic b:Lcom/instagram/android/fragment/ct;
.method constructor <init>(Lcom/instagram/android/fragment/ct;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/j;-><init>(Lcom/instagram/android/fragment/a;)V
return-void
.end method
.method protected final a(Lcom/instagram/feed/a/b;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/android/fragment/da;->c()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Ljava/util/List;)V
:cond_f
invoke-super {p0, p1}, Lcom/instagram/android/fragment/j;->a(Lcom/instagram/feed/a/b;)V
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-static {v0}, Lcom/instagram/android/fragment/ct;->g(Lcom/instagram/android/fragment/ct;)Z
move-result v0
if-nez v0, :cond_49
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2f
iget-object v1, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->D()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-static {v1, v0}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Landroid/view/ViewGroup;)V
:cond_2f
invoke-static {}, Lcom/instagram/android/directshare/c/r;->a()Lcom/instagram/android/directshare/c/r;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->b()Z
move-result v1
if-nez v1, :cond_3c
invoke-virtual {v0}, Lcom/instagram/android/directshare/c/r;->i()V
:cond_3c
invoke-static {}, Lcom/instagram/i/e/a;->a()Lcom/instagram/i/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/i/e/a;->d()Z
move-result v1
if-nez v1, :cond_49
invoke-virtual {v0}, Lcom/instagram/i/e/a;->b()V
:cond_49
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-static {v0}, Lcom/instagram/android/fragment/ct;->h(Lcom/instagram/android/fragment/ct;)Z
iget-object v1, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_6e
const/4 v0, 0x0
:goto_5b
invoke-static {v1, v0}, Lcom/instagram/android/fragment/ct;->a(Lcom/instagram/android/fragment/ct;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/fragment/da;->b:Lcom/instagram/android/fragment/ct;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ct;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
check-cast v0, Lcom/instagram/android/feed/a/l;
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->c()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->d(Ljava/util/List;)V
return-void
:cond_6e
invoke-virtual {p1}, Lcom/instagram/feed/a/b;->a()Ljava/util/List;
move-result-object v0
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;
move-result-object v0
goto :goto_5b
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/feed/a/b;
invoke-virtual {p0, p1}, Lcom/instagram/android/fragment/da;->a(Lcom/instagram/feed/a/b;)V
return-void
.end method