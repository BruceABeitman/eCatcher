.class  Lcom/twidroid/fragments/e/ab$13;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Z
.field final synthetic b:Lcom/twidroid/fragments/e/ab;
.method constructor <init>(Lcom/twidroid/fragments/e/ab;Z)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
iput-boolean p2, p0, Lcom/twidroid/fragments/e/ab$13;->a:Z
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab$13;->a([Ljava/lang/Void;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab$13;->h()Z
move-result v1
if-eqz v1, :cond_8
:goto_7
return-object v0
:cond_8
const-string v1, "TwitterSearch"
const-string v2, "getSavedSearches from Search "
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v1}, Lcom/twidroid/fragments/e/ab;->k(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->j()Ljava/util/List;
move-result-object v1
iget-boolean v2, p0, Lcom/twidroid/fragments/e/ab$13;->a:Z
if-eqz v2, :cond_28
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_28
iget-object v2, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v2}, Lcom/twidroid/fragments/e/ab;->l(Lcom/twidroid/fragments/e/ab;)V
:cond_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a
move-object v0, v1
goto :goto_7
:catch_2a
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_7
.end method
.method protected a()V
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_19
:cond_14
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->N()V
:cond_19
return-void
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab$13;->a(Ljava/util/List;)V
return-void
.end method
.method protected a(Ljava/util/List;)V
.registers 7
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->m(Lcom/twidroid/fragments/e/ab;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->M()V
:cond_11
sput-boolean v4, Lcom/twidroid/fragments/e/ab;->H:Z
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_1c
:goto_1b
:cond_1b
return-void
:cond_1c
if-eqz p1, :cond_3a
iget-object v1, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
new-instance v2, Lcom/twidroid/ui/a/ak;
const/4 v3, 0x1
invoke-direct {v2, v0, p1, v4, v3}, Lcom/twidroid/ui/a/ak;-><init>(Landroid/app/Activity;Ljava/util/List;ZZ)V
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/e/ab;->setListAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v0, p1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
sget-object v1, Lcom/twidroid/fragments/e/af;->d:Lcom/twidroid/fragments/e/af;
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/fragments/e/ab;Lcom/twidroid/fragments/e/af;)Lcom/twidroid/fragments/e/af;
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v0, v4}, Lcom/twidroid/fragments/e/ab;->b(Lcom/twidroid/fragments/e/ab;Z)V
:cond_3a
if-eqz p1, :cond_42
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1b
:cond_42
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-static {v0}, Lcom/twidroid/fragments/e/ab;->m(Lcom/twidroid/fragments/e/ab;)Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/twidroid/fragments/e/ab$13;->b:Lcom/twidroid/fragments/e/ab;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->P()V
goto :goto_1b
.end method