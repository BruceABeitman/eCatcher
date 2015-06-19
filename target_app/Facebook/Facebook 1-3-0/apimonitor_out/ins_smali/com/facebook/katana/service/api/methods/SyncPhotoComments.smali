.class public Lcom/facebook/katana/service/api/methods/SyncPhotoComments;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "SyncPhotoComments.java"
.field private final mAllUsers:Ljava/util/Map;
.field private mCanComment:Z
.field private mComments:Ljava/util/List;
.field private final mContext:Landroid/content/Context;
.field private final mPhotoId:Ljava/lang/String;
.field private final mSessionKey:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 12
const-string v2, "GET"
const/4 v3, 0x0
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mPhotoId:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
return-void
.end method
.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mCanComment:Z
return-void
.end method
.method static synthetic access$2(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mContext:Landroid/content/Context;
return-object v0
.end method
.method static synthetic access$3(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
return-object v0
.end method
.method static synthetic access$5(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
return-object v0
.end method
.method public getCanComment()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mCanComment:Z
return v0
.end method
.method public getComments()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
if-nez v0, :cond_9
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
goto :goto_8
.end method
.method public requestUsers()Ljava/util/Map;
.registers 15
const/4 v4, 0x0
new-instance v12, Ljava/util/HashMap;
invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_19
invoke-interface {v12}, Ljava/util/Map;->size()I
move-result v2
if-nez v2, :cond_2b
:cond_18
return-object v12
:cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/service/api/FacebookPhotoComment;
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getFromUserId()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_c
:cond_2b
new-instance v11, Ljava/lang/StringBuffer;
const/16 v2, 0x100
invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(I)V
const-string v2, "user_id"
invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " IN("
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const/4 v9, 0x1
invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_46
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_cd
const-string v2, ")"
invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;
sget-object v2, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$FriendsQuery;->PROJECTION:[Ljava/lang/String;
invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v3
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
move-result v2
if-eqz v2, :cond_9e
:cond_6a
const/4 v2, 0x0
invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v13}, Ljava/lang/Long;->longValue()J
move-result-wide v2
const/4 v4, 0x1
invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x2
invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x3
invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x4
invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-direct/range {v1 .. v7}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-nez v2, :cond_6a
:cond_9e
invoke-interface {v10}, Landroid/database/Cursor;->close()V
invoke-interface {v12}, Ljava/util/Map;->size()I
move-result v2
if-nez v2, :cond_18
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mComments:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_ad
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_18
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/service/api/FacebookPhotoComment;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mAllUsers:Ljava/util/Map;
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->getFromUserId()J
move-result-wide v4
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookUser;
invoke-virtual {v8, v1}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->setFromUser(Lcom/facebook/katana/service/api/FacebookUser;)V
goto :goto_ad
:cond_cd
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/Long;
if-eqz v9, :cond_db
const/4 v9, 0x0
:goto_d6
invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
goto/16 :goto_46
:cond_db
const-string v3, ","
invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_d6
.end method
.method public start()V
.registers 7
const/4 v5, 0x0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/facebook/katana/service/api/methods/PhotosGetComments;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mReqIntent:Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mPhotoId:Ljava/lang/String;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/katana/service/api/methods/PhotosGetComments;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/facebook/katana/service/api/methods/PhotosCanComment;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mReqIntent:Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
iget-object v4, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mPhotoId:Ljava/lang/String;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/katana/service/api/methods/PhotosCanComment;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/facebook/katana/service/api/methods/BatchRun;
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mReqIntent:Landroid/content/Intent;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/SyncPhotoComments;->mSessionKey:Ljava/lang/String;
new-instance v4, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;
invoke-direct {v4, p0, v5}, Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;-><init>(Lcom/facebook/katana/service/api/methods/SyncPhotoComments;Lcom/facebook/katana/service/api/methods/SyncPhotoComments$BatchListener;)V
invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/katana/service/api/methods/BatchRun;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
invoke-virtual {v1}, Lcom/facebook/katana/service/api/methods/BatchRun;->start()V
return-void
.end method