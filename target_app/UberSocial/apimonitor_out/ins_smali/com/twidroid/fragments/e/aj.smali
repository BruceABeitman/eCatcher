.class  Lcom/twidroid/fragments/e/aj;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/ai;
.method private constructor <init>(Lcom/twidroid/fragments/e/ai;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/fragments/e/ai;Lcom/twidroid/fragments/e/ai$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/aj;-><init>(Lcom/twidroid/fragments/e/ai;)V
return-void
.end method
.method protected varargs a([Lcom/twidroid/fragments/e/ak;)Lcom/twidroid/fragments/e/al;
.registers 11
const/4 v8, 0x3
const/4 v7, 0x0
if-eqz p1, :cond_7
array-length v0, p1
if-nez v0, :cond_9
:cond_7
move-object v0, v7
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
:try_start_a
aget-object v0, p1, v0
iget-object v2, v0, Lcom/twidroid/fragments/e/ak;->a:Lcom/twidroid/model/twitter/d;
const/4 v0, 0x0
aget-object v0, p1, v0
iget-boolean v5, v0, Lcom/twidroid/fragments/e/ak;->b:Z
if-eqz v5, :cond_48
const/4 v0, 0x0
aget-object v0, p1, v0
iget-wide v0, v0, Lcom/twidroid/fragments/e/ak;->c:J
const-wide/16 v3, 0x1
sub-long v3, v0, v3
:goto_1e
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-static {v0}, Lcom/twidroid/fragments/e/ai;->b(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v2}, Lcom/twidroid/model/twitter/d;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->d(Ljava/lang/String;)Lcom/twidroid/model/twitter/c;
move-result-object v1
new-instance v6, Lcom/twidroid/fragments/e/al;
const/4 v0, 0x0
invoke-direct {v6, v0}, Lcom/twidroid/fragments/e/al;-><init>(Lcom/twidroid/fragments/e/ai$1;)V
if-nez v1, :cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-static {v0}, Lcom/twidroid/fragments/e/ai;->c(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, v2, v3, v4, v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/d;JZ)Ljava/util/List;
move-result-object v0
iput-object v0, v6, Lcom/twidroid/fragments/e/al;->a:Ljava/util/List;
:goto_44
iput-boolean v5, v6, Lcom/twidroid/fragments/e/al;->b:Z
move-object v0, v6
goto :goto_8
:cond_48
const/4 v0, 0x0
aget-object v0, p1, v0
iget-wide v3, v0, Lcom/twidroid/fragments/e/ak;->c:J
goto :goto_1e
:cond_4e
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-static {v0}, Lcom/twidroid/fragments/e/ai;->d(Lcom/twidroid/fragments/e/ai;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;JZ)Ljava/util/List;
move-result-object v0
iput-object v0, v6, Lcom/twidroid/fragments/e/al;->a:Ljava/util/List;
:try_end_5e
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_5e} :catch_5f
goto :goto_44
:catch_5f
move-exception v1
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_94
instance-of v0, v1, Lcom/ubermedia/net/a/a/a;
if-eqz v0, :cond_a2
move-object v0, v1
check-cast v0, Lcom/ubermedia/net/a/a/a;
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
if-ne v0, v8, :cond_a2
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v2, 0x7f0c0196
invoke-static {v0, v2}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_a2
new-instance v0, Lcom/ubermedia/net/a/a/a;
invoke-direct {v0, v2, v8}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
:goto_89
iget-object v2, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
iget-object v3, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v3}, Lcom/twidroid/fragments/e/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v2, v0, v3}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:cond_94
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_9f
const-string v1, "SingleListFragment"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_9f
move-object v0, v7
goto/16 :goto_8
:cond_a2
move-object v0, v1
goto :goto_89
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/fragments/e/ak;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/aj;->a([Lcom/twidroid/fragments/e/ak;)Lcom/twidroid/fragments/e/al;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/fragments/e/al;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ai;->b(Lcom/twidroid/fragments/e/ai;Z)Z
if-nez p1, :cond_1a
:cond_19
:goto_19
return-void
:cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/aj;->a:Lcom/twidroid/fragments/e/ai;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ai;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
:try_start_27
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v1
if-nez v1, :cond_43
iget-object v1, p1, Lcom/twidroid/fragments/e/al;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->c(Ljava/util/List;)V
:goto_32
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
:try_end_35
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_36
goto :goto_19
:catch_36
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_19
const-string v1, "SingleListFragment"
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
:try_start_43
:cond_43
iget-boolean v1, p1, Lcom/twidroid/fragments/e/al;->b:Z
if-eqz v1, :cond_4d
iget-object v1, p1, Lcom/twidroid/fragments/e/al;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->b(Ljava/util/List;)V
goto :goto_32
:cond_4d
iget-object v1, p1, Lcom/twidroid/fragments/e/al;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;)V
:try_end_52
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_52} :catch_36
goto :goto_32
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/al;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/aj;->a(Lcom/twidroid/fragments/e/al;)V
return-void
.end method