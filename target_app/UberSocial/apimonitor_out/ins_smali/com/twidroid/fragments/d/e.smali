.class  Lcom/twidroid/fragments/d/e;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/d/c;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/d/f;)Lcom/ubermedia/a/g;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/d/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/c;
invoke-static {v0}, Lcom/twidroid/fragments/d/c;->a(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-object v1, v1, Lcom/twidroid/fragments/d/f;->b:Ljava/lang/String;
const/4 v2, 0x0
aget-object v2, p1, v2
iget-wide v2, v2, Lcom/twidroid/fragments/d/f;->a:J
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;J)Ljava/util/List;
move-result-object v1
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24
return-object v0
:catch_24
move-exception v0
move-object v2, v0
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Connection failed. Please try again."
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x0
goto :goto_23
:cond_37
iget-object v0, p0, Lcom/twidroid/fragments/d/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/c;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_23
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/d/f;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/e;->a([Lcom/twidroid/fragments/d/f;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/d/c;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/d/e;->a(Lcom/twidroid/fragments/d/c;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/c;Lcom/ubermedia/a/g;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/c;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_28
invoke-static {p1}, Lcom/twidroid/fragments/d/c;->b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;
move-result-object v1
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
invoke-static {p1}, Lcom/twidroid/fragments/d/c;->b(Lcom/twidroid/fragments/d/c;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
iget v0, p1, Lcom/twidroid/fragments/d/c;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lcom/twidroid/fragments/d/c;->e:I
:cond_28
return-void
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/d/c;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/e;->a(Lcom/twidroid/fragments/d/c;)V
return-void
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/d/e;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/c;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/c;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/d/e;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method