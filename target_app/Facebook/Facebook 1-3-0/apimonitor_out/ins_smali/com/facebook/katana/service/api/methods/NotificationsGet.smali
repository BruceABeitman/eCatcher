.class public Lcom/facebook/katana/service/api/methods/NotificationsGet;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "NotificationsGet.java"
.field private final mContext:Landroid/content/Context;
.field private mNotifications:Lcom/facebook/katana/service/api/FacebookNotifications;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 11
const-string v2, "GET"
const-string v3, "notifications.get"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mContext:Landroid/content/Context;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public getNotifications()Lcom/facebook/katana/service/api/FacebookNotifications;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mNotifications:Lcom/facebook/katana/service/api/FacebookNotifications;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 3
new-instance v0, Lcom/facebook/katana/service/api/FacebookNotifications;
invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookNotifications;-><init>(Lorg/codehaus/jackson/JsonParser;)V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mNotifications:Lcom/facebook/katana/service/api/FacebookNotifications;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mNotifications:Lcom/facebook/katana/service/api/FacebookNotifications;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookNotifications;->hasNewNotifications()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/NotificationsGet;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/facebook/katana/service/api/FacebookNotifications;->save(Landroid/content/Context;)V
:cond_14
return-void
.end method