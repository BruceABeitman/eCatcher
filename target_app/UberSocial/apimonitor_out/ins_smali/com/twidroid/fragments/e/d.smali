.class  Lcom/twidroid/fragments/e/d;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/c;
.method private constructor <init>(Lcom/twidroid/fragments/e/c;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/fragments/e/c;Lcom/twidroid/fragments/e/c$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/d;-><init>(Lcom/twidroid/fragments/e/c;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/e;)Lcom/twidroid/fragments/e/f;
.registers 10
const/4 v1, 0x0
if-eqz p1, :cond_6
array-length v0, p1
if-nez v0, :cond_8
:cond_6
move-object v0, v1
:goto_7
:cond_7
return-object v0
:cond_8
const/4 v0, 0x0
:try_start_9
aget-object v0, p1, v0
iget-boolean v4, v0, Lcom/twidroid/fragments/e/e;->b:Z
const/4 v0, 0x0
aget-object v0, p1, v0
iget-boolean v5, v0, Lcom/twidroid/fragments/e/e;->a:Z
if-eqz v4, :cond_e2
const/4 v0, 0x0
aget-object v0, p1, v0
iget-wide v2, v0, Lcom/twidroid/fragments/e/e;->c:J
const-wide/16 v6, 0x1
sub-long/2addr v2, v6
:goto_1c
new-instance v0, Lcom/twidroid/fragments/e/f;
const/4 v6, 0x0
invoke-direct {v0, v6}, Lcom/twidroid/fragments/e/f;-><init>(Lcom/twidroid/fragments/e/c$1;)V
iput-boolean v4, v0, Lcom/twidroid/fragments/e/f;->b:Z
iget-object v6, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v6}, Lcom/twidroid/fragments/e/c;->r()Z
move-result v6
if-nez v6, :cond_7
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/net/n;->b()Z
move-result v6
if-eqz v6, :cond_7
iget-object v6, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v6}, Lcom/twidroid/fragments/e/c;->a(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/net/a/c/c;->w()Z
move-result v6
if-nez v6, :cond_7
iget-object v6, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Lcom/twidroid/fragments/e/c;->c(Z)V
:try_start_50
:try_end_50
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_50} :catch_c0
iget-object v6, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v6}, Lcom/twidroid/fragments/e/c;->b(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/b/a/b;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v6
invoke-virtual {v6, v2, v3, v4}, Lcom/twidroid/net/a/c/c;->b(JZ)Ljava/util/List;
move-result-object v2
iput-object v2, v0, Lcom/twidroid/fragments/e/f;->a:Ljava/util/List;
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v2}, Lcom/twidroid/fragments/e/c;->c(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/model/twitter/c;
move-result-object v2
if-eqz v2, :cond_7
if-nez v5, :cond_87
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v2}, Lcom/twidroid/fragments/e/c;->e(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
iget-object v3, v0, Lcom/twidroid/fragments/e/f;->a:Ljava/util/List;
iget-object v4, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v4}, Lcom/twidroid/fragments/e/c;->d(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/d/v;->D()Z
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/twidroid/b/a/b;->a(Ljava/util/List;Z)V
:cond_87
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v2}, Lcom/twidroid/fragments/e/c;->f(Lcom/twidroid/fragments/e/c;)Z
move-result v2
if-eqz v2, :cond_7
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/twidroid/fragments/e/c;->a(Lcom/twidroid/fragments/e/c;Z)Z
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v2}, Lcom/twidroid/fragments/e/c;->h(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
iget-object v3, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v3}, Lcom/twidroid/fragments/e/c;->g(Lcom/twidroid/fragments/e/c;)Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I
move-result v3
invoke-static {}, Lcom/twidroid/fragments/e/c;->Z()I
move-result v4
invoke-virtual {v2, v3, v4}, Lcom/twidroid/b/a/b;->c(II)V
:try_end_b0
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_b0} :catch_b2
goto/16 :goto_7
:catch_b2
move-exception v2
:try_start_b3
iget-object v3, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
iget-object v4, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v4}, Lcom/twidroid/fragments/e/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v4
invoke-static {v3, v2, v4}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:try_end_be
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_be} :catch_c0
goto/16 :goto_7
:catch_c0
move-exception v0
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
if-eqz v2, :cond_d4
iget-object v2, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
iget-object v3, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v3}, Lcom/twidroid/fragments/e/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v2, v0, v3}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_d4
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_df
const-string v2, "FavoriteFragment"
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_df
move-object v0, v1
goto/16 :goto_7
:cond_e2
const/4 v0, 0x0
:try_start_e3
aget-object v0, p1, v0
iget-wide v2, v0, Lcom/twidroid/fragments/e/e;->c:J
:try_end_e7
.catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e7} :catch_c0
goto/16 :goto_1c
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/e;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/d;->a([Lcom/twidroid/fragments/e/e;)Lcom/twidroid/fragments/e/f;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/fragments/e/f;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/c;->c(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/c;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/c;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
if-nez p1, :cond_1a
:cond_19
:goto_19
return-void
:cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
iget-object v1, p1, Lcom/twidroid/fragments/e/f;->a:Ljava/util/List;
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/c;->a(Lcom/twidroid/fragments/e/c;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/c;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/c;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
:try_start_2e
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v1
if-nez v1, :cond_4e
iget-object v1, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v1}, Lcom/twidroid/fragments/e/c;->i(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
:goto_3d
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_40} :catch_41
goto :goto_19
:catch_41
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_19
const-string v1, "FavoriteFragment"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
:try_start_4e
:cond_4e
iget-boolean v1, p1, Lcom/twidroid/fragments/e/f;->b:Z
if-eqz v1, :cond_5c
iget-object v1, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v1}, Lcom/twidroid/fragments/e/c;->j(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->b(Ljava/util/List;)V
goto :goto_3d
:cond_5c
iget-object v1, p0, Lcom/twidroid/fragments/e/d;->a:Lcom/twidroid/fragments/e/c;
invoke-static {v1}, Lcom/twidroid/fragments/e/c;->k(Lcom/twidroid/fragments/e/c;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;)V
:try_end_65
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_65} :catch_41
goto :goto_3d
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/f;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/d;->a(Lcom/twidroid/fragments/e/f;)V
return-void
.end method