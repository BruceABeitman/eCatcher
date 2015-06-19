.class public Lcom/facebook/katana/service/api/methods/MailboxMarkThread;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "MailboxMarkThread.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFolder:I

.field private final mRead:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 14

    const-string v2, "GET"

    if-eqz p6, :cond_50

    const-string v0, "mailbox.markRead"

    move-object v3, v0

    :goto_7
    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    const-string v0, "folder"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mFolder:I

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mParams:Ljava/util/Map;

    const-string v1, "tid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mContext:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mRead:Z

    return-void

    :cond_50
    const-string v0, "mailbox.markUnread"

    move-object v3, v0

    goto :goto_7
.end method


# virtual methods
.method protected parseResponse(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->printJson(Ljava/lang/String;)V

    const-string v6, "{"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    new-instance v6, Lcom/facebook/katana/service/api/FacebookApiException;

    sget-object v7, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;

    invoke-virtual {v7, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v6

    :cond_19
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "unread_count"

    iget-boolean v7, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mRead:Z

    if-eqz v7, :cond_5d

    const/4 v7, 0x0

    :goto_25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mParams:Ljava/util/Map;

    const-string v7, "tid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mFolder:I

    invoke-static {v6}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsTidFolderUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget v6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mFolder:I

    if-nez v6, :cond_5f

    const/4 v3, 0x1

    const/4 v1, 0x1

    :goto_4f
    if-eqz v3, :cond_5c

    invoke-static {v1}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsTidFolderUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5c
    return-void

    :cond_5d
    move v7, v9

    goto :goto_25

    :cond_5f
    iget v6, p0, Lcom/facebook/katana/service/api/methods/MailboxMarkThread;->mFolder:I

    if-ne v9, v6, :cond_66

    const/4 v3, 0x1

    const/4 v1, 0x0

    goto :goto_4f

    :cond_66
    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_4f
.end method
