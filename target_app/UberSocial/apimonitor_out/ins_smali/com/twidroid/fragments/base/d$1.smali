.class  Lcom/twidroid/fragments/base/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AbsListView$OnScrollListener;
.field final synthetic a:Lcom/twidroid/fragments/base/d;
.method constructor <init>(Lcom/twidroid/fragments/base/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/base/d$1; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-static {v0, p2}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/fragments/base/d;I)I
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
iget-object v0, v0, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-static {v0}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/fragments/base/d;)I
move-result v0
iget-object v1, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
iget-object v1, v1, Lcom/twidroid/fragments/base/d;->w:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aF()I
move-result v1
if-ge v0, v1, :cond_21
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/fragments/base/d;Z)Z
:cond_21
const-string v1, " - Lcom/twidroid/fragments/base/d$1; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/base/d$1; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p2, :cond_44
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_44
invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v1}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I
move-result v1
iget-object v2, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v2}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-static {v2, v0, v1}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/fragments/base/d;II)V
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->c()V
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/twidroid/fragments/base/d;->A:Z
iget-object v0, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
iget-object v1, p0, Lcom/twidroid/fragments/base/d$1;->a:Lcom/twidroid/fragments/base/d;
invoke-static {v1}, Lcom/twidroid/fragments/base/d;->a(Lcom/twidroid/fragments/base/d;)I
move-result v1
invoke-static {v0, v1}, Lcom/twidroid/fragments/base/d;->b(Lcom/twidroid/fragments/base/d;I)V
:cond_44
const-string v1, " - Lcom/twidroid/fragments/base/d$1; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method