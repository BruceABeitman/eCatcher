.class  Lcom/twidroid/fragments/e/g$6$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/twidroid/fragments/e/g$6;
.method constructor <init>(Lcom/twidroid/fragments/e/g$6;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iput-object p2, p0, Lcom/twidroid/fragments/e/g$6$1;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iget-object v0, v0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iget-object v1, v1, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/g$6$1;->a:Ljava/util/ArrayList;
invoke-virtual {v1, v2}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iget-object v1, v1, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V
if-nez v0, :cond_35
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iget-object v1, v1, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-static {v1}, Lcom/twidroid/fragments/e/g;->ab(Lcom/twidroid/fragments/e/g;)Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->aQ()Z
move-result v1
if-eqz v1, :cond_35
:goto_34
return-void
:cond_35
iget-object v1, p0, Lcom/twidroid/fragments/e/g$6$1;->b:Lcom/twidroid/fragments/e/g$6;
iget-object v1, v1, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;
invoke-virtual {v1}, Lcom/twidroid/fragments/e/g;->getListView()Landroid/widget/ListView;
move-result-object v1
add-int/lit8 v0, v0, 0x1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
goto :goto_34
.end method