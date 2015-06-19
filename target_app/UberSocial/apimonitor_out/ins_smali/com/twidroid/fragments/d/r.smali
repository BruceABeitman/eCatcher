.class  Lcom/twidroid/fragments/d/r;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/d/p;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/d/s;)Lcom/ubermedia/a/g;
.registers 10
const-wide/16 v4, 0x0
if-eqz p1, :cond_7
:try_start_4
array-length v0, p1
if-nez v0, :cond_9
:cond_7
const/4 v0, 0x0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->a(Lcom/twidroid/fragments/d/p;)Z
move-result v0
if-eqz v0, :cond_78
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->c(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/p;
invoke-static {v1}, Lcom/twidroid/fragments/d/p;->b(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
const-wide/16 v2, 0x0
const/4 v6, 0x0
aget-object v6, p1, v6
iget-wide v6, v6, Lcom/twidroid/fragments/d/s;->a:J
cmp-long v6, v6, v4
if-lez v6, :cond_4e
const/4 v4, 0x0
aget-object v4, p1, v4
iget-wide v4, v4, Lcom/twidroid/fragments/d/s;->a:J
const-wide/16 v6, 0x1
sub-long/2addr v4, v6
:cond_4e
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;JJ)Ljava/util/List;
move-result-object v0
move-object v1, v0
:goto_53
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:try_end_58
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_58} :catch_59
goto :goto_8
:catch_59
move-exception v0
move-object v2, v0
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/p;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_8
:try_start_78
:cond_78
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->d(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-wide v1, v1, Lcom/twidroid/fragments/d/s;->a:J
const/4 v3, 0x0
aget-object v3, p1, v3
iget-object v3, v3, Lcom/twidroid/fragments/d/s;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;)Ljava/util/List;
:try_end_95
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_95} :catch_59
move-result-object v0
move-object v1, v0
goto :goto_53
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/d/s;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/r;->a([Lcom/twidroid/fragments/d/s;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/d/p;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/d/r;->a(Lcom/twidroid/fragments/d/p;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/p;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
if-eqz p1, :cond_13
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:goto_12
return-void
:cond_13
sget-object v0, Lcom/twidroid/fragments/d/p;->d:Ljava/lang/String;
const-string v1, "owner or PullToRefreshListView is null!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12
.end method
.method protected a(Lcom/twidroid/fragments/d/p;Lcom/ubermedia/a/g;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
if-eqz p2, :cond_24
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_24
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v1
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:cond_24
return-void
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/d/p;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/r;->a(Lcom/twidroid/fragments/d/p;)V
return-void
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/d/r;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/p;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/d/r;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method