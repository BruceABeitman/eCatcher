.class public Lcom/mologiq/analytics/ae;
.super Lcom/mologiq/analytics/w;
.source "SourceFile"
.field private static final s:Ljava/lang/String; = ".3ca154f5-9711-475d-819c-7bab4289e4a7"
.field private static final t:Lcom/mologiq/analytics/ae;
.field private static final u:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private a:J
.field private b:J
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.field private l:I
.field private m:J
.field private n:J
.field private o:J
.field private p:Landroid/util/SparseArray;
.field private q:Lcom/mologiq/analytics/t;
.field private r:Ljava/util/List;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mologiq/analytics/ae;
const-string v1, ".3ca154f5-9711-475d-819c-7bab4289e4a7"
invoke-direct {v0, v1}, Lcom/mologiq/analytics/ae;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mologiq/analytics/ae;->t:Lcom/mologiq/analytics/ae;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
sput-object v0, Lcom/mologiq/analytics/ae;->u:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 8
const-wide/32 v4, 0x927c0
const-wide/16 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/mologiq/analytics/w;-><init>(Ljava/lang/String;)V
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->a:J
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->b:J
const-string v0, "http://a.mologiq.net/mologiq/aea"
iput-object v0, p0, Lcom/mologiq/analytics/ae;->c:Ljava/lang/String;
const-string v0, "http://a.mologiq.net/mologiq/deai"
iput-object v0, p0, Lcom/mologiq/analytics/ae;->d:Ljava/lang/String;
const-string v0, "http://a.mologiq.net/mologiq/dea"
iput-object v0, p0, Lcom/mologiq/analytics/ae;->e:Ljava/lang/String;
const-string v0, "http://a.mologiq.net/mologiq/et"
iput-object v0, p0, Lcom/mologiq/analytics/ae;->f:Ljava/lang/String;
const/16 v0, 0x64
iput v0, p0, Lcom/mologiq/analytics/ae;->g:I
iput-boolean v1, p0, Lcom/mologiq/analytics/ae;->h:Z
iput-boolean v1, p0, Lcom/mologiq/analytics/ae;->i:Z
iput-boolean v1, p0, Lcom/mologiq/analytics/ae;->j:Z
iput-boolean v1, p0, Lcom/mologiq/analytics/ae;->k:Z
iput-wide v4, p0, Lcom/mologiq/analytics/ae;->m:J
iput-wide v4, p0, Lcom/mologiq/analytics/ae;->n:J
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->o:J
iput v1, p0, Lcom/mologiq/analytics/ae;->l:I
invoke-static {}, Lcom/mologiq/analytics/l;->a()Lcom/mologiq/analytics/l;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/l;->b()Landroid/util/SparseArray;
move-result-object v0
iput-object v0, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
invoke-static {}, Lcom/mologiq/analytics/r;->a()Lcom/mologiq/analytics/r;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/r;->c()Lcom/mologiq/analytics/t;
move-result-object v0
iput-object v0, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
return-void
.end method
.method public static d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
.registers 4
sget-object v0, Lcom/mologiq/analytics/ae;->u:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_f
sget-object v0, Lcom/mologiq/analytics/ae;->t:Lcom/mologiq/analytics/ae;
invoke-virtual {v0, p0}, Lcom/mologiq/analytics/ae;->a(Landroid/content/Context;)V
:cond_f
sget-object v0, Lcom/mologiq/analytics/ae;->t:Lcom/mologiq/analytics/ae;
return-object v0
.end method
.method private d(Ljava/lang/String;)V
.registers 13
const/4 v1, 0x0
if-eqz p1, :cond_18b
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_18b
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "adEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1e
const-string v2, "adEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->c:Ljava/lang/String;
:cond_1e
const-string v2, "deviceEventsInitAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2e
const-string v2, "deviceEventsInitAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->d:Ljava/lang/String;
:cond_2e
const-string v2, "deviceEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3e
const-string v2, "deviceEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->e:Ljava/lang/String;
:cond_3e
const-string v2, "targetParamsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4e
const-string v2, "targetParamsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->f:Ljava/lang/String;
:cond_4e
const-string v2, "stopForPeriodInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_5e
const-string v2, "stopForPeriodInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->a:J
:cond_5e
const-string v2, "locationMask"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_6e
const-string v2, "locationMask"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/mologiq/analytics/ae;->g:I
:cond_6e
const-string v2, "ttlEnhancedTargetParamsInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_7e
const-string v2, "ttlEnhancedTargetParamsInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->m:J
:cond_7e
const-string v2, "ttlDeviceStateInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "ttlDeviceStateInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->n:J
:cond_8e
const-string v2, "deviceStateTimestamp"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_9e
const-string v2, "deviceStateTimestamp"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->o:J
:cond_9e
const-string v2, "enableLocation"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_18c
const-string v2, "enableLocation"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->h:Z
:goto_ae
const-string v2, "enableInstalledApps"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_196
const-string v2, "enableInstalledApps"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->i:Z
:goto_be
const-string v2, "enableNetworkInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_19b
const-string v2, "enableNetworkInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->j:Z
:goto_ce
const-string v2, "enableDeviceInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1a0
const-string v2, "enableDeviceInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->k:Z
:goto_de
const-string v2, "policy"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1a5
const-string v2, "policy"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/mologiq/analytics/ae;->l:I
:goto_ee
const-string v2, "appfilters"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_18b
const-string v2, "appfilters"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string v0, "applistdata"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_120
const-string v0, "applistdata"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_120
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_120
new-instance v4, Landroid/util/SparseArray;
invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V
move v0, v1
:goto_118
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v5
if-lt v0, v5, :cond_1aa
iput-object v4, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
:cond_120
const-string v0, "meandata"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_16b
const-string v0, "meandata"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v4, Lcom/mologiq/analytics/t;
invoke-static {}, Lcom/mologiq/analytics/r;->a()Lcom/mologiq/analytics/r;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v4, v2}, Lcom/mologiq/analytics/t;-><init>(Lcom/mologiq/analytics/r;)V
const-string v2, "version"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/t;->a(Ljava/lang/String;)V
const-string v2, "appcount"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/t;->a(I)V
const-string v2, "classifications"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
if-eqz v5, :cond_169
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_169
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
move v2, v1
:goto_160
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt v2, v0, :cond_1fb
invoke-virtual {v4, v6}, Lcom/mologiq/analytics/t;->a(Ljava/util/List;)V
:cond_169
iput-object v4, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
:cond_16b
const-string v0, "appinstallcampaigns"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_18b
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
if-nez v0, :cond_17e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
:cond_17e
const-string v0, "appinstallcampaigns"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
move v2, v1
:goto_185
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt v2, v0, :cond_248
:cond_18b
:goto_18b
return-void
:cond_18c
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->h:Z
:try_end_18f
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18f} :catch_191
goto/16 :goto_ae
:catch_191
move-exception v0
invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_18b
:cond_196
const/4 v2, 0x0
:try_start_197
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->i:Z
goto/16 :goto_be
:cond_19b
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->j:Z
goto/16 :goto_ce
:cond_1a0
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->k:Z
goto/16 :goto_de
:cond_1a5
const/4 v2, 0x1
iput v2, p0, Lcom/mologiq/analytics/ae;->l:I
goto/16 :goto_ee
:cond_1aa
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
new-instance v6, Lcom/mologiq/analytics/j;
invoke-direct {v6}, Lcom/mologiq/analytics/j;-><init>()V
const-string v7, "name"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1c4
const-string v7, "name"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->a(Ljava/lang/String;)V
:cond_1c4
const-string v7, "classificationid"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1d5
const-string v7, "classificationid"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v7
invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->a(I)V
:cond_1d5
const-string v7, "id"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1e6
const-string v7, "id"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v7
invoke-virtual {v6, v7}, Lcom/mologiq/analytics/j;->b(I)V
:cond_1e6
const-string v7, "id"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_1f7
const-string v7, "id"
invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v5
invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_1f7
add-int/lit8 v0, v0, 0x1
goto/16 :goto_118
:cond_1fb
new-instance v7, Lcom/mologiq/analytics/s;
invoke-static {}, Lcom/mologiq/analytics/r;->a()Lcom/mologiq/analytics/r;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v7, v0}, Lcom/mologiq/analytics/s;-><init>(Lcom/mologiq/analytics/r;)V
invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v8, "id"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/s;->a(I)V
const-string v8, "mean"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/s;->b(I)V
const-string v8, "apps"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move v0, v1
:goto_229
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
move-result v10
if-lt v0, v10, :cond_23a
invoke-virtual {v7, v9}, Lcom/mologiq/analytics/s;->a(Ljava/util/List;)V
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_160
:cond_23a
invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_229
:cond_248
invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
new-instance v5, Lcom/mologiq/analytics/k;
invoke-direct {v5}, Lcom/mologiq/analytics/k;-><init>()V
const-string v0, "id"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/mologiq/analytics/k;->c(Ljava/lang/Integer;)V
const-string v0, "userid"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v5, v0}, Lcom/mologiq/analytics/k;->a(Ljava/lang/Integer;)V
const-string v0, "isnotinstalled"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_288
const-string v0, "isnotinstalled"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
move v0, v1
:goto_27f
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v8
if-lt v0, v8, :cond_2cc
invoke-virtual {v5, v7}, Lcom/mologiq/analytics/k;->a(Ljava/util/List;)V
:cond_288
const-string v0, "isinstalled"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2a5
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const-string v0, "isinstalled"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v7
move v0, v1
:goto_29c
invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
move-result v8
if-lt v0, v8, :cond_2da
invoke-virtual {v5, v6}, Lcom/mologiq/analytics/k;->b(Ljava/util/List;)V
:cond_2a5
const-string v0, "tp"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2c2
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
const-string v0, "tp"
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
move v0, v1
:goto_2b9
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v7
if-lt v0, v7, :cond_2e8
invoke-virtual {v5, v6}, Lcom/mologiq/analytics/k;->c(Ljava/util/List;)V
:cond_2c2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_185
:cond_2cc
invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_27f
:cond_2da
invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v8
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_29c
:cond_2e8
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
new-instance v8, Lcom/mologiq/analytics/ac;
invoke-direct {v8}, Lcom/mologiq/analytics/ac;-><init>()V
const-string v9, "n"
invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Lcom/mologiq/analytics/ac;->a(Ljava/lang/String;)V
const-string v9, "v"
invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v8, v7}, Lcom/mologiq/analytics/ac;->b(Ljava/lang/String;)V
invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_306
.catch Ljava/lang/Throwable; {:try_start_197 .. :try_end_306} :catch_191
add-int/lit8 v0, v0, 0x1
goto :goto_2b9
.end method
.method protected a()Ljava/lang/String;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "stopForPeriodTimestamp"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->q()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/ae;->l:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/ae;->o:J
return-void
.end method
.method public a(Landroid/util/SparseArray;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
return-void
.end method
.method public a(Lcom/mologiq/analytics/t;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->c()Z
move-result v0
if-nez v0, :cond_c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/mologiq/analytics/ae;->b:J
:cond_c
if-eqz p1, :cond_2e
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_2e
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "core"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2e
const-string v1, "core"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/mologiq/analytics/ae;->d(Ljava/lang/String;)V
:cond_2e
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/ae;->j:Z
return-void
.end method
.method protected b()Ljava/lang/String;
.registers 12
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->f()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14
const-string v0, "adEventsAndroidUrl"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->f()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_14
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->g()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23
const-string v0, "deviceEventsAndroidUrl"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_23
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->d()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_32
const-string v0, "deviceEventsInitAndroidUrl"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_32
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->h()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_41
const-string v0, "targetParamsAndroidUrl"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_41
const-string v0, "stopForPeriodInMs"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->e()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "locationMask"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->p()I
move-result v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v0, "ttlEnhancedTargetParamsInMs"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->m()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "ttlDeviceStateInMs"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->n()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "deviceStateTimestamp"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->o()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "enableLocation"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->i()Z
move-result v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "enableInstalledApps"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->j()Z
move-result v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "enableNetworkInfo"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->k()Z
move-result v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "enableDeviceInfo"
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->l()Z
move-result v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "policy"
iget v1, p0, Lcom/mologiq/analytics/ae;->l:I
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
const/4 v0, 0x0
move v1, v0
:goto_a5
iget-object v0, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lt v1, v0, :cond_110
const-string v0, "applistdata"
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v0, "version"
iget-object v4, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
invoke-virtual {v4}, Lcom/mologiq/analytics/t;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "appcount"
iget-object v4, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
invoke-virtual {v4}, Lcom/mologiq/analytics/t;->b()I
move-result v4
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
invoke-virtual {v0}, Lcom/mologiq/analytics/t;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_dc
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_140
const-string v0, "classifications"
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "meandata"
invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
if-eqz v0, :cond_106
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_fb
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_170
const-string v0, "appinstallcampaigns"
invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_106
const-string v0, "appfilters"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_110
iget-object v0, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/j;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "name"
invoke-virtual {v0}, Lcom/mologiq/analytics/j;->b()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "classificationid"
invoke-virtual {v0}, Lcom/mologiq/analytics/j;->a()I
move-result v7
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v6, "id"
invoke-virtual {v0}, Lcom/mologiq/analytics/j;->c()I
move-result v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_a5
:cond_140
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/s;
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
const-string v7, "id"
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->a()I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v7, "mean"
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->b()I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v7, "apps"
new-instance v8, Lorg/json/JSONArray;
invoke-virtual {v0}, Lcom/mologiq/analytics/s;->c()Ljava/util/List;
move-result-object v0
invoke-direct {v8, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto/16 :goto_dc
:cond_170
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/k;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "id"
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/lang/Integer;
move-result-object v7
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "userid"
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->a()Ljava/lang/Integer;
move-result-object v7
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "isnotinstalled"
new-instance v7, Lorg/json/JSONArray;
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->d()Ljava/util/List;
move-result-object v8
invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "isinstalled"
new-instance v7, Lorg/json/JSONArray;
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->e()Ljava/util/List;
move-result-object v8
invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->f()Ljava/util/List;
move-result-object v6
if-eqz v6, :cond_1c7
new-instance v6, Lorg/json/JSONArray;
invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_1bc
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1cc
const-string v0, "tp"
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1c7
invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto/16 :goto_fb
:cond_1cc
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/ac;
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
const-string v9, "n"
invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->a()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v9, "v"
invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_1bc
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/ae;->b:J
return-void
.end method
.method protected b(Ljava/lang/String;)V
.registers 14
const/4 v1, 0x0
if-eqz p1, :cond_184
:try_start_3
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_184
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v2, "adEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_1e
const-string v2, "adEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->c:Ljava/lang/String;
:cond_1e
const-string v2, "deviceEventsInitAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2e
const-string v2, "deviceEventsInitAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->d:Ljava/lang/String;
:cond_2e
const-string v2, "deviceEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3e
const-string v2, "deviceEventsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->e:Ljava/lang/String;
:cond_3e
const-string v2, "targetParamsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4e
const-string v2, "targetParamsAndroidUrl"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/mologiq/analytics/ae;->f:Ljava/lang/String;
:cond_4e
const-string v2, "stopForPeriodInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_5e
const-string v2, "stopForPeriodInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->a:J
:cond_5e
const-string v2, "locationMask"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_6e
const-string v2, "locationMask"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/mologiq/analytics/ae;->g:I
:cond_6e
const-string v2, "ttlEnhancedTargetParamsInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_7e
const-string v2, "ttlEnhancedTargetParamsInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->m:J
:cond_7e
const-string v2, "ttlDeviceStateInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "ttlDeviceStateInMs"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->n:J
:cond_8e
const-string v2, "deviceStateTimestamp"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_9e
const-string v2, "deviceStateTimestamp"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lcom/mologiq/analytics/ae;->o:J
:cond_9e
const-string v2, "enableLocation"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_185
const-string v2, "enableLocation"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->h:Z
:goto_ae
const-string v2, "enableInstalledApps"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_18f
const-string v2, "enableInstalledApps"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->i:Z
:goto_be
const-string v2, "enableNetworkInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_194
const-string v2, "enableNetworkInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->j:Z
:goto_ce
const-string v2, "enableDeviceInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_199
const-string v2, "enableDeviceInfo"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->k:Z
:goto_de
const-string v2, "policy"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_19e
const-string v2, "policy"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
iput v2, p0, Lcom/mologiq/analytics/ae;->l:I
:goto_ee
const-string v2, "appFilters"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_184
const-string v2, "appFilters"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
const-string v0, "appList"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_119
const-string v0, "appList"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
if-eqz v2, :cond_119
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_119
move v0, v1
:goto_113
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v4
if-lt v0, v4, :cond_1a3
:cond_119
const-string v0, "mean"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_164
const-string v0, "mean"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v4, Lcom/mologiq/analytics/t;
invoke-static {}, Lcom/mologiq/analytics/r;->a()Lcom/mologiq/analytics/r;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v4, v2}, Lcom/mologiq/analytics/t;-><init>(Lcom/mologiq/analytics/r;)V
const-string v2, "version"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/t;->a(Ljava/lang/String;)V
const-string v2, "appcount"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/t;->a(I)V
const-string v2, "classifications"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
if-eqz v5, :cond_162
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_162
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
move v2, v1
:goto_159
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt v2, v0, :cond_1f6
invoke-virtual {v4, v6}, Lcom/mologiq/analytics/t;->a(Ljava/util/List;)V
:cond_162
iput-object v4, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
:cond_164
const-string v0, "campaigns"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_184
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
if-nez v0, :cond_177
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
:cond_177
const-string v0, "campaigns"
invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v4
move v3, v1
:goto_17e
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt v3, v0, :cond_243
:cond_184
:goto_184
return-void
:cond_185
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->h:Z
:try_end_188
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_188} :catch_18a
goto/16 :goto_ae
:catch_18a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
goto :goto_184
:cond_18f
const/4 v2, 0x0
:try_start_190
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->i:Z
goto/16 :goto_be
:cond_194
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->j:Z
goto/16 :goto_ce
:cond_199
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/mologiq/analytics/ae;->k:Z
goto/16 :goto_de
:cond_19e
const/4 v2, 0x0
iput v2, p0, Lcom/mologiq/analytics/ae;->l:I
goto/16 :goto_ee
:cond_1a3
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
new-instance v5, Lcom/mologiq/analytics/j;
invoke-direct {v5}, Lcom/mologiq/analytics/j;-><init>()V
const-string v6, "name"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1bd
const-string v6, "name"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->a(Ljava/lang/String;)V
:cond_1bd
const-string v6, "classificationid"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1ce
const-string v6, "classificationid"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->a(I)V
:cond_1ce
const-string v6, "id"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1df
const-string v6, "id"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
invoke-virtual {v5, v6}, Lcom/mologiq/analytics/j;->b(I)V
:cond_1df
const-string v6, "id"
invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_1f2
iget-object v6, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
const-string v7, "id"
invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_1f2
add-int/lit8 v0, v0, 0x1
goto/16 :goto_113
:cond_1f6
new-instance v7, Lcom/mologiq/analytics/s;
invoke-static {}, Lcom/mologiq/analytics/r;->a()Lcom/mologiq/analytics/r;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v7, v0}, Lcom/mologiq/analytics/s;-><init>(Lcom/mologiq/analytics/r;)V
invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v8, "id"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/s;->a(I)V
const-string v8, "mean"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v8
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/s;->b(I)V
const-string v8, "apps"
invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move v0, v1
:goto_224
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
move-result v10
if-lt v0, v10, :cond_235
invoke-virtual {v7, v9}, Lcom/mologiq/analytics/s;->a(Ljava/util/List;)V
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_159
:cond_235
invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_224
:cond_243
invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v0
const-string v2, "action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_272
const-string v2, "action"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v5, "add"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_338
const-string v2, "data"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_272
const-string v2, "data"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
move v2, v1
:goto_26c
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v0
if-lt v2, v0, :cond_277
:goto_272
:cond_272
add-int/lit8 v0, v3, 0x1
move v3, v0
goto/16 :goto_17e
:cond_277
invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
new-instance v7, Lcom/mologiq/analytics/k;
invoke-direct {v7}, Lcom/mologiq/analytics/k;-><init>()V
const-string v0, "id"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/mologiq/analytics/k;->c(Ljava/lang/Integer;)V
const-string v0, "userid"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v7, v0}, Lcom/mologiq/analytics/k;->a(Ljava/lang/Integer;)V
const-string v0, "notinstall"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b7
const-string v0, "notinstall"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move v0, v1
:goto_2ae
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
move-result v10
if-lt v0, v10, :cond_2fb
invoke-virtual {v7, v9}, Lcom/mologiq/analytics/k;->a(Ljava/util/List;)V
:cond_2b7
const-string v0, "install"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2d4
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const-string v0, "install"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v9
move v0, v1
:goto_2cb
invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
move-result v10
if-lt v0, v10, :cond_309
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/k;->b(Ljava/util/List;)V
:cond_2d4
const-string v0, "tp"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2f1
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
const-string v0, "tp"
invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
move v0, v1
:goto_2e8
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v9
if-lt v0, v9, :cond_317
invoke-virtual {v7, v8}, Lcom/mologiq/analytics/k;->c(Ljava/util/List;)V
:cond_2f1
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v2, 0x1
move v2, v0
goto/16 :goto_26c
:cond_2fb
invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2ae
:cond_309
invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getInt(I)I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2cb
:cond_317
invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v9
new-instance v10, Lcom/mologiq/analytics/ac;
invoke-direct {v10}, Lcom/mologiq/analytics/ac;-><init>()V
const-string v11, "n"
invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Lcom/mologiq/analytics/ac;->a(Ljava/lang/String;)V
const-string v11, "v"
invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v10, v9}, Lcom/mologiq/analytics/ac;->b(Ljava/lang/String;)V
invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2e8
:cond_338
const-string v5, "delete"
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_272
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
const-string v5, "data"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_272
const-string v5, "data"
invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
move v0, v1
:goto_354
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
move-result v6
if-lt v0, v6, :cond_36f
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_365
:cond_365
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_383
iput-object v5, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
goto/16 :goto_272
:cond_36f
invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v6
const-string v7, "id"
invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_354
:cond_383
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/k;
invoke-virtual {v0}, Lcom/mologiq/analytics/k;->c()Ljava/lang/Integer;
move-result-object v7
invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_365
invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_396
.catch Ljava/lang/Throwable; {:try_start_190 .. :try_end_396} :catch_18a
goto :goto_365
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/ae;->k:Z
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
const-string v1, ".3ca154f5-9711-475d-819c-7bab4289e4a7"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->b()Ljava/lang/String;
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
invoke-virtual {p0}, Lcom/mologiq/analytics/ae;->a()Ljava/lang/String;
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
iput-object p1, p0, Lcom/mologiq/analytics/ae;->d:Ljava/lang/String;
return-void
.end method
.method public c(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/ae;->h:Z
return-void
.end method
.method public c()Z
.registers 6
const/4 v0, 0x1
iget-wide v1, p0, Lcom/mologiq/analytics/ae;->a:J
const-wide/16 v3, -0x1
cmp-long v1, v1, v3
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, Lcom/mologiq/analytics/ae;->b:J
sub-long/2addr v1, v3
iget-wide v3, p0, Lcom/mologiq/analytics/ae;->a:J
cmp-long v1, v1, v3
if-ltz v1, :cond_9
const/4 v0, 0x0
goto :goto_9
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->d:Ljava/lang/String;
return-object v0
.end method
.method public d(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/ae;->i:Z
return-void
.end method
.method public e()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/ae;->a:J
return-wide v0
.end method
.method public f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->c:Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->e:Ljava/lang/String;
return-object v0
.end method
.method public h()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->f:Ljava/lang/String;
return-object v0
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/ae;->h:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/ae;->i:Z
return v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/ae;->j:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/ae;->k:Z
return v0
.end method
.method public m()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/ae;->m:J
return-wide v0
.end method
.method public n()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/ae;->n:J
return-wide v0
.end method
.method public o()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/ae;->o:J
return-wide v0
.end method
.method public p()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/ae;->g:I
return v0
.end method
.method public q()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/ae;->b:J
return-wide v0
.end method
.method public r()Landroid/util/SparseArray;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->p:Landroid/util/SparseArray;
return-object v0
.end method
.method public s()Lcom/mologiq/analytics/t;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->q:Lcom/mologiq/analytics/t;
return-object v0
.end method
.method public t()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/ae;->r:Ljava/util/List;
return-object v0
.end method
.method public u()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/ae;->l:I
return v0
.end method