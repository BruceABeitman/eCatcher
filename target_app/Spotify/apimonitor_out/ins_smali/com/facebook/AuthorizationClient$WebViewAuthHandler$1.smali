.class final Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/widget/m;
.field final synthetic a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.field final synthetic b:Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
.method constructor <init>(Lcom/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
.registers 3
iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;->b:Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
iput-object p2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;->a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.registers 5
iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;->b:Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;->a:Lcom/facebook/AuthorizationClient$AuthorizationRequest;
invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
return-void
.end method