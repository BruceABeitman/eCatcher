.class  Lcom/twidroid/fragments/e/au;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/at;
.method private constructor <init>(Lcom/twidroid/fragments/e/at;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/fragments/e/at;Lcom/twidroid/fragments/e/at$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/au;-><init>(Lcom/twidroid/fragments/e/at;)V
return-void
.end method
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/au;->c([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 1
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/au;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 3
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
if-eqz p1, :cond_17
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->h(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->h(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:cond_17
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/at;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected varargs c([Ljava/lang/Object;)Ljava/util/List;
.registers 9
const/4 v6, 0x0
const/4 v0, 0x0
:try_start_2
aget-object v0, p1, v0
if-nez v0, :cond_8
move-object v0, v6
:goto_7
return-object v0
:cond_8
const/4 v0, 0x0
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->a(Lcom/twidroid/fragments/e/at;)Z
move-result v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->b(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-nez v0, :cond_7f
:cond_1f
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v1}, Lcom/twidroid/fragments/e/at;->c(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/at;->a(Lcom/twidroid/fragments/e/at;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7f
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->d(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->s()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_7f
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_44
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
if-eqz v0, :cond_44
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->a()I
move-result v3
if-lez v3, :cond_44
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_44
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_44
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
iget-object v3, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v3}, Lcom/twidroid/fragments/e/at;->e(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
move-result-object v3
invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->a()I
move-result v0
invoke-virtual {v3, v0}, Lcom/twidroid/b/a/b;->i(I)Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-static {v1, v0}, Lcom/twidroid/fragments/e/at;->a(Lcom/twidroid/fragments/e/at;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
:cond_7f
const/4 v0, 0x1
aget-object v0, p1, v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v4
const/4 v0, 0x2
aget-object v0, p1, v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_b1
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->f(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v1}, Lcom/twidroid/fragments/e/at;->b(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-static {}, Lcom/twidroid/fragments/e/at;->x()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
move-result-object v0
goto/16 :goto_7
:cond_b1
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v0}, Lcom/twidroid/fragments/e/at;->g(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-static {v1}, Lcom/twidroid/fragments/e/at;->b(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-static {}, Lcom/twidroid/fragments/e/at;->x()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->b(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
:try_end_cc
.catch Lcom/ubermedia/net/a/a/a; {:try_start_2 .. :try_end_cc} :catch_cf
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_cc} :catch_fa
move-result-object v0
goto/16 :goto_7
:catch_cf
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v1
const/4 v2, 0x3
if-ne v1, v2, :cond_e4
iget-object v0, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
new-instance v1, Lcom/twidroid/fragments/e/au$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/au$1;-><init>(Lcom/twidroid/fragments/e/au;)V
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/at;->a(Lcom/twidroid/fragments/e/at;Ljava/lang/Runnable;)V
move-object v0, v6
goto/16 :goto_7
:cond_e4
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/at;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_f7
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
iget-object v2, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/at;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_f7
move-object v0, v6
goto/16 :goto_7
:catch_fa
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/at;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_111
iget-object v1, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
iget-object v2, p0, Lcom/twidroid/fragments/e/au;->a:Lcom/twidroid/fragments/e/at;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/at;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v0, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_111
move-object v0, v6
goto/16 :goto_7
.end method