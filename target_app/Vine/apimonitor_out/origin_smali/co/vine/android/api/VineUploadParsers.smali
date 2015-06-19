.class public Lco/vine/android/api/VineUploadParsers;
.super Ljava/lang/Object;
.source "VineUploadParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/api/VineUploadParsers$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parsePostInfo(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineUpload$PostInfo;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-string v2, ""

    const-string v8, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v7, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    :goto_18
    if-eqz v20, :cond_152

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    if-eq v0, v1, :cond_152

    sget-object v1, Lco/vine/android/api/VineUploadParsers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v21

    aget v1, v1, v21

    packed-switch v1, :pswitch_data_158

    :cond_2b
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_18

    :pswitch_30
    const-string v1, "description"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_42
    const-string v1, "message"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    :cond_54
    const-string v1, "videoUrl"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v11

    :cond_66
    const-string v1, "thumbUrl"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v12

    goto :goto_2b

    :pswitch_79
    const-string v1, "postToTwitter"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v3

    goto :goto_2b

    :cond_8c
    const-string v1, "postToFacebook"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v4

    goto :goto_2b

    :pswitch_9f
    const-string v1, "channelId"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v5

    goto/16 :goto_2b

    :cond_b3
    const-string v1, "created"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v13

    goto/16 :goto_2b

    :cond_c7
    const-string v1, "maxLoops"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v16

    goto/16 :goto_2b

    :cond_db
    const-string v1, "postId"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v9

    goto/16 :goto_2b

    :pswitch_ef
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v18

    const-string v1, "entities"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_120

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    :goto_101
    if-eqz v20, :cond_2b

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    if-eq v0, v1, :cond_2b

    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineParsers;->parseEntity(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineEntity;

    move-result-object v17

    if-nez v7, :cond_114

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_114
    if-eqz v17, :cond_11b

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11b
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_101

    :cond_120
    const-string v1, "recipients"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14d

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    :goto_12e
    if-eqz v20, :cond_2b

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v20

    if-eq v0, v1, :cond_2b

    invoke-static/range {p0 .. p0}, Lco/vine/android/api/VineRecipient;->fromJson(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/VineRecipient;

    move-result-object v19

    if-nez v15, :cond_141

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_141
    if-eqz v19, :cond_148

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_148
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v20

    goto :goto_12e

    :cond_14d
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_2b

    :cond_152
    new-instance v1, Lco/vine/android/api/VineUpload$PostInfo;

    invoke-direct/range {v1 .. v16}, Lco/vine/android/api/VineUpload$PostInfo;-><init>(Ljava/lang/String;ZZJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;I)V

    return-object v1

    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_30
        :pswitch_79
        :pswitch_79
        :pswitch_9f
        :pswitch_ef
    .end packed-switch
.end method
