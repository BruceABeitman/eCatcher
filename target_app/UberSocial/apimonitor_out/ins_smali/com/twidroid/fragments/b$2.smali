.class  Lcom/twidroid/fragments/b$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/twidroid/fragments/b;
.method constructor <init>(Lcom/twidroid/fragments/b;I)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/b$2;->b:Lcom/twidroid/fragments/b;
iput p2, p0, Lcom/twidroid/fragments/b$2;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/b$2;->b:Lcom/twidroid/fragments/b;
iget-object v0, v0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
iget v1, p0, Lcom/twidroid/fragments/b$2;->a:I
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V
return-void
.end method