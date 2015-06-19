.class  Lcom/twidroid/fragments/e/av$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/fragments/e/av;
.method constructor <init>(Lcom/twidroid/fragments/e/av;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/av$1;->b:Lcom/twidroid/fragments/e/av;
iput p2, p0, Lcom/twidroid/fragments/e/av$1;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget v0, p0, Lcom/twidroid/fragments/e/av$1;->a:I
const/4 v1, -0x1
if-le v0, v1, :cond_10
iget-object v0, p0, Lcom/twidroid/fragments/e/av$1;->b:Lcom/twidroid/fragments/e/av;
invoke-static {v0}, Lcom/twidroid/fragments/e/av;->a(Lcom/twidroid/fragments/e/av;)Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
move-result-object v0
iget v1, p0, Lcom/twidroid/fragments/e/av$1;->a:I
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setSelection(I)V
:cond_10
return-void
.end method