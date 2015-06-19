.class  Lcom/twidroid/fragments/base/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/twidroid/fragments/base/a;
.method constructor <init>(Lcom/twidroid/fragments/base/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/base/a$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/a/am;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V
:cond_1d
iget-object v0, p0, Lcom/twidroid/fragments/base/a$1;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->L()V
const-string v1, " - Lcom/twidroid/fragments/base/a$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method