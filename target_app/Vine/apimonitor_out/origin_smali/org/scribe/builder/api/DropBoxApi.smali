.class public Lorg/scribe/builder/api/DropBoxApi;
.super Lorg/scribe/builder/api/DefaultApi10a;
.source "DropBoxApi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .registers 2

    const-string v0, "https://api.dropbox.com/1/oauth/access_token"

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.dropbox.com/1/oauth/authorize?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .registers 2

    const-string v0, "https://api.dropbox.com/1/oauth/request_token"

    return-object v0
.end method
