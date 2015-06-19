.class public Lcom/facebook/katana/service/api/methods/FqlGetEvents;
.super Lcom/facebook/katana/service/api/methods/FqlMultiQuery;
.source "FqlGetEvents.java"
.field private static final TAG:Ljava/lang/String; = "FqlGetEvents"
.field protected mContext:Landroid/content/Context;
.field protected mEvents:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
.registers 8
invoke-static {p1, p2, p3, p5, p6}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->buildQueries(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mContext:Landroid/content/Context;
return-void
.end method
.method protected static buildQueries(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/Map;
.registers 15
const/4 v4, 0x0
const-string v7, "event_info"
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
const-string v0, "event_info"
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v5, p3
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v9, "rsvp_status"
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;
const-string v1, "event_info"
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v5, p3
invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;JLjava/lang/String;)V
invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v7, "creator_info"
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetProfile;
const-string v5, "id IN (SELECT creator FROM #event_info)"
const-class v6, Lcom/facebook/katana/service/api/FacebookProfile;
move-object v1, p0
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V
invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v8
.end method
.method private declared-synchronized saveSearchResults()V
.registers 9
monitor-enter p0
:try_start_1
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v5, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
:try_end_13
.catchall {:try_start_1 .. :try_end_13} :catchall_33
move-result v5
if-nez v5, :cond_18
:goto_16
monitor-exit p0
return-void
:cond_18
const/4 v4, 0x0
:try_start_19
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
new-array v3, v5, [Landroid/content/ContentValues;
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_27
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_36
sget-object v5, Lcom/facebook/katana/provider/EventsProvider;->EVENTS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0, v5, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
:try_end_32
.catchall {:try_start_19 .. :try_end_32} :catchall_33
goto :goto_16
:catchall_33
move-exception v5
monitor-exit p0
throw v5
:cond_36
:try_start_36
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookEvent;
new-instance v2, Landroid/content/ContentValues;
invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V
aput-object v2, v3, v4
add-int/lit8 v4, v4, 0x1
invoke-virtual {v1, v2}, Lcom/facebook/katana/service/api/FacebookEvent;->writeContentValues(Landroid/content/ContentValues;)V
:try_end_48
.catchall {:try_start_36 .. :try_end_48} :catchall_33
goto :goto_27
.end method
.method public getEvents()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
.registers 17
invoke-super/range {p0 .. p2}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
const-string v11, "event_info"
invoke-virtual {p0, v11}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
move-result-object v7
check-cast v7, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;
const-string v11, "rsvp_status"
invoke-virtual {p0, v11}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
move-result-object v9
check-cast v9, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;
const-string v11, "creator_info"
invoke-virtual {p0, v11}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/methods/FqlGetProfile;
invoke-virtual {v7}, Lcom/facebook/katana/service/api/methods/FqlGetEventInfo;->getEvents()Ljava/util/List;
move-result-object v11
iput-object v11, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
iget-object v11, p0, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->mEvents:Ljava/util/List;
invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_2c
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_48
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/FqlGetProfile;->getUsers()Ljava/util/Map;
move-result-object v10
invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v11
invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v11
:cond_3e
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_76
invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/FqlGetEvents;->saveSearchResults()V
return-void
:cond_48
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookEvent;->getEventId()J
move-result-wide v5
invoke-virtual {v9, v5, v6}, Lcom/facebook/katana/service/api/methods/FqlGetEventRsvpStatus;->getEventRsvpStatus(J)Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
move-result-object v12
invoke-virtual {v4, v12}, Lcom/facebook/katana/service/api/FacebookEvent;->setRsvpStatus(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)V
new-instance v1, Ljava/lang/Long;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookEvent;->getCreatorId()J
move-result-wide v12
invoke-direct {v1, v12, v13}, Ljava/lang/Long;-><init>(J)V
invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-nez v0, :cond_72
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_72
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2c
:cond_76
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/Map$Entry;
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_3e
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v12
:goto_8e
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_3e
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookEvent;
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object p1
check-cast p1, Lcom/facebook/katana/service/api/FacebookProfile;
invoke-virtual {v4, p1}, Lcom/facebook/katana/service/api/FacebookEvent;->setCreator(Lcom/facebook/katana/service/api/FacebookProfile;)V
goto :goto_8e
.end method