.class public Lcom/facebook/katana/service/api/methods/MailboxGetThreads;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "MailboxGetThreads.java"


# instance fields
.field mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIILcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 9

    invoke-static {p4, p5, p6}, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->buildQuery(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p7}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->mResult:Ljava/util/List;

    return-void
.end method

.method private static buildQuery(III)Ljava/lang/String;
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    :cond_4
    if-ne p2, v0, :cond_8

    const/16 p2, 0x14

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT thread_id,subject,recipients,updated_time,message_count,snippet,snippet_author,unread,object_id FROM thread WHERE (folder_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getMailboxThreads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookMailboxThread;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->mResult:Ljava/util/List;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_15

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    throw v0

    :cond_15
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_31

    :goto_19
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1e

    :cond_1d
    return-void

    :cond_1e
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_2c

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxGetThreads;->mResult:Ljava/util/List;

    new-instance v3, Lcom/facebook/katana/service/api/FacebookMailboxThread;

    invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookMailboxThread;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_19

    :cond_31
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed JSON"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
