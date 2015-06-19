.class public Lcom/facebook/katana/service/api/FacebookPost$Profile;
.super Ljava/lang/Object;
.source "FacebookPost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/FacebookPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Profile"
.end annotation


# static fields
.field public static final TYPE_PAGE:I = 0x1

.field public static final TYPE_USER:I


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mPic:Ljava/lang/String;

.field private final mType:I

.field private final mUserId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mUserId:J

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mDisplayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mPic:Ljava/lang/String;

    iput p5, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mType:I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v5, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v4, "user"

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    :goto_e
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_23

    iput-wide v5, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mUserId:J

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mPic:Ljava/lang/String;

    const-string v7, "user"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    iput v8, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mType:I

    :goto_22
    return-void

    :cond_23
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_5d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "name"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_37
    :goto_37
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_e

    :cond_3c
    const-string v7, "pic_square"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_37

    const/4 v2, 0x0

    goto :goto_37

    :cond_50
    const-string v7, "type"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :cond_5d
    sget-object v7, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v7, :cond_37

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v5

    goto :goto_37

    :cond_72
    const-string v7, "page"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const/4 v7, 0x1

    iput v7, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mType:I

    goto :goto_22

    :cond_7e
    iput v8, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mType:I

    goto :goto_22
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mPic:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mType:I

    return v0
.end method

.method public getUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost$Profile;->mUserId:J

    return-wide v0
.end method
