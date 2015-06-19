.class public Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "MailboxDeleteThread.java"
.field private final mContext:Landroid/content/Context;
.field private final mFolder:I
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JILcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 14
const-string v2, "GET"
const-string v3, "mailbox.deleteThread"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p7
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mParams:Ljava/util/Map;
const-string v1, "tid"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mParams:Ljava/util/Map;
const-string v1, "folder"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mContext:Landroid/content/Context;
iput p6, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mFolder:I
return-void
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->printJson(Ljava/lang/String;)V
const-string v3, "{"
invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_18
new-instance v3, Lcom/facebook/katana/service/api/FacebookApiException;
sget-object v4, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v4, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v4
invoke-direct {v3, v4}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v3
:cond_18
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mParams:Ljava/util/Map;
const-string v4, "tid"
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget v3, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mFolder:I
invoke-static {v3}, Lcom/facebook/katana/provider/MailboxProvider;->getThreadsTidFolderUri(I)Landroid/net/Uri;
move-result-object v3
invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
iget v3, p0, Lcom/facebook/katana/service/api/methods/MailboxDeleteThread;->mFolder:I
invoke-static {v3}, Lcom/facebook/katana/provider/MailboxProvider;->getMessagesTidFolderUri(I)Landroid/net/Uri;
move-result-object v3
invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
sget-object v3, Lcom/facebook/katana/provider/MailboxProvider;->USERS_PRUNE_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
return-void
.end method