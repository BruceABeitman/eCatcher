.class Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Lcom/facebook/widget/i;

.field private applicationId:Ljava/lang/String;

.field private e2e:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    const-string v0, "web_view"

    return-object v0
.end method

.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_6e

    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    :cond_14
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/AccessTokenSource;->e:Lcom/facebook/AccessTokenSource;

    invoke-static {v0, p2, v1}, Lcom/facebook/AccessToken;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient;->b()Lcom/facebook/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/h;->a()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TOKEN"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-static {}, Lcom/facebook/internal/ai;->b()V

    :cond_57
    :goto_57
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient$Result;)V

    return-void

    :cond_6e
    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_57

    :cond_7d
    iput-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v1, :cond_ad

    check-cast p3, Lcom/facebook/FacebookServiceException;

    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const-string v1, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a4
    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v3, v3, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_57

    :cond_ad
    move-object v1, v2

    goto :goto_a4
.end method

.method final a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, ","

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scope"

    invoke-virtual {p0, v2, v1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient;->b()Lcom/facebook/h;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/h;->a()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOKEN"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5e
    new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    invoke-static {}, Lcom/facebook/AuthorizationClient;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    const-string v2, "e2e"

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/facebook/e;

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v3}, Lcom/facebook/AuthorizationClient;->b()Lcom/facebook/h;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/h;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/e;->a(Ljava/lang/String;)Lcom/facebook/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->j()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/e;->a(Z)Lcom/facebook/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/e;->a(Lcom/facebook/widget/m;)Lcom/facebook/widget/k;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/j;

    invoke-virtual {v0}, Lcom/facebook/widget/j;->a()Lcom/facebook/widget/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a:Lcom/facebook/widget/i;

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a:Lcom/facebook/widget/i;

    invoke-virtual {v0}, Lcom/facebook/widget/i;->show()V

    const/4 v0, 0x1

    return v0

    :cond_a2
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/ai;->b(Landroid/content/Context;)V

    const-string v1, "access_token"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5e
.end method

.method final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final d()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a:Lcom/facebook/widget/i;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a:Lcom/facebook/widget/i;

    invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->a:Lcom/facebook/widget/i;

    :cond_c
    return-void
.end method
