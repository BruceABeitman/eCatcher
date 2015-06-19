.class  Lcom/twidroid/fragments/d/q;
.super Lcom/twidroid/a/a;
.source "SourceFile"
.method public constructor <init>(Lcom/twidroid/fragments/d/p;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V
return-void
.end method
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/q;->c([Ljava/lang/Object;)Lcom/ubermedia/a/g;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/twidroid/fragments/d/p;
check-cast p2, Lcom/ubermedia/a/g;
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/d/q;->a(Lcom/twidroid/fragments/d/p;Lcom/ubermedia/a/g;)V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/p;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/a/a;->b(Lcom/twidroid/fragments/base/o;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method protected a(Lcom/twidroid/fragments/d/p;Lcom/ubermedia/a/g;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
if-nez p2, :cond_19
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->P()V
const v0, 0x7f0c02ae
invoke-virtual {p1, v0}, Lcom/twidroid/fragments/d/p;->b(I)V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->R()V
:goto_18
:cond_18
return-void
:cond_19
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->g()V
if-eqz p2, :cond_52
invoke-virtual {p2}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_52
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
if-eqz v0, :cond_52
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v1
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {v1, v0}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
iget v0, p1, Lcom/twidroid/fragments/d/p;->e:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Lcom/twidroid/fragments/d/p;->e:I
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
iget-object v0, p2, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->P()V
goto :goto_18
:cond_52
invoke-static {p1}, Lcom/twidroid/fragments/d/p;->e(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
invoke-virtual {p1}, Lcom/twidroid/fragments/d/p;->P()V
goto :goto_18
.end method
.method protected synthetic b(Lcom/twidroid/fragments/base/o;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/d/p;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/d/q;->a(Lcom/twidroid/fragments/d/p;)V
return-void
.end method
.method protected varargs c([Ljava/lang/Object;)Lcom/ubermedia/a/g;
.registers 9
const/4 v6, 0x0
if-eqz p1, :cond_6
array-length v0, p1
if-nez v0, :cond_8
:cond_6
move-object v0, v6
:goto_7
return-object v0
:cond_8
const/4 v0, 0x0
:try_start_9
aget-object v0, p1, v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
const/4 v0, 0x1
aget-object v0, p1, v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_17
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17} :catch_98
move-result v2
:try_start_18
sget-object v0, Lcom/twidroid/fragments/d/p;->d:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Loading favorites page  "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->a(Lcom/twidroid/fragments/d/p;)Z
move-result v0
if-eqz v0, :cond_9f
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->g(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/p;
invoke-static {v1}, Lcom/twidroid/fragments/d/p;->f(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v1
const-wide/16 v2, 0x0
const-wide/16 v4, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;JJ)Ljava/util/List;
move-result-object v0
move-object v1, v0
:goto_6b
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v1}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Object;)V
:try_end_70
.catch Lcom/ubermedia/net/a/a/a; {:try_start_18 .. :try_end_70} :catch_71
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_70} :catch_b9
goto :goto_7
:catch_71
move-exception v0
move-object v2, v0
invoke-virtual {v2}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
packed-switch v0, :pswitch_data_ec
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/p;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto/16 :goto_7
:catch_98
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
move-object v0, v6
goto/16 :goto_7
:try_start_9f
:cond_9f
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-static {v0}, Lcom/twidroid/fragments/d/p;->h(Lcom/twidroid/fragments/d/p;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
int-to-long v2, v2
invoke-virtual {v0, v2, v3, v1}, Lcom/twidroid/net/a/c/c;->a(JLjava/lang/String;)Ljava/util/List;
:try_end_b3
.catch Lcom/ubermedia/net/a/a/a; {:try_start_9f .. :try_end_b3} :catch_71
.catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b3} :catch_b9
move-result-object v0
move-object v1, v0
goto :goto_6b
:pswitch_b6
move-object v0, v6
goto/16 :goto_7
:catch_b9
move-exception v0
move-object v2, v0
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "Connection failed. Please try again."
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_cd
move-object v0, v6
goto/16 :goto_7
:cond_cd
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-object v1, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/fragments/d/p;
invoke-virtual {v1}, Lcom/twidroid/fragments/d/p;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v0, v2, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
new-instance v0, Lcom/ubermedia/a/g;
invoke-direct {v0, v2}, Lcom/ubermedia/a/g;-><init>(Ljava/lang/Throwable;)V
goto/16 :goto_7
nop
:pswitch_data_ec
.packed-switch 0x3
:pswitch_b6
.end packed-switch
.end method
.method protected c()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/d/q;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/d/p;
invoke-virtual {v0}, Lcom/twidroid/fragments/d/p;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/fragments/d/q;->a(Landroid/widget/ListAdapter;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method