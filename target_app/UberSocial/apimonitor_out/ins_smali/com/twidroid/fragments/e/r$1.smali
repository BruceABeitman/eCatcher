.class  Lcom/twidroid/fragments/e/r$1;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final synthetic b:Lcom/twidroid/fragments/e/r;
.method constructor <init>(Lcom/twidroid/fragments/e/r;Lcom/twidroid/fragments/e/r;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/r$1;->a([Ljava/lang/Void;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
.registers 8
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz v0, :cond_64
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->b(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-eqz v0, :cond_64
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->d(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v1}, Lcom/twidroid/fragments/e/r;->c(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:goto_2b
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->h(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v2}, Lcom/twidroid/fragments/e/r;->g(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, -0x1
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_62
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_62
iget-object v1, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v1}, Lcom/twidroid/fragments/e/r;->j(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/d/v;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v2}, Lcom/twidroid/fragments/e/r;->i(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-virtual {v1, v2, v0}, Lcom/twidroid/d/v;->c(Landroid/content/Context;I)V
:cond_62
const/4 v0, 0x0
:goto_63
return-object v0
:cond_64
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->f(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v1}, Lcom/twidroid/fragments/e/r;->e(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->h(I)Lcom/twidroid/model/twitter/c;
:try_end_83
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_83} :catch_84
goto :goto_2b
:catch_84
move-exception v0
iget-object v1, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
iget-object v2, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/r;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_63
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/r;
check-cast p2, Ljava/lang/String;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/r$1;->a(Lcom/twidroid/fragments/e/r;Ljava/lang/String;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/r;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
const-string v0, "MentionsFragment"
const-string v1, "onSafePostExecute"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/r;->a(Lcom/twidroid/fragments/e/r;Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->b()V
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/r;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->k(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/ui/a/am;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/fragments/e/r$1;->b:Lcom/twidroid/fragments/e/r;
invoke-static {v0}, Lcom/twidroid/fragments/e/r;->k(Lcom/twidroid/fragments/e/r;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method