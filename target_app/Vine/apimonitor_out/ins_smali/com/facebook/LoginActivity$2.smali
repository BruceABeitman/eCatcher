.class  Lcom/facebook/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"
.implements Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
.field final synthetic this$0:Lcom/facebook/LoginActivity;
.method constructor <init>(Lcom/facebook/LoginActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackgroundProcessingStarted()V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;
sget v1, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I
invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method public onBackgroundProcessingStopped()V
.registers 3
iget-object v0, p0, Lcom/facebook/LoginActivity$2;->this$0:Lcom/facebook/LoginActivity;
sget v1, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I
invoke-virtual {v0, v1}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method