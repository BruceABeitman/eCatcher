.class public Lcom/facebook/katana/service/api/FacebookNotification;
.super Ljava/lang/Object;
.source "FacebookNotification.java"


# instance fields
.field private final mAppId:J

.field private final mBody:Ljava/lang/String;

.field private final mCreatedTime:J

.field private final mHRef:Ljava/lang/String;

.field private final mIsRead:Z

.field private final mNotificationId:J

.field private final mSenderId:J

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v7, -0x1

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v18

    :goto_14
    sget-object v20, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_68

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookNotification;->mNotificationId:J

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookNotification;->mSenderId:J

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookNotification;->mCreatedTime:J

    invoke-static/range {v19 .. v19}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotification;->mTitle:Ljava/lang/String;

    if-eqz v6, :cond_119

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_119

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotification;->mBody:Ljava/lang/String;

    :goto_45
    if-eqz v11, :cond_53

    const-string v20, "http://www.facebook.com/notifications.php"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_125

    const/4 v11, 0x0

    :cond_53
    :goto_53
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotification;->mHRef:Ljava/lang/String;

    if-nez v12, :cond_15f

    const/16 v20, 0x1

    :goto_5c
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/facebook/katana/service/api/FacebookNotification;->mIsRead:Z

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookNotification;->mAppId:J

    return-void

    :cond_68
    sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_bc

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    const-string v20, "notification_id"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8c

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    :cond_87
    :goto_87
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v18

    goto :goto_14

    :cond_8c
    const-string v20, "title_text"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9c

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v19

    goto :goto_87

    :cond_9c
    const-string v20, "body_text"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_ac

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_87

    :cond_ac
    const-string v20, "href"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_87

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    goto :goto_87

    :cond_bc
    sget-object v20, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_87

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    const-string v20, "notification_id"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v13

    goto :goto_87

    :cond_d8
    const-string v20, "sender_id"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v15

    goto :goto_87

    :cond_e8
    const-string v20, "created_time"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f8

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v7

    goto :goto_87

    :cond_f8
    const-string v20, "is_unread"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_108

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v12

    goto :goto_87

    :cond_108
    const-string v20, "app_id"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_87

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v4

    goto/16 :goto_87

    :cond_119
    invoke-static {v6}, Lcom/facebook/katana/util/StringUtils;->stripHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookNotification;->mBody:Ljava/lang/String;

    goto/16 :goto_45

    :cond_125
    const-string v3, "<a href=\""

    const-string v20, "<a href=\""

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_53

    const-string v20, "<a href=\""

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v17, v17, v20

    const-string v20, "\""

    move-object v0, v11

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/16 v20, -0x1

    move v0, v9

    move/from16 v1, v20

    if-eq v0, v1, :cond_15c

    move-object v0, v11

    move/from16 v1, v17

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_53

    :cond_15c
    const/4 v11, 0x0

    goto/16 :goto_53

    :cond_15f
    const/16 v20, 0x0

    goto/16 :goto_5c
.end method


# virtual methods
.method public getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mAppId:J

    return-wide v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mCreatedTime:J

    return-wide v0
.end method

.method public getHRef()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mHRef:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mNotificationId:J

    return-wide v0
.end method

.method public getSenderId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mSenderId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/FacebookNotification;->mIsRead:Z

    return v0
.end method
