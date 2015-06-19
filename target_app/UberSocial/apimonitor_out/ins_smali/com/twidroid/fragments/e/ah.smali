.class  Lcom/twidroid/fragments/e/ah;
.super Lcom/twidroid/fragments/e/ad;
.source "SourceFile"
.field  b:Lcom/twidroid/fragments/e/ae;
.method public constructor <init>(Lcom/twidroid/fragments/e/ab;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ad;-><init>(Lcom/twidroid/fragments/e/ab;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/ae;)Lcom/ubermedia/a/g;
.registers 6
const/4 v0, 0x0
:try_start_1
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/fragments/e/ah;->b:Lcom/twidroid/fragments/e/ae;
iget-object v0, p0, Lcom/twidroid/fragments/e/ah;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->t(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-wide v1, v1, Lcom/twidroid/fragments/e/ae;->c:J
const/4 v3, 0x0
aget-object v3, p1, v3
iget-object v3, v3, Lcom/twidroid/fragments/e/ae;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->b(JLjava/lang/String;)Ljava/util/List;
move-result-object v1
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_29
:goto_28
return-object v0
:catch_29
move-exception v0
move-object v2, v0
iget-object v0, p0, Lcom/twidroid/fragments/e/ah;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/e/ah;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/e/ab;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_28
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/ae;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ah;->a([Lcom/twidroid/fragments/e/ae;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/ab;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/ah;->a(Lcom/twidroid/fragments/e/ab;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/ab;Lcom/ubermedia/a/g;)V
.registers 8
const/4 v4, 0x1
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/e/ad;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_48
iget-object v0, p0, Lcom/twidroid/fragments/e/ah;->b:Lcom/twidroid/fragments/e/ae;
iget-wide v0, v0, Lcom/twidroid/fragments/e/ae;->c:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_20
const-string v0, "TwitterSearch"
const-string v1, "clearing list of users"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p1, Lcom/twidroid/fragments/e/ab;->e:Lcom/twidroid/ui/a/ad;
invoke-virtual {v0}, Lcom/twidroid/ui/a/ad;->b()V
:cond_20
iget-object v1, p1, Lcom/twidroid/fragments/e/ab;->e:Lcom/twidroid/ui/a/ad;
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ad;->a(Ljava/util/List;)V
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_41
invoke-static {p1, v4}, Lcom/twidroid/fragments/e/ab;->c(Lcom/twidroid/fragments/e/ab;Z)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->P()V
:cond_39
:goto_39
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
:cond_41
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ah;->c()Z
move-result v0
if-eqz v0, :cond_39
goto :goto_39
:cond_48
invoke-static {p1, v4}, Lcom/twidroid/fragments/e/ab;->c(Lcom/twidroid/fragments/e/ab;Z)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->P()V
goto :goto_39
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ah;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method