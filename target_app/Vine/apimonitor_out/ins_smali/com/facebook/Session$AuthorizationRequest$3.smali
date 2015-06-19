.class  Lcom/facebook/Session$AuthorizationRequest$3;
.super Ljava/lang/Object;
.source "Session.java"
.implements Lcom/facebook/Session$StartActivityDelegate;
.field final synthetic this$0:Lcom/facebook/Session$AuthorizationRequest;
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$3;->this$0:Lcom/facebook/Session$AuthorizationRequest;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActivityContext()Landroid/app/Activity;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public startActivityForResult(Landroid/content/Intent;I)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method