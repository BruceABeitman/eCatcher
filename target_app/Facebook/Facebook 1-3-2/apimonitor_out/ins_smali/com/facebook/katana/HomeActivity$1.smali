.class  Lcom/facebook/katana/HomeActivity$1;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "HomeActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method constructor <init>(Lcom/facebook/katana/HomeActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V
return-void
.end method
.method public onLogoutComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 8
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/facebook/katana/HomeActivity;->removeDialog(I)V
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$1;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-static {v0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
return-void
.end method