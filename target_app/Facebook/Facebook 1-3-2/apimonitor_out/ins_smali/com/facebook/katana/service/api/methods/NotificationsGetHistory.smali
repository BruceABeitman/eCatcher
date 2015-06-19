.class public Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "NotificationsGetHistory.java"
.field public static final NOTIFICATIONS_QUERY:Ljava/lang/String; = "SELECT notification_id,sender_id,created_time,title_text,body_text,href,is_unread,app_id FROM notification WHERE (recipient_id=%1) AND is_hidden = 0 ORDER BY created_time DESC LIMIT 50"
.field private final mNotifications:Ljava/util/List;
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 7
invoke-static {p3, p4}, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->buildQuery(J)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, p1, p2, v0, p5}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->mNotifications:Ljava/util/List;
return-void
.end method
.method private static buildQuery(J)Ljava/lang/String;
.registers 5
const-string v0, "SELECT notification_id,sender_id,created_time,title_text,body_text,href,is_unread,app_id FROM notification WHERE (recipient_id=%1) AND is_hidden = 0 ORDER BY created_time DESC LIMIT 50"
const-string v1, "%1"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getNotifications()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->mNotifications:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 6
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_15
new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_21
throw v0
:cond_15
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_35
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
:goto_1d
sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_22
:cond_21
return-void
:cond_22
sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v1, v2, :cond_30
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/NotificationsGetHistory;->mNotifications:Ljava/util/List;
new-instance v3, Lcom/facebook/katana/service/api/FacebookNotification;
invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookNotification;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_30
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v1
goto :goto_1d
:cond_35
new-instance v2, Ljava/io/IOException;
const-string v3, "Malformed JSON"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
.end method