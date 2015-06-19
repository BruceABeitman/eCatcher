.class public final Lcom/bbm/d/a;
.super Lcom/bbm/d/ab;
.source "BbmdsModel.java"
.field public final a:Lcom/bbm/d/a/d/c;
.field final b:Ljava/util/List;
.field public final c:Lcom/bbm/ui/d/d;
.field public d:Ljava/lang/String;
.field public final e:Lcom/bbm/d/b/r;
.field public final f:Lcom/bbm/j/a;
.field private final h:Lcom/bbm/d/x;
.field private i:Lcom/bbm/j/r;
.field private j:Ljava/lang/ref/WeakReference;
.field private k:Ljava/lang/ref/WeakReference;
.field private l:Ljava/lang/ref/WeakReference;
.field private m:Ljava/lang/ref/WeakReference;
.field private final n:Lcom/bbm/j;
.field private final o:Ljava/util/Random;
.field private final p:Lcom/bbm/j/a;
.field private final q:Lcom/bbm/j/a;
.field private r:Lcom/bbm/j/a;
.field private final s:Lcom/bbm/j/a;
.field private t:Lcom/bbm/j/w;
.field private u:Lcom/bbm/j/w;
.field private v:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/bbm/f/a;Landroid/content/Context;Lcom/bbm/d/a/i;)V
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
invoke-direct {p0, p1, p3}, Lcom/bbm/d/ab;-><init>(Lcom/bbm/f/a;Lcom/bbm/d/a/i;)V
new-instance v0, Lcom/bbm/d/x;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/bbm/d/x;-><init>(Lcom/bbm/d/a;B)V
iput-object v0, p0, Lcom/bbm/d/a;->h:Lcom/bbm/d/x;
iput-object v2, p0, Lcom/bbm/d/a;->i:Lcom/bbm/j/r;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/d/a;->j:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/d/a;->k:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/d/a;->l:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/d/a;->m:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a;->b:Ljava/util/List;
new-instance v0, Ljava/util/Random;
invoke-direct {v0}, Ljava/util/Random;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a;->o:Ljava/util/Random;
iput-object v2, p0, Lcom/bbm/d/a;->d:Ljava/lang/String;
new-instance v0, Lcom/bbm/d/b;
invoke-direct {v0, p0}, Lcom/bbm/d/b;-><init>(Lcom/bbm/d/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->p:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/d/n;
invoke-direct {v0, p0}, Lcom/bbm/d/n;-><init>(Lcom/bbm/d/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->q:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/d/o;
invoke-direct {v0, p0}, Lcom/bbm/d/o;-><init>(Lcom/bbm/d/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->s:Lcom/bbm/j/a;
iput-object v2, p0, Lcom/bbm/d/a;->t:Lcom/bbm/j/w;
new-instance v0, Lcom/bbm/d/p;
invoke-direct {v0, p0}, Lcom/bbm/d/p;-><init>(Lcom/bbm/d/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->f:Lcom/bbm/j/a;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/d/a;->v:Ljava/lang/ref/WeakReference;
iget-object v0, p0, Lcom/bbm/d/a;->q:Lcom/bbm/j/a;
iput-boolean v3, v0, Lcom/bbm/j/a;->c:Z
iget-object v0, p0, Lcom/bbm/d/a;->s:Lcom/bbm/j/a;
iput-boolean v3, v0, Lcom/bbm/j/a;->c:Z
new-instance v0, Lcom/bbm/d/a/d/c;
invoke-direct {v0, p1, p2}, Lcom/bbm/d/a/d/c;-><init>(Lcom/bbm/f/a;Landroid/content/Context;)V
iput-object v0, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
new-instance v0, Lcom/bbm/j;
invoke-direct {v0, p1}, Lcom/bbm/j;-><init>(Lcom/bbm/f/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->n:Lcom/bbm/j;
new-instance v0, Lcom/bbm/ui/d/d;
invoke-direct {v0, p1}, Lcom/bbm/ui/d/d;-><init>(Lcom/bbm/f/a;)V
iput-object v0, p0, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;
iget-object v0, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
new-instance v1, Lcom/bbm/d/a/d;
const-string v2, "user"
invoke-direct {v1, v2}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
const-class v2, Lcom/bbm/d/gp;
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a/f;->a(Lcom/bbm/d/a/d;Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/b/a;
new-instance v1, Lcom/bbm/d/q;
iget-object v2, p0, Lcom/bbm/d/a;->r:Lcom/bbm/j/a;
if-nez v2, :cond_a3
new-instance v2, Lcom/bbm/d/r;
invoke-direct {v2, p0}, Lcom/bbm/d/r;-><init>(Lcom/bbm/d/a;)V
iput-object v2, p0, Lcom/bbm/d/a;->r:Lcom/bbm/j/a;
iget-object v2, p0, Lcom/bbm/d/a;->r:Lcom/bbm/j/a;
iput-boolean v3, v2, Lcom/bbm/j/a;->c:Z
:cond_a3
iget-object v2, p0, Lcom/bbm/d/a;->r:Lcom/bbm/j/a;
invoke-direct {v1, p0, v2, v0}, Lcom/bbm/d/q;-><init>(Lcom/bbm/d/a;Lcom/bbm/j/r;Lcom/bbm/d/a/b/a;)V
iput-object v1, p0, Lcom/bbm/d/a;->e:Lcom/bbm/d/b/r;
return-void
.end method
.method private Y(Ljava/lang/String;)Lcom/bbm/d/gp;
.registers 3
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Lcom/bbm/d/gp;
invoke-direct {v0}, Lcom/bbm/d/gp;-><init>()V
:goto_b
return-object v0
:cond_c
invoke-super {p0, p1}, Lcom/bbm/d/ab;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
goto :goto_b
.end method
.method private static a(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
.registers 10
const/4 v6, 0x0
const/4 v7, 0x0
new-instance v0, Landroid/location/Geocoder;
invoke-static {p0}, Ldroidbox/android/location/Geocoder;->droidbox_cons(Landroid/content/Context;)V
invoke-direct {v0, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
:try_start_7
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v3
const/4 v5, 0x1
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/Geocoder;->getFromLocation(Landroid/location/Geocoder;DDI)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_28
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_28
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Address;
invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
:try_end_26
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_2a
move-result-object v0
:goto_27
return-object v0
:cond_28
move-object v0, v6
goto :goto_27
:catch_2a
move-exception v0
const-string v0, "GeoCoder fails getting country code from location"
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
move-object v0, v6
goto :goto_27
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
move-result v1
const/4 v2, 0x5
if-ne v1, v2, :cond_1a
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
:goto_19
return-object v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private static c(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-string v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
new-instance v1, Landroid/location/Criteria;
invoke-direct {v1}, Landroid/location/Criteria;-><init>()V
const/4 v2, 0x2
invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
:try_start_11
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_1e
invoke-static {p0, v1}, Lcom/bbm/d/a;->a(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
move-result-object v0
:goto_1d
return-object v0
:cond_1e
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_2b
invoke-static {p0, v1}, Lcom/bbm/d/a;->a(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
move-result-object v0
goto :goto_1d
:cond_2b
const-string v1, "passive"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
if-eqz v0, :cond_41
invoke-static {p0, v0}, Lcom/bbm/d/a;->a(Landroid/content/Context;Landroid/location/Location;)Ljava/lang/String;
:try_end_36
.catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_36} :catch_38
move-result-object v0
goto :goto_1d
:catch_38
move-exception v0
const-string v1, "Can\'t get Last Known Location from Location Manager"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_41
const/4 v0, 0x0
goto :goto_1d
.end method
.method public static c(Z)V
.registers 6
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
const-string v2, "enabled"
invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "name"
const-string v4, "locationReporting"
invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v3
const-string v4, "value"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "global"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-super {v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32
:goto_31
return-void
:catch_32
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_31
.end method
.method public static d(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "bbmpim://conversation/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static d(Z)V
.registers 5
:try_start_0
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v2, "name"
const-string v3, "autoLargePictures"
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "value"
invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
const-string v2, "global"
invoke-static {v0, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v0
invoke-super {v1, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:goto_27
:try_end_27
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28
return-void
:catch_28
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_27
.end method
.method public static e(Ljava/lang/String;)Ljava/lang/String;
.registers 2
const/16 v0, 0x2f
invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
if-lez v0, :cond_e
add-int/lit8 v0, v0, 0x1
invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object p0
:cond_e
return-object p0
.end method
.method public static l(Ljava/lang/String;)V
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:try_start_a
const-string v2, "id"
invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "viewed"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "ephemeralMetaData"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-super {v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:goto_25
:try_end_25
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public static m(Ljava/lang/String;)V
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:try_start_a
const-string v2, "id"
invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "screenshot"
const/4 v3, 0x1
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v2, "ephemeralMetaData"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-super {v0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:goto_25
:try_end_25
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public final bridge synthetic A(Ljava/lang/String;)Lcom/bbm/d/fg;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->A(Ljava/lang/String;)Lcom/bbm/d/fg;
move-result-object v0
return-object v0
.end method
.method public final A()Lcom/bbm/j/w;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->v:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/w;
if-nez v0, :cond_26
new-instance v1, Lcom/bbm/d/gk;
invoke-direct {v1}, Lcom/bbm/d/gk;-><init>()V
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, v1, Lcom/bbm/d/gk;->a:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/d/l;
invoke-direct {v0, p0, v1}, Lcom/bbm/d/l;-><init>(Lcom/bbm/d/a;Lcom/bbm/d/gk;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/d/a;->v:Ljava/lang/ref/WeakReference;
:cond_26
return-object v0
.end method
.method public final bridge synthetic B(Ljava/lang/String;)Lcom/bbm/d/ff;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->B(Ljava/lang/String;)Lcom/bbm/d/ff;
move-result-object v0
return-object v0
.end method
.method public final B()Lcom/bbm/util/ay;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a;->f:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/ay;
if-nez v0, :cond_c
sget-object v0, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;
:cond_c
return-object v0
.end method
.method public final C()Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a;->u:Lcom/bbm/j/w;
if-nez v0, :cond_a
invoke-super {p0}, Lcom/bbm/d/ab;->C()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a;->u:Lcom/bbm/j/w;
:cond_a
iget-object v0, p0, Lcom/bbm/d/a;->u:Lcom/bbm/j/w;
return-object v0
.end method
.method public final bridge synthetic C(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->C(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic D(Ljava/lang/String;)Lcom/bbm/d/fe;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->D(Ljava/lang/String;)Lcom/bbm/d/fe;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic D()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->D()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic E()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->E()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic E(Ljava/lang/String;)Lcom/bbm/util/bl;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic F()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->F()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic F(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->F(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic G()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->G()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic G(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->G(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic H(Ljava/lang/String;)Lcom/bbm/d/ex;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic H()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->H()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic I(Ljava/lang/String;)Lcom/bbm/d/eu;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->I(Ljava/lang/String;)Lcom/bbm/d/eu;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic I()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->I()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic J()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->J()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic J(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->J(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic K(Ljava/lang/String;)Lcom/bbm/d/es;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic K()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->K()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic L()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->L()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic L(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic M(Ljava/lang/String;)Lcom/bbm/d/er;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->M(Ljava/lang/String;)Lcom/bbm/d/er;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic M()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->M()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic N(Ljava/lang/String;)Lcom/bbm/d/ep;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->N(Ljava/lang/String;)Lcom/bbm/d/ep;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic N()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->N()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic O(Ljava/lang/String;)Lcom/bbm/d/eo;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->O(Ljava/lang/String;)Lcom/bbm/d/eo;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic O()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->O()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic P()Lcom/bbm/j/w;
.registers 2
invoke-super {p0}, Lcom/bbm/d/ab;->P()Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic P(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->P(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic Q(Ljava/lang/String;)Lcom/bbm/d/em;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->Q(Ljava/lang/String;)Lcom/bbm/d/em;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic R(Ljava/lang/String;)Lcom/bbm/d/ei;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->R(Ljava/lang/String;)Lcom/bbm/d/ei;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic S(Ljava/lang/String;)Lcom/bbm/d/eg;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->S(Ljava/lang/String;)Lcom/bbm/d/eg;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic T(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->T(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic U(Ljava/lang/String;)Lcom/bbm/d/ec;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic V(Ljava/lang/String;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->V(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic W(Ljava/lang/String;)Lcom/bbm/d/ea;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->W(Ljava/lang/String;)Lcom/bbm/d/ea;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic X(Ljava/lang/String;)Lcom/bbm/d/dx;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->X(Ljava/lang/String;)Lcom/bbm/d/dx;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;J)Lcom/bbm/d/fg;
.registers 18
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v5
add-int/lit8 v0, v5, 0x1
add-int/lit8 v6, v0, 0x14
new-array v7, v6, [C
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p1, v0, v5, v7, v1}, Ljava/lang/String;->getChars(II[CI)V
const/16 v0, 0x7c
aput-char v0, v7, v5
invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J
move-result-wide v0
add-int/lit8 v3, v6, -0x1
const-wide/16 v8, 0x0
cmp-long v2, v0, v8
if-nez v2, :cond_6b
add-int/lit8 v2, v3, -0x1
const/16 v4, 0x30
aput-char v4, v7, v3
move-wide v12, v0
move v1, v2
move-wide v2, v12
:goto_28
const-wide/16 v8, 0x0
cmp-long v0, v2, v8
if-lez v0, :cond_42
add-int/lit8 v4, v1, -0x1
const-wide/16 v8, 0xa
rem-long v8, v2, v8
const-wide/16 v10, 0x30
add-long/2addr v8, v10
long-to-int v0, v8
int-to-char v0, v0
aput-char v0, v7, v1
const-wide/16 v0, 0xa
div-long v0, v2, v0
move-wide v2, v0
move v1, v4
goto :goto_28
:cond_42
const-wide/16 v2, 0x0
cmp-long v0, p2, v2
if-gez v0, :cond_69
add-int/lit8 v0, v1, -0x1
const/16 v2, 0x2d
aput-char v2, v7, v1
:goto_4e
sub-int v1, v6, v0
add-int/lit8 v1, v1, -0x1
if-lez v1, :cond_5b
add-int/lit8 v0, v0, 0x1
add-int/lit8 v2, v5, 0x1
invoke-static {v7, v0, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_5b
add-int/lit8 v0, v5, 0x1
add-int/2addr v0, v1
new-instance v1, Ljava/lang/String;
const/4 v2, 0x0
invoke-direct {v1, v7, v2, v0}, Ljava/lang/String;-><init>([CII)V
invoke-super {p0, v1}, Lcom/bbm/d/ab;->A(Ljava/lang/String;)Lcom/bbm/d/fg;
move-result-object v0
return-object v0
:cond_69
move v0, v1
goto :goto_4e
:cond_6b
move-wide v12, v0
move v1, v3
move-wide v2, v12
goto :goto_28
.end method
.method public final a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
.registers 11
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v0, p1, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_8f
iget-object v0, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8f
iget-object v1, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
iget-object v5, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;
iget-boolean v0, p1, Lcom/bbm/d/ec;->w:Z
if-nez v0, :cond_1c
iget-boolean v0, p1, Lcom/bbm/d/ec;->t:Z
if-eqz v0, :cond_8d
:cond_1c
move v4, v7
:goto_1d
iget-object v0, v1, Lcom/bbm/d/a/d/c;->d:Ljava/util/Map;
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/cr;
if-nez v0, :cond_a2
new-instance v3, Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/d/fd;
invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v0, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v3, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iget-object v0, v1, Lcom/bbm/d/a/d/c;->d:Ljava/util/Map;
invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget v0, v1, Lcom/bbm/d/a/d/c;->g:I
sget v2, Lcom/bbm/d/a/d/c;->b:I
if-ge v0, v2, :cond_a0
iget-object v0, v1, Lcom/bbm/d/a/d/c;->h:Lcom/google/b/b/d;
invoke-interface {v0, v5}, Lcom/google/b/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
if-eqz v0, :cond_a0
iget v2, v1, Lcom/bbm/d/a/d/c;->g:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/d/a/d/c;->g:I
new-instance v2, Lcom/bbm/d/fd;
iget-object v8, v1, Lcom/bbm/d/a/d/c;->c:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-direct {v2, v8, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
invoke-virtual {v3, v2}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->e()V
move v0, v7
:goto_62
if-nez v0, :cond_72
new-instance v0, Lcom/bbm/d/a/d/f;
iget-object v2, v1, Lcom/bbm/d/a/d/c;->c:Landroid/content/Context;
invoke-direct/range {v0 .. v5}, Lcom/bbm/d/a/d/f;-><init>(Lcom/bbm/d/a/d/c;Landroid/content/Context;Lcom/bbm/util/cr;ZLjava/lang/String;)V
new-array v2, v7, [Ljava/lang/String;
aput-object v5, v2, v6
invoke-virtual {v0, v2}, Lcom/bbm/util/ez;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
:cond_72
if-eqz v4, :cond_9f
sget v0, Lcom/bbm/d/a/d/c;->a:I
if-lez v0, :cond_9f
iget-object v0, v1, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
:goto_7d
iget-object v0, v1, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
sget v2, Lcom/bbm/d/a/d/c;->a:I
if-le v0, v2, :cond_9f
iget-object v0, v1, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
goto :goto_7d
:cond_8d
move v4, v6
goto :goto_1d
:cond_8f
new-instance v3, Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/d/fd;
iget-object v1, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v1}, Lcom/bbm/d/a/d/c;->b()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v3, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
:goto_9f
:cond_9f
return-object v3
:cond_a0
move v0, v6
goto :goto_62
:cond_a2
move-object v3, v0
goto :goto_9f
.end method
.method public final a(Lcom/bbm/d/fl;)Lcom/bbm/j/r;
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_20
iget-object v1, p1, Lcom/bbm/d/fl;->d:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_20
iget-object v0, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
new-instance v1, Ljava/io/File;
iget-object v2, p1, Lcom/bbm/d/fl;->d:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a/d/c;->a(Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
:cond_20
if-nez v0, :cond_32
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
iget-object v2, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v2}, Lcom/bbm/d/a/d/c;->c()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v1, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
:cond_32
return-object v0
.end method
.method public final a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
.registers 4
iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v4, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "#"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
iget-object v0, v4, Lcom/bbm/d/a/d/c;->d:Ljava/util/Map;
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/cr;
if-nez v0, :cond_8c
new-instance v0, Lcom/bbm/d/fd;
invoke-virtual {v4}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
iput-boolean v2, v0, Lcom/bbm/d/fd;->c:Z
new-instance v1, Lcom/bbm/util/cr;
invoke-direct {v1, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iget-object v0, v4, Lcom/bbm/d/a/d/c;->d:Ljava/util/Map;
invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_72
iget v0, v4, Lcom/bbm/d/a/d/c;->g:I
sget v6, Lcom/bbm/d/a/d/c;->b:I
if-ge v0, v6, :cond_bd
iget-object v0, v4, Lcom/bbm/d/a/d/c;->h:Lcom/google/b/b/d;
invoke-interface {v0, v5}, Lcom/google/b/b/d;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
if-eqz v0, :cond_bd
iget v6, v4, Lcom/bbm/d/a/d/c;->g:I
add-int/lit8 v6, v6, 0x1
iput v6, v4, Lcom/bbm/d/a/d/c;->g:I
new-instance v6, Lcom/bbm/d/fd;
iget-object v7, v4, Lcom/bbm/d/a/d/c;->c:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-direct {v6, v7, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;[B)V
invoke-virtual {v1, v6}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
invoke-virtual {v4}, Lcom/bbm/d/a/d/c;->e()V
move v0, v2
:goto_68
if-nez v0, :cond_72
iget-object v0, v4, Lcom/bbm/d/a/d/c;->f:Ljava/util/LinkedList;
invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
invoke-virtual {v4}, Lcom/bbm/d/a/d/c;->f()V
:cond_72
sget v0, Lcom/bbm/d/a/d/c;->a:I
if-lez v0, :cond_8b
iget-object v0, v4, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
:goto_7b
iget-object v0, v4, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
sget v2, Lcom/bbm/d/a/d/c;->a:I
if-le v0, v2, :cond_8b
iget-object v0, v4, Lcom/bbm/d/a/d/c;->i:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
goto :goto_7b
:cond_8b
move-object v0, v1
:cond_8c
if-nez v0, :cond_bc
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "BbmdsModel getAvatar returned null with userUri: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " avatarHash: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
iget-object v2, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
invoke-virtual {v2}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-direct {v1, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
:cond_bc
return-object v0
:cond_bd
move v0, v3
goto :goto_68
.end method
.method public final bridge synthetic a(Lcom/bbm/d/fm;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/fm;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a(Lcom/bbm/d/gg;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/gg;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a(Lcom/bbm/d/gi;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/gi;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a(Lcom/bbm/d/gk;)Lcom/bbm/j/w;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/gk;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/d/w;)Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/t;
invoke-direct {v0, p0, p1}, Lcom/bbm/d/t;-><init>(Lcom/bbm/d/a;Lcom/bbm/d/w;)V
return-object v0
.end method
.method public final bridge synthetic a(Ljava/lang/String;Z)Lcom/bbm/j/x;
.registers 4
invoke-super {p0, p1, p2}, Lcom/bbm/d/ab;->a(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-static {p1}, Lcom/bbm/d/a;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-object v0
:cond_7
invoke-static {p1}, Lcom/bbm/d/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_6
invoke-virtual {p0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gp;->j:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
goto :goto_6
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->n:Lcom/bbm/j;
iget-object v0, v0, Lcom/bbm/j;->a:Lcom/bbm/util/cr;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/d/dv;->a:Lcom/bbm/d/dv;
invoke-static {v0}, Lcom/bbm/d/z;->a(Lcom/bbm/d/dv;)Lcom/bbm/d/du;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final bridge synthetic a(Lcom/bbm/d/dw;)V
.registers 2
invoke-super {p0, p1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/bbm/d/co;
invoke-direct {v0}, Lcom/bbm/d/co;-><init>()V
const-string v1, "displayName"
invoke-virtual {v0, v1, p1}, Lcom/bbm/d/co;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(Ljava/lang/String;JLjava/lang/String;)V
.registers 6
new-instance v0, Lcom/bbm/d/cf;
invoke-direct {v0, p1, p2, p3, p4}, Lcom/bbm/d/cf;-><init>(Ljava/lang/String;JLjava/lang/String;)V
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)V
.registers 6
:try_start_0
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v2, "name"
invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "value"
invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v1, "global"
invoke-static {v0, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:try_end_22
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v0
new-instance v1, Lcom/bbm/f/z;
invoke-direct {v1, v0}, Lcom/bbm/f/z;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
.registers 7
const/4 v2, 0x1
:try_start_1
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "viewTime"
invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
if-ne p3, v2, :cond_38
iget v2, v1, Lcom/bbm/c/c;->ar:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->ar:I
:goto_1b
:cond_1b
iget v2, v1, Lcom/bbm/c/c;->aq:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aq:I
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {v1}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {p1, v1}, Lcom/bbm/d/z;->c(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/dm;
move-result-object v1
const-string v2, "ephemeral"
invoke-virtual {v1, v2, v0}, Lcom/bbm/d/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:goto_37
return-void
:cond_38
const/4 v2, 0x3
if-ne p3, v2, :cond_47
iget v2, v1, Lcom/bbm/c/c;->as:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->as:I
:try_end_41
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_41} :catch_42
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_41} :catch_51
goto :goto_1b
:catch_42
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_37
:cond_47
const/4 v2, 0x5
if-ne p3, v2, :cond_56
:try_start_4a
iget v2, v1, Lcom/bbm/c/c;->at:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->at:I
:try_end_50
.catch Lorg/json/JSONException; {:try_start_4a .. :try_end_50} :catch_42
.catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_50} :catch_51
goto :goto_1b
:catch_51
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_37
:cond_56
const/4 v2, 0x7
if-ne p3, v2, :cond_60
:try_start_59
iget v2, v1, Lcom/bbm/c/c;->au:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->au:I
goto :goto_1b
:cond_60
const/16 v2, 0xa
if-ne p3, v2, :cond_6b
iget v2, v1, Lcom/bbm/c/c;->av:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->av:I
goto :goto_1b
:cond_6b
const/16 v2, 0xf
if-ne p3, v2, :cond_1b
iget v2, v1, Lcom/bbm/c/c;->aw:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aw:I
:try_end_75
.catch Lorg/json/JSONException; {:try_start_59 .. :try_end_75} :catch_42
.catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_75} :catch_51
goto :goto_1b
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.registers 9
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->length()J
move-result-wide v0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v2
iget v3, v2, Lcom/bbm/c/c;->p:I
add-int/lit8 v3, v3, 0x1
iput v3, v2, Lcom/bbm/c/c;->p:I
iget-wide v3, v2, Lcom/bbm/c/c;->q:J
add-long/2addr v0, v3
iput-wide v0, v2, Lcom/bbm/c/c;->q:J
iget-wide v0, v2, Lcom/bbm/c/c;->q:J
iget v3, v2, Lcom/bbm/c/c;->p:I
int-to-long v3, v3
div-long/2addr v0, v3
iput-wide v0, v2, Lcom/bbm/c/c;->r:J
invoke-static {p1, p2, p3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/bn;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
.registers 8
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "viewTime"
invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
const/4 v2, 0x1
if-ne p4, v2, :cond_2e
iget v2, v1, Lcom/bbm/c/c;->ay:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->ay:I
:goto_1b
:cond_1b
iget v2, v1, Lcom/bbm/c/c;->ax:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->ax:I
invoke-static {p1, p2, p3}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/bn;
move-result-object v1
const-string v2, "ephemeral"
invoke-virtual {v1, v2, v0}, Lcom/bbm/d/bn;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:goto_2d
return-void
:cond_2e
const/4 v2, 0x3
if-ne p4, v2, :cond_3d
iget v2, v1, Lcom/bbm/c/c;->az:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->az:I
:try_end_37
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_37} :catch_38
.catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_37} :catch_47
goto :goto_1b
:catch_38
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2d
:cond_3d
const/4 v2, 0x5
if-ne p4, v2, :cond_4c
:try_start_40
iget v2, v1, Lcom/bbm/c/c;->aA:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aA:I
:try_end_46
.catch Lorg/json/JSONException; {:try_start_40 .. :try_end_46} :catch_38
.catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_46} :catch_47
goto :goto_1b
:catch_47
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2d
:cond_4c
const/4 v2, 0x7
if-ne p4, v2, :cond_56
:try_start_4f
iget v2, v1, Lcom/bbm/c/c;->aB:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aB:I
goto :goto_1b
:cond_56
const/16 v2, 0xa
if-ne p4, v2, :cond_61
iget v2, v1, Lcom/bbm/c/c;->aC:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aC:I
goto :goto_1b
:cond_61
const/16 v2, 0xf
if-ne p4, v2, :cond_1b
iget v2, v1, Lcom/bbm/c/c;->aD:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/c/c;->aD:I
:try_end_6b
.catch Lorg/json/JSONException; {:try_start_4f .. :try_end_6b} :catch_38
.catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_6b} :catch_47
goto :goto_1b
.end method
.method public final a(Ljava/lang/String;Ljava/util/List;)V
.registers 6
invoke-static {p1, p2}, Lcom/bbm/d/z;->c(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/dm;
move-result-object v0
const-string v1, "broadcast"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a(Z)V
.registers 6
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:try_start_a
const-string v2, "name"
const-string v3, "keepChatHistory"
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "value"
invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const-string v0, "global"
invoke-static {v1, v0}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:try_end_24
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_24} :catch_25
:goto_24
return-void
:catch_25
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_24
.end method
.method public final a(ZLandroid/content/Context;)V
.registers 6
:try_start_0
new-instance v0, Lcom/bbm/d/co;
invoke-direct {v0}, Lcom/bbm/d/co;-><init>()V
const-string v1, "showLocationTimezone"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/d/co;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0, p2}, Lcom/bbm/d/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/co;->b(Ljava/lang/String;)Lcom/bbm/d/co;
move-result-object v0
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
const-string v2, "timezone"
invoke-virtual {v0, v2, v1}, Lcom/bbm/d/co;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:try_end_26
.catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_26} :catch_27
:goto_26
return-void
:catch_27
move-exception v0
goto :goto_26
.end method
.method public final b(Ljava/lang/String;)Lcom/bbm/d/gp;
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/d/a;->Y(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic b(Ljava/lang/String;Z)Lcom/bbm/j/x;
.registers 4
invoke-super {p0, p1, p2}, Lcom/bbm/d/ab;->b(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
return-object v0
.end method
.method public final b()V
.registers 2
sget-object v0, Lcom/bbm/d/dv;->a:Lcom/bbm/d/dv;
invoke-static {v0}, Lcom/bbm/d/z;->a(Lcom/bbm/d/dv;)Lcom/bbm/d/du;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final b(Z)V
.registers 4
new-instance v1, Lcom/bbm/d/cd;
if-eqz p1, :cond_d
sget-object v0, Lcom/bbm/d/ce;->a:Lcom/bbm/d/ce;
:goto_6
invoke-direct {v1, v0}, Lcom/bbm/d/cd;-><init>(Lcom/bbm/d/ce;)V
invoke-super {p0, v1}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
:cond_d
sget-object v0, Lcom/bbm/d/ce;->b:Lcom/bbm/d/ce;
goto :goto_6
.end method
.method public final bridge synthetic c(Ljava/lang/String;Z)Lcom/bbm/j/x;
.registers 4
invoke-super {p0, p1, p2}, Lcom/bbm/d/ab;->c(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
return-object v0
.end method
.method public final c()Lcom/google/b/a/l;
.registers 4
iget-object v0, p0, Lcom/bbm/d/a;->n:Lcom/bbm/j;
iget-object v0, v0, Lcom/bbm/j;->a:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "setupState"
invoke-super {p0, v1}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v1
const-string v2, "state"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "Disabled"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2e
sget-object v0, Lcom/bbm/al;->b:Lcom/bbm/al;
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:cond_2e
return-object v0
.end method
.method public final c(Ljava/lang/String;)Lcom/google/b/f/a/l;
.registers 7
invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;
move-result-object v0
:try_start_4
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/d/s;
invoke-direct {v2, p0, v1, v0}, Lcom/bbm/d/s;-><init>(Lcom/bbm/d/a;Ljava/lang/String;Lcom/google/b/f/a/r;)V
iget-object v3, p0, Lcom/bbm/d/ab;->g:Lcom/bbm/d/a/f;
iget-object v3, v3, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v3, v2}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v3, "regId"
invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "user"
new-instance v4, Lcom/bbm/d/db;
invoke-direct {v4, v2, v3}, Lcom/bbm/d/db;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V
const-string v2, "cookie"
invoke-virtual {v4, v2, v1}, Lcom/bbm/d/db;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v4}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
:try_end_32
.catch Lorg/json/JSONException; {:try_start_4 .. :try_end_32} :catch_33
:goto_32
return-object v0
:catch_33
move-exception v1
new-instance v1, Lcom/bbm/d/gp;
invoke-direct {v1}, Lcom/bbm/d/gp;-><init>()V
invoke-virtual {v0, v1}, Lcom/google/b/f/a/r;->a(Ljava/lang/Object;)Z
goto :goto_32
.end method
.method public final bridge synthetic d(Ljava/lang/String;Z)Lcom/bbm/j/x;
.registers 4
invoke-super {p0, p1, p2}, Lcom/bbm/d/ab;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;
move-result-object v0
return-object v0
.end method
.method public final d()Z
.registers 3
const-string v0, "keepChatHistory"
invoke-super {p0, v0}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final e()Z
.registers 3
const-string v0, "receiveMusicUpdates"
invoke-super {p0, v0}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final f(Ljava/lang/String;)Lcom/google/b/f/a/l;
.registers 6
invoke-super {p0}, Lcom/bbm/d/ab;->L()Lcom/bbm/j/w;
move-result-object v0
invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;
move-result-object v1
new-instance v2, Lcom/bbm/d/c;
invoke-direct {v2, p0, v0, v1, p1}, Lcom/bbm/d/c;-><init>(Lcom/bbm/d/a;Lcom/bbm/j/w;Lcom/google/b/f/a/r;Ljava/lang/String;)V
:try_start_d
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v3
if-eqz v3, :cond_1c
invoke-interface {v0, v2}, Lcom/bbm/j/w;->a(Lcom/bbm/j/h;)V
iget-object v0, p0, Lcom/bbm/d/a;->b:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_1b
return-object v1
:cond_1c
invoke-interface {v2}, Lcom/bbm/j/h;->a()V
:try_end_1f
.catch Lcom/bbm/j/z; {:try_start_d .. :try_end_1f} :catch_20
goto :goto_1b
:catch_20
move-exception v0
goto :goto_1b
.end method
.method public final f()Z
.registers 3
const-string v0, "nowPlayingMessageEnabled"
invoke-super {p0, v0}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final g(Ljava/lang/String;)Lcom/google/b/f/a/l;
.registers 6
invoke-static {}, Lcom/google/b/f/a/r;->a()Lcom/google/b/f/a/r;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/bbm/d/a;->f(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v1
new-instance v2, Lcom/bbm/d/d;
invoke-direct {v2, p0, v1, p1, v0}, Lcom/bbm/d/d;-><init>(Lcom/bbm/d/a;Lcom/google/b/f/a/l;Ljava/lang/String;Lcom/google/b/f/a/r;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
return-object v0
.end method
.method public final g()Z
.registers 3
const-string v0, "autoLargePictures"
invoke-super {p0, v0}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final h(Ljava/lang/String;)Lcom/bbm/d/fv;
.registers 3
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v0
return-object v0
.end method
.method public final h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a;->p:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public final i(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Lcom/bbm/d/ab;->i(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final i()Ljava/lang/String;
.registers 4
const-string v0, "localPin"
invoke-super {p0, v0}, Lcom/bbm/d/ab;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v1, "value"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final j()Lcom/bbm/d/gp;
.registers 2
invoke-virtual {p0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/d/a;->Y(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
return-object v0
.end method
.method public final j(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/bbm/d/co;
invoke-direct {v0}, Lcom/bbm/d/co;-><init>()V
const-string v1, "personalMessage"
invoke-virtual {v0, v1, p1}, Lcom/bbm/d/co;->a(Ljava/lang/String;Ljava/lang/Object;)V
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final k()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/fm;
invoke-direct {v0}, Lcom/bbm/d/fm;-><init>()V
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/fm;->a(Ljava/lang/Boolean;)Lcom/bbm/d/fm;
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/fm;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final k(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/d/a;->h:Lcom/bbm/d/x;
iget-object v1, v0, Lcom/bbm/d/x;->a:Lcom/bbm/d/y;
iput-object p1, v1, Lcom/bbm/d/y;->a:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/d/x;->a:Lcom/bbm/d/y;
invoke-virtual {v0}, Lcom/bbm/d/y;->c()V
return-void
.end method
.method public final l()Lcom/bbm/j/w;
.registers 3
new-instance v0, Lcom/bbm/d/fm;
invoke-direct {v0}, Lcom/bbm/d/fm;-><init>()V
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/fm;->a(Ljava/lang/Boolean;)Lcom/bbm/d/fm;
invoke-super {p0, v0}, Lcom/bbm/d/ab;->a(Lcom/bbm/d/fm;)Lcom/bbm/j/w;
move-result-object v0
return-object v0
.end method
.method public final m()Landroid/graphics/drawable/BitmapDrawable;
.registers 4
iget-object v1, p0, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;
iget-object v0, v1, Lcom/bbm/d/a/d/c;->e:Landroid/graphics/drawable/BitmapDrawable;
if-nez v0, :cond_17
iget-object v0, v1, Lcom/bbm/d/a/d/c;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0200d9
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
iput-object v0, v1, Lcom/bbm/d/a/d/c;->e:Landroid/graphics/drawable/BitmapDrawable;
:cond_17
iget-object v0, v1, Lcom/bbm/d/a/d/c;->e:Landroid/graphics/drawable/BitmapDrawable;
return-object v0
.end method
.method public final bridge synthetic n(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->n(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final n()Z
.registers 6
const/4 v2, 0x1
invoke-super {p0}, Lcom/bbm/d/ab;->M()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_c
:goto_b
return v2
:cond_c
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/d/a;->e:Lcom/bbm/d/b/r;
invoke-virtual {v1}, Lcom/bbm/d/b/r;->b()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_2f
move v0, v2
:goto_2b
move v1, v0
goto :goto_18
:cond_2d
move v2, v1
goto :goto_b
:cond_2f
move v0, v1
goto :goto_2b
.end method
.method public final bridge synthetic o(Ljava/lang/String;)Lcom/bbm/d/go;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->o(Ljava/lang/String;)Lcom/bbm/d/go;
move-result-object v0
return-object v0
.end method
.method public final o()Lcom/bbm/j/r;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->i:Lcom/bbm/j/r;
if-nez v0, :cond_d
new-instance v0, Lcom/bbm/d/aa;
iget-object v1, p0, Lcom/bbm/d/a;->e:Lcom/bbm/d/b/r;
invoke-direct {v0, v1}, Lcom/bbm/d/aa;-><init>(Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/d/a;->i:Lcom/bbm/j/r;
:cond_d
iget-object v0, p0, Lcom/bbm/d/a;->i:Lcom/bbm/j/r;
return-object v0
.end method
.method public final bridge synthetic p(Ljava/lang/String;)Lcom/bbm/d/gm;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
return-object v0
.end method
.method public final p()Lcom/bbm/j/r;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->j:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/r;
if-nez v0, :cond_1a
new-instance v0, Lcom/bbm/d/v;
invoke-super {p0}, Lcom/bbm/d/ab;->L()Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/d/v;-><init>(Lcom/bbm/d/a;Lcom/bbm/j/r;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/d/a;->j:Ljava/lang/ref/WeakReference;
:cond_1a
return-object v0
.end method
.method public final bridge synthetic q(Ljava/lang/String;)Lcom/bbm/d/gj;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->q(Ljava/lang/String;)Lcom/bbm/d/gj;
move-result-object v0
return-object v0
.end method
.method public final q()Lcom/bbm/j/r;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/r;
if-nez v0, :cond_1a
new-instance v0, Lcom/bbm/d/f;
invoke-super {p0}, Lcom/bbm/d/ab;->I()Lcom/bbm/j/w;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/d/f;-><init>(Lcom/bbm/d/a;Lcom/bbm/j/r;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/d/a;->k:Ljava/lang/ref/WeakReference;
:cond_1a
return-object v0
.end method
.method public final bridge synthetic r(Ljava/lang/String;)Lcom/bbm/d/gf;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->r(Ljava/lang/String;)Lcom/bbm/d/gf;
move-result-object v0
return-object v0
.end method
.method public final r()Lcom/bbm/j/w;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->l:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/w;
if-nez v0, :cond_16
new-instance v0, Lcom/bbm/d/g;
invoke-direct {v0, p0}, Lcom/bbm/d/g;-><init>(Lcom/bbm/d/a;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/d/a;->l:Ljava/lang/ref/WeakReference;
:cond_16
return-object v0
.end method
.method public final bridge synthetic s(Ljava/lang/String;)Lcom/bbm/d/gd;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->s(Ljava/lang/String;)Lcom/bbm/d/gd;
move-result-object v0
return-object v0
.end method
.method public final s()Lcom/bbm/j/w;
.registers 3
iget-object v0, p0, Lcom/bbm/d/a;->m:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/w;
if-nez v0, :cond_16
new-instance v0, Lcom/bbm/d/i;
invoke-direct {v0, p0}, Lcom/bbm/d/i;-><init>(Lcom/bbm/d/a;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/bbm/d/a;->m:Ljava/lang/ref/WeakReference;
:cond_16
return-object v0
.end method
.method public final bridge synthetic t(Ljava/lang/String;)Lcom/bbm/d/fz;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->t(Ljava/lang/String;)Lcom/bbm/d/fz;
move-result-object v0
return-object v0
.end method
.method public final t()Z
.registers 4
invoke-virtual {p0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v0
if-eqz v0, :cond_c
iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v1, v2, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
iget-boolean v0, v0, Lcom/bbm/d/gp;->x:Z
goto :goto_d
.end method
.method public final bridge synthetic u(Ljava/lang/String;)Lcom/bbm/d/fx;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->u(Ljava/lang/String;)Lcom/bbm/d/fx;
move-result-object v0
return-object v0
.end method
.method public final u()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a;->q:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
return-object v0
.end method
.method public final bridge synthetic v(Ljava/lang/String;)Lcom/bbm/d/fw;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->v(Ljava/lang/String;)Lcom/bbm/d/fw;
move-result-object v0
return-object v0
.end method
.method public final v()Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const/4 v0, 0x0
:goto_6
const/16 v2, 0x8
if-ge v0, v2, :cond_1b
iget-object v2, p0, Lcom/bbm/d/a;->o:Ljava/util/Random;
const/16 v3, 0x1a
invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I
move-result v2
add-int/lit8 v2, v2, 0x61
int-to-char v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1b
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic w(Ljava/lang/String;)Lcom/bbm/d/fs;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v0
return-object v0
.end method
.method public final w()Lcom/bbm/j/w;
.registers 2
new-instance v0, Lcom/bbm/d/k;
invoke-direct {v0, p0}, Lcom/bbm/d/k;-><init>(Lcom/bbm/d/a;)V
return-object v0
.end method
.method public final bridge synthetic x(Ljava/lang/String;)Lcom/bbm/d/fn;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->x(Ljava/lang/String;)Lcom/bbm/d/fn;
move-result-object v0
return-object v0
.end method
.method public final x()Lcom/bbm/j/w;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a;->t:Lcom/bbm/j/w;
if-nez v0, :cond_a
invoke-super {p0}, Lcom/bbm/d/ab;->x()Lcom/bbm/j/w;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a;->t:Lcom/bbm/j/w;
:cond_a
iget-object v0, p0, Lcom/bbm/d/a;->t:Lcom/bbm/j/w;
return-object v0
.end method
.method public final bridge synthetic y(Ljava/lang/String;)Lcom/bbm/util/bh;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->y(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
return-object v0
.end method
.method public final y()Z
.registers 2
invoke-virtual {p0}, Lcom/bbm/d/a;->x()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_14
invoke-super {p0}, Lcom/bbm/d/ab;->F()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_16
:cond_14
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public final bridge synthetic z(Ljava/lang/String;)Lcom/bbm/d/fl;
.registers 3
invoke-super {p0, p1}, Lcom/bbm/d/ab;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v0
return-object v0
.end method
.method public final z()Ljava/util/List;
.registers 12
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0}, Lcom/bbm/d/a;->x()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_11
move-object v0, v5
:goto_10
return-object v0
:cond_11
invoke-virtual {p0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/bbm/d/a;->s:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-super {p0}, Lcom/bbm/d/ab;->F()Lcom/bbm/j/w;
move-result-object v1
invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_2b
:goto_2b
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_a5
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fz;
iget-object v2, v1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v3, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
if-ne v2, v3, :cond_45
iget-object v2, v1, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2b
:cond_45
iget-object v2, v1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v3, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
if-ne v2, v3, :cond_51
invoke-virtual {p0}, Lcom/bbm/d/a;->e()Z
move-result v2
if-eqz v2, :cond_2b
:cond_51
iget-object v2, v1, Lcom/bbm/d/fz;->h:Ljava/lang/String;
invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2b
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
const/4 v4, 0x1
if-eqz v2, :cond_9f
iget-object v3, v1, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
sget-object v8, Lcom/bbm/d/ga;->c:Lcom/bbm/d/ga;
if-ne v3, v8, :cond_87
sget-object v3, Lcom/bbm/d/gt;->e:Lcom/bbm/d/gt;
:goto_6a
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_6e
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_9f
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/d/gs;
iget-object v9, v2, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;
sget-object v10, Lcom/bbm/d/gt;->a:Lcom/bbm/d/gt;
if-eq v9, v10, :cond_84
iget-object v2, v2, Lcom/bbm/d/gs;->a:Lcom/bbm/d/gt;
if-ne v2, v3, :cond_a8
:cond_84
const/4 v2, 0x0
:goto_85
move v4, v2
goto :goto_6e
:cond_87
sget-object v8, Lcom/bbm/d/ga;->e:Lcom/bbm/d/ga;
if-ne v3, v8, :cond_8e
sget-object v3, Lcom/bbm/d/gt;->f:Lcom/bbm/d/gt;
goto :goto_6a
:cond_8e
sget-object v8, Lcom/bbm/d/ga;->b:Lcom/bbm/d/ga;
if-ne v3, v8, :cond_95
sget-object v3, Lcom/bbm/d/gt;->d:Lcom/bbm/d/gt;
goto :goto_6a
:cond_95
sget-object v8, Lcom/bbm/d/ga;->d:Lcom/bbm/d/ga;
if-ne v3, v8, :cond_9c
sget-object v3, Lcom/bbm/d/gt;->c:Lcom/bbm/d/gt;
goto :goto_6a
:cond_9c
sget-object v3, Lcom/bbm/d/gt;->h:Lcom/bbm/d/gt;
goto :goto_6a
:cond_9f
if-eqz v4, :cond_2b
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_2b
:cond_a5
move-object v0, v5
goto/16 :goto_10
:cond_a8
move v2, v4
goto :goto_85
.end method