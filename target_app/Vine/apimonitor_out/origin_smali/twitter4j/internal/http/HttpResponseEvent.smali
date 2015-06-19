.class public final Ltwitter4j/internal/http/HttpResponseEvent;
.super Ljava/lang/Object;
.source "HttpResponseEvent.java"


# instance fields
.field private request:Ltwitter4j/internal/http/HttpRequest;

.field private response:Ltwitter4j/internal/http/HttpResponse;

.field private twitterException:Ltwitter4j/TwitterException;


# direct methods
.method constructor <init>(Ltwitter4j/internal/http/HttpRequest;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/TwitterException;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    iput-object p2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    iput-object p3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Ltwitter4j/internal/http/HttpResponseEvent;

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v3, :cond_26

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/http/HttpRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-nez v3, :cond_24

    :cond_2a
    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    iget-object v4, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    goto :goto_4

    :cond_3a
    iget-object v3, v0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public getRequest()Ltwitter4j/internal/http/HttpRequest;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    return-object v0
.end method

.method public getResponse()Ltwitter4j/internal/http/HttpResponse;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    return-object v0
.end method

.method public getTwitterException()Ltwitter4j/TwitterException;
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->twitterException:Ltwitter4j/TwitterException;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpRequest;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    if-eqz v3, :cond_17

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    return v0

    :cond_1a
    move v0, v1

    goto :goto_b
.end method

.method public isAuthenticated()Z
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpRequest;->getAuthorization()Ltwitter4j/auth/Authorization;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/auth/Authorization;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseEvent{request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->request:Ltwitter4j/internal/http/HttpRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/http/HttpResponseEvent;->response:Ltwitter4j/internal/http/HttpResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
