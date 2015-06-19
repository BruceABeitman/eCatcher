.class  Lcom/twidroid/fragments/e/ap;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private final a:Lcom/twidroid/fragments/e/am;
.method public constructor <init>(Lcom/twidroid/fragments/e/am;)V
.registers 2
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
iput-object p1, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
return-void
.end method
.method protected varargs a([Ljava/lang/Long;)Lcom/twidroid/fragments/e/an;
.registers 7
new-instance v1, Lcom/twidroid/fragments/e/an;
const/4 v0, 0x0
invoke-direct {v1, v0}, Lcom/twidroid/fragments/e/an;-><init>(Lcom/twidroid/fragments/e/am$1;)V
:try_start_6
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->a(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
const/4 v2, 0x0
aget-object v2, p1, v2
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v2
invoke-virtual {v0, v2, v3}, Lcom/twidroid/net/a/c/c;->a(J)Ljava/util/List;
move-result-object v0
iput-object v0, v1, Lcom/twidroid/fragments/e/an;->a:Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->b(Lcom/twidroid/fragments/e/am;)Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->b()Ljava/util/List;
move-result-object v0
iput-object v0, v1, Lcom/twidroid/fragments/e/an;->b:Ljava/util/List;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_33
:goto_2d
const-string v0, "/twittertrends"
invoke-static {v0}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;)V
return-object v1
:catch_33
move-exception v0
iget-object v2, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
iget-object v3, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v3}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v2, v0, v3}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
sget-object v2, Lcom/twidroid/fragments/e/am;->d:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Update Tends failed "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Long;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ap;->a([Ljava/lang/Long;)Lcom/twidroid/fragments/e/an;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 2
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->N()V
:cond_1c
return-void
.end method
.method protected a(Lcom/twidroid/fragments/e/an;)V
.registers 7
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
const v1, 0x7f0c0206
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/am;->b(I)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->c(Lcom/twidroid/fragments/e/am;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-static {v0}, Lcom/twidroid/fragments/e/am;->c(Lcom/twidroid/fragments/e/am;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_39
:cond_32
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
iget-object v1, p1, Lcom/twidroid/fragments/e/an;->b:Ljava/util/List;
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/am;->a(Lcom/twidroid/fragments/e/am;Ljava/util/List;)Ljava/util/List;
:cond_39
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
new-instance v1, Lcom/twidroid/ui/a/ak;
iget-object v2, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v2}, Lcom/twidroid/fragments/e/am;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p1, Lcom/twidroid/fragments/e/an;->a:Ljava/util/List;
invoke-direct {v1, v2, v3, v4, v4}, Lcom/twidroid/ui/a/ak;-><init>(Landroid/app/Activity;Ljava/util/List;ZZ)V
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/am;->setListAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->M()V
iget-object v0, p1, Lcom/twidroid/fragments/e/an;->a:Ljava/util/List;
if-eqz v0, :cond_5c
iget-object v0, p1, Lcom/twidroid/fragments/e/an;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_c
:cond_5c
iget-object v0, p0, Lcom/twidroid/fragments/e/ap;->a:Lcom/twidroid/fragments/e/am;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/am;->P()V
goto :goto_c
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/fragments/e/an;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ap;->a(Lcom/twidroid/fragments/e/an;)V
return-void
.end method