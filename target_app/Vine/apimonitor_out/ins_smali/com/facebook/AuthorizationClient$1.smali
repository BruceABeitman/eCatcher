.class  Lcom/facebook/AuthorizationClient$1;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Lcom/facebook/AuthorizationClient$StartActivityDelegate;
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.field final synthetic val$activity:Landroid/app/Activity;
.method constructor <init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$1;->this$0:Lcom/facebook/AuthorizationClient;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActivityContext()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;
return-object v0
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/AuthorizationClient$1;->val$activity:Landroid/app/Activity;
invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method