.class public Lcom/bbm/compat/maps/GoogleMapView;
.super Lcom/google/android/gms/maps/MapView;
.source "GoogleMapView.java"
.implements Lcom/bbm/compat/maps/c;
.field  a:Ljava/lang/String;
.field private b:Ljava/util/Map;
.field private c:Ljava/util/Map;
.field private d:Lcom/bbm/compat/maps/e;
.field private e:Lcom/bbm/compat/maps/d;
.field private f:Z
.field private g:Z
.field private final h:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
iput-boolean v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->f:Z
iput-boolean v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->g:Z
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->a:Ljava/lang/String;
const/high16 v0, 0x4160
iput v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->h:F
invoke-static {p1}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)I
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-direct {p0}, Lcom/bbm/compat/maps/GoogleMapView;->c()V
return-void
.end method
.method static synthetic a(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/e;
.registers 2
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->d:Lcom/bbm/compat/maps/e;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/compat/maps/GoogleMapView;)Lcom/bbm/compat/maps/d;
.registers 2
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->e:Lcom/bbm/compat/maps/d;
return-object v0
.end method
.method private c()V
.registers 4
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_2b
iget-boolean v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->f:Z
if-nez v0, :cond_19
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
new-instance v1, Lcom/bbm/compat/maps/f;
invoke-direct {v1, p0}, Lcom/bbm/compat/maps/f;-><init>(Lcom/bbm/compat/maps/GoogleMapView;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
iput-boolean v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->f:Z
:cond_19
iget-boolean v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->g:Z
if-nez v0, :cond_2b
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
new-instance v1, Lcom/bbm/compat/maps/g;
invoke-direct {v1, p0}, Lcom/bbm/compat/maps/g;-><init>(Lcom/bbm/compat/maps/GoogleMapView;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
iput-boolean v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->g:Z
:cond_2b
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/Polyline;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V
goto :goto_a
:cond_22
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public final a(DD)V
.registers 8
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_18
new-instance v0, Lcom/google/android/gms/maps/model/LatLng;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
const/high16 v2, 0x4160
invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
:cond_18
return-void
.end method
.method public final a(Lcom/glympse/android/api/GTrack;Ljava/lang/String;)V
.registers 11
new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;
invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V
invoke-interface {p1}, Lcom/glympse/android/api/GTrack;->getLocations()Lcom/glympse/android/core/GList;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
new-instance v3, Lcom/google/android/gms/maps/model/LatLng;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v6
invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;
goto :goto_d
:cond_2a
const v0, -0xffff01
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/Polyline;
if-eqz v0, :cond_42
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_42
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;
move-result-object v0
iget-object v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->c:Ljava/util/Map;
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
new-instance v0, Lcom/google/android/gms/maps/model/LatLng;
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v1
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v3
invoke-interface {v3}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
const/high16 v1, 0x4160
invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
if-eqz p2, :cond_8
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_40
:goto_40
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
iget-object v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_40
iget-object v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V
goto :goto_40
.end method
.method public final a(Lcom/glympse/android/core/GList;Ljava/lang/String;ILcom/glympse/android/api/GTicket;Lcom/glympse/android/api/GUser;)V
.registers 20
invoke-static {p1}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/core/GList;)F
move-result v2
iget-object v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
move-object/from16 v0, p2
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_48
invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z
move-result v1
if-nez v1, :cond_47
iget-object v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
move-object/from16 v0, p2
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setRotation(F)V
iget-object v1, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
move-object/from16 v0, p2
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/Marker;
new-instance v3, Lcom/google/android/gms/maps/model/LatLng;
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/core/GLocation;
invoke-interface {v2}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v4
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/core/GLocation;
invoke-interface {v2}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v6
invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
:goto_47
:cond_47
return-void
:cond_48
iget-object v8, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v9
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GLocation;
invoke-interface {v1}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v10
invoke-interface {p1}, Lcom/glympse/android/core/GList;->getLast()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/glympse/android/core/GLocation;
invoke-interface {v1}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v12
invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z
move-result v1
if-nez v1, :cond_ce
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
move/from16 v0, p3
invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v1
new-instance v6, Landroid/graphics/Matrix;
invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
const/4 v7, 0x1
invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
move-result-object v1
:goto_91
new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;
invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V
const/4 v3, 0x1
invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v2
const/high16 v3, 0x3f00
const/high16 v4, 0x3f00
invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v1
invoke-interface/range {p5 .. p5}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v1
const-string v2, "TEST"
invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v1
new-instance v2, Lcom/google/android/gms/maps/model/LatLng;
invoke-direct {v2, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
move-result-object v1
invoke-virtual {v9, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;
move-result-object v1
move-object/from16 v0, p2
invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_47
:cond_ce
invoke-static/range {p3 .. p3}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;
move-result-object v1
goto :goto_91
.end method
.method public final a(Ljava/lang/Object;)V
.registers 5
if-eqz p1, :cond_3a
instance-of v0, p1, Lcom/google/android/gms/maps/model/Marker;
if-eqz v0, :cond_3a
check-cast p1, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_15
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_33
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->a:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/bbm/compat/maps/GoogleMapView;->a(Ljava/lang/String;)V
:cond_3a
return-void
:cond_3b
const/4 v0, 0x0
goto :goto_33
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_19
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
:cond_19
return-void
.end method
.method public final a(Z)V
.registers 17
iget-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
new-instance v1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
invoke-direct {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
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
check-cast v0, Lcom/google/android/gms/maps/model/Marker;
invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
goto :goto_19
:cond_33
iget-object v2, p0, Lcom/bbm/compat/maps/GoogleMapView;->b:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->size()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_5a
if-eqz p1, :cond_4c
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
const/high16 v2, 0x4188
invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
goto :goto_8
:cond_4c
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
const/high16 v2, 0x4188
invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
goto :goto_8
:cond_5a
invoke-virtual {v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;
move-result-object v0
iget-object v1, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;
iget-object v2, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;
iget-wide v3, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
sub-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D
move-result-wide v3
iget-wide v5, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
sub-double/2addr v5, v7
invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D
move-result-wide v5
const-wide v7, 0x3f747ae147ae147bL
cmpg-double v7, v3, v7
if-gez v7, :cond_bb
new-instance v5, Lcom/google/android/gms/maps/model/LatLng;
iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
const-wide v8, 0x3f747ae147ae147bL
const-wide/high16 v10, 0x4000
div-double v10, v3, v10
sub-double/2addr v8, v10
sub-double/2addr v6, v8
iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
invoke-direct {v5, v6, v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
new-instance v1, Lcom/google/android/gms/maps/model/LatLng;
iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
const-wide v8, 0x3f747ae147ae147bL
const-wide/high16 v10, 0x4000
div-double/2addr v3, v10
sub-double v3, v8, v3
add-double/2addr v3, v6
iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;
invoke-direct {v0, v5, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
:cond_aa
:goto_aa
if-eqz p1, :cond_f3
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
const/16 v2, 0x64
invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
goto/16 :goto_8
:cond_bb
const-wide v3, 0x3f747ae147ae147bL
cmpg-double v3, v5, v3
if-gez v3, :cond_aa
new-instance v3, Lcom/google/android/gms/maps/model/LatLng;
iget-wide v7, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
iget-wide v0, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
const-wide v9, 0x3f747ae147ae147bL
const-wide/high16 v11, 0x4000
div-double v11, v5, v11
sub-double/2addr v9, v11
sub-double/2addr v0, v9
invoke-direct {v3, v7, v8, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
new-instance v1, Lcom/google/android/gms/maps/model/LatLng;
iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D
iget-wide v9, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D
const-wide v11, 0x3f747ae147ae147bL
const-wide/high16 v13, 0x4000
div-double v4, v5, v13
sub-double v4, v11, v4
add-double/2addr v4, v9
invoke-direct {v1, v7, v8, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;
invoke-direct {v0, v3, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V
goto :goto_aa
:cond_f3
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v1
const/16 v2, 0x64
invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
goto/16 :goto_8
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/compat/maps/GoogleMapView;->a:Ljava/lang/String;
return-void
.end method
.method public getView()Landroid/view/View;
.registers 1
return-object p0
.end method
.method public setCompassEnabled(Z)V
.registers 3
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V
:cond_11
return-void
.end method
.method public setGesturesEnabled(Z)V
.registers 3
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V
:cond_11
return-void
.end method
.method public setInfoWindowAdapter(Ljava/lang/Object;)V
.registers 3
if-eqz p1, :cond_15
instance-of v0, p1, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
check-cast p1, Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
:cond_15
return-void
.end method
.method public setOnMapClickListener(Lcom/bbm/compat/maps/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/GoogleMapView;->e:Lcom/bbm/compat/maps/d;
invoke-direct {p0}, Lcom/bbm/compat/maps/GoogleMapView;->c()V
return-void
.end method
.method public setOnMarkerClickListener(Lcom/bbm/compat/maps/e;)V
.registers 2
iput-object p1, p0, Lcom/bbm/compat/maps/GoogleMapView;->d:Lcom/bbm/compat/maps/e;
invoke-direct {p0}, Lcom/bbm/compat/maps/GoogleMapView;->c()V
return-void
.end method
.method public setZoomControlsEnabled(Z)V
.registers 3
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/bbm/compat/maps/GoogleMapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V
:cond_11
return-void
.end method