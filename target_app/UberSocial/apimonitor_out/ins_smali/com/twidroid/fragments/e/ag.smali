.class  Lcom/twidroid/fragments/e/ag;
.super Lcom/twidroid/fragments/e/ad;
.source "SourceFile"
.field  b:Lcom/twidroid/fragments/e/ab;
.method public constructor <init>(Lcom/twidroid/fragments/e/ab;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ad;-><init>(Lcom/twidroid/fragments/e/ab;)V
iput-object p1, p0, Lcom/twidroid/fragments/e/ag;->b:Lcom/twidroid/fragments/e/ab;
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/ae;)Lcom/ubermedia/a/g;
.registers 12
:try_start_0
iget-object v0, p0, Lcom/twidroid/fragments/e/ag;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->x()Z
move-result v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/twidroid/fragments/e/ag;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->u(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-object v1, v1, Lcom/twidroid/fragments/e/ae;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/fragments/e/ag;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/ab;->y()D
move-result-wide v2
iget-object v4, p0, Lcom/twidroid/fragments/e/ag;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v4}, Lcom/twidroid/fragments/e/ab;->z()D
move-result-wide v4
const/16 v6, 0x32
const/4 v7, 0x0
aget-object v7, p1, v7
iget-wide v7, v7, Lcom/twidroid/fragments/e/ae;->c:J
const/4 v9, 0x0
aget-object v9, p1, v9
iget-boolean v9, v9, Lcom/twidroid/fragments/e/ae;->d:Z
invoke-virtual/range {v0 .. v9}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;DDIJZ)Ljava/util/List;
move-result-object v0
move-object v1, v0
:goto_3a
new-instance v0, Lcom/ubermedia/a/g;
const/4 v2, 0x0
aget-object v2, p1, v2
iget-boolean v2, v2, Lcom/twidroid/fragments/e/ae;->d:Z
invoke-direct {v0, v1, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;Z)V
:goto_44
return-object v0
:cond_45
iget-object v0, p0, Lcom/twidroid/fragments/e/ag;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->v(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v1, 0x0
aget-object v1, p1, v1
iget-object v1, v1, Lcom/twidroid/fragments/e/ae;->a:Ljava/lang/String;
const/4 v2, 0x0
aget-object v2, p1, v2
iget-wide v2, v2, Lcom/twidroid/fragments/e/ae;->c:J
const/4 v4, 0x0
aget-object v4, p1, v4
iget-boolean v4, v4, Lcom/twidroid/fragments/e/ae;->d:Z
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;JZ)Ljava/util/List;
:try_end_67
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_6a
move-result-object v0
move-object v1, v0
goto :goto_3a
:catch_6a
move-exception v0
move-object v1, v0
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto :goto_44
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/ae;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ag;->a([Lcom/twidroid/fragments/e/ae;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/e/ab;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/ag;->a(Lcom/twidroid/fragments/e/ab;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/ab;Lcom/ubermedia/a/g;)V
.registers 6
const/4 v2, 0x1
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/e/ad;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/fragments/e/ab;->H:Z
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->isDetached()Z
move-result v0
if-nez v0, :cond_3e
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v1, p1, Lcom/twidroid/fragments/e/ab;->f:Lcom/twidroid/ui/a/ac;
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_66
if-eqz v1, :cond_37
:try_start_1d
invoke-virtual {v1}, Lcom/twidroid/ui/a/ac;->getCount()I
move-result v0
if-nez v0, :cond_3f
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ac;->c(Ljava/util/List;)V
:goto_2a
invoke-virtual {v1}, Lcom/twidroid/ui/a/ac;->isEmpty()Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x1
invoke-static {p1, v0}, Lcom/twidroid/fragments/e/ab;->c(Lcom/twidroid/fragments/e/ab;Z)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->P()V
:goto_37
:cond_37
:try_end_37
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_37} :catch_4e
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
:cond_3e
return-void
:try_start_3f
:cond_3f
iget-boolean v0, p2, Lcom/ubermedia/a/g;->c:Z
if-eqz v0, :cond_5b
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ac;->b(Ljava/util/List;)V
invoke-virtual {v1}, Lcom/twidroid/ui/a/ac;->notifyDataSetChanged()V
:try_end_4d
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4d} :catch_4e
goto :goto_2a
:catch_4e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_37
const-string v1, "TwitterSearch"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_37
:cond_5b
:try_start_5b
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/ac;->a(Ljava/util/List;)V
invoke-virtual {v1}, Lcom/twidroid/ui/a/ac;->notifyDataSetChanged()V
:try_end_65
.catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_4e
goto :goto_2a
:cond_66
invoke-virtual {v1}, Lcom/twidroid/ui/a/ac;->isEmpty()Z
move-result v0
if-eqz v0, :cond_37
invoke-static {p1, v2}, Lcom/twidroid/fragments/e/ab;->c(Lcom/twidroid/fragments/e/ab;Z)V
invoke-virtual {p1}, Lcom/twidroid/fragments/e/ab;->P()V
goto :goto_37
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ag;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/ag;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/ab;
iget-object v0, v0, Lcom/twidroid/fragments/e/ab;->f:Lcom/twidroid/ui/a/ac;
invoke-static {v0}, Lcom/twidroid/fragments/e/ag;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method