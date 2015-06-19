.class public Lcom/glympse/map/lib/WorldView;
.super Ljava/lang/Object;
.source "WorldView.java"
.implements Lcom/glympse/android/api/GEventListener;
.implements Lcom/glympse/map/lib/IMapContent;
.field  _followedMarkerCode:Ljava/lang/String;
.field  _mapCommon:Lcom/glympse/map/lib/MapCommon;
.field private mConversation:Lcom/bbm/d/es;
.field private mUserMappingInvite:Ljava/util/List;
.method public constructor <init>(Lcom/bbm/compat/maps/c;Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
iput-object v0, p0, Lcom/glympse/map/lib/WorldView;->_followedMarkerCode:Ljava/lang/String;
new-instance v0, Lcom/glympse/map/lib/MapCommon;
invoke-direct {v0, p1, p2}, Lcom/glympse/map/lib/MapCommon;-><init>(Lcom/bbm/compat/maps/c;Landroid/content/Context;)V
iput-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
return-void
.end method
.method public attachConversation(Lcom/bbm/d/es;)V
.registers 2
iput-object p1, p0, Lcom/glympse/map/lib/WorldView;->mConversation:Lcom/bbm/d/es;
return-void
.end method
.method public attachUserMapping(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/glympse/map/lib/WorldView;->mUserMappingInvite:Ljava/util/List;
return-void
.end method
.method public center(Z)V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0, p1}, Lcom/glympse/map/lib/MapCommon;->centerOnAllMarkers(Z)V
return-void
.end method
.method public centerOnTicketCode(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0, p1}, Lcom/glympse/map/lib/MapCommon;->centerOnTicketCode(Ljava/lang/String;)V
return-void
.end method
.method public centerOnUser(Lcom/glympse/android/api/GUser;Z)V
.registers 4
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0, p1, p2}, Lcom/glympse/map/lib/MapCommon;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V
return-void
.end method
.method public clearTrails()V
.registers 2
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0}, Lcom/glympse/map/lib/MapCommon;->clearTrails()V
return-void
.end method
.method public draw(Lcom/glympse/android/api/GGlympse;I)V
.registers 10
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->mUserMappingInvite:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_6
:cond_6
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ko;
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
iget-object v2, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v1
if-eqz v1, :cond_42
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v1
:goto_2a
if-eqz v2, :cond_6
if-eqz v1, :cond_6
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
iget-object v4, p0, Lcom/glympse/map/lib/WorldView;->mUserMappingInvite:Ljava/util/List;
iget-object v5, p0, Lcom/glympse/map/lib/WorldView;->mConversation:Lcom/bbm/d/es;
move v3, p2
invoke-virtual/range {v0 .. v5}, Lcom/glympse/map/lib/MapCommon;->draw(Lcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;ILjava/util/List;Lcom/bbm/d/es;)V
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_followedMarkerCode:Ljava/lang/String;
if-eqz v0, :cond_6
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_followedMarkerCode:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/glympse/map/lib/WorldView;->centerOnTicketCode(Ljava/lang/String;)V
goto :goto_6
:cond_42
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v1
iget-object v2, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-interface {v1, v2}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v2
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v1
iget-object v0, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GUserManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v1
goto :goto_2a
:cond_63
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 6
const/4 v0, 0x1
if-ne v0, p2, :cond_39
and-int/lit16 v0, p3, 0x2000
if-eqz v0, :cond_1a
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GUser;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_15
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_15
const/4 v0, 0x0
invoke-virtual {p0, p4, v0}, Lcom/glympse/map/lib/WorldView;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V
:cond_19
:goto_19
return-void
:cond_1a
and-int/lit16 v0, p3, 0x4000
if-eqz v0, :cond_2d
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GUser;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_19
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_19
:cond_2d
const v0, 0x8000
and-int/2addr v0, p3
if-eqz v0, :cond_19
sget v0, Lcom/glympse/map/lib/Map;->flags:I
invoke-virtual {p0, p1, v0}, Lcom/glympse/map/lib/WorldView;->draw(Lcom/glympse/android/api/GGlympse;I)V
goto :goto_19
:cond_39
const/4 v0, 0x3
if-ne v0, p2, :cond_66
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_52
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v0
if-nez v0, :cond_19
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_19
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_19
:cond_52
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_5c
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_19
:cond_5c
and-int/lit8 v0, p3, 0x8
if-eqz v0, :cond_19
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_19
:cond_66
const/4 v0, 0x4
if-ne v0, p2, :cond_19
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_19
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_19
.end method
.method public startFollowing(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0, p1}, Lcom/glympse/map/lib/MapCommon;->startFollowing(Ljava/lang/Object;)V
return-void
.end method
.method public stopFollowing()V
.registers 2
iget-object v0, p0, Lcom/glympse/map/lib/WorldView;->_mapCommon:Lcom/glympse/map/lib/MapCommon;
invoke-virtual {v0}, Lcom/glympse/map/lib/MapCommon;->stopFollowing()V
return-void
.end method