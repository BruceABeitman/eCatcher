.class public Lcom/facebook/katana/service/api/methods/MailboxSend;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "MailboxSend.java"


# static fields
.field private static final USERS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mSender:Lcom/facebook/katana/service/api/FacebookUser;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->USERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/methods/ApiMethodListener;",
            ")V"
        }
    .end annotation

    const-string v2, "GET"

    const-string v3, "mailbox.send"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    const-string v1, "to"

    invoke-static {p5}, Lcom/facebook/katana/service/api/methods/MailboxSend;->commaSeparatedUserIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    const-string v1, "subject"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mRecipients:Ljava/util/List;

    return-void
.end method

.method private static commaSeparatedUserIds(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookUser;

    if-nez v0, :cond_2c

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_2c
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private updateContentProviders(J)V
    .registers 35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    move-object v4, v0

    const-string v5, "body"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/katana/service/api/methods/Utils;->buildSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mRecipients:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSend;->userIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mRecipients:Ljava/util/List;

    move-object v4, v0

    invoke-static {v4}, Lcom/facebook/katana/service/api/methods/MailboxSend;->usersMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v21

    new-instance v3, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    move-object v4, v0

    const-string v5, "subject"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v16}, Lcom/facebook/katana/service/api/FacebookMailboxThread;-><init>(JLjava/lang/String;Ljava/lang/String;JIIJJLjava/util/List;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v22}, Lcom/facebook/katana/service/api/FacebookMailboxThread;->getContentValues(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v31

    sget-object v4, Lcom/facebook/katana/provider/MailboxProvider;->THREADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V

    const-string v4, "folder"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "mid"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "author_uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "sent"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "body"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "body"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/MailboxProvider;->MESSAGES_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sget-object v4, Lcom/facebook/katana/provider/MailboxProvider;->USERS_UID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    sget-object v24, Lcom/facebook/katana/service/api/methods/MailboxSend;->USERS_PROJECTION:[Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v28

    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    if-eqz v29, :cond_188

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_185

    invoke-virtual/range {v31 .. v31}, Landroid/content/ContentValues;->clear()V

    const-string v4, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "first_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "last_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_image_url"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/MailboxSend;->mSender:Lcom/facebook/katana/service/api/FacebookUser;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_185
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_188
    return-void
.end method

.method private static userIdList(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    return-object v0

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private static usersMap(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_10

    return-object v0

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method


# virtual methods
.method protected parseResponse(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/MailboxSend;->printJson(Ljava/lang/String;)V

    const-string v2, "{"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lcom/facebook/katana/service/api/FacebookApiException;

    sget-object v3, Lcom/facebook/katana/service/api/methods/MailboxSend;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;

    invoke-virtual {v3, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v2

    :cond_17
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/service/api/methods/MailboxSend;->updateContentProviders(J)V

    return-void
.end method
