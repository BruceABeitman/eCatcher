.class public Lcom/facebook/katana/service/api/FacebookPhoto;
.super Ljava/lang/Object;
.source "FacebookPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookPhoto$PhotoQuery;
    }
.end annotation


# instance fields
.field private final mAlbumId:Ljava/lang/String;

.field private final mCaption:Ljava/lang/String;

.field private final mCreated:J

.field private final mImageBytes:[B

.field private final mOwner:J

.field private final mPhotoId:Ljava/lang/String;

.field private final mSrcUrl:Ljava/lang/String;

.field private final mSrcUrlBig:Ljava/lang/String;

.field private final mSrcUrlSmall:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mOwner:J

    iput-object p5, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mCaption:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    iput-wide p9, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mCreated:J

    iput-object p11, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mImageBytes:[B

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    const/4 v3, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v5, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v16

    :goto_13
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4b

    if-lez v7, :cond_114

    const-string v18, "FacebookPhoto"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Facebook error: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Lcom/facebook/katana/service/api/FacebookApiException;

    move-object/from16 v0, v18

    move v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v18

    :cond_4b
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d5

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v17

    const-string v18, "pid"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6d

    move-object/from16 v12, v17

    :cond_68
    :goto_68
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v16

    goto :goto_13

    :cond_6d
    const-string v18, "aid"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7b

    move-object/from16 v3, v17

    goto :goto_68

    :cond_7b
    const-string v18, "src"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_89

    move-object/from16 v13, v17

    goto :goto_68

    :cond_89
    const-string v18, "src_big"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_97

    move-object/from16 v14, v17

    goto :goto_68

    :cond_97
    const-string v18, "src_small"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a5

    move-object/from16 v15, v17

    goto :goto_68

    :cond_a5
    const-string v18, "caption"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    move-object/from16 v4, v17

    goto :goto_68

    :cond_b3
    const-string v18, "error_msg"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c1

    move-object/from16 v8, v17

    goto :goto_68

    :cond_c1
    const-string v18, "owner"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_68

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_68

    :cond_d5
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_68

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    const-string v18, "owner"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f2

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v10

    goto/16 :goto_68

    :cond_f2
    const-string v18, "created"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_103

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v5

    goto/16 :goto_68

    :cond_103
    const-string v18, "error_code"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_68

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v7

    goto/16 :goto_68

    :cond_114
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPhoto;->mOwner:J

    if-eqz v4, :cond_150

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_150

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mCaption:Ljava/lang/String;

    :goto_133
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPhoto;->mCreated:J

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mImageBytes:[B

    return-void

    :cond_150
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPhoto;->mCaption:Ljava/lang/String;

    goto :goto_133
.end method

.method public static readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookPhoto;
    .registers 16

    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/service/api/FacebookPhoto$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPhoto;

    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/16 v11, 0x8

    invoke-interface {v12, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/facebook/katana/service/api/FacebookPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[B)V

    :goto_48
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_4c
    move-object v0, v13

    goto :goto_48
.end method

.method public static readFromContentProvider(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPhoto;
    .registers 4

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_PID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/katana/service/api/FacebookPhoto;->readFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mCreated:J

    return-wide v0
.end method

.method public getCreatedMs()J
    .registers 5

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mCreated:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getImageBytes()[B
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mImageBytes:[B

    return-object v0
.end method

.method public getOwnerId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mOwner:J

    return-wide v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcBig()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlBig:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcSmall()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhoto;->mSrcUrlSmall:Ljava/lang/String;

    return-object v0
.end method
