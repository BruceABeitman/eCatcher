.class  Lcom/twidroid/fragments/d/u;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/d/t;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/u;->c([Ljava/lang/Object;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/d/t;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/d/u;->a(Lcom/twidroid/fragments/d/t;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/t;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/t;Lcom/ubermedia/a/g;)V
.registers 7
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
if-nez p2, :cond_1a
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->P()V
const v0, 0x7f0c02ae
invoke-virtual {p1, v0}, Lcom/twidroid/fragments/d/t;->b(I)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->R()V
:cond_19
:goto_19
return-void
:cond_1a
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-static {p1}, Lcom/twidroid/fragments/d/t;->b(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/ui/a/am;
move-result-object v1
if-eqz v1, :cond_5b
invoke-static {p1}, Lcom/twidroid/fragments/d/t;->b(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v1
if-lez v1, :cond_5b
const/4 v1, 0x1
:goto_35
invoke-static {p1}, Lcom/twidroid/fragments/d/t;->b(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/ui/a/am;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
invoke-static {p1}, Lcom/twidroid/fragments/d/t;->b(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/ui/a/am;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
if-eqz v0, :cond_19
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_19
if-eqz v1, :cond_19
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, 0x0
invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
goto :goto_19
:cond_5b
move v1, v2
goto :goto_35
:cond_5d
invoke-virtual {p1}, Lcom/twidroid/fragments/d/t;->P()V
goto :goto_19
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/d/t;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/u;->a(Lcom/twidroid/fragments/d/t;)V
return-void
.end method
.method protected varargs c([Ljava/lang/Object;)Lcom/ubermedia/a/g;
.registers 9
const/4 v2, 0x0
const/4 v1, 0x0
aget-object v0, p1, v1
if-nez v0, :cond_2a
new-instance v2, Ljava/lang/Exception;
const-string v0, "Error loading user tweets"
invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/t;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/t;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
:goto_29
return-object v0
:cond_2a
aget-object v0, p1, v1
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
const/4 v0, 0x1
aget-object v0, p1, v0
check-cast v0, Ljava/lang/Long;
:try_start_35
iget-object v1, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/t;
invoke-static {v1}, Lcom/twidroid/fragments/d/t;->c(Lcom/twidroid/fragments/d/t;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-static {}, Lcom/twidroid/fragments/d/t;->x()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v5
invoke-virtual {v1, v3, v4, v5, v6}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;Ljava/lang/Integer;J)Ljava/util/List;
move-result-object v1
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:try_end_5a
.catch Lcom/ubermedia/net/a/a/a; {:try_start_35 .. :try_end_5a} :catch_5b
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5a} :catch_83
goto :goto_29
:catch_5b
move-exception v0
move-object v3, v0
invoke-virtual {v3}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
packed-switch v0, :pswitch_data_b4
iget-object v0, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/t;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/t;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v3, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v3}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_29
:pswitch_81
move-object v0, v2
goto :goto_29
:catch_83
move-exception v0
move-object v3, v0
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Connection failed. Please try again."
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_96
move-object v0, v2
goto :goto_29
:cond_96
iget-object v0, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/t;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/t;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v3, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v3}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto/16 :goto_29
:pswitch_data_b4
.packed-switch 0x3
:pswitch_81
.end packed-switch
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/d/u;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/t;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/d/u;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method