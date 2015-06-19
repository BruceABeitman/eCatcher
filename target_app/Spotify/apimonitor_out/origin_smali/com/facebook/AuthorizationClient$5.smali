.class final Lcom/facebook/AuthorizationClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/facebook/AuthorizationClient$Result;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    iput-object p2, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/AuthorizationClient$5;->b:Lcom/facebook/AuthorizationClient$Result;

    iput-object p4, p0, Lcom/facebook/AuthorizationClient$5;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->b:Lcom/facebook/AuthorizationClient$Result;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/facebook/AccessToken;->a(Lcom/facebook/AccessToken;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_43
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient$Result;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_5a

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;)V

    :goto_4d
    return-void

    :cond_4e
    :try_start_4e
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "User logged in as different Facebook user."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_5a

    move-result-object v0

    goto :goto_43

    :catch_5a
    move-exception v0

    :try_start_5b
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v3, "Caught exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/AuthorizationClient$Result;->a(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/AuthorizationClient;->b(Lcom/facebook/AuthorizationClient$Result;)V
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_74

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;)V

    goto :goto_4d

    :catchall_74
    move-exception v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$5;->d:Lcom/facebook/AuthorizationClient;

    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->a(Lcom/facebook/AuthorizationClient;)V

    throw v0
.end method
