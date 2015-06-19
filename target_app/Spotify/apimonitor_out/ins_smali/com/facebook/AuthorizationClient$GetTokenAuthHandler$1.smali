.class final Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/internal/ac;
.field final synthetic a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.field final synthetic b:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
.method constructor <init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->b:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->b:Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;->a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
return-void
.end method