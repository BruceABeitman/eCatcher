.class  Lcom/facebook/widget/ax$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/facebook/widget/ax;
.method constructor <init>(Lcom/facebook/widget/ax;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ax$2;->a:Lcom/facebook/widget/ax;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/ax$2;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V
iget-object v0, p0, Lcom/facebook/widget/ax$2;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
return-void
.end method