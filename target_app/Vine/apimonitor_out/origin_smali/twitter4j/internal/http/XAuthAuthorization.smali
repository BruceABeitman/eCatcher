.class public Ltwitter4j/internal/http/XAuthAuthorization;
.super Ljava/lang/Object;
.source "XAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x546935272b169ec6L


# instance fields
.field private basic:Ltwitter4j/auth/BasicAuthorization;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ltwitter4j/auth/BasicAuthorization;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0, p1}, Ltwitter4j/auth/BasicAuthorization;->getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/XAuthAuthorization;->basic:Ltwitter4j/auth/BasicAuthorization;

    invoke-virtual {v0}, Ltwitter4j/auth/BasicAuthorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerKey:Ljava/lang/String;

    iput-object p2, p0, Ltwitter4j/internal/http/XAuthAuthorization;->consumerSecret:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
