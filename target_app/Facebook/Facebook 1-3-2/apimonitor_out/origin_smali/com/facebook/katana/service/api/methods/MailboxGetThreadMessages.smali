.class public Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "MailboxGetThreadMessages.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFolder:I

.field private final mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IJIILcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 11

    invoke-static {p4, p5, p6, p7, p8}, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->buildQuery(IJII)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p9}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mFolder:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mMessages:Ljava/util/List;

    iput-wide p5, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mThreadId:J

    return-void
.end method

.method private static buildQuery(IJII)Ljava/lang/String;
    .registers 7

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    const/4 p3, 0x0

    :cond_4
    if-ne p4, v0, :cond_8

    const/16 p4, 0x1e

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT message_id,author_id,created_time,body,attachment FROM message WHERE (thread_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveMessages()V
    .registers 10

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mMessages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_21

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/facebook/katana/provider/MailboxProvider;->MESSAGES_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void

    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v4, v3

    aget-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    const-string v6, "folder"

    iget v7, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mFolder:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "tid"

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->getThreadId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "mid"

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->getMessageId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "author_uid"

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->getAuthorId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "sent"

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->getTimeSent()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "body"

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method


# virtual methods
.method public getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_e

    new-instance v1, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v1, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    :cond_e
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2f

    :goto_12
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->saveMessages()V

    return-void

    :cond_1a
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2a

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mMessages:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;

    iget-wide v3, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreadMessages;->mThreadId:J

    invoke-direct {v2, p1, v3, v4}, Lcom/facebook/katana/service/api/FacebookMailboxThreadMessage;-><init>(Lorg/codehaus/jackson/JsonParser;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_12

    :cond_2f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Malformed JSON"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
