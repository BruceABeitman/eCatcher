.class public Lorg/scribe/extractors/JsonTokenExtractor;
.super Ljava/lang/Object;
.source "JsonTokenExtractor.java"

# interfaces
.implements Lorg/scribe/extractors/AccessTokenExtractor;


# instance fields
.field private accessTokenPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"access_token\":\\s*\"(\\S*?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/extractors/JsonTokenExtractor;->accessTokenPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Lorg/scribe/model/Token;
    .registers 6

    const-string v1, "Cannot extract a token from a null or empty String"

    invoke-static {p1, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/scribe/extractors/JsonTokenExtractor;->accessTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Lorg/scribe/model/Token;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, p1}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1e
    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot extract an acces token. Response was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
