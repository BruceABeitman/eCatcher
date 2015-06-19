.class  Lcom/twidroid/fragments/j;
.super Lcom/twidroid/fragments/g;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/f;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/g;-><init>(Lcom/twidroid/fragments/f;)V
return-void
.end method
.method private a(J)Lcom/twidroid/model/twitter/Tweet;
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/f;
invoke-static {v0}, Lcom/twidroid/fragments/f;->u(Lcom/twidroid/fragments/f;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1, p1, p2}, Lcom/twidroid/b/a/b;->m(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
if-nez v0, :cond_1a
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/twidroid/net/a/c/c;->j(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
:cond_1a
return-object v0
.end method
.method protected varargs a([Ljava/lang/Long;)Lcom/ubermedia/a/g;
.registers 8
const/4 v5, 0x3
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
const/4 v0, 0x0
:try_start_7
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_d
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-lez v3, :cond_1d
invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/j;->a(J)Lcom/twidroid/model/twitter/Tweet;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->ah:J
goto :goto_d
:cond_1d
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:goto_22
:try_end_22
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23
return-object v0
:catch_23
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
instance-of v0, v1, Lcom/ubermedia/net/a/a/a;
if-eqz v0, :cond_6f
move-object v0, v1
check-cast v0, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
if-ne v0, v5, :cond_6f
iget-object v0, p0, Lcom/twidroid/fragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/base/o;
const v2, 0x7f0c02ff
invoke-static {v0, v2}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_6f
new-instance v0, Lcom/ubermedia/net/a/a/a;
invoke-direct {v0, v2, v5}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
move-object v3, v0
:goto_4b
iget-object v0, p0, Lcom/twidroid/fragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v2, p0, Lcom/twidroid/fragments/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/twidroid/fragments/f;
invoke-virtual {v2}, Lcom/twidroid/fragments/f;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v0, v3, v2}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
const-string v0, "SingleTweetFragment"
const-string v2, "Loaning more conversation failed"
invoke-static {v0, v2, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_22
:cond_6f
move-object v3, v1
goto :goto_4b
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Long;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/j;->a([Ljava/lang/Long;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/f;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/j;->a(Lcom/twidroid/fragments/f;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/f;Lcom/ubermedia/a/g;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/g;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
if-eqz p1, :cond_2e
invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/a/k;
if-eqz v0, :cond_2e
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_27
invoke-virtual {p1}, Lcom/twidroid/fragments/f;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/k;
iget-object v1, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v1, Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/k;->d(Ljava/util/List;)V
invoke-virtual {v0}, Lcom/twidroid/ui/a/k;->notifyDataSetChanged()V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/k;->a(Z)V
:cond_27
invoke-virtual {p1}, Lcom/twidroid/fragments/f;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:cond_2e
return-void
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x0
return v0
.end method