.class public Lorg/scribe/model/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9ec317fdcf6730bL


# instance fields
.field private final rawResponse:Ljava/lang/String;

.field private final secret:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Token can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Secret can\'t be null"

    invoke-static {p2, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    iput-object p2, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    iput-object p3, p0, Lorg/scribe/model/Token;->rawResponse:Ljava/lang/String;

    return-void
.end method

.method public static empty()Lorg/scribe/model/Token;
    .registers 3

    new-instance v0, Lorg/scribe/model/Token;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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

    check-cast v0, Lorg/scribe/model/Token;

    iget-object v3, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    iget-object v4, v0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    iget-object v4, v0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public getRawResponse()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/scribe/model/Token;->rawResponse:Ljava/lang/String;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This token object was not constructed by scribe and does not have a rawResponse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lorg/scribe/model/Token;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    const-string v0, ""

    iget-object v1, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ""

    iget-object v1, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Token[%s , %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/scribe/model/Token;->token:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/scribe/model/Token;->secret:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
