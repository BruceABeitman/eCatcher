.class public Lcom/facebook/katana/service/api/FacebookMailboxThread;
.super Ljava/lang/Object;
.source "FacebookMailboxThread.java"


# static fields
.field public static final INVALID_OBJECT_ID:J


# instance fields
.field private final mLastUpdate:J

.field private final mMsgCount:I

.field private final mObjectId:J

.field private final mOtherPartyUserId:J

.field private final mParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnippet:Ljava/lang/String;

.field private final mSubject:Ljava/lang/String;

.field private final mThreadId:J

.field private mUnreadCount:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JIIJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JIIJJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p13}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p11

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-static {p11, p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_19
    iput-wide p1, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mThreadId:J

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSubject:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSnippet:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mOtherPartyUserId:J

    iput p7, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mMsgCount:I

    iput p8, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mUnreadCount:I

    iput-wide p9, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mLastUpdate:J

    iput-wide p11, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v15, -0x1

    const/4 v13, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

    const-wide/16 v5, -0x1

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    new-instance v18, Ljava/util/LinkedHashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    :goto_20
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_64

    const-wide/16 v18, 0x0

    cmp-long v18, v18, v8

    if-eqz v18, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3a
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mThreadId:J

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSubject:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSnippet:Ljava/lang/String;

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mOtherPartyUserId:J

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mMsgCount:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mUnreadCount:I

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mLastUpdate:J

    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    return-void

    :cond_64
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_bb

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    const-string v18, "thread_id"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_87

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    :cond_82
    :goto_82
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    goto :goto_20

    :cond_87
    const-string v18, "subject"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_97

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v13

    goto :goto_82

    :cond_97
    const-string v18, "snippet"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a7

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    goto :goto_82

    :cond_a7
    const-string v18, "snippet_author"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_82

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_82

    :cond_bb
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_129

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    const-string v18, "thread_id"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d6

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v15

    goto :goto_82

    :cond_d6
    const-string v18, "message_count"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e6

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v7

    goto :goto_82

    :cond_e6
    const-string v18, "unread"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f6

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v17

    goto :goto_82

    :cond_f6
    const-string v18, "updated_time"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_107

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v5

    goto/16 :goto_82

    :cond_107
    const-string v18, "snippet_author"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_118

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v11

    goto/16 :goto_82

    :cond_118
    const-string v18, "object_id"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_82

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v8

    goto/16 :goto_82

    :cond_129
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13e

    :cond_130
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v18

    sget-object v19, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_130

    goto/16 :goto_82

    :cond_13e
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_188

    if-eqz v3, :cond_82

    const-string v18, "recipients"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17a

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    :goto_156
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_82

    sget-object v18, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_175

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_175
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v14

    goto :goto_156

    :cond_17a
    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v18

    sget-object v19, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17a

    goto/16 :goto_82

    :cond_188
    sget-object v18, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v14

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_82

    invoke-virtual/range {p1 .. p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_82
.end method


# virtual methods
.method public getContentValues(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "folder"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "tid"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "subject"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "snippet"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "other_party"

    invoke-virtual {p0, p2, p3}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getOtherPartyUserId(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_count"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getMsgCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "unread_count"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getUnreadCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_update"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getLastUpdate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "object_id"

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getObjectId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "participants"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p4, p5, v2}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getParticipantsString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLastUpdate()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mLastUpdate:J

    return-wide v0
.end method

.method public getMsgCount()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mMsgCount:I

    return v0
.end method

.method public getObjectId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    return-wide v0
.end method

.method public getOtherPartyUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mOtherPartyUserId:J

    return-wide v0
.end method

.method public getOtherPartyUserId(J)J
    .registers 11

    const-wide/16 v0, -0x1

    iget-wide v4, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    :cond_c
    return-wide v0

    :cond_d
    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v5, v2, p1

    if-eqz v5, :cond_1b

    move-wide v0, v2

    goto :goto_1b
.end method

.method public getParticipants()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getParticipantsString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-wide v5, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1e

    iget-wide v5, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mObjectId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/api/FacebookUser;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    const-string v1, ""

    goto :goto_1a

    :cond_1e
    iget-object v5, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_63

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mParticipants:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_31
    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3c

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_3c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3, p3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_51

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/api/FacebookUser;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    :cond_63
    const-string v1, ""

    goto :goto_1a
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mThreadId:J

    return-wide v0
.end method

.method public getUnreadCount()I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mUnreadCount:I

    return v0
.end method

.method public setUnreadCount(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/katana/service/api/FacebookMailboxThread;->mUnreadCount:I

    return-void
.end method
