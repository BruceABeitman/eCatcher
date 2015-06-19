.class  Lcom/twidroid/fragments/e/a$3;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final synthetic b:Lcom/twidroid/fragments/e/a;
.method constructor <init>(Lcom/twidroid/fragments/e/a;Lcom/twidroid/fragments/e/a;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 7
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->k(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v1}, Lcom/twidroid/fragments/e/a;->j(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->f(Lcom/twidroid/model/twitter/c;)J
move-result-wide v0
iget-object v2, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v2}, Lcom/twidroid/fragments/e/a;->l(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/twidroid/b/a/b;->n(J)Ljava/util/List;
iget-object v2, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v2}, Lcom/twidroid/fragments/e/a;->n(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v3}, Lcom/twidroid/fragments/e/a;->m(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
invoke-virtual {v2, v3, v4, v0, v1}, Lcom/twidroid/b/a/b;->b(JJ)I
move-result v0
iget-object v1, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v1}, Lcom/twidroid/fragments/e/a;->p(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/d/v;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v2}, Lcom/twidroid/fragments/e/a;->o(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;I)V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_40
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42
move-result-object v0
:goto_41
return-object v0
:catch_42
move-exception v0
iget-object v1, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_56
iget-object v1, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
iget-object v2, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_56
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_41
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/a$3;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/a;
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/a$3;->a(Lcom/twidroid/fragments/e/a;Ljava/lang/Boolean;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/a;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
const-string v0, "DirectMessageFragment"
const-string v1, "task was killed by TaskManager"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/a;->c(Z)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/a;Ljava/lang/Boolean;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->q(Lcom/twidroid/fragments/e/a;)V
const-string v0, "DirectMessageFragment"
const-string v1, "onSafePostExecute"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/a;->c(Z)V
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_42
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->r(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-static {v0}, Lcom/twidroid/fragments/e/a;->s(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_42
:cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->P()V
:cond_42
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->b()V
return-void
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/a;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/a$3;->a(Lcom/twidroid/fragments/e/a;)V
return-void
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/twidroid/fragments/e/a$3;->b:Lcom/twidroid/fragments/e/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/a;->i()Lcom/twidroid/ui/a/am;
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