.class  Lcom/twidroid/fragments/e/m;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.field  b:Lcom/twidroid/fragments/e/l;
.field final synthetic c:Lcom/twidroid/fragments/e/k;
.method public constructor <init>(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/e/k;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-direct {p0, p2}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/l;)Lcom/twidroid/fragments/c/a;
.registers 13
const/4 v10, 0x3
const/4 v8, 0x1
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/k;
invoke-static {v0}, Lcom/twidroid/fragments/e/k;->c(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/b/a/b;
move-result-object v0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_20
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_38
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_20
:cond_38
new-instance v9, Lcom/twidroid/fragments/c/a;
new-instance v1, Lcom/twidroid/fragments/c/b;
iget-object v3, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-object v3, v3, Lcom/twidroid/fragments/e/l;->e:Ljava/util/List;
invoke-direct {v1, v3, v2}, Lcom/twidroid/fragments/c/b;-><init>(Ljava/util/List;Ljava/util/List;)V
invoke-direct {v9, v1}, Lcom/twidroid/fragments/c/a;-><init>(Lcom/twidroid/fragments/c/b;)V
move v7, v8
:goto_47
:try_start_47
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-boolean v1, v1, Lcom/twidroid/fragments/e/l;->a:Z
if-eqz v1, :cond_b9
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->d(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
move-result-object v1
const/16 v2, 0xc8
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/d/v;I)Ljava/util/List;
:cond_58
:goto_58
const/4 v1, -0x1
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->b(II)Ljava/util/ArrayList;
move-result-object v1
new-instance v2, Lcom/ubermedia/a/g;
invoke-direct {v2, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
const/4 v1, 0x0
invoke-virtual {v9, v2, v1}, Lcom/twidroid/fragments/c/a;->b(Lcom/ubermedia/a/g;Z)V
:try_end_67
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_67} :catch_dc
:goto_67
add-int/lit8 v1, v7, 0x1
if-ne v1, v10, :cond_102
:cond_6b
:try_start_6b
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-object v1, v1, Lcom/twidroid/fragments/e/l;->c:Ljava/lang/Long;
if-eqz v1, :cond_146
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-boolean v1, v1, Lcom/twidroid/fragments/e/l;->a:Z
if-eqz v1, :cond_10b
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->h(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/b/a/b;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-object v2, v2, Lcom/twidroid/fragments/e/l;->c:Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
iget-object v4, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-object v4, v4, Lcom/twidroid/fragments/e/l;->c:Ljava/lang/Long;
invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
move-result-wide v4
const/4 v6, 0x1
const/16 v7, 0xc8
invoke-virtual/range {v1 .. v7}, Lcom/twidroid/b/a/b;->a(JJZI)Ljava/util/List;
:cond_93
:goto_93
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->l(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v9}, Lcom/twidroid/fragments/c/a;->f()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->i(J)Ljava/util/ArrayList;
move-result-object v1
if-nez v1, :cond_ab
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
:cond_ab
new-instance v2, Lcom/ubermedia/a/g;
invoke-direct {v2, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
const/4 v1, 0x0
invoke-virtual {v9, v2, v1}, Lcom/twidroid/fragments/c/a;->a(Lcom/ubermedia/a/g;Z)V
:try_end_b4
.catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b4} :catch_120
:goto_b4
add-int/lit8 v8, v8, 0x1
if-ne v8, v10, :cond_15f
:goto_b8
return-object v9
:cond_b9
:try_start_b9
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->e(Lcom/twidroid/fragments/e/k;)Z
move-result v1
if-eqz v1, :cond_58
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/twidroid/fragments/e/k;->a(Lcom/twidroid/fragments/e/k;Z)Z
const/4 v1, 0x0
iget-object v2, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v2}, Lcom/twidroid/fragments/e/k;->f(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
move-result-object v2
const/4 v3, 0x0
const-wide/16 v4, -0x1
iget-object v6, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v6}, Lcom/twidroid/fragments/e/k;->g(Lcom/twidroid/fragments/e/k;)Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLjava/lang/String;)Ljava/util/List;
:try_end_da
.catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_da} :catch_dc
goto/16 :goto_58
:catch_dc
move-exception v1
move-object v3, v1
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iget-object v2, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/fragments/e/k;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v3, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v1, Lcom/ubermedia/a/g;
invoke-direct {v1, v3}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
invoke-virtual {v9, v1}, Lcom/twidroid/fragments/c/a;->b(Lcom/ubermedia/a/g;)V
goto/16 :goto_67
:cond_102
invoke-virtual {v9}, Lcom/twidroid/fragments/c/a;->j()Z
move-result v2
if-nez v2, :cond_6b
move v7, v1
goto/16 :goto_47
:try_start_10b
:cond_10b
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->j(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/d/v;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v2}, Lcom/twidroid/fragments/e/k;->i(Lcom/twidroid/fragments/e/k;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->n(J)Ljava/util/List;
:try_end_11e
.catch Ljava/lang/Exception; {:try_start_10b .. :try_end_11e} :catch_120
goto/16 :goto_93
:catch_120
move-exception v1
move-object v3, v1
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iget-object v2, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/fragments/e/k;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/k;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v1, v3, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v1, Lcom/ubermedia/a/g;
invoke-direct {v1, v3}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
invoke-virtual {v9, v1}, Lcom/twidroid/fragments/c/a;->a(Lcom/ubermedia/a/g;)V
goto/16 :goto_b4
:cond_146
:try_start_146
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-boolean v1, v1, Lcom/twidroid/fragments/e/l;->f:Z
if-eqz v1, :cond_93
iget-object v1, p0, Lcom/twidroid/fragments/e/m;->c:Lcom/twidroid/fragments/e/k;
invoke-static {v1}, Lcom/twidroid/fragments/e/k;->k(Lcom/twidroid/fragments/e/k;)Lcom/twidroid/UberSocialApplication;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v9}, Lcom/twidroid/fragments/c/a;->f()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->i(J)Ljava/util/ArrayList;
:try_end_15d
.catch Ljava/lang/Exception; {:try_start_146 .. :try_end_15d} :catch_120
goto/16 :goto_93
:cond_15f
invoke-virtual {v9}, Lcom/twidroid/fragments/c/a;->i()Z
move-result v1
if-eqz v1, :cond_6b
goto/16 :goto_b8
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/l;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/m;->a([Lcom/twidroid/fragments/e/l;)Lcom/twidroid/fragments/c/a;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/k;
check-cast p2, Lcom/twidroid/fragments/c/a;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/m;->a(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/c/a;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/k;Lcom/twidroid/fragments/c/a;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->g()V
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->h()Z
move-result v0
if-eqz v0, :cond_90
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->b()Lcom/ubermedia/a/g;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_68
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->b:Lcom/twidroid/fragments/e/l;
iget-boolean v0, v0, Lcom/twidroid/fragments/e/l;->a:Z
if-nez v0, :cond_30
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->g()V
:cond_30
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->b()Lcom/ubermedia/a/g;
move-result-object v0
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "RESULT COUNT: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1, v0, v4, v5}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->f()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/twidroid/fragments/e/k;->a(Lcom/twidroid/fragments/e/k;J)J
:cond_68
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->a()Lcom/ubermedia/a/g;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_88
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->a()Lcom/ubermedia/a/g;
move-result-object v0
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1, v0, v4, v5}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V
invoke-virtual {p2}, Lcom/twidroid/fragments/c/a;->g()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/twidroid/fragments/e/k;->b(Lcom/twidroid/fragments/e/k;J)J
:cond_88
:goto_88
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
return-void
:cond_90
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->x()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_88
invoke-virtual {p1}, Lcom/twidroid/fragments/e/k;->P()V
goto :goto_88
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/k;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/k;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/e/m;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/k;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/k;->x()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/twidroid/fragments/e/m;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/k;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/k;->x()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_3c
const/4 v0, 0x1
:goto_3b
return v0
:cond_3c
const/4 v0, 0x0
goto :goto_3b
.end method