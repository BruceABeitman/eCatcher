.class  Lcom/twidroid/fragments/e/g$2;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field  b:Z
.field final synthetic c:Lcom/twidroid/fragments/e/g;
.method constructor <init>(Lcom/twidroid/fragments/e/g;Lcom/twidroid/fragments/e/g;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$2;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 16
const-wide/16 v3, -0x1
const/4 v13, 0x0
const/4 v10, 0x1
const/4 v11, 0x0
:try_start_5
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->l(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->cb()Z
move-result v0
if-eqz v0, :cond_197
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
iget-boolean v0, v0, Lcom/twidroid/fragments/e/g;->J:Z
if-eqz v0, :cond_11c
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/fragments/e/g;->J:Z
move v12, v10
:goto_21
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->q(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-eqz v0, :cond_162
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->r(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
cmp-long v0, v0, v3
if-eqz v0, :cond_162
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->t(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->s(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-lez v0, :cond_15e
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J
move-result-wide v4
:goto_6b
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->x(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->u(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
iget-object v6, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v6}, Lcom/twidroid/fragments/e/g;->v(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/model/twitter/c;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v7}, Lcom/twidroid/fragments/e/g;->w(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v7
invoke-virtual {v7}, Lcom/twidroid/d/v;->D()Z
move-result v7
const/4 v8, 0x0
iget-object v9, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v9}, Lcom/twidroid/fragments/e/g;->m()Ljava/lang/String;
move-result-object v9
invoke-virtual/range {v0 .. v9}, Lcom/twidroid/b/a/b;->a(ZJJLjava/lang/String;ZZLjava/lang/String;)Ljava/util/List;
move-result-object v0
move-object v1, v0
:goto_9c
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_187
move v0, v10
:goto_a3
const-string v2, "HomeTimeline"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Rate Limit Status: max:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-wide v4, Lcom/twidroid/net/a/c/c;->i:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " remaining: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-wide v4, Lcom/twidroid/net/a/c/c;->h:J
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " reset: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
sget-wide v4, Lcom/twidroid/net/a/c/c;->j:J
const-wide/16 v6, 0x3e8
mul-long/2addr v4, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/twidroid/fragments/e/g;->c(Lcom/twidroid/fragments/e/g;Z)Z
if-nez v0, :cond_e2
if-eqz v12, :cond_e3
:cond_e2
move v11, v10
:cond_e3
iput-boolean v11, p0, Lcom/twidroid/fragments/e/g$2;->b:Z
iget-boolean v0, p0, Lcom/twidroid/fragments/e/g$2;->b:Z
if-nez v0, :cond_100
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->A(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_fd
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->B(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_100
:cond_fd
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/g$2;->b:Z
:cond_100
if-eqz v1, :cond_11b
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_11b
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->D(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->C(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v0, v2, v1}, Lcom/twidroid/d/v;->d(Landroid/content/Context;I)V
:cond_11b
:goto_11b
return-object v13
:cond_11c
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->m(Lcom/twidroid/fragments/e/g;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_197
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->p(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->o(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->n(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->n(J)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_15c
move v0, v10
:goto_159
move v12, v0
goto/16 :goto_21
:cond_15c
move v0, v11
goto :goto_159
:cond_15e
const-wide/16 v4, 0x0
goto/16 :goto_6b
:cond_162
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->z(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v2}, Lcom/twidroid/fragments/e/g;->y(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/UberSocialApplication;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, -0x1
iget-object v6, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v6}, Lcom/twidroid/fragments/e/g;->m()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLjava/lang/String;)Ljava/util/List;
:try_end_183
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_183} :catch_18a
move-result-object v0
move-object v1, v0
goto/16 :goto_9c
:cond_187
move v0, v11
goto/16 :goto_a3
:catch_18a
move-exception v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
iget-object v2, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
goto :goto_11b
:cond_197
move v12, v11
goto/16 :goto_21
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/g;
check-cast p2, Ljava/util/List;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/g$2;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/g;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/g;->g(Lcom/twidroid/fragments/e/g;Z)Z
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
const-string v0, "HomeTimeline"
const-string v1, "TPOS ::onSafePostExecute+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_15
:cond_14
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->M()V
iget-boolean v0, p0, Lcom/twidroid/fragments/e/g$2;->b:Z
if-eqz v0, :cond_5f
const-string v0, "HomeTimeline"
const-string v1, "TPOS Show Tweets from ::invalidate_shown_tweets"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0, v3}, Lcom/twidroid/fragments/e/g;->d(Lcom/twidroid/fragments/e/g;Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0, v3}, Lcom/twidroid/fragments/e/g;->e(Lcom/twidroid/fragments/e/g;Z)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->b()V
:goto_34
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0, v2}, Lcom/twidroid/fragments/e/g;->f(Lcom/twidroid/fragments/e/g;Z)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-static {v0}, Lcom/twidroid/fragments/e/g;->E(Lcom/twidroid/fragments/e/g;)V
:try_start_43
iget-object v0, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:try_end_4c
.catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_4c} :catch_67
sget-boolean v0, Lcom/twidroid/TwidroidClient;->c:Z
if-eqz v0, :cond_14
sput-boolean v2, Lcom/twidroid/TwidroidClient;->c:Z
new-instance v0, Lcom/twidroid/fragments/e/g$2$1;
iget-object v1, p0, Lcom/twidroid/fragments/e/g$2;->c:Lcom/twidroid/fragments/e/g;
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/e/g$2$1;-><init>(Lcom/twidroid/fragments/e/g$2;Lcom/twidroid/fragments/e/g;)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/g$2$1;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_14
:cond_5f
const-string v0, "HomeTimeline"
const-string v1, "TPOS nothing changed thru update"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_34
:catch_67
move-exception v0
const-string v1, "HomeTimeline"
const-string v2, "possibly activity already closed"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_14
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/g;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$2;->a(Lcom/twidroid/fragments/e/g;)V
return-void
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method