.class  Lcom/millennialmedia/android/as;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final A:Ljava/lang/String; = "HandShake"
.field private static I:Ljava/lang/String; = null
.field static a:Ljava/lang/String; = null
.field static final k:Ljava/lang/String; = "http://androidsdk.ads.mp.mydas.mobi/"
.field static final l:Ljava/lang/String; = "getAd.php5?"
.field private static final n:Ljava/lang/String; = "handshake_cachedvideos5.0"
.field private static final o:Ljava/lang/String; = "http://"
.field private static final p:Ljava/lang/String; = "https://"
.field private static final q:Ljava/lang/String; = "ads.mp.mydas.mobi/"
.field private static final r:Ljava/lang/String; = "appConfigServlet?apid="
.field private static final s:Ljava/lang/String; = "?apid="
.field private static final t:Ljava/lang/String; = "http://ads.mp.mydas.mobi/appConfigServlet?apid="
.field private static u:Ljava/lang/String;
.field private static v:Z
.field private static w:Lcom/millennialmedia/android/as;
.field private B:J
.field private C:Ljava/lang/String;
.field private final D:Ljava/util/LinkedHashMap;
.field private final E:Ljava/util/ArrayList;
.field private F:Ljava/lang/String;
.field private G:J
.field private H:J
.field private final J:Ljava/lang/Runnable;
.field  b:Z
.field  c:Ljava/lang/String;
.field  d:J
.field  e:Z
.field  f:Ljava/lang/String;
.field  g:Ljava/lang/String;
.field  h:J
.field  i:Ljava/lang/String;
.field  j:Lcom/millennialmedia/android/au;
.field  m:[Lcom/millennialmedia/android/ao;
.field private x:Ljava/lang/ref/WeakReference;
.field private y:Ljava/lang/ref/WeakReference;
.field private final z:Landroid/os/Handler;
.method static constructor <clinit>()V
.registers 1
const-string v0, "28913"
sput-object v0, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;
const-string v0, "https://ads.mp.mydas.mobi/appConfigServlet?apid="
sput-object v0, Lcom/millennialmedia/android/as;->u:Ljava/lang/String;
const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"
sput-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->z:Landroid/os/Handler;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
const-wide/32 v0, 0x36ee80
iput-wide v0, p0, Lcom/millennialmedia/android/as;->G:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/as;->b:Z
const-wide/32 v0, 0x5265c00
iput-wide v0, p0, Lcom/millennialmedia/android/as;->H:J
const-wide/32 v0, 0xf731400
iput-wide v0, p0, Lcom/millennialmedia/android/as;->d:J
new-instance v0, Lcom/millennialmedia/android/as$2;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/as$2;-><init>(Lcom/millennialmedia/android/as;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->J:Ljava/lang/Runnable;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->z:Landroid/os/Handler;
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
const-wide/32 v0, 0x36ee80
iput-wide v0, p0, Lcom/millennialmedia/android/as;->G:J
iput-boolean v4, p0, Lcom/millennialmedia/android/as;->b:Z
const-wide/32 v0, 0x5265c00
iput-wide v0, p0, Lcom/millennialmedia/android/as;->H:J
const-wide/32 v0, 0xf731400
iput-wide v0, p0, Lcom/millennialmedia/android/as;->d:J
new-instance v0, Lcom/millennialmedia/android/as$2;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/as$2;-><init>(Lcom/millennialmedia/android/as;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->J:Ljava/lang/Runnable;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->x:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/as;->y:Ljava/lang/ref/WeakReference;
sget-boolean v0, Lcom/millennialmedia/android/as;->v:Z
if-nez v0, :cond_5e
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->f(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_5e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/millennialmedia/android/as;->B:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/millennialmedia/android/as;->H:J
cmp-long v0, v0, v2
if-lez v0, :cond_69
:cond_5e
sput-boolean v4, Lcom/millennialmedia/android/as;->v:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/as;->B:J
invoke-direct {p0, v4}, Lcom/millennialmedia/android/as;->a(Z)V
:cond_69
return-void
.end method
.method static declared-synchronized a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
.registers 7
const-class v1, Lcom/millennialmedia/android/as;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;
if-nez v0, :cond_11
const-string v0, "HandShake"
const-string v2, "No apid set for the handshake."
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_3f
const/4 v0, 0x0
:goto_f
monitor-exit v1
return-object v0
:cond_11
:try_start_11
sget-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
if-nez v0, :cond_1f
new-instance v0, Lcom/millennialmedia/android/as;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/as;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
:goto_1c
:cond_1c
sget-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
goto :goto_f
:cond_1f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
sget-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
iget-wide v4, v0, Lcom/millennialmedia/android/as;->B:J
sub-long/2addr v2, v4
sget-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
iget-wide v4, v0, Lcom/millennialmedia/android/as;->H:J
cmp-long v0, v2, v4
if-lez v0, :cond_1c
const-string v0, "HandShake"
const-string v2, "Handshake expired, requesting new handshake from the server."
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/millennialmedia/android/as;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/as;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
:try_end_3e
.catchall {:try_start_11 .. :try_end_3e} :catchall_3f
goto :goto_1c
:catchall_3f
move-exception v0
monitor-exit v1
throw v0
.end method
.method static a()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
sget-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
const-string v1, "getAd.php5?"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
sget-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
:goto_1a
return-object v0
:cond_1b
const-string v0, "http://androidsdk.ads.mp.mydas.mobi/getAd.php5?"
goto :goto_1a
.end method
.method static synthetic a(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->x:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method static synthetic a(Lcom/millennialmedia/android/as;Ljava/lang/String;)Lorg/json/JSONObject;
.registers 3
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->g(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
return-object v0
.end method
.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/millennialmedia/android/as;
monitor-enter v1
:try_start_3
invoke-static {p1}, Lcom/millennialmedia/android/as;->b(Ljava/lang/String;)Z
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_16
move-result v0
if-nez v0, :cond_b
:goto_9
monitor-exit v1
return-void
:cond_b
const/4 v0, 0x1
:try_start_c
sput-boolean v0, Lcom/millennialmedia/android/as;->v:Z
new-instance v0, Lcom/millennialmedia/android/as;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/as;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/millennialmedia/android/as;->w:Lcom/millennialmedia/android/as;
:try_end_15
.catchall {:try_start_c .. :try_end_15} :catchall_16
goto :goto_9
:catchall_16
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic a(Lcom/millennialmedia/android/as;Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->a(Lorg/json/JSONObject;)V
return-void
.end method
.method static a(Ljava/lang/String;)V
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_29
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "getAd.php5?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
:goto_29
:cond_29
return-void
:cond_2a
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "getAd.php5?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
goto :goto_29
.end method
.method private a(Lorg/json/JSONObject;)V
.registers 12
const-wide/16 v8, 0x3e8
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/as;->x:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_198
iget-object v0, p0, Lcom/millennialmedia/android/as;->y:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
move-object v2, v0
:goto_16
if-nez v2, :cond_20
const-string v0, "HandShake"
const-string v1, "No context for handshake"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_1f
:cond_1f
return-void
:cond_20
if-eqz p1, :cond_1f
:try_start_22
const-string v0, "errors"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
if-eqz v3, :cond_75
move v0, v1
:goto_2b
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v0, v4, :cond_75
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
if-eqz v4, :cond_56
const-string v5, "message"
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v6, "type"
const/4 v7, 0x0
invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
if-eqz v5, :cond_56
if-eqz v4, :cond_56
const-string v6, "log"
invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_59
const-string v4, "HandShake"
invoke-static {v4, v5}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_56
:cond_56
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_59
const-string v6, "prompt"
invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_56
iget-object v4, p0, Lcom/millennialmedia/android/as;->z:Landroid/os/Handler;
new-instance v6, Lcom/millennialmedia/android/as$3;
invoke-direct {v6, p0, v2, v5}, Lcom/millennialmedia/android/as$3;-><init>(Lcom/millennialmedia/android/as;Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6b} :catch_6c
goto :goto_56
:catch_6c
move-exception v0
const-string v1, "HandShake"
const-string v2, "Error deserializing handshake"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1f
:cond_75
:try_start_75
const-string v0, "adtypes"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
if-eqz v3, :cond_a4
invoke-static {}, Lcom/millennialmedia/android/bp;->l()[Ljava/lang/String;
move-result-object v4
move v0, v1
:goto_82
array-length v5, v4
if-ge v0, v5, :cond_a4
aget-object v5, v4, v0
invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v5
if-eqz v5, :cond_a1
new-instance v6, Lcom/millennialmedia/android/at;
invoke-direct {v6, p0}, Lcom/millennialmedia/android/at;-><init>(Lcom/millennialmedia/android/as;)V
invoke-virtual {v6, v5}, Lcom/millennialmedia/android/at;->a(Lorg/json/JSONObject;)V
aget-object v5, v4, v0
invoke-virtual {v6, v2, v5}, Lcom/millennialmedia/android/at;->b(Landroid/content/Context;Ljava/lang/String;)V
iget-object v5, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
aget-object v7, v4, v0
invoke-virtual {v5, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a1
add-int/lit8 v0, v0, 0x1
goto :goto_82
:cond_a4
monitor-enter p0
:try_end_a5
.catch Ljava/lang/Exception; {:try_start_75 .. :try_end_a5} :catch_6c
:try_start_a5
const-string v0, "schemes"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
if-eqz v3, :cond_dd
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
if-eqz v0, :cond_c0
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_c0
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
iget-object v4, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
:cond_c0
move v0, v1
:goto_c1
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v0, v1, :cond_dd
invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
if-eqz v1, :cond_da
new-instance v4, Lcom/millennialmedia/android/av;
invoke-direct {v4, p0}, Lcom/millennialmedia/android/av;-><init>(Lcom/millennialmedia/android/as;)V
invoke-virtual {v4, v1}, Lcom/millennialmedia/android/av;->a(Lorg/json/JSONObject;)V
iget-object v1, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_da
add-int/lit8 v0, v0, 0x1
goto :goto_c1
:cond_dd
monitor-exit p0
:try_start_de
:try_end_de
.catchall {:try_start_a5 .. :try_end_de} :catchall_173
const-string v0, "adrefresh"
const-wide/16 v3, 0x0
invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/millennialmedia/android/as;->h:J
const-string v0, "deferredviewtimeout"
const-wide/16 v3, 0xe10
invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v0
mul-long/2addr v0, v8
iput-wide v0, p0, Lcom/millennialmedia/android/as;->G:J
const-string v0, "kill"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/as;->b:Z
const-string v0, "baseURL"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Ljava/lang/String;)V
const-string v0, "handshakecallback"
const-wide/32 v3, 0x15180
invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v0
mul-long/2addr v0, v8
iput-wide v0, p0, Lcom/millennialmedia/android/as;->H:J
const-string v0, "creativeCacheTimeout"
const-wide/32 v3, 0x3f480
invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v0
mul-long/2addr v0, v8
iput-wide v0, p0, Lcom/millennialmedia/android/as;->d:J
const-string v0, "hardwareAccelerationEnabled"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/as;->e:Z
const-string v0, "startSessionURL"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->f:Ljava/lang/String;
const-string v0, "endSessionURL"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->g:Ljava/lang/String;
const-string v0, "nuanceCredentials"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/millennialmedia/a/a/f;
invoke-direct {v1}, Lcom/millennialmedia/a/a/f;-><init>()V
const-class v3, Lcom/millennialmedia/android/au;
invoke-virtual {v1, v0, v3}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/au;
iput-object v0, p0, Lcom/millennialmedia/android/as;->j:Lcom/millennialmedia/android/au;
const-string v0, "mmjs"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-direct {p0, p1, v2}, Lcom/millennialmedia/android/as;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
iget-object v0, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_176
iget-object v0, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/millennialmedia/android/cw;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_176
iget-object v0, p0, Lcom/millennialmedia/android/as;->y:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v1, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/millennialmedia/android/cw;->b(Landroid/content/Context;Ljava/lang/String;)V
:try_end_171
.catch Ljava/lang/Exception; {:try_start_de .. :try_end_171} :catch_6c
goto/16 :goto_1f
:catchall_173
move-exception v0
:try_start_174
monitor-exit p0
:try_start_175
:try_end_175
.catchall {:try_start_174 .. :try_end_175} :catchall_173
throw v0
:cond_176
const-string v0, "HandShake"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Not downloading MMJS - ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->d(Ljava/lang/String;Ljava/lang/String;)V
:try_end_196
.catch Ljava/lang/Exception; {:try_start_175 .. :try_end_196} :catch_6c
goto/16 :goto_1f
:cond_198
move-object v2, v0
goto/16 :goto_16
.end method
.method private a(Lorg/json/JSONObject;Landroid/content/Context;)V
.registers 6
const-string v0, "cachedVideos"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
if-eqz v0, :cond_26
new-instance v1, Lcom/millennialmedia/a/a/f;
invoke-direct {v1}, Lcom/millennialmedia/a/a/f;-><init>()V
invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v0
const-class v2, [Lcom/millennialmedia/android/ao;
invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/millennialmedia/android/ao;
iput-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
const-string v0, "HandShake"
iget-object v1, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_26
const-string v0, "noVideosToCacheURL"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->C:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
iget-object v1, p0, Lcom/millennialmedia/android/as;->C:Ljava/lang/String;
invoke-static {v0, p2, v1}, Lcom/millennialmedia/android/de;->a([Lcom/millennialmedia/android/ao;Landroid/content/Context;Ljava/lang/String;)V
:cond_39
return-void
.end method
.method private a(Z)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/as;->x:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_1d
const-string v1, "MillennialMediaSettings"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "handShakeUrl"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1d
invoke-static {v0}, Lcom/millennialmedia/android/as;->b(Ljava/lang/String;)Z
:cond_1d
new-instance v0, Lcom/millennialmedia/android/as$1;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/as$1;-><init>(Lcom/millennialmedia/android/as;Z)V
invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/as;Landroid/content/Context;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->d(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->y:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/as;Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->g(Landroid/content/Context;)V
return-void
.end method
.method static declared-synchronized b(Ljava/lang/String;)Z
.registers 4
const-class v1, Lcom/millennialmedia/android/as;
monitor-enter v1
:try_start_3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_33
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_a
monitor-exit v1
return v0
:cond_c
:try_start_c
const-string v0, "http://"
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
const-string v0, "http://"
const-string v2, "https://"
invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p0
:cond_1c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "?apid="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/as;->u:Ljava/lang/String;
:try_end_31
.catchall {:try_start_c .. :try_end_31} :catchall_33
const/4 v0, 0x1
goto :goto_a
:catchall_33
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic c(Lcom/millennialmedia/android/as;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->J:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic c(Lcom/millennialmedia/android/as;Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/as;->e(Landroid/content/Context;)V
return-void
.end method
.method static synthetic d(Lcom/millennialmedia/android/as;)J
.registers 3
iget-wide v0, p0, Lcom/millennialmedia/android/as;->H:J
return-wide v0
.end method
.method private d(Landroid/content/Context;)Z
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return v0
:cond_4
const-string v1, "MillennialMediaSettings"
invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "firstlaunchHandshake"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
goto :goto_3
.end method
.method static synthetic e(Lcom/millennialmedia/android/as;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->z:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic e()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/millennialmedia/android/as;->u:Ljava/lang/String;
return-object v0
.end method
.method private e(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
if-eqz p1, :cond_15
const-string v0, "MillennialMediaSettings"
invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "firstlaunchHandshake"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_15
return-void
.end method
.method static synthetic f(Lcom/millennialmedia/android/as;)J
.registers 3
iget-wide v0, p0, Lcom/millennialmedia/android/as;->G:J
return-wide v0
.end method
.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
.registers 1
sput-object p0, Lcom/millennialmedia/android/as;->u:Ljava/lang/String;
return-object p0
.end method
.method private f(Landroid/content/Context;)Z
.registers 13
const/4 v2, 0x0
const/4 v1, 0x1
const-string v0, "MillennialMediaSettings"
invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
if-nez v4, :cond_b
:cond_a
:goto_a
return v2
:cond_b
const-string v0, "handshake_deferredviewtimeout"
invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b6
const-string v0, "handshake_deferredviewtimeout"
iget-wide v5, p0, Lcom/millennialmedia/android/as;->G:J
invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v5
iput-wide v5, p0, Lcom/millennialmedia/android/as;->G:J
move v0, v1
:goto_1e
const-string v3, "handshake_baseUrl"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_31
const-string v0, "handshake_baseUrl"
sget-object v3, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
move v0, v1
:cond_31
const-string v3, "handshake_callback"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_44
const-string v0, "handshake_callback"
iget-wide v5, p0, Lcom/millennialmedia/android/as;->H:J
invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v5
iput-wide v5, p0, Lcom/millennialmedia/android/as;->H:J
move v0, v1
:cond_44
const-string v3, "handshake_hardwareAccelerationEnabled"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_55
const-string v0, "handshake_hardwareAccelerationEnabled"
invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/as;->e:Z
move v0, v1
:cond_55
const-string v3, "handshake_startSessionURL"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_68
const-string v0, "handshake_startSessionURL"
const-string v3, ""
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->f:Ljava/lang/String;
move v0, v1
:cond_68
const-string v3, "handshake_endSessionURL"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_7b
const-string v0, "handshake_endSessionURL"
const-string v3, ""
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->g:Ljava/lang/String;
move v0, v1
:cond_7b
const-string v3, "handshake_nuanceCredentials"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_9b
const-string v0, "handshake_nuanceCredentials"
const-string v3, ""
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v3, Lcom/millennialmedia/a/a/f;
invoke-direct {v3}, Lcom/millennialmedia/a/a/f;-><init>()V
const-class v5, Lcom/millennialmedia/android/au;
invoke-virtual {v3, v0, v5}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/au;
iput-object v0, p0, Lcom/millennialmedia/android/as;->j:Lcom/millennialmedia/android/au;
move v0, v1
:cond_9b
const-string v3, "handshake_mmdid"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_af
const-string v0, "handshake_mmdid"
iget-object v3, p0, Lcom/millennialmedia/android/as;->c:Ljava/lang/String;
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, v0, v2}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;Ljava/lang/String;Z)V
move v0, v1
:cond_af
const-string v3, "handshake_creativecachetimeout"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_c2
const-string v0, "handshake_creativecachetimeout"
iget-wide v5, p0, Lcom/millennialmedia/android/as;->d:J
invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v5
iput-wide v5, p0, Lcom/millennialmedia/android/as;->d:J
move v0, v1
:cond_c2
const-string v3, "handshake_mmjs"
invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d5
const-string v0, "handshake_mmjs"
iget-object v3, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
move v0, v1
:cond_d5
invoke-static {}, Lcom/millennialmedia/android/bp;->l()[Ljava/lang/String;
move-result-object v5
move v3, v0
move v0, v2
:goto_db
array-length v6, v5
if-ge v0, v6, :cond_f6
new-instance v6, Lcom/millennialmedia/android/at;
invoke-direct {v6, p0}, Lcom/millennialmedia/android/at;-><init>(Lcom/millennialmedia/android/as;)V
aget-object v7, v5, v0
invoke-virtual {v6, v4, v7}, Lcom/millennialmedia/android/at;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_f3
iget-object v3, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
aget-object v7, v5, v0
invoke-virtual {v3, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v3, v1
:cond_f3
add-int/lit8 v0, v0, 0x1
goto :goto_db
:cond_f6
monitor-enter p0
:try_start_f7
const-string v0, "handshake_schemes"
invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b4
const-string v0, "handshake_schemes"
const-string v5, ""
invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_1b4
const-string v3, "\n"
invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v3, v0
:goto_114
if-ge v2, v3, :cond_139
aget-object v5, v0, v2
const-string v6, "\t"
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
const/4 v7, 0x2
if-lt v6, v7, :cond_136
new-instance v6, Lcom/millennialmedia/android/av;
const/4 v7, 0x0
aget-object v7, v5, v7
const/4 v8, 0x1
aget-object v5, v5, v8
invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
invoke-direct {v6, p0, v7, v5}, Lcom/millennialmedia/android/av;-><init>(Lcom/millennialmedia/android/as;Ljava/lang/String;I)V
iget-object v5, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_136
add-int/lit8 v2, v2, 0x1
goto :goto_114
:cond_139
move v2, v1
:goto_13a
monitor-exit p0
:try_end_13b
.catchall {:try_start_f7 .. :try_end_13b} :catchall_1b1
const-string v0, "handshake_cachedvideos5.0"
invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_160
const-string v0, "handshake_cachedvideos5.0"
const-string v3, ""
invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_160
new-instance v3, Lcom/millennialmedia/a/a/f;
invoke-direct {v3}, Lcom/millennialmedia/a/a/f;-><init>()V
const-class v5, [Lcom/millennialmedia/android/ao;
invoke-virtual {v3, v0, v5}, Lcom/millennialmedia/a/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/millennialmedia/android/ao;
iput-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
:cond_160
const-string v0, "handshake_lasthandshake"
invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_173
const-string v0, "handshake_lasthandshake"
iget-wide v2, p0, Lcom/millennialmedia/android/as;->B:J
invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v2
iput-wide v2, p0, Lcom/millennialmedia/android/as;->B:J
move v2, v1
:cond_173
if-eqz v2, :cond_a
const-string v0, "HandShake"
const-string v1, "Handshake successfully loaded from shared preferences."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v5, p0, Lcom/millennialmedia/android/as;->B:J
sub-long/2addr v0, v5
iget-wide v5, p0, Lcom/millennialmedia/android/as;->H:J
cmp-long v0, v0, v5
if-gez v0, :cond_19a
iget-object v0, p0, Lcom/millennialmedia/android/as;->z:Landroid/os/Handler;
iget-object v1, p0, Lcom/millennialmedia/android/as;->J:Ljava/lang/Runnable;
iget-wide v5, p0, Lcom/millennialmedia/android/as;->H:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
iget-wide v9, p0, Lcom/millennialmedia/android/as;->B:J
sub-long/2addr v7, v9
sub-long/2addr v5, v7
invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_19a
const-string v0, "handshake_novideostocacheurl"
const-string v1, ""
invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->C:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
iget-object v1, p0, Lcom/millennialmedia/android/as;->C:Ljava/lang/String;
invoke-static {v0, p1, v1}, Lcom/millennialmedia/android/de;->a([Lcom/millennialmedia/android/ao;Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_a
:catchall_1b1
move-exception v0
:try_start_1b2
monitor-exit p0
:try_end_1b3
.catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1
throw v0
:cond_1b4
move v2, v3
goto :goto_13a
:cond_1b6
move v0, v2
goto/16 :goto_1e
.end method
.method private g(Ljava/lang/String;)Lorg/json/JSONObject;
.registers 6
const-string v0, "HandShake"
const-string v1, "JSON String: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p1, :cond_38
:try_start_13
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "HandShake"
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "mmishake"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_38
const-string v1, "mmishake"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
:try_end_2e
.catch Lorg/json/JSONException; {:try_start_13 .. :try_end_2e} :catch_30
move-result-object v0
:goto_2f
return-object v0
:catch_30
move-exception v0
const-string v1, "HandShake"
const-string v2, "Error parsing json"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_38
const/4 v0, 0x0
goto :goto_2f
.end method
.method private g(Landroid/content/Context;)V
.registers 8
const/4 v2, 0x0
const-string v0, "MillennialMediaSettings"
invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string v0, "handshake_deferredviewtimeout"
iget-wide v4, p0, Lcom/millennialmedia/android/as;->G:J
invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_kill"
iget-boolean v1, p0, Lcom/millennialmedia/android/as;->b:Z
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_baseUrl"
sget-object v1, Lcom/millennialmedia/android/as;->I:Ljava/lang/String;
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_callback"
iget-wide v4, p0, Lcom/millennialmedia/android/as;->H:J
invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_hardwareAccelerationEnabled"
iget-boolean v1, p0, Lcom/millennialmedia/android/as;->e:Z
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_startSessionURL"
iget-object v1, p0, Lcom/millennialmedia/android/as;->f:Ljava/lang/String;
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/millennialmedia/android/as;->j:Lcom/millennialmedia/android/au;
if-eqz v0, :cond_49
const-string v0, "handshake_nuanceCredentials"
new-instance v1, Lcom/millennialmedia/a/a/f;
invoke-direct {v1}, Lcom/millennialmedia/a/a/f;-><init>()V
iget-object v4, p0, Lcom/millennialmedia/android/as;->j:Lcom/millennialmedia/android/au;
invoke-virtual {v1, v4}, Lcom/millennialmedia/a/a/f;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_49
const-string v0, "handshake_endSessionURL"
iget-object v1, p0, Lcom/millennialmedia/android/as;->g:Ljava/lang/String;
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_creativecaetimeout"
iget-wide v4, p0, Lcom/millennialmedia/android/as;->d:J
invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_mmjs"
iget-object v1, p0, Lcom/millennialmedia/android/as;->i:Ljava/lang/String;
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_68
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_82
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/millennialmedia/android/at;
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v3, v0}, Lcom/millennialmedia/android/at;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
goto :goto_68
:cond_82
monitor-enter p0
:try_start_83
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
move v1, v2
:goto_89
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_c2
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/av;
if-lez v1, :cond_a0
const-string v2, "\n"
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_a0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v5, v0, Lcom/millennialmedia/android/av;->a:Ljava/lang/String;
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, "\t"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v0, v0, Lcom/millennialmedia/android/av;->b:I
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_89
:cond_c2
const-string v0, "handshake_schemes"
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
monitor-exit p0
:try_end_cc
.catchall {:try_start_83 .. :try_end_cc} :catchall_f2
iget-object v0, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
if-eqz v0, :cond_e0
const-string v0, "handshake_cachedvideos5.0"
new-instance v1, Lcom/millennialmedia/a/a/f;
invoke-direct {v1}, Lcom/millennialmedia/a/a/f;-><init>()V
iget-object v2, p0, Lcom/millennialmedia/android/as;->m:[Lcom/millennialmedia/android/ao;
invoke-virtual {v1, v2}, Lcom/millennialmedia/a/a/f;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_e0
const-string v0, "handshake_novideostocacheurl"
iget-object v1, p0, Lcom/millennialmedia/android/as;->C:Ljava/lang/String;
invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v0, "handshake_lasthandshake"
iget-wide v1, p0, Lcom/millennialmedia/android/as;->B:J
invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:catchall_f2
move-exception v0
:try_start_f3
monitor-exit p0
:try_end_f4
.catchall {:try_start_f3 .. :try_end_f4} :catchall_f2
throw v0
.end method
.method declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)V
.registers 7
monitor-enter p0
if-eqz p2, :cond_32
:try_start_3
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
const-string v0, "NULL"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
:cond_11
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/as;->c:Ljava/lang/String;
:goto_14
iget-object v0, p0, Lcom/millennialmedia/android/as;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/String;)V
if-eqz p3, :cond_30
const-string v0, "MillennialMediaSettings"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "handshake_mmdid"
iget-object v2, p0, Lcom/millennialmedia/android/as;->c:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_30
:try_end_30
.catchall {:try_start_3 .. :try_end_30} :catchall_35
monitor-exit p0
return-void
:cond_32
:try_start_32
iput-object p2, p0, Lcom/millennialmedia/android/as;->c:Ljava/lang/String;
:try_end_34
.catchall {:try_start_32 .. :try_end_34} :catchall_35
goto :goto_14
:catchall_35
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(Ljava/lang/String;J)Z
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_11
invoke-virtual {v0, p2, p3}, Lcom/millennialmedia/android/at;->a(J)Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_13
move-result v0
:goto_f
monitor-exit p0
return v0
:cond_11
const/4 v0, 0x1
goto :goto_f
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->F:Ljava/lang/String;
if-nez v0, :cond_62
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_62
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_18
:goto_18
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/av;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/av;->a(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_18
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v3
if-lez v3, :cond_4c
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v0, v0, Lcom/millennialmedia/android/av;->b:I
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_48
.catchall {:try_start_1 .. :try_end_48} :catchall_49
goto :goto_18
:catchall_49
move-exception v0
monitor-exit p0
throw v0
:try_start_4c
:cond_4c
iget v0, v0, Lcom/millennialmedia/android/av;->b:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
:cond_56
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_62
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/as;->F:Ljava/lang/String;
:cond_62
iget-object v0, p0, Lcom/millennialmedia/android/as;->F:Ljava/lang/String;
:try_end_64
.catchall {:try_start_4c .. :try_end_64} :catchall_49
monitor-exit p0
return-object v0
.end method
.method  b()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/millennialmedia/android/as;->a(Z)V
return-void
.end method
.method declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_11
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/at;->a(Landroid/content/Context;)Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_13
move-result v0
:goto_f
monitor-exit p0
return v0
:cond_11
const/4 v0, 0x1
goto :goto_f
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized c(Landroid/content/Context;)Lorg/json/JSONArray;
.registers 8
monitor-enter p0
:try_start_1
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_49
iget-object v0, p0, Lcom/millennialmedia/android/as;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_14
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/av;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/av;->a(Landroid/content/Context;)Z
:try_end_23
.catchall {:try_start_1 .. :try_end_23} :catchall_46
move-result v3
if-eqz v3, :cond_14
:try_start_26
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v4, "scheme"
iget-object v5, v0, Lcom/millennialmedia/android/av;->a:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "schemeid"
iget v0, v0, Lcom/millennialmedia/android/av;->b:I
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_3c
.catchall {:try_start_26 .. :try_end_3c} :catchall_46
.catch Lorg/json/JSONException; {:try_start_26 .. :try_end_3c} :catch_3d
goto :goto_14
:catch_3d
move-exception v0
:try_start_3e
const-string v3, "HandShake"
const-string v4, "Json error getting scheme"
invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_45
.catchall {:try_start_3e .. :try_end_45} :catchall_46
goto :goto_14
:catchall_46
move-exception v0
monitor-exit p0
throw v0
:cond_49
monitor-exit p0
return-object v1
.end method
.method  c()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/millennialmedia/android/as;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/millennialmedia/android/di;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_e
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/at;->a(Landroid/content/Context;Ljava/lang/String;)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
:cond_e
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized c(Ljava/lang/String;)Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_f
iget-boolean v0, v0, Lcom/millennialmedia/android/at;->c:Z
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_11
:goto_d
monitor-exit p0
return v0
:cond_f
const/4 v0, 0x0
goto :goto_d
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method  d()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as;->g:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_d
iget-object v0, p0, Lcom/millennialmedia/android/as;->g:Ljava/lang/String;
invoke-static {v0}, Lcom/millennialmedia/android/di;->a(Ljava/lang/String;)V
:cond_d
return-void
.end method
.method  d(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;Ljava/lang/String;Z)V
return-void
.end method
.method declared-synchronized d(Ljava/lang/String;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_e
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/millennialmedia/android/at;->c:Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
:cond_e
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized e(Ljava/lang/String;)V
.registers 4
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/as;->D:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/at;
if-eqz v0, :cond_e
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/millennialmedia/android/at;->c:Z
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_10
:cond_e
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
throw v0
.end method