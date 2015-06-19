.class  Lcom/facebook/widget/WebDialog$2;
.super Ljava/lang/Object;
.source "WebDialog.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;
#calls: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V
iget-object v0, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;
invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V
return-void
.end method