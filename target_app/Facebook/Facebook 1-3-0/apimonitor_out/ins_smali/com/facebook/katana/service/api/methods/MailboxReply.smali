.class public Lcom/facebook/katana/service/api/methods/MailboxReply;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "MailboxReply.java"
.field private static final USERS_PROJECTION:[Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.field private final mSender:Lcom/facebook/katana/service/api/FacebookUser;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "_id"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/MailboxReply;->USERS_PROJECTION:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookUser;JLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 15
const-string v2, "GET"
const-string v3, "mailbox.reply"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p8
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v1, "tid"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v1, "body"
invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mContext:Landroid/content/Context;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
return-void
.end method
.method private updateContentProvider(J)V
.registers 15
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long v8, v2, v4
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v11, Landroid/content/ContentValues;
invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->OUTBOX_THREADS_TID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/facebook/katana/service/api/methods/MailboxReply$ThreadQuery;->THREADS_PROJECTION:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_e5
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_e2
invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v3, "body"
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Lcom/facebook/katana/service/api/methods/Utils;->buildSnippet(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
const-string v2, "snippet"
invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "other_party"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "last_update"
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "msg_count"
const/4 v3, 0x1
invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->THREADS_CONTENT_URI:Landroid/net/Uri;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v4, 0x0
invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
const-string v2, "folder"
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v2, "tid"
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "mid"
const/4 v3, 0x1
invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v2, "author_uid"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "sent"
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v3, "body"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v4, "body"
invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->MESSAGES_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:cond_e2
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_e5
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->INBOX_THREADS_TID_CONTENT_URI:Landroid/net/Uri;
invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/facebook/katana/service/api/methods/MailboxReply$ThreadQuery;->THREADS_PROJECTION:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_188
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_185
invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
const-string v2, "last_update"
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "msg_count"
const/4 v3, 0x1
invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->THREADS_CONTENT_URI:Landroid/net/Uri;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v4, 0x0
invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
const-string v2, "folder"
const/4 v3, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v2, "tid"
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "mid"
const/4 v3, 0x1
invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v2, "author_uid"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "sent"
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "body"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mParams:Ljava/util/Map;
const-string v4, "body"
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
check-cast p1, Ljava/lang/String;
invoke-virtual {v11, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->MESSAGES_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:cond_185
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_188
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->USERS_UID_CONTENT_URI:Landroid/net/Uri;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/facebook/katana/service/api/methods/MailboxReply;->USERS_PROJECTION:[Ljava/lang/String;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_1f8
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v2
if-nez v2, :cond_1f5
invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V
const-string v2, "uid"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "first_name"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "last_name"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "display_name"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "user_image_url"
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/MailboxReply;->mSender:Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;
move-result-object v3
invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->USERS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:cond_1f5
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_1f8
return-void
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 6
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/MailboxReply;->printJson(Ljava/lang/String;)V
const-string v2, "{"
invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_17
new-instance v2, Lcom/facebook/katana/service/api/FacebookApiException;
sget-object v3, Lcom/facebook/katana/service/api/methods/MailboxReply;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v3, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v3
invoke-direct {v2, v3}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V
throw v2
:cond_17
invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/facebook/katana/service/api/methods/MailboxReply;->updateContentProvider(J)V
return-void
.end method