.class Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;
.super Lcom/facebook/AuthorizationClient$KatanaAuthHandler;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method final a(ILandroid/content/Intent;)Z
    .registers 11

    const/4 v2, 0x0

    if-nez p2, :cond_16

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_b2

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient$Result;)V

    :goto_14
    const/4 v0, 0x1

    return v0

    :cond_16
    if-nez p1, :cond_27

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_d

    :cond_27
    const/4 v0, -0x1

    if-eq p1, v0, :cond_35

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Unexpected resultCode from authorization."

    invoke-static {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_d

    :cond_35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "error"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_47

    const-string v0, "error_type"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_47
    const-string v1, "error_code"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "error_message"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5b

    const-string v1, "error_description"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5b
    const-string v5, "e2e"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v7, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->applicationId:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    if-nez v0, :cond_8b

    if-nez v4, :cond_8b

    if-nez v1, :cond_8b

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/AccessTokenSource;->b:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, v3, v1}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_d

    :cond_8b
    sget-object v3, Lcom/facebook/internal/ad;->a:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    move-object v0, v2

    goto/16 :goto_d

    :cond_96
    sget-object v3, Lcom/facebook/internal/ad;->b:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v0, v2}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto/16 :goto_d

    :cond_a8
    iget-object v2, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v2, v0, v1, v4}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto/16 :goto_d

    :cond_b2
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->a()V

    goto/16 :goto_14
.end method

.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->applicationId:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/AuthorizationClient;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->j()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/internal/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "e2e"

    invoke-virtual {p0, v2, v0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->d()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
