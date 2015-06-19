.class public final Lcom/facebook/Session$NewPermissionsRequest;
.super Lcom/facebook/Session$AuthorizationRequest;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V
invoke-virtual {p0, p2}, Lcom/facebook/Session$NewPermissionsRequest;->a(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;
return-void
.end method
.method public final bridge synthetic a(I)Lcom/facebook/Session$AuthorizationRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(I)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public final bridge synthetic a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public final bridge synthetic a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method public final bridge synthetic a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;
.registers 2
invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->a(Lcom/facebook/ae;)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method
.method final g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.registers 2
invoke-super {p0}, Lcom/facebook/Session$AuthorizationRequest;->g()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->k()V
return-object v0
.end method
.method public final h()Lcom/facebook/Session$NewPermissionsRequest;
.registers 2
const/16 v0, 0x65
invoke-super {p0, v0}, Lcom/facebook/Session$AuthorizationRequest;->a(I)Lcom/facebook/Session$AuthorizationRequest;
return-object p0
.end method