.class public Lcom/facebook/katana/service/api/methods/UsersSearch;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "UsersSearch.java"
.field private static mLastReqId:I
.field private final mContext:Landroid/content/Context;
.field private final mReqId:I
.field private mStart:I
.field private mTotal:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mLastReqId:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;IILcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 16
const/4 v6, 0x0
const-string v2, "GET"
const-string v3, "users.search"
const-string v4, "http://api.facebook.com/restserver.php"
move-object v0, p0
move-object v1, p2
move-object v5, p8
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput v6, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mStart:I
iput v6, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mTotal:I
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
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
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
const-string v1, "session_key"
invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
const-string v1, "query"
invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
const-string v1, "start"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
const-string v1, "limit"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mContext:Landroid/content/Context;
iput p3, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mReqId:I
sput p3, Lcom/facebook/katana/service/api/methods/UsersSearch;->mLastReqId:I
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/UsersSearch;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/service/api/methods/UsersSearch;->saveSearchResults(Ljava/util/List;)V
return-void
.end method
.method private declared-synchronized saveSearchResults(Ljava/util/List;)V
.registers 11
monitor-enter p0
:try_start_1
iget v5, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mReqId:I
sget v6, Lcom/facebook/katana/service/api/methods/UsersSearch;->mLastReqId:I
:try_end_5
.catchall {:try_start_1 .. :try_end_5} :catchall_37
if-ge v5, v6, :cond_9
:cond_7
:goto_7
monitor-exit p0
return-void
:cond_9
:try_start_9
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget v5, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mStart:I
if-nez v5, :cond_1a
sget-object v5, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
:cond_1a
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v5
if-eqz v5, :cond_7
const/4 v4, 0x0
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v5
new-array v2, v5, [Landroid/content/ContentValues;
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_2b
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_3a
sget-object v5, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
:try_end_36
.catchall {:try_start_9 .. :try_end_36} :catchall_37
goto :goto_7
:catchall_37
move-exception v5
monitor-exit p0
throw v5
:try_start_3a
:cond_3a
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/service/api/FacebookInfo;
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
aput-object v1, v2, v4
add-int/lit8 v4, v4, 0x1
const-string v6, "user_id"
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookInfo;->getUserId()J
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v6, "first_name"
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookInfo;->getFirstName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "last_name"
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookInfo;->getLastName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "display_name"
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookInfo;->getDisplayName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "user_image_url"
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookInfo;->getLargePic()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:try_end_7a
.catchall {:try_start_3a .. :try_end_7a} :catchall_37
goto :goto_2b
.end method
.method public getStartResults()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mStart:I
return v0
.end method
.method public getTotalResults()I
.registers 2
iget v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mTotal:I
return v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 8
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
:goto_4
sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v5, :cond_9
return-void
:cond_9
sget-object v5, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v5, :cond_33
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
const-string v5, "start"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_24
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v5
iput v5, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mStart:I
:goto_1f
:cond_1f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
goto :goto_4
:cond_24
const-string v5, "total"
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_1f
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I
move-result v5
iput v5, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mTotal:I
goto :goto_1f
:cond_33
sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v5, :cond_1f
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:goto_3c
sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v5, :cond_44
invoke-direct {p0, v2}, Lcom/facebook/katana/service/api/methods/UsersSearch;->saveSearchResults(Ljava/util/List;)V
goto :goto_1f
:cond_44
sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;
if-ne v3, v5, :cond_56
new-instance v4, Lcom/facebook/katana/service/api/FacebookInfo;
invoke-direct {v4, p1}, Lcom/facebook/katana/service/api/FacebookInfo;-><init>(Lorg/codehaus/jackson/JsonParser;)V
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookInfo;->getDisplayName()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_56
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_56
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
move-result-object v3
goto :goto_3c
.end method
.method public start()V
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/UsersSearch;->mParams:Ljava/util/Map;
const-string v1, "query"
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_14
invoke-super {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->start()V
:goto_13
return-void
:cond_14
new-instance v0, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;
invoke-direct {v0, p0}, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;-><init>(Lcom/facebook/katana/service/api/methods/UsersSearch;)V
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/UsersSearch$DeleteThread;->start()V
goto :goto_13
.end method