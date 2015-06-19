.class public Lorg/scribe/builder/api/TwitterApi$SSL;
.super Lorg/scribe/builder/api/TwitterApi;
.source "TwitterApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/TwitterApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSL"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/scribe/builder/api/TwitterApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .registers 2

    const-string v0, "https://api.twitter.com/oauth/access_token"

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .registers 2

    const-string v0, "https://api.twitter.com/oauth/request_token"

    return-object v0
.end method
