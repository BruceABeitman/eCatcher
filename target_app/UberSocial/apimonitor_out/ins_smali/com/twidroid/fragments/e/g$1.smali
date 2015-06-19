.class  Lcom/twidroid/fragments/e/g$1;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final synthetic b:Lcom/twidroid/fragments/e/g;
.method constructor <init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$1;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 8
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->c(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->d(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->e(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_5f
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->g(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->f(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/d/v;)Ljava/util/List;
move-result-object v0
:goto_48
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->k(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->cb()Z
move-result v1
if-eqz v1, :cond_5e
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
const/4 v2, 0x1
invoke-static {v1, v0, v2}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;Z)V
:goto_5e
:cond_5e
return-object v0
:cond_5f
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->j(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->h(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
sget v2, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I
iget-object v3, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-virtual {v3}, Lcom/twidroid/fragments/e/g;->E()J
move-result-wide v3
iget-object v5, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v5}, Lcom/twidroid/fragments/e/g;->i(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v5
invoke-virtual {v5}, Lcom/twidroid/d/v;->D()Z
move-result v5
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;IJZ)Ljava/util/List;
:try_end_88
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_88} :catch_8a
move-result-object v0
goto :goto_48
:catch_8a
move-exception v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
iget-object v2, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
const/4 v0, 0x0
goto :goto_5e
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/g;
check-cast p2, Ljava/util/List;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g$1;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/g;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/g;->b(Lcom/twidroid/fragments/e/g;Z)Z
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
.registers 6
const/4 v2, 0x1
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
if-eqz p2, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-static {v0, v2}, Lcom/twidroid/fragments/e/g;->a(Lcom/twidroid/fragments/e/g;Z)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p2, v1, v2}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/g$1;->b:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/g;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$1;->a(Lcom/twidroid/fragments/e/g;)V
return-void
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method