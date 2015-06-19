.class final Lcom/facebook/widget/i$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/facebook/widget/i;
.method constructor <init>(Lcom/facebook/widget/i;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/i$2;->a:Lcom/facebook/widget/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/i$2;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)V
iget-object v0, p0, Lcom/facebook/widget/i$2;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V
return-void
.end method