.class  Lcom/twidroid/fragments/e/b$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/h;
.field final synthetic a:Z
.field final synthetic b:Landroid/support/v4/app/FragmentActivity;
.field final synthetic c:Lcom/twidroid/fragments/e/b;
.method constructor <init>(Lcom/twidroid/fragments/e/b;ZLandroid/support/v4/app/FragmentActivity;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
iput-boolean p2, p0, Lcom/twidroid/fragments/e/b$3;->a:Z
iput-object p3, p0, Lcom/twidroid/fragments/e/b$3;->b:Landroid/support/v4/app/FragmentActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 7
const-string v0, "newsListResult"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_94
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/n;
const-string v1, "newsListResult"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_21
iget-object v2, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/b;->P()V
:cond_21
const-string v2, "limit"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2e
iget-object v3, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-static {v3, v2}, Lcom/twidroid/fragments/e/b;->a(Lcom/twidroid/fragments/e/b;Ljava/lang/String;)Ljava/lang/String;
:cond_2e
const-string v2, "until"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3b
iget-object v3, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-static {v3, v2}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;Ljava/lang/String;)Ljava/lang/String;
:cond_3b
iget-object v2, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
if-nez v2, :cond_44
:goto_43
return-void
:cond_44
iget-boolean v2, p0, Lcom/twidroid/fragments/e/b$3;->a:Z
if-eqz v2, :cond_8e
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-static {v0}, Lcom/twidroid/fragments/e/b;->c(Lcom/twidroid/fragments/e/b;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->G()V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
new-instance v2, Lcom/twidroid/ui/a/n;
iget-object v3, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v3}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-direct {v2, v3, v1, v0, v4}, Lcom/twidroid/ui/a/n;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/twidroid/UberSocialApplication;Lcom/twidroid/ui/widgets/d;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0, v2}, Lcom/twidroid/fragments/e/b;->setListAdapter(Landroid/widget/ListAdapter;)V
:goto_6f
:cond_6f
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-static {v0}, Lcom/twidroid/fragments/e/b;->d(Lcom/twidroid/fragments/e/b;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->a(Ljava/util/List;)V
const-string v0, "facebook_integration"
const-string v1, "news_loaded"
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:goto_88
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->M()V
goto :goto_43
:cond_8e
if-eqz v0, :cond_6f
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/n;->a(Ljava/util/List;)V
goto :goto_6f
:cond_94
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->P()V
goto :goto_88
.end method
.method public a(Lcom/twidroid/net/a/a/b;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
iget-object v1, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, p1, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
const-string v0, "FacebookNewsfeedFragment"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onDownloadingFailed reaason="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/net/a/a/b;->a()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " error="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/twidroid/net/a/a/b;->a()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_51
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->b:Landroid/support/v4/app/FragmentActivity;
invoke-static {v0}, Lcom/twidroid/net/a/a/c;->c(Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-static {v0}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;)V
:goto_50
return-void
:cond_51
iget-object v0, p0, Lcom/twidroid/fragments/e/b$3;->c:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->P()V
goto :goto_50
.end method