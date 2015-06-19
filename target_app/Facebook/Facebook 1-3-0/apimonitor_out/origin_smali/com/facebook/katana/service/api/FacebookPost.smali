.class public Lcom/facebook/katana/service/api/FacebookPost;
.super Ljava/lang/Object;
.source "FacebookPost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/FacebookPost$Attachment;,
        Lcom/facebook/katana/service/api/FacebookPost$Comment;,
        Lcom/facebook/katana/service/api/FacebookPost$Comments;,
        Lcom/facebook/katana/service/api/FacebookPost$Likes;,
        Lcom/facebook/katana/service/api/FacebookPost$Profile;
    }
.end annotation


# static fields
.field public static final TYPE_LINK_ATTACHMENT_POST:I = 0x1

.field public static final TYPE_PHOTO_ATTACHMENT_POST:I = 0x2

.field public static final TYPE_STATUS_POST:I = 0x0

.field public static final TYPE_UNSUPPORTED:I = -0x1

.field public static final TYPE_VIDEO_ATTACHMENT_POST:I = 0x3

.field public static timeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActorId:J

.field private final mAppId:J

.field private final mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

.field private final mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

.field private final mCreatedTime:J

.field private final mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

.field private final mMessage:Ljava/lang/String;

.field private final mPostId:Ljava/lang/String;

.field private mPostType:I

.field private mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

.field private final mTargetId:J

.field private mTargetProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

.field private mUserObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPost$1;

    invoke-direct {v0}, Lcom/facebook/katana/service/api/FacebookPost$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJLjava/lang/String;Lcom/facebook/katana/service/api/FacebookPost$Attachment;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAppId:J

    iput-wide p6, p0, Lcom/facebook/katana/service/api/FacebookPost;->mActorId:J

    iput-wide p8, p0, Lcom/facebook/katana/service/api/FacebookPost;->mTargetId:J

    iput-object p10, p0, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    iput-object p11, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPost$Likes;

    invoke-direct {v0}, Lcom/facebook/katana/service/api/FacebookPost$Likes;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-direct {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mCreatedTime:J

    invoke-direct {p0}, Lcom/facebook/katana/service/api/FacebookPost;->determinePostType()V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    const/4 v15, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v3, -0x1

    const-wide/16 v17, -0x1

    const/4 v14, 0x0

    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v16

    :goto_15
    sget-object v19, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5b

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mPostId:Ljava/lang/String;

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPost;->mAppId:J

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPost;->mActorId:J

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPost;->mTargetId:J

    if-eqz v14, :cond_14b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_14b

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    :goto_3f
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookPost;->mCreatedTime:J

    if-eqz v13, :cond_155

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

    :goto_4b
    if-eqz v9, :cond_162

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    :goto_52
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/service/api/FacebookPost;->determinePostType()V

    return-void

    :cond_5b
    sget-object v19, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6b

    sget-object v19, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e3

    :cond_6b
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v12

    const-string v19, "app_id"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_87

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_82
    :goto_82
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v16

    goto :goto_15

    :cond_87
    const-string v19, "actor_id"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9b

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_82

    :cond_9b
    const-string v19, "target_id"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_af

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    goto :goto_82

    :cond_af
    const-string v19, "created_time"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c3

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_82

    :cond_c3
    const-string v19, "post_id"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d3

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v15

    goto :goto_82

    :cond_d3
    const-string v19, "message"

    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_82

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v14

    goto :goto_82

    :cond_e3
    sget-object v19, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_130

    if-eqz v8, :cond_82

    const-string v19, "attachment"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_101

    new-instance v7, Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_82

    :cond_101
    const-string v19, "comments"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_116

    new-instance v9, Lcom/facebook/katana/service/api/FacebookPost$Comments;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Comments;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    goto/16 :goto_82

    :cond_116
    const-string v19, "likes"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12b

    new-instance v13, Lcom/facebook/katana/service/api/FacebookPost$Likes;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Likes;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    goto/16 :goto_82

    :cond_12b
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto/16 :goto_82

    :cond_130
    sget-object v19, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_13d

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    goto/16 :goto_82

    :cond_13d
    sget-object v19, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_82

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_82

    :cond_14b
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    goto/16 :goto_3f

    :cond_155
    new-instance v19, Lcom/facebook/katana/service/api/FacebookPost$Likes;

    invoke-direct/range {v19 .. v19}, Lcom/facebook/katana/service/api/FacebookPost$Likes;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

    goto/16 :goto_4b

    :cond_162
    new-instance v19, Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-direct/range {v19 .. v19}, Lcom/facebook/katana/service/api/FacebookPost$Comments;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    goto/16 :goto_52
.end method

.method private determinePostType()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    if-eqz v3, :cond_a5

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6e

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "link"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getHref()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3a

    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    :goto_39
    return-void

    :cond_3a
    const-string v3, "/apps.facebook.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_45
    const-string v3, ".applatform.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_50
    iput v6, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_53
    const-string v3, "photo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x2

    iput v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_5f
    const-string v3, "video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v3, 0x3

    iput v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_6b
    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_6e
    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getHref()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8e

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8e

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_91

    :cond_8e
    iput v6, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_91
    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_98

    iput v5, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_98
    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_9b
    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_a2

    iput v5, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_a2
    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_a5
    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    if-eqz v3, :cond_ac

    iput v5, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39

    :cond_ac
    iput v4, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    goto :goto_39
.end method


# virtual methods
.method public addComment(Lcom/facebook/katana/service/api/FacebookPost$Comment;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->addComment(Lcom/facebook/katana/service/api/FacebookPost$Comment;)V

    return-void
.end method

.method public canInteractWithFeedback()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->canPost()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->canLike()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getTotalCount()I

    move-result v0

    if-gtz v0, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public deleteComment(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->deleteComment(Ljava/lang/String;)V

    return-void
.end method

.method public getActorId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mActorId:J

    return-wide v0
.end method

.method public getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAppId:J

    return-wide v0
.end method

.method public getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mAttachment:Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    return-object v0
.end method

.method public getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    return-object v0
.end method

.method public getCreatedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mCreatedTime:J

    return-wide v0
.end method

.method public getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostId:Ljava/lang/String;

    return-object v0
.end method

.method public getPostType()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mPostType:I

    return v0
.end method

.method public getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

    return-object v0
.end method

.method public getTargetId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mTargetId:J

    return-wide v0
.end method

.method public getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mTargetProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mUserObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost;->mProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

    return-void
.end method

.method public setTargetProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost;->mTargetProfile:Lcom/facebook/katana/service/api/FacebookPost$Profile;

    return-void
.end method

.method public setUserLikes(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mLikes:Lcom/facebook/katana/service/api/FacebookPost$Likes;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->setUserLikes(Z)V

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPost;->mUserObject:Ljava/lang/Object;

    return-void
.end method

.method public updateComments(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost$Comment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPost;->mComments:Lcom/facebook/katana/service/api/FacebookPost$Comments;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->updateComments(Ljava/util/List;)V

    return-void
.end method
