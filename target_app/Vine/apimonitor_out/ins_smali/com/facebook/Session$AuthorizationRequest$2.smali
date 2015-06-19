.class  Lcom/facebook/Session$AuthorizationRequest$2;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/Session$StartActivityDelegate;
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;
.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;Landroid/support/v4/app/Fragment;)V
.registers 3
iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$2;->this$0:Lcom/facebook/Session$AuthorizationRequest;
iput-object p2, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActivityContext()Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
return-object v0
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 4
iget-object v0, p0, Lcom/facebook/Session$AuthorizationRequest$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method