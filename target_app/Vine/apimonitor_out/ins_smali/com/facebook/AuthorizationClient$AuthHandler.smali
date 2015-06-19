.class abstract Lcom/facebook/AuthorizationClient$AuthHandler;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field final synthetic this$0:Lcom/facebook/AuthorizationClient;
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
.registers 2
iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthHandler;->this$0:Lcom/facebook/AuthorizationClient;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method  cancel()V
.registers 1
return-void
.end method
.method  needsRestart()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  onActivityResult(IILandroid/content/Intent;)Z
.registers 5
const/4 v0, 0x0
return v0
.end method
.method abstract tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
.end method