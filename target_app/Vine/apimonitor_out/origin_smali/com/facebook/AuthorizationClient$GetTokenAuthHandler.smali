.class Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTokenAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient getTokenClient:Lcom/facebook/GetTokenClient;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v0}, Lcom/facebook/GetTokenClient;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    :cond_c
    return-void
.end method

.method getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
    .registers 11

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    #calls: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v7}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    if-eqz p2, :cond_50

    const-string v7, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v5

    if-eqz v0, :cond_2e

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2e

    :cond_1e
    sget-object v7, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    invoke-static {p2, v7}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v3

    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v7, v3}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    :goto_2d
    return-void

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4d
    invoke-virtual {p1, v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->setPermissions(Ljava/util/List;)V

    :cond_50
    iget-object v7, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v7}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_2d
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .registers 6

    new-instance v1, Lcom/facebook/GetTokenClient;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1}, Lcom/facebook/GetTokenClient;->start()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    :goto_18
    return v1

    :cond_19
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    #calls: Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->access$100(Lcom/facebook/AuthorizationClient;)V

    new-instance v0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/facebook/GetTokenClient;->setCompletedListener(Lcom/facebook/GetTokenClient$CompletedListener;)V

    const/4 v1, 0x1

    goto :goto_18
.end method
