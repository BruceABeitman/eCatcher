.class  Lcom/facebook/katana/LiveFolderActivity$2;
.super Ljava/lang/Object;
.source "LiveFolderActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic this$0:Lcom/facebook/katana/LiveFolderActivity;
.method constructor <init>(Lcom/facebook/katana/LiveFolderActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/LiveFolderActivity$2;->this$0:Lcom/facebook/katana/LiveFolderActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity$2;->this$0:Lcom/facebook/katana/LiveFolderActivity;
invoke-virtual {v0}, Lcom/facebook/katana/LiveFolderActivity;->finish()V
return-void
.end method