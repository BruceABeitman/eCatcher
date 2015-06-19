.class  Lcom/facebook/katana/UsersTabHostActivity$1;
.super Ljava/lang/Object;
.source "UsersTabHostActivity.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Lcom/facebook/katana/UsersTabHostActivity;
.method constructor <init>(Lcom/facebook/katana/UsersTabHostActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/UsersTabHostActivity$1;->this$0:Lcom/facebook/katana/UsersTabHostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 7
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/UsersTabHostActivity$1;->this$0:Lcom/facebook/katana/UsersTabHostActivity;
#getter for: Lcom/facebook/katana/UsersTabHostActivity;->mCurrentTab:Lcom/facebook/katana/UsersTabProgressSource;
invoke-static {v1}, Lcom/facebook/katana/UsersTabHostActivity;->access$9(Lcom/facebook/katana/UsersTabHostActivity;)Lcom/facebook/katana/UsersTabProgressSource;
move-result-object v1
invoke-interface {v1, v0}, Lcom/facebook/katana/UsersTabProgressSource;->search(Ljava/lang/String;)V
return-void
.end method