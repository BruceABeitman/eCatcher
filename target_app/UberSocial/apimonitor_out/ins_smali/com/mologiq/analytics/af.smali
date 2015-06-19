.class  Lcom/mologiq/analytics/af;
.super Lcom/mologiq/analytics/w;
.source "SourceFile"
.field private static final A:Lcom/mologiq/analytics/af; = null
.field private static final z:Ljava/lang/String; = ".567ac581-718b-42d4-82d3-0daa55e13da7"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Ljava/lang/String;
.field private j:Ljava/lang/String;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Lcom/mologiq/analytics/ah;
.field private q:D
.field private r:D
.field private s:Ljava/util/List;
.field private t:Ljava/util/Map;
.field private u:D
.field private v:J
.field private w:D
.field private x:D
.field private y:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mologiq/analytics/af;
const-string v1, ".567ac581-718b-42d4-82d3-0daa55e13da7"
invoke-direct {v0, v1}, Lcom/mologiq/analytics/af;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mologiq/analytics/af;->A:Lcom/mologiq/analytics/af;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/mologiq/analytics/w;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mologiq/analytics/af;->c:Z
return-void
.end method
.method static c()Lcom/mologiq/analytics/af;
.registers 1
sget-object v0, Lcom/mologiq/analytics/af;->A:Lcom/mologiq/analytics/af;
return-object v0
.end method
.method private f(Landroid/content/Context;)I
.registers 7
const/4 v0, 0x0
invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v1
invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->r()Landroid/util/SparseArray;
move-result-object v2
if-eqz v2, :cond_28
move v1, v0
:goto_c
invoke-virtual {v2}, Landroid/util/SparseArray;->size()I
move-result v3
if-lt v0, v3, :cond_13
:goto_12
return v1
:cond_13
invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v4
if-le v4, v1, :cond_25
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v1
:cond_25
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_28
move v1, v0
goto :goto_12
.end method
.method private g(Landroid/content/Context;)Ljava/util/List;
.registers 5
invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/ae;->t()Ljava/util/List;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_19
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1a
:cond_19
return-object v1
:cond_1a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/k;
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/lang/Integer;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_13
.end method
.method public A()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
return-object v0
.end method
.method public B()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
return-object v0
.end method
.method public C()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->o:Ljava/lang/String;
return-object v0
.end method
.method protected a()Ljava/lang/String;
.registers 8
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
if-eqz v0, :cond_54
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->b()Lcom/mologiq/analytics/al;
move-result-object v3
if-eqz v3, :cond_31
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v4, "ssid"
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->b()Lcom/mologiq/analytics/al;
move-result-object v5
invoke-virtual {v5}, Lcom/mologiq/analytics/al;->a()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "wificurrent"
invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_31
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->a()Ljava/util/List;
move-result-object v3
if-eqz v3, :cond_4f
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_44
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_59
const-string v0, "wifilist"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_4f
const-string v0, "NetworkInfo"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_54
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_59
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/al;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "ssid"
invoke-virtual {v0}, Lcom/mologiq/analytics/al;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_44
.end method
.method  a(D)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->q:D
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->v:J
return-void
.end method
.method public a(Lcom/mologiq/analytics/ah;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->p:Lcom/mologiq/analytics/ah;
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 10
const/4 v1, 0x0
if-eqz p1, :cond_23c
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_23c
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "core"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_23c
const-string v2, "core"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "DeviceEvent"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_23c
const-string v2, "DeviceEvent"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string v0, "product"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3b
const-string v0, "product"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/af;->c(Ljava/lang/String;)V
:cond_3b
const-string v0, "androidadvertiserid"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4c
const-string v0, "androidadvertiserid"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/af;->j(Ljava/lang/String;)V
:cond_4c
const-string v0, "androidadvertiseridout"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5d
const-string v0, "androidadvertiseridoptout"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/af;->a(Z)V
:cond_5d
const-string v0, "androidid"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_6e
const-string v0, "androidid"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/af;->k(Ljava/lang/String;)V
:cond_6e
const-string v0, "installedapps"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_8a
const-string v0, "installedapps"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
move v0, v1
:goto_82
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v5
if-lt v0, v5, :cond_23d
iput-object v4, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
:cond_8a
const-string v0, "classifications"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_a6
const-string v0, "classifications"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
move v0, v1
:goto_9e
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v5
if-lt v0, v5, :cond_24c
iput-object v4, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
:cond_a6
const-string v0, "DeviceInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_16f
const-string v0, "DeviceInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v3, "os"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_c5
const-string v3, "os"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->d(Ljava/lang/String;)V
:cond_c5
const-string v3, "model"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_d6
const-string v3, "model"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->e(Ljava/lang/String;)V
:cond_d6
const-string v3, "device"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_e7
const-string v3, "device"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->f(Ljava/lang/String;)V
:cond_e7
const-string v3, "manufacturer"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_f8
const-string v3, "manufacturer"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->l(Ljava/lang/String;)V
:cond_f8
const-string v3, "brand"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_109
const-string v3, "brand"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->h(Ljava/lang/String;)V
:cond_109
const-string v3, "timezone"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_11a
const-string v3, "timezone"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->m(Ljava/lang/String;)V
:cond_11a
const-string v3, "timezoneId"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "timezoneId"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->n(Ljava/lang/String;)V
:cond_12b
const-string v3, "country_code"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13c
const-string v3, "country_code"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->o(Ljava/lang/String;)V
:cond_13c
const-string v3, "device_resolution"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_14d
const-string v3, "device_resolution"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->p(Ljava/lang/String;)V
:cond_14d
const-string v3, "language"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_15e
const-string v3, "language"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/mologiq/analytics/af;->i(Ljava/lang/String;)V
:cond_15e
const-string v3, "carrier"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_16f
const-string v3, "carrier"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/mologiq/analytics/af;->q(Ljava/lang/String;)V
:cond_16f
const-string v0, "LocationInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1e3
const-string v0, "LocationInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v3, "latitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_18e
const-string v3, "latitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->a(D)V
:cond_18e
const-string v3, "longitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_19f
const-string v3, "longitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->b(D)V
:cond_19f
const-string v3, "locationAltitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1b0
const-string v3, "locationAltitude"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->c(D)V
:cond_1b0
const-string v3, "locationTimestamp"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1c1
const-string v3, "locationTimestamp"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->a(J)V
:cond_1c1
const-string v3, "locationAccuracy"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1d2
const-string v3, "locationAccuracy"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->d(D)V
:cond_1d2
const-string v3, "locationSpeed"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1e3
const-string v3, "locationSpeed"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
move-result-wide v3
invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/af;->e(D)V
:cond_1e3
const-string v0, "NetworkInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_23c
const-string v0, "NetworkInfo"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v2, Lcom/mologiq/analytics/ah;
invoke-direct {v2, p0}, Lcom/mologiq/analytics/ah;-><init>(Lcom/mologiq/analytics/af;)V
const-string v3, "wificurrent"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_215
const-string v3, "wificurrent"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
new-instance v4, Lcom/mologiq/analytics/al;
invoke-direct {v4}, Lcom/mologiq/analytics/al;-><init>()V
const-string v5, "ssid"
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Lcom/mologiq/analytics/al;->a(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Lcom/mologiq/analytics/ah;->a(Lcom/mologiq/analytics/al;)V
:cond_215
const-string v3, "wifilist"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_239
const-string v3, "wifilist"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_239
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v3
if-lez v3, :cond_239
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
:goto_230
invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
move-result v4
if-lt v1, v4, :cond_26b
invoke-virtual {v2, v3}, Lcom/mologiq/analytics/ah;->a(Ljava/util/List;)V
:cond_239
invoke-virtual {p0, v2}, Lcom/mologiq/analytics/af;->a(Lcom/mologiq/analytics/ah;)V
:cond_23c
return-void
:cond_23d
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto/16 :goto_82
:cond_24c
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
const-string v6, "classificationid"
invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const-string v7, "count"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto/16 :goto_9e
:cond_26b
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
new-instance v5, Lcom/mologiq/analytics/al;
invoke-direct {v5}, Lcom/mologiq/analytics/al;-><init>()V
const-string v6, "ssid"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v5, v4}, Lcom/mologiq/analytics/al;->a(Ljava/lang/String;)V
invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_230
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
return-void
.end method
.method public a(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/af;->c:Z
return-void
.end method
.method protected b()Ljava/lang/String;
.registers 9
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v0, "product"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "androidadvertiserid"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->n()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "androidadvertiseridoptout"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->o()Z
move-result v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "androidid"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->p()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_46
const-string v0, "installedapps"
new-instance v3, Lorg/json/JSONArray;
iget-object v4, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_46
iget-object v0, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_6c
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_61
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_ff
const-string v0, "classifications"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_6c
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v3, "os"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "model"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->g()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "device"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->h()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "manufacturer"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->q()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "brand"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->j()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "timezone"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->r()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "timezoneId"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->s()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "country_code"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->t()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "device_resolution"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->u()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "language"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->k()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "carrier"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->C()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "DeviceInfo"
invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "DeviceEvent"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v3, "latitude"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->l()D
move-result-wide v4
invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string v3, "longitude"
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->m()D
move-result-wide v4
invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string v3, "LocationInfo"
invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_ff
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "classificationid"
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "count"
iget-object v7, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto/16 :goto_61
.end method
.method  b(D)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->r:D
return-void
.end method
.method protected b(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-class v2, Lcom/mologiq/analytics/af;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, ".fromJsonNetwork() is not supported"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public c(D)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->u:D
return-void
.end method
.method public c(Landroid/content/Context;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".567ac581-718b-42d4-82d3-0daa55e13da7"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->b()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3c
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_3c
const-string v3, "core"
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_3c
invoke-virtual {p0}, Lcom/mologiq/analytics/af;->a()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_52
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_52
const-string v3, "extra"
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_52
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->a:Ljava/lang/String;
return-void
.end method
.method public d(Landroid/content/Context;)Lcom/mologiq/analytics/ag;
.registers 10
invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v2
new-instance v3, Lcom/mologiq/analytics/ag;
invoke-direct {v3, p0}, Lcom/mologiq/analytics/ag;-><init>(Lcom/mologiq/analytics/af;)V
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->u()I
move-result v0
invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ag;->a(I)V
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->u()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_65
invoke-direct {p0, p1}, Lcom/mologiq/analytics/af;->g(Landroid/content/Context;)Ljava/util/List;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ag;->b(Ljava/util/List;)V
invoke-direct {p0, p1}, Lcom/mologiq/analytics/af;->f(Landroid/content/Context;)I
move-result v0
invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ag;->b(I)V
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->s()Lcom/mologiq/analytics/t;
move-result-object v0
if-eqz v0, :cond_65
iget-object v1, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
if-eqz v1, :cond_65
invoke-virtual {v0}, Lcom/mologiq/analytics/t;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;)V
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
invoke-virtual {v0}, Lcom/mologiq/analytics/t;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_43
:cond_43
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_7e
sget-boolean v0, Lcom/mologiq/analytics/ai;->c:Z
invoke-static {v4, v0}, Lcom/mologiq/analytics/ai;->a(Ljava/util/Map;Z)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_5c
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_ba
invoke-virtual {v3, v1}, Lcom/mologiq/analytics/ag;->a(Ljava/util/List;)V
:cond_65
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->u()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_71
iget-object v0, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ag;->a(Ljava/util/Map;)V
:cond_71
invoke-virtual {v2}, Lcom/mologiq/analytics/ae;->u()I
move-result v0
const/4 v1, 0x4
if-lt v0, v1, :cond_7d
iget-object v0, p0, Lcom/mologiq/analytics/af;->s:Ljava/util/List;
invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ag;->c(Ljava/util/List;)V
:cond_7d
return-object v3
:cond_7e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/s;
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->a()I
move-result v6
iget-object v1, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_43
iget-object v1, p0, Lcom/mologiq/analytics/af;->t:Ljava/util/Map;
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->a()I
move-result v7
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->b()I
move-result v0
sub-int v0, v1, v0
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_43
:cond_ba
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_5c
.end method
.method  d()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
iget-wide v1, p0, Lcom/mologiq/analytics/af;->q:D
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/mologiq/analytics/af;->r:D
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public d(D)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->w:D
return-void
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->e:Ljava/lang/String;
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->a:Ljava/lang/String;
return-object v0
.end method
.method  e(Landroid/content/Context;)Ljava/util/Map;
.registers 7
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/ae;->r()Landroid/util/SparseArray;
move-result-object v3
if-eqz v3, :cond_17
const/4 v0, 0x0
move v1, v0
:goto_11
invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
move-result v0
if-lt v1, v0, :cond_18
:cond_17
return-object v2
:cond_18
invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/j;
invoke-virtual {v0}, Lcom/mologiq/analytics/j;->b()Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_11
.end method
.method public e(D)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/af;->x:D
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->f:Ljava/lang/String;
return-void
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->e:Ljava/lang/String;
return-object v0
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->g:Ljava/lang/String;
return-void
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->f:Ljava/lang/String;
return-object v0
.end method
.method public g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->y:Ljava/lang/String;
return-void
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->g:Ljava/lang/String;
return-object v0
.end method
.method public h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->i:Ljava/lang/String;
return-void
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->y:Ljava/lang/String;
return-object v0
.end method
.method public i(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->n:Ljava/lang/String;
return-void
.end method
.method public j()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->i:Ljava/lang/String;
return-object v0
.end method
.method public j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->b:Ljava/lang/String;
return-void
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->n:Ljava/lang/String;
return-object v0
.end method
.method public k(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->d:Ljava/lang/String;
return-void
.end method
.method  l()D
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->q:D
return-wide v0
.end method
.method public l(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->h:Ljava/lang/String;
return-void
.end method
.method  m()D
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->r:D
return-wide v0
.end method
.method public m(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->j:Ljava/lang/String;
return-void
.end method
.method public n()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->b:Ljava/lang/String;
return-object v0
.end method
.method public n(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->k:Ljava/lang/String;
return-void
.end method
.method public o(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->l:Ljava/lang/String;
return-void
.end method
.method public o()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/af;->c:Z
return v0
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->d:Ljava/lang/String;
return-object v0
.end method
.method public p(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->m:Ljava/lang/String;
return-void
.end method
.method public q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->h:Ljava/lang/String;
return-object v0
.end method
.method public q(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/af;->o:Ljava/lang/String;
return-void
.end method
.method public r()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->j:Ljava/lang/String;
return-object v0
.end method
.method public s()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->k:Ljava/lang/String;
return-object v0
.end method
.method public t()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->l:Ljava/lang/String;
return-object v0
.end method
.method public u()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->m:Ljava/lang/String;
return-object v0
.end method
.method public v()Lcom/mologiq/analytics/ah;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/af;->p:Lcom/mologiq/analytics/ah;
return-object v0
.end method
.method public w()D
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->u:D
return-wide v0
.end method
.method public x()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->v:J
return-wide v0
.end method
.method public y()D
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->w:D
return-wide v0
.end method
.method public z()D
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/af;->x:D
return-wide v0
.end method