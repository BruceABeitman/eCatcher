.class public Lcom/bbm/compat/maps/MapQuestMapView;
.super Lcom/mapquest/android/maps/MapView;
.source "MapQuestMapView.java"
.implements Lcom/bbm/compat/maps/c;
.field  a:Ljava/lang/String;
.field private r:Lcom/bbm/compat/maps/e;
.field private s:Lcom/bbm/compat/maps/d;
.field private t:Ljava/util/Map;
.field private u:Ljava/util/Map;
.field private v:Lcom/mapquest/android/maps/AnnotationView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/mapquest/android/maps/MapView;-><init>(Landroid/content/Context;B)V
iput-object v1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
iput-object v1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
iput-object v1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->a:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
new-instance v0, Lcom/mapquest/android/maps/AnnotationView;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/AnnotationView;-><init>(Lcom/mapquest/android/maps/MapView;)V
iput-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
new-instance v1, Lcom/bbm/compat/maps/h;
invoke-direct {v1, p0}, Lcom/bbm/compat/maps/h;-><init>(Lcom/bbm/compat/maps/MapQuestMapView;)V
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/AnnotationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, v2}, Lcom/bbm/compat/maps/MapQuestMapView;->setClickable(Z)V
invoke-super {p0, v2}, Lcom/mapquest/android/maps/MapView;->setBuiltInZoomControls(Z)V
return-void
.end method
.method static synthetic a(Lcom/bbm/compat/maps/MapQuestMapView;)Lcom/mapquest/android/maps/AnnotationView;
.registers 2
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/compat/maps/MapQuestMapView;)Lcom/bbm/compat/maps/e;
.registers 2
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->r:Lcom/bbm/compat/maps/e;
return-object v0
.end method
.method public final a()V
.registers 3
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getOverlays()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public final a(DD)V
.registers 8
new-instance v0, Lcom/mapquest/android/maps/s;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/mapquest/android/maps/s;-><init>(DD)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v1
const/16 v2, 0x12
invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/al;->a(I)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/al;->a(Lcom/mapquest/android/maps/s;)V
return-void
.end method
.method public final a(Lcom/glympse/android/api/GTrack;Ljava/lang/String;)V
.registers 12
new-instance v1, Landroid/graphics/Paint;
const/4 v0, 0x1
invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V
const v0, -0xffff01
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const/high16 v0, 0x4040
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Lcom/glympse/android/api/GTrack;->getLocations()Lcom/glympse/android/core/GList;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_23
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_40
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
new-instance v4, Lcom/mapquest/android/maps/s;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v5
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v7
invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapquest/android/maps/s;-><init>(DD)V
invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_23
:cond_40
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ac;
if-eqz v0, :cond_59
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getOverlays()Ljava/util/List;
move-result-object v3
invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
invoke-virtual {v0}, Lcom/mapquest/android/maps/ac;->c()V
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_59
new-instance v0, Lcom/mapquest/android/maps/ac;
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/ac;-><init>(Landroid/graphics/Paint;)V
invoke-static {v2}, Lcom/mapquest/android/maps/b;->a(Ljava/util/List;)Lcom/mapquest/android/maps/b;
move-result-object v1
iput-object v2, v0, Lcom/mapquest/android/maps/ac;->b:Ljava/util/List;
iput-object v1, v0, Lcom/mapquest/android/maps/ac;->e:Lcom/mapquest/android/maps/b;
new-instance v1, Ljava/util/ArrayList;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
iput-object v1, v0, Lcom/mapquest/android/maps/ac;->c:Ljava/util/ArrayList;
const/4 v1, 0x0
iput-object v1, v0, Lcom/mapquest/android/maps/ac;->d:Ljava/util/List;
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getOverlays()Ljava/util/List;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->u:Ljava/util/Map;
invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Lcom/glympse/android/api/GUser;Z)V
.registers 8
if-eqz p1, :cond_8
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v0
if-nez v0, :cond_9
:cond_8
return-void
:cond_9
new-instance v0, Lcom/mapquest/android/maps/s;
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v1
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/s;-><init>(DD)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v1
const/16 v2, 0x14
invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/al;->a(I)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/al;->a(Lcom/mapquest/android/maps/s;)V
if-eqz p2, :cond_8
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_38
:goto_38
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v2, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
if-eqz v0, :cond_38
iget-object v2, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/AnnotationView;->a(Lcom/mapquest/android/maps/bp;)V
goto :goto_38
.end method
.method public final a(Lcom/glympse/android/core/GList;Ljava/lang/String;ILcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;)V
.registers 15
invoke-static {p1}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/core/GList;)F
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_10
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
rsub-int/lit8 v0, v0, 0x0
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
rsub-int/lit8 v2, v2, 0x0
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
div-int/lit8 v3, v3, 0x2
const/4 v4, 0x0
invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
new-instance v2, Lcom/mapquest/android/maps/d;
invoke-direct {v2, v1}, Lcom/mapquest/android/maps/d;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
new-instance v3, Lcom/mapquest/android/maps/bp;
new-instance v4, Lcom/mapquest/android/maps/s;
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v5
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v7
invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapquest/android/maps/s;-><init>(DD)V
invoke-interface {p5}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {p5, v5}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Landroid/content/Context;)Ljava/lang/String;
move-result-object v5
invoke-direct {v3, v4, v0, v5}, Lcom/mapquest/android/maps/bp;-><init>(Lcom/mapquest/android/maps/s;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3, v1}, Lcom/mapquest/android/maps/bp;->a(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v2, v3}, Lcom/mapquest/android/maps/d;->a(Lcom/mapquest/android/maps/bp;)V
new-instance v0, Lcom/bbm/compat/maps/i;
invoke-direct {v0, p0, v2}, Lcom/bbm/compat/maps/i;-><init>(Lcom/bbm/compat/maps/MapQuestMapView;Lcom/mapquest/android/maps/d;)V
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/d;->a(Lcom/mapquest/android/maps/bi;)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getOverlays()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(Ljava/lang/Object;)V
.registers 5
if-eqz p1, :cond_3c
instance-of v0, p1, Lcom/mapquest/android/maps/bp;
if-eqz v0, :cond_3c
check-cast p1, Lcom/mapquest/android/maps/bp;
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/AnnotationView;->a(Lcom/mapquest/android/maps/bp;)V
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/mapquest/android/maps/bp;
invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_17
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_35
iput-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->a:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/bbm/compat/maps/MapQuestMapView;->a(Ljava/lang/String;)V
:cond_3c
return-void
:cond_3d
const/4 v0, 0x0
goto :goto_35
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/al;->a(Lcom/mapquest/android/maps/s;)V
:cond_15
return-void
.end method
.method public final a(Z)V
.registers 8
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
const/4 v0, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/bbm/compat/maps/MapQuestMapView;->t:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_33
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/bp;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bp;->a()Lcom/mapquest/android/maps/s;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_33
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_58
new-instance v1, Lcom/mapquest/android/maps/s;
invoke-virtual {v0}, Lcom/mapquest/android/maps/s;->a()D
move-result-wide v2
invoke-virtual {v0}, Lcom/mapquest/android/maps/s;->b()D
move-result-wide v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/s;-><init>(DD)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
const/16 v2, 0x10
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/al;->a(I)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/al;->a(Lcom/mapquest/android/maps/s;)V
goto :goto_8
:cond_58
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/AnnotationView;->a()V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-static {v1}, Lcom/mapquest/android/maps/b;->a(Ljava/util/List;)Lcom/mapquest/android/maps/b;
move-result-object v1
iget-object v0, v0, Lcom/mapquest/android/maps/al;->c:Lcom/mapquest/android/maps/am;
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "ul_latitude"
iget-object v5, v1, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v5, v5, Lcom/mapquest/android/maps/s;->a:I
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "ul_longitude"
iget-object v5, v1, Lcom/mapquest/android/maps/b;->a:Lcom/mapquest/android/maps/s;
iget v5, v5, Lcom/mapquest/android/maps/s;->b:I
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "lr_latitude"
iget-object v5, v1, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v5, v5, Lcom/mapquest/android/maps/s;->a:I
invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string v4, "lr_longitude"
iget-object v1, v1, Lcom/mapquest/android/maps/b;->b:Lcom/mapquest/android/maps/s;
iget v1, v1, Lcom/mapquest/android/maps/s;->b:I
invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const/4 v1, 0x3
iput v1, v2, Landroid/os/Message;->what:I
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/am;->a(Landroid/os/Message;)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/MapQuestMapView;->getController()Lcom/mapquest/android/maps/al;
move-result-object v0
invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->b()Z
goto/16 :goto_8
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/compat/maps/MapQuestMapView;->v:Lcom/mapquest/android/maps/AnnotationView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/AnnotationView;->a()V
return-void
.end method
.method public getView()Landroid/view/View;
.registers 1
return-object p0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/compat/maps/MapQuestMapView; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/compat/maps/MapQuestMapView; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/MapQuestMapView; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/mapquest/android/maps/MapView;->e()V
const-string v1, " - Lcom/bbm/compat/maps/MapQuestMapView; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLowMemory()V
.registers 1
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/MapQuestMapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/compat/maps/MapQuestMapView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/bbm/compat/maps/MapQuestMapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/compat/maps/MapQuestMapView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setCompassEnabled(Z)V
.registers 2
return-void
.end method
.method public setGesturesEnabled(Z)V
.registers 2
return-void
.end method
.method public setInfoWindowAdapter(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public setOnMapClickListener(Lcom/bbm/compat/maps/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->s:Lcom/bbm/compat/maps/d;
return-void
.end method
.method public setOnMarkerClickListener(Lcom/bbm/compat/maps/e;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/MapQuestMapView;->r:Lcom/bbm/compat/maps/e;
return-void
.end method
.method public setZoomControlsEnabled(Z)V
.registers 2
invoke-super {p0, p1}, Lcom/mapquest/android/maps/MapView;->setBuiltInZoomControls(Z)V
return-void
.end method