.class public abstract Lorg/apache/http/entity/mime/content/AbstractContentBody;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lorg/apache/http/entity/mime/content/ContentBody;


# instance fields
.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "MIME type may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    :goto_28
    return-void

    :cond_29
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    goto :goto_28
.end method


# virtual methods
.method public getMediaType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method
