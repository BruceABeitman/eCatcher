.class public final Lcom/facebook/Session$OpenRequest;
.super Lcom/facebook/Session$AuthorizationRequest;
.source "Session.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method public bridge synthetic setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
return-object v0
.end method
.method public final setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public bridge synthetic setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
return-object v0
.end method
.method public final setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public bridge synthetic setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
return-object v0
.end method
.method public final setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public bridge synthetic setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
move-result-object v0
return-object v0
.end method
.method public final setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public bridge synthetic setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
.registers 3
invoke-virtual {p0, p1}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;
move-result-object v0
return-object v0
.end method
.method public final setRequestCode(I)Lcom/facebook/Session$OpenRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method