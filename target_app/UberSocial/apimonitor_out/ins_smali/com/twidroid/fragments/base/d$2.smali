.class  Lcom/twidroid/fragments/base/d$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/twidroid/fragments/base/d;
.method constructor <init>(Lcom/twidroid/fragments/base/d;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/d$2;->a:Lcom/twidroid/fragments/base/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/base/d$2;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_13
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/twidroid/fragments/base/d$2;->a:Lcom/twidroid/fragments/base/d;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->P()V
:cond_13
const/4 v0, 0x1
return v0
.end method