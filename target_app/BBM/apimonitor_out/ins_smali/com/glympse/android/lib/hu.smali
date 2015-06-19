.class  Lcom/glympse/android/lib/hu;
.super Ljava/lang/Object;
.source "SinksFinder.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GEventListener;)Lcom/glympse/android/core/GArray;
.registers 11
const/4 v1, 0x0
new-instance v4, Lcom/glympse/android/hal/GVector;
invoke-direct {v4}, Lcom/glympse/android/hal/GVector;-><init>()V
invoke-static {v4, p0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLocationManager()Lcom/glympse/android/api/GLocationManager;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getUsers()Lcom/glympse/android/core/GArray;
move-result-object v5
invoke-interface {v5}, Lcom/glympse/android/core/GArray;->length()I
move-result v6
move v3, v1
:goto_32
if-ge v3, v6, :cond_60
invoke-interface {v5, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v2
invoke-static {v4, v2, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v7
invoke-interface {v7}, Lcom/glympse/android/core/GArray;->length()I
move-result v8
move v2, v1
:goto_4d
if-ge v2, v8, :cond_5c
invoke-interface {v7, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_4d
:cond_5c
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_32
:cond_60
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v5
move v2, v1
:goto_6d
if-ge v2, v5, :cond_7c
invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_6d
:cond_7c
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GGroupManager;->getPendingGroups()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v5
move v2, v1
:goto_90
if-ge v2, v5, :cond_a6
invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_90
:cond_a6
invoke-interface {p0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GGroupManager;->getGroups()Lcom/glympse/android/core/GArray;
move-result-object v2
invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I
move-result v3
:goto_b2
if-ge v1, v3, :cond_c8
invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GGroup;
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v0
invoke-static {v4, v0, p1}, Lcom/glympse/android/lib/hu;->a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_b2
:cond_c8
return-object v4
.end method
.method public static a(Lcom/glympse/android/hal/GVector;Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GEventListener;)V
.registers 9
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
move-result v2
invoke-interface {p1}, Lcom/glympse/android/api/GEventSink;->getListeners()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v4
const/4 v0, 0x0
move v1, v0
:goto_11
if-ge v1, v4, :cond_2
invoke-interface {v3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v5
if-ne v5, v2, :cond_29
invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_29
invoke-virtual {p0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
goto :goto_2
:cond_29
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
.end method