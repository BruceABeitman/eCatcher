.class  Lcom/glympse/android/lib/be;
.super Ljava/lang/Object;
.source "DirectionsManager.java"
.implements Lcom/glympse/android/api/GEventListener;
.implements Lcom/glympse/android/hal/GActivityListener;
.implements Lcom/glympse/android/lib/GDirectionsManagerPrivate;
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private jT:I
.field private kc:Lcom/glympse/android/api/GHistoryManager;
.field private kd:Z
.field private ke:Ljava/util/Hashtable;
.field private kf:Z
.field private kg:Z
.field private kh:I
.field private ki:Lcom/glympse/android/hal/GActivityProvider;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
iput v0, p0, Lcom/glympse/android/lib/be;->jT:I
iput-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
iput-boolean v0, p0, Lcom/glympse/android/lib/be;->kg:Z
iput v0, p0, Lcom/glympse/android/lib/be;->kh:I
return-void
.end method
.method private a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/br;)V
.registers 4
invoke-interface {p2, p1}, Lcom/glympse/android/lib/br;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p2}, Lcom/glympse/android/lib/br;->aR()Z
move-result v0
if-nez v0, :cond_11
invoke-interface {p2}, Lcom/glympse/android/lib/br;->stop()V
:cond_11
return-void
.end method
.method private a(Lcom/glympse/android/core/GLatLng;Lcom/glympse/android/core/GLatLng;)Z
.registers 11
invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLatitude()D
move-result-wide v0
invoke-interface {p1}, Lcom/glympse/android/core/GLatLng;->getLongitude()D
move-result-wide v2
invoke-interface {p2}, Lcom/glympse/android/core/GLatLng;->getLatitude()D
move-result-wide v4
invoke-interface {p2}, Lcom/glympse/android/core/GLatLng;->getLongitude()D
move-result-wide v6
invoke-static/range {v0 .. v7}, Lcom/glympse/android/lib/Location;->distance(DDDD)D
move-result-wide v0
double-to-int v0, v0
const/16 v1, 0x96
if-ge v0, v1, :cond_1b
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method private aI()V
.registers 7
new-instance v2, Lcom/glympse/android/lib/ix;
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
const/4 v1, 0x0
invoke-direct {v2, v0, v1}, Lcom/glympse/android/lib/ix;-><init>(ILcom/glympse/android/core/GPrimitive;)V
iget-object v0, p0, Lcom/glympse/android/lib/be;->kc:Lcom/glympse/android/api/GHistoryManager;
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I
move-result v4
const/4 v0, 0x0
move v1, v0
:goto_14
if-ge v1, v4, :cond_29
invoke-interface {v3, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v5
if-eqz v5, :cond_29
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GTicketPrivate;->updateTravelMode(Lcom/glympse/android/api/GTravelMode;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_29
return-void
.end method
.method private aJ()V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/br;
invoke-interface {v0}, Lcom/glympse/android/lib/br;->aS()V
goto :goto_6
:cond_1e
return-void
.end method
.method private aK()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aL()Z
move-result v0
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aM()V
:goto_9
return-void
:cond_a
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aN()V
goto :goto_9
.end method
.method private aL()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
move-result v0
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private aM()V
.registers 5
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kg:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aP()Lcom/glympse/android/hal/GActivityListener;
move-result-object v1
const-wide/16 v2, 0x7530
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GActivityProvider;->registerUpdates(Lcom/glympse/android/hal/GActivityListener;J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/be;->kg:Z
goto :goto_4
.end method
.method private aN()V
.registers 4
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kg:Z
if-nez v0, :cond_6
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aP()Lcom/glympse/android/hal/GActivityListener;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/hal/GActivityProvider;->removeUpdates(Lcom/glympse/android/hal/GActivityListener;)V
iput v2, p0, Lcom/glympse/android/lib/be;->kh:I
iput v2, p0, Lcom/glympse/android/lib/be;->jT:I
iput-boolean v2, p0, Lcom/glympse/android/lib/be;->kg:Z
goto :goto_5
.end method
.method private aO()Lcom/glympse/android/api/GEventListener;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GEventListener;
return-object v0
.end method
.method private aP()Lcom/glympse/android/hal/GActivityListener;
.registers 2
invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GActivityListener;
return-object v0
.end method
.method private b(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 5
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->d(Lcom/glympse/android/lib/GTicketPrivate;)Z
move-result v0
if-eqz v0, :cond_21
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->e(Lcom/glympse/android/lib/GTicketPrivate;)Lcom/glympse/android/lib/br;
move-result-object v0
if-eqz v0, :cond_1d
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v1
invoke-interface {v0}, Lcom/glympse/android/lib/br;->aQ()Lcom/glympse/android/core/GLatLng;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/glympse/android/lib/be;->a(Lcom/glympse/android/core/GLatLng;Lcom/glympse/android/core/GLatLng;)Z
move-result v1
if-nez v1, :cond_20
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/be;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/br;)V
:cond_1d
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->c(Lcom/glympse/android/lib/GTicketPrivate;)V
:cond_20
:goto_20
return-void
:cond_21
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->e(Lcom/glympse/android/lib/GTicketPrivate;)Lcom/glympse/android/lib/br;
move-result-object v0
if-eqz v0, :cond_20
invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/be;->a(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/br;)V
goto :goto_20
.end method
.method private b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/glympse/android/lib/GTicketPrivate;
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->b(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aK()V
return-void
.end method
.method private c(Lcom/glympse/android/lib/GTicketPrivate;)V
.registers 4
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->f(Lcom/glympse/android/lib/GTicketPrivate;)Lcom/glympse/android/lib/br;
move-result-object v0
if-nez v0, :cond_14
new-instance v0, Lcom/glympse/android/lib/bf;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v1
invoke-direct {v0, v1}, Lcom/glympse/android/lib/bf;-><init>(Lcom/glympse/android/core/GLatLng;)V
iget-object v1, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/br;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V
:cond_14
invoke-interface {v0, p1}, Lcom/glympse/android/lib/br;->addTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
iget-object v1, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private d(Lcom/glympse/android/lib/GTicketPrivate;)Z
.registers 3
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->isActive()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v0
if-eqz v0, :cond_14
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
move-result-object v0
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private e(Lcom/glympse/android/lib/GTicketPrivate;)Lcom/glympse/android/lib/br;
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/br;
return-object v0
.end method
.method private f(Lcom/glympse/android/lib/GTicketPrivate;)Lcom/glympse/android/lib/br;
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iget-object v2, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/br;
invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getDestination()Lcom/glympse/android/api/GPlace;
move-result-object v2
invoke-interface {v0}, Lcom/glympse/android/lib/br;->aQ()Lcom/glympse/android/core/GLatLng;
move-result-object v3
invoke-direct {p0, v2, v3}, Lcom/glympse/android/lib/be;->a(Lcom/glympse/android/core/GLatLng;Lcom/glympse/android/core/GLatLng;)Z
move-result v2
if-eqz v2, :cond_6
:goto_28
return-object v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method
.method private i(I)V
.registers 3
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
if-eq p1, v0, :cond_8
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iput p1, p0, Lcom/glympse/android/lib/be;->jT:I
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aI()V
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aJ()V
goto :goto_8
.end method
.method private j(I)I
.registers 3
packed-switch p1, :pswitch_data_16
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
:goto_5
return v0
:pswitch_6
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
goto :goto_5
:pswitch_9
const/4 v0, 0x1
goto :goto_5
:pswitch_b
const/4 v0, 0x2
goto :goto_5
:pswitch_d
const/4 v0, 0x3
goto :goto_5
:pswitch_f
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
goto :goto_5
:pswitch_12
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
goto :goto_5
nop
:pswitch_data_16
.packed-switch 0x0
:pswitch_6
:pswitch_9
:pswitch_b
:pswitch_d
:pswitch_f
:pswitch_12
.end packed-switch
.end method
.method public activityRecognized(II)V
.registers 4
packed-switch p1, :pswitch_data_10
iput p1, p0, Lcom/glympse/android/lib/be;->kh:I
iget v0, p0, Lcom/glympse/android/lib/be;->kh:I
invoke-direct {p0, v0}, Lcom/glympse/android/lib/be;->j(I)I
move-result v0
invoke-direct {p0, v0}, Lcom/glympse/android/lib/be;->i(I)V
:pswitch_e
return-void
nop
:pswitch_data_10
.packed-switch 0x5
:pswitch_e
.end packed-switch
.end method
.method public enableActivityRecognition(Z)V
.registers 4
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
if-eqz v0, :cond_11
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
if-eq p1, v0, :cond_11
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez v0, :cond_12
:goto_11
:cond_11
return-void
:cond_12
iput-boolean p1, p0, Lcom/glympse/android/lib/be;->kf:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
if-nez v0, :cond_1c
iput v1, p0, Lcom/glympse/android/lib/be;->jT:I
iput v1, p0, Lcom/glympse/android/lib/be;->kh:I
:cond_1c
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aK()V
goto :goto_11
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 7
const/4 v0, 0x1
if-ne v0, p2, :cond_41
and-int/lit16 v0, p3, 0x80
if-eqz v0, :cond_14
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aK()V
iget-object v0, p0, Lcom/glympse/android/lib/be;->kc:Lcom/glympse/android/api/GHistoryManager;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->simulateAddedEvents(Lcom/glympse/android/api/GEventListener;)V
:cond_13
:goto_13
return-void
:cond_14
const/high16 v0, 0x2
and-int/2addr v0, p3
if-eqz v0, :cond_2f
move-object v0, p4
check-cast v0, Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getState()I
move-result v1
and-int/lit8 v1, v1, 0x12
if-eqz v1, :cond_13
invoke-direct {p0, p4}, Lcom/glympse/android/lib/be;->b(Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_13
:cond_2f
const/high16 v0, 0x4
and-int/2addr v0, p3
if-eqz v0, :cond_13
invoke-direct {p0, p4}, Lcom/glympse/android/lib/be;->b(Ljava/lang/Object;)V
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v0
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_13
:cond_41
const/4 v0, 0x4
if-ne v0, p2, :cond_13
and-int/lit8 v0, p3, 0x40
if-eqz v0, :cond_4b
invoke-direct {p0, p4}, Lcom/glympse/android/lib/be;->b(Ljava/lang/Object;)V
:cond_4b
const/high16 v0, 0x100
and-int/2addr v0, p3
if-eqz v0, :cond_53
invoke-direct {p0, p4}, Lcom/glympse/android/lib/be;->b(Ljava/lang/Object;)V
:cond_53
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_13
invoke-direct {p0, p4}, Lcom/glympse/android/lib/be;->b(Ljava/lang/Object;)V
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v0
invoke-interface {p4, v0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_13
.end method
.method public getDeviceActivity()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/be;->kh:I
return v0
.end method
.method public getTravelMode()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/be;->jT:I
return v0
.end method
.method public isActivityRecognitionEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
return v0
.end method
.method public setActive(Z)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
if-eqz v0, :cond_9
if-eqz p1, :cond_9
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aJ()V
:cond_9
return-void
.end method
.method public setTravelMode(I)V
.registers 3
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
if-eqz v0, :cond_8
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kf:Z
if-eqz v0, :cond_9
:cond_8
:goto_8
return-void
:cond_9
packed-switch p1, :pswitch_data_12
:pswitch_c
goto :goto_8
:pswitch_d
invoke-direct {p0, p1}, Lcom/glympse/android/lib/be;->i(I)V
goto :goto_8
nop
:pswitch_data_12
.packed-switch 0x0
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_d
:pswitch_c
:pswitch_d
.end packed-switch
.end method
.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
.registers 4
iput-object p1, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/be;->kc:Lcom/glympse/android/api/GHistoryManager;
const/4 v0, 0x2
iget-object v1, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getEtaMode()I
move-result v1
if-ne v0, v1, :cond_46
const/4 v0, 0x1
:goto_14
iput-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
if-eqz v0, :cond_45
new-instance v0, Ljava/util/Hashtable;
invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createActivityProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GActivityProvider;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
invoke-interface {v0}, Lcom/glympse/android/hal/GActivityProvider;->isSupported()Z
move-result v0
if-nez v0, :cond_45
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
:cond_45
return-void
:cond_46
const/4 v0, 0x0
goto :goto_14
.end method
.method public stop()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-direct {p0}, Lcom/glympse/android/lib/be;->aO()Lcom/glympse/android/api/GEventListener;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
iput-object v3, p0, Lcom/glympse/android/lib/be;->ki:Lcom/glympse/android/hal/GActivityProvider;
:cond_10
iget-boolean v0, p0, Lcom/glympse/android/lib/be;->kd:Z
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
move-result-object v2
:goto_1a
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;
iget-object v1, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/br;
invoke-interface {v1, v0}, Lcom/glympse/android/lib/br;->removeTicket(Lcom/glympse/android/lib/GTicketPrivate;)V
invoke-interface {v1}, Lcom/glympse/android/lib/br;->stop()V
goto :goto_1a
:cond_35
iget-object v0, p0, Lcom/glympse/android/lib/be;->ke:Ljava/util/Hashtable;
invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
:cond_3a
iput-object v3, p0, Lcom/glympse/android/lib/be;->kc:Lcom/glympse/android/api/GHistoryManager;
iput-object v3, p0, Lcom/glympse/android/lib/be;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
return-void
.end method