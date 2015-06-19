.class public Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "NotificationsMarkRead.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 15

    const-string v2, "GET"

    const-string v3, "notifications.markRead"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_34
    array-length v0, p4

    if-lt v7, v0, :cond_45

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mParams:Ljava/util/Map;

    const-string v1, "notification_ids"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mContext:Landroid/content/Context;

    return-void

    :cond_45
    if-nez v6, :cond_54

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4c
    aget-wide v0, p4, v7

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    :cond_54
    const/4 v6, 0x0

    goto :goto_4c
.end method

.method private updateReadFlag()V
    .registers 7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "notif_id IN("

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mParams:Ljava/util/Map;

    const-string v5, "notification_ids"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/facebook/katana/provider/NotificationsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected parseResponse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->printJson(Ljava/lang/String;)V

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    sget-object v1, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    :cond_17
    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/NotificationsMarkRead;->updateReadFlag()V

    return-void
.end method
