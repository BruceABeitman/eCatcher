.class public Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;
.super Lcom/facebook/katana/service/api/methods/FqlMultiQuery;
.source "FqlGetEventMembers.java"
.field private static final TAG:Ljava/lang/String; = "FqlGetEventMembers"
.field protected mEventId:J
.field protected mMembersByRsvpStatus:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
.registers 8
invoke-static {p1, p2, p3, p5, p6}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->buildQueries(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/Map;
move-result-object v0
invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
iput-wide p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mEventId:J
return-void
.end method
.method protected static buildQueries(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;J)Ljava/util/Map;
.registers 14
const/4 v4, 0x0
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
const-string v8, "rsvp_status"
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetRsvpStatusByEvent;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-wide v5, p3
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetRsvpStatusByEvent;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;J)V
invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v8, "user_info"
new-instance v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
const-string v5, "uid IN (SELECT uid FROM #rsvp_status)"
const-class v6, Lcom/facebook/katana/service/api/FacebookUser;
move-object v1, p0
move-object v2, p1
move-object v3, p2
invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V
invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v7
.end method
.method public getEventId()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mEventId:J
return-wide v0
.end method
.method public getEventMembersByStatus()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mMembersByRsvpStatus:Ljava/util/Map;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
.registers 13
invoke-super {p0, p1, p2}, Lcom/facebook/katana/service/api/methods/FqlMultiQuery;->parseJSON(Lorg/codehaus/jackson/JsonParser;Ljava/lang/String;)V
const-string v7, "rsvp_status"
invoke-virtual {p0, v7}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
move-result-object v2
check-cast v2, Lcom/facebook/katana/service/api/methods/FqlGetRsvpStatusByEvent;
const-string v7, "user_info"
invoke-virtual {p0, v7}, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->getQueryByName(Ljava/lang/String;)Lcom/facebook/katana/service/api/methods/FqlQuery;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
new-instance v7, Ljava/util/HashMap;
invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
iput-object v7, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mMembersByRsvpStatus:Ljava/util/Map;
invoke-virtual {v2}, Lcom/facebook/katana/service/api/methods/FqlGetRsvpStatusByEvent;->getEventRsvpStatus()Ljava/util/Map;
move-result-object v5
invoke-virtual {v4}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getUsers()Ljava/util/Map;
move-result-object v6
invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v7
invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_2a
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_31
return-void
:cond_31
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Long;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;
iget-object v7, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mMembersByRsvpStatus:Ljava/util/Map;
invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_55
iget-object v7, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mMembersByRsvpStatus:Ljava/util/Map;
new-instance v8, Ljava/util/Vector;
invoke-direct {v8}, Ljava/util/Vector;-><init>()V
invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_55
iget-object v7, p0, Lcom/facebook/katana/service/api/methods/FqlGetEventMembers;->mMembersByRsvpStatus:Ljava/util/Map;
invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/util/List;
invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/facebook/katana/service/api/FacebookUser;
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2a
.end method