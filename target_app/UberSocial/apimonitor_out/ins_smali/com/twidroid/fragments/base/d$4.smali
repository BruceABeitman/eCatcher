.class  Lcom/twidroid/fragments/base/d$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/fragments/base/d;
.method constructor <init>(Lcom/twidroid/fragments/base/d;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/base/d$4;->b:Lcom/twidroid/fragments/base/d;
iput p2, p0, Lcom/twidroid/fragments/base/d$4;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/base/d$4;->b:Lcom/twidroid/fragments/base/d;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;
move-result-object v0
iget v1, p0, Lcom/twidroid/fragments/base/d$4;->a:I
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
return-void
.end method