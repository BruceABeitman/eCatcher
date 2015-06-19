.class public Lcom/glympse/map/lib/Map;
.super Lcom/bbm/compat/maps/b;
.source "Map.java"
.field public static final DRAW_TRAILS:I = 0x8
.field public static final FOLLOW_MODE_ALL:I = 0x2
.field public static final FOLLOW_MODE_ALL_AND_DEST:I = 0x4
.field public static final FOLLOW_MODE_LOC:I = 0x0
.field public static final FOLLOW_MODE_LOC_AND_DEST:I = 0x1
.field public static flags:I
.field private _glympse:Lcom/glympse/android/api/GGlympse;
.field private _worldView:Lcom/glympse/map/lib/WorldView;
.field private mConversation:Lcom/bbm/d/es;
.field private mUserMappingInvite:Ljava/util/List;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x8
sput v0, Lcom/glympse/map/lib/Map;->flags:I
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/bbm/compat/maps/b;-><init>()V
iput-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
iput-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
return-void
.end method
.method static synthetic access$000(Lcom/glympse/map/lib/Map;)Lcom/glympse/map/lib/WorldView;
.registers 2
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
return-object v0
.end method
.method public attachConversation(Lcom/bbm/d/es;)V
.registers 4
iput-object p1, p0, Lcom/glympse/map/lib/Map;->mConversation:Lcom/bbm/d/es;
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
iget-object v1, p0, Lcom/glympse/map/lib/Map;->mConversation:Lcom/bbm/d/es;
invoke-virtual {v0, v1}, Lcom/glympse/map/lib/WorldView;->attachConversation(Lcom/bbm/d/es;)V
:cond_d
return-void
.end method
.method public attachGlympse(Lcom/glympse/android/api/GGlympse;)V
.registers 2
iput-object p1, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
return-void
.end method
.method public attachUserMapping(Ljava/util/List;)V
.registers 7
iput-object p1, p0, Lcom/glympse/map/lib/Map;->mUserMappingInvite:Ljava/util/List;
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
new-instance v1, Lcom/bbm/util/a/b;
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getActivity()Landroid/support/v4/app/h;
move-result-object v2
iget-object v3, p0, Lcom/glympse/map/lib/Map;->mUserMappingInvite:Ljava/util/List;
iget-object v4, p0, Lcom/glympse/map/lib/Map;->mConversation:Lcom/bbm/d/es;
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/util/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bbm/d/es;)V
invoke-interface {v0, v1}, Lcom/bbm/compat/maps/c;->setInfoWindowAdapter(Ljava/lang/Object;)V
:goto_1c
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-virtual {v0, p1}, Lcom/glympse/map/lib/WorldView;->attachUserMapping(Ljava/util/List;)V
:cond_25
return-void
:cond_26
const-string v0, "getMap() is null"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_1c
.end method
.method public center(Z)V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-virtual {v0, p1}, Lcom/glympse/map/lib/WorldView;->center(Z)V
return-void
.end method
.method public centerOnUser(Lcom/glympse/android/api/GUser;Z)V
.registers 4
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-virtual {v0, p1, p2}, Lcom/glympse/map/lib/WorldView;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V
return-void
.end method
.method public clearTrails()V
.registers 2
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-virtual {v0}, Lcom/glympse/map/lib/WorldView;->clearTrails()V
return-void
.end method
.method public initMapOnSelf()V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
if-nez v0, :cond_c
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
iput-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
:cond_c
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/glympse/map/lib/Map;->centerOnUser(Lcom/glympse/android/api/GUser;Z)V
return-void
.end method
.method public isTrailsEnabled()Z
.registers 2
sget v0, Lcom/glympse/map/lib/Map;->flags:I
and-int/lit8 v0, v0, 0x8
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/bbm/compat/maps/b;->onActivityCreated(Landroid/os/Bundle;)V
new-instance v0, Lcom/glympse/map/lib/WorldView;
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v1
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getActivity()Landroid/support/v4/app/h;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/glympse/map/lib/WorldView;-><init>(Lcom/bbm/compat/maps/c;Landroid/content/Context;)V
iput-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
iget-object v1, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_1d
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->initMapOnSelf()V
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
new-instance v1, Lcom/glympse/map/lib/Map$1;
invoke-direct {v1, p0}, Lcom/glympse/map/lib/Map$1;-><init>(Lcom/glympse/map/lib/Map;)V
invoke-interface {v0, v1}, Lcom/bbm/compat/maps/c;->setOnMarkerClickListener(Lcom/bbm/compat/maps/e;)V
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
new-instance v1, Lcom/glympse/map/lib/Map$2;
invoke-direct {v1, p0}, Lcom/glympse/map/lib/Map$2;-><init>(Lcom/glympse/map/lib/Map;)V
invoke-interface {v0, v1}, Lcom/bbm/compat/maps/c;->setOnMapClickListener(Lcom/bbm/compat/maps/d;)V
return-void
.end method
.method public setFollowMode(I)V
.registers 3
sget v0, Lcom/glympse/map/lib/Map;->flags:I
or-int/2addr v0, p1
sput v0, Lcom/glympse/map/lib/Map;->flags:I
return-void
.end method
.method public setTrailsEnabled(Z)V
.registers 3
if-eqz p1, :cond_c
sget v0, Lcom/glympse/map/lib/Map;->flags:I
or-int/lit8 v0, v0, 0x8
sput v0, Lcom/glympse/map/lib/Map;->flags:I
:goto_8
invoke-virtual {p0}, Lcom/glympse/map/lib/Map;->update()V
return-void
:cond_c
sget v0, Lcom/glympse/map/lib/Map;->flags:I
and-int/lit8 v0, v0, -0x9
sput v0, Lcom/glympse/map/lib/Map;->flags:I
goto :goto_8
.end method
.method public startListening()V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
iget-object v1, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_f
return-void
.end method
.method public stopListening()V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
iget-object v1, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GGlympse;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_f
return-void
.end method
.method public trackTicket(Lcom/glympse/android/api/GTicket;)V
.registers 3
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
invoke-interface {p1, v0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
return-void
.end method
.method public update()V
.registers 4
iget-object v0, p0, Lcom/glympse/map/lib/Map;->_worldView:Lcom/glympse/map/lib/WorldView;
iget-object v1, p0, Lcom/glympse/map/lib/Map;->_glympse:Lcom/glympse/android/api/GGlympse;
sget v2, Lcom/glympse/map/lib/Map;->flags:I
invoke-virtual {v0, v1, v2}, Lcom/glympse/map/lib/WorldView;->draw(Lcom/glympse/android/api/GGlympse;I)V
return-void
.end method