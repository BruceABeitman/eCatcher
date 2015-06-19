.class  Lcom/twidroid/fragments/e/p;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field final synthetic b:Lcom/twidroid/fragments/e/n;
.method public constructor <init>(Lcom/twidroid/fragments/e/n;Lcom/twidroid/fragments/e/n;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/q;)Lcom/twidroid/fragments/e/o;
.registers 10
const/4 v1, 0x0
new-instance v2, Lcom/twidroid/fragments/e/o;
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-direct {v2, v0}, Lcom/twidroid/fragments/e/o;-><init>(Lcom/twidroid/fragments/e/n;)V
if-eqz p1, :cond_21
array-length v0, p1
if-eqz v0, :cond_21
aget-object v0, p1, v1
iget-object v0, v0, Lcom/twidroid/fragments/e/q;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_21
aget-object v0, p1, v1
iget-object v0, v0, Lcom/twidroid/fragments/e/q;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_23
:cond_21
move-object v0, v2
:goto_22
return-object v0
:try_start_23
:cond_23
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-static {v0}, Lcom/twidroid/fragments/e/n;->a(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
if-nez v0, :cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_44
iget-object v4, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-static {v4, v0}, Lcom/twidroid/fragments/e/n;->a(Lcom/twidroid/fragments/e/n;Lcom/twidroid/UberSocialApplication;)Lcom/twidroid/UberSocialApplication;
:cond_44
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-static {v0}, Lcom/twidroid/fragments/e/n;->b(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
if-nez v0, :cond_4e
const/4 v0, 0x0
goto :goto_22
:cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
invoke-static {v0}, Lcom/twidroid/fragments/e/n;->c(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
new-instance v4, Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, v3}, Lcom/twidroid/net/a/c/c;->q(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-direct {v4, v0}, Lcom/twidroid/model/twitter/e;-><init>(Ljava/util/List;)V
new-instance v5, Lcom/twidroid/model/twitter/e;
invoke-direct {v5}, Lcom/twidroid/model/twitter/e;-><init>()V
new-instance v6, Lcom/twidroid/model/twitter/e;
invoke-direct {v6}, Lcom/twidroid/model/twitter/e;-><init>()V
if-eqz v4, :cond_f2
invoke-virtual {v4}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_75
:cond_75
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f5
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/d;
if-eqz v0, :cond_75
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_75
invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_ee
invoke-virtual {v6, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z
:try_end_9a
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_9a} :catch_9b
goto :goto_75
:catch_9b
move-exception v0
move-object v3, v0
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/n;
if-eqz v0, :cond_ae
invoke-virtual {v0}, Lcom/twidroid/fragments/e/n;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v0, v3, v4}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_ae
:goto_ae
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/n;
if-eqz v0, :cond_13b
invoke-static {v0}, Lcom/twidroid/fragments/e/n;->d(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
move-result-object v3
if-eqz v3, :cond_13b
invoke-static {v0}, Lcom/twidroid/fragments/e/n;->e(Lcom/twidroid/fragments/e/n;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v3
:goto_c6
invoke-virtual {v3}, Lcom/twidroid/ui/c/g;->b()I
move-result v0
if-ge v1, v0, :cond_13b
invoke-virtual {v3, v1}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;
move-result-object v0
const/4 v4, 0x2
invoke-virtual {v0}, Lcom/twidroid/ui/c/h;->j()I
move-result v5
if-ne v4, v5, :cond_ea
check-cast v0, Lcom/twidroid/ui/c/e;
invoke-virtual {v0}, Lcom/twidroid/ui/c/e;->c()Ljava/lang/String;
move-result-object v0
iget-object v4, v2, Lcom/twidroid/fragments/e/o;->b:Ljava/util/List;
invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_ea
iget-object v4, v2, Lcom/twidroid/fragments/e/o;->b:Ljava/util/List;
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ea
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c6
:try_start_ee
:cond_ee
invoke-virtual {v5, v0}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z
goto :goto_75
:cond_f2
move-object v0, v2
goto/16 :goto_22
:cond_f5
invoke-virtual {v6}, Lcom/twidroid/model/twitter/e;->size()I
move-result v0
if-lez v0, :cond_117
iget-object v0, v2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
new-instance v3, Lcom/twidroid/model/twitter/d;
iget-object v4, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
const v7, 0x7f0c019a
invoke-virtual {v4, v7}, Lcom/twidroid/fragments/e/n;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z
iget-object v0, v2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, v6}, Lcom/twidroid/model/twitter/e;->addAll(Ljava/util/Collection;)Z
:cond_117
invoke-virtual {v5}, Lcom/twidroid/model/twitter/e;->size()I
move-result v0
if-lez v0, :cond_ae
iget-object v0, v2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
new-instance v3, Lcom/twidroid/model/twitter/d;
iget-object v4, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
const v6, 0x7f0c0197
invoke-virtual {v4, v6}, Lcom/twidroid/fragments/e/n;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lcom/twidroid/model/twitter/d;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/twidroid/model/twitter/e;->add(Ljava/lang/Object;)Z
iget-object v0, v2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, v5}, Lcom/twidroid/model/twitter/e;->addAll(Ljava/util/Collection;)Z
:try_end_139
.catch Ljava/lang/Exception; {:try_start_ee .. :try_end_139} :catch_9b
goto/16 :goto_ae
:cond_13b
move-object v0, v2
goto/16 :goto_22
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/q;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/p;->a([Lcom/twidroid/fragments/e/q;)Lcom/twidroid/fragments/e/o;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/n;
check-cast p2, Lcom/twidroid/fragments/e/o;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/p;->a(Lcom/twidroid/fragments/e/n;Lcom/twidroid/fragments/e/o;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/n;Lcom/twidroid/fragments/e/o;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
if-eqz p1, :cond_b
invoke-virtual {p1}, Lcom/twidroid/fragments/e/n;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
if-nez v0, :cond_c
:goto_b
:cond_b
return-void
:cond_c
invoke-virtual {p1}, Lcom/twidroid/fragments/e/n;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
if-nez p2, :cond_19
invoke-virtual {p1}, Lcom/twidroid/fragments/e/n;->P()V
goto :goto_b
:cond_19
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
iget-object v0, v0, Lcom/twidroid/fragments/e/n;->G:Lcom/twidroid/ui/a/ap;
iget-object v1, p2, Lcom/twidroid/fragments/e/o;->b:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ap;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->b:Lcom/twidroid/fragments/e/n;
iget-object v0, v0, Lcom/twidroid/fragments/e/n;->G:Lcom/twidroid/ui/a/ap;
iget-object v1, p2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ap;->a(Lcom/twidroid/model/twitter/e;)V
iget-object v0, p2, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/e;->isEmpty()Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p1}, Lcom/twidroid/fragments/e/n;->P()V
goto :goto_b
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/e/p;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/n;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/n;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/e/p;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method