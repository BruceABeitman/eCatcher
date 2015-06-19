.class public final Lcom/mixpanel/android/mpmetrics/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final k:Ljava/util/Map;
.field private static final l:Lcom/mixpanel/android/mpmetrics/t;
.field private static m:Ljava/util/concurrent/Future;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/mixpanel/android/mpmetrics/a;
.field private final c:Ljava/lang/String;
.field private final d:Lcom/mixpanel/android/mpmetrics/p;
.field private final e:Lcom/mixpanel/android/mpmetrics/r;
.field private final f:Ljava/lang/Object;
.field private g:I
.field private h:Landroid/graphics/Bitmap;
.field private i:I
.field private final j:Lcom/mixpanel/android/mpmetrics/m;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
new-instance v0, Lcom/mixpanel/android/mpmetrics/t;
invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/t;-><init>()V
sput-object v0, Lcom/mixpanel/android/mpmetrics/l;->l:Lcom/mixpanel/android/mpmetrics/t;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V
.registers 8
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->f:Ljava/lang/Object;
const/4 v0, -0x1
iput v0, p0, Lcom/mixpanel/android/mpmetrics/l;->g:I
new-instance v0, Lcom/mixpanel/android/mpmetrics/m;
invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/m;-><init>(B)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->j:Lcom/mixpanel/android/mpmetrics/m;
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/l;->c:Ljava/lang/String;
new-instance v0, Lcom/mixpanel/android/mpmetrics/p;
invoke-direct {v0, p0, v1}, Lcom/mixpanel/android/mpmetrics/p;-><init>(Lcom/mixpanel/android/mpmetrics/l;B)V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->d:Lcom/mixpanel/android/mpmetrics/p;
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/a;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
new-instance v0, Lcom/mixpanel/android/mpmetrics/l$1;
invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/l$1;-><init>(Lcom/mixpanel/android/mpmetrics/l;)V
sget-object v1, Lcom/mixpanel/android/mpmetrics/l;->l:Lcom/mixpanel/android/mpmetrics/t;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "com.mixpanel.android.mpmetrics.MixpanelAPI_"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, p1, v2, v0}, Lcom/mixpanel/android/mpmetrics/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/v;)Ljava/util/concurrent/Future;
move-result-object v0
new-instance v1, Lcom/mixpanel/android/mpmetrics/r;
invoke-direct {v1, p2, v0}, Lcom/mixpanel/android/mpmetrics/r;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_75
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/j;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/j;->k()Z
move-result v0
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
instance-of v0, v0, Landroid/app/Application;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Landroid/app/Application;
new-instance v1, Lcom/mixpanel/android/mpmetrics/q;
invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/q;-><init>(Lcom/mixpanel/android/mpmetrics/l;)V
invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
:cond_75
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/l;I)I
.registers 2
iput p1, p0, Lcom/mixpanel/android/mpmetrics/l;->i:I
return p1
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->h:Landroid/graphics/Bitmap;
return-object p1
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/l;
.registers 7
const/4 v0, 0x0
if-eqz p1, :cond_5
if-nez p0, :cond_6
:goto_5
:cond_5
return-object v0
:cond_6
sget-object v2, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
monitor-enter v2
:try_start_9
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
sget-object v0, Lcom/mixpanel/android/mpmetrics/l;->m:Ljava/util/concurrent/Future;
if-nez v0, :cond_1c
sget-object v0, Lcom/mixpanel/android/mpmetrics/l;->l:Lcom/mixpanel/android/mpmetrics/t;
const-string v1, "com.mixpanel.android.mpmetrics.ReferralInfo"
const/4 v4, 0x0
invoke-virtual {v0, p0, v1, v4}, Lcom/mixpanel/android/mpmetrics/t;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/v;)Ljava/util/concurrent/Future;
move-result-object v0
sput-object v0, Lcom/mixpanel/android/mpmetrics/l;->m:Ljava/util/concurrent/Future;
:cond_1c
sget-object v0, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_48
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sget-object v1, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_31
invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/l;
if-nez v0, :cond_43
new-instance v0, Lcom/mixpanel/android/mpmetrics/l;
sget-object v4, Lcom/mixpanel/android/mpmetrics/l;->m:Ljava/util/concurrent/Future;
invoke-direct {v0, v3, v4, p1}, Lcom/mixpanel/android/mpmetrics/l;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_43
monitor-exit v2
:try_end_44
.catchall {:try_start_9 .. :try_end_44} :catchall_45
goto :goto_5
:catchall_45
move-exception v0
monitor-exit v2
throw v0
:cond_48
move-object v1, v0
goto :goto_31
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/r;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
return-object v0
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONArray;)V
.registers 6
const/4 v0, 0x0
:goto_1
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v0, v1, :cond_1c
:try_start_7
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
invoke-virtual {v2, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lorg/json/JSONObject;)V
:goto_10
:try_end_10
.catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_13
add-int/lit8 v0, v0, 0x1
goto :goto_1
:catch_13
move-exception v1
const-string v2, "MixpanelAPI"
const-string v3, "Malformed people record stored pending identity, will not send it."
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_10
:cond_1c
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/l;Lorg/json/JSONObject;)V
.registers 3
const-string v0, "$distinct_id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lorg/json/JSONObject;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/r;->a(Lorg/json/JSONObject;)V
goto :goto_d
.end method
.method static a(Lcom/mixpanel/android/mpmetrics/n;)V
.registers 5
sget-object v1, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/mixpanel/android/mpmetrics/l;->k:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_21
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/l;
invoke-interface {p0, v0}, Lcom/mixpanel/android/mpmetrics/n;->a(Lcom/mixpanel/android/mpmetrics/l;)V
:try_end_30
.catchall {:try_start_3 .. :try_end_30} :catchall_31
goto :goto_21
:catchall_31
move-exception v0
monitor-exit v1
throw v0
:cond_34
:try_start_34
monitor-exit v1
:try_end_35
.catchall {:try_start_34 .. :try_end_35} :catchall_31
return-void
.end method
.method static synthetic b(Lcom/mixpanel/android/mpmetrics/l;I)I
.registers 2
iput p1, p0, Lcom/mixpanel/android/mpmetrics/l;->g:I
return p1
.end method
.method static synthetic b(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/m;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->j:Lcom/mixpanel/android/mpmetrics/m;
return-object v0
.end method
.method static synthetic c(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/mixpanel/android/mpmetrics/l;)Lcom/mixpanel/android/mpmetrics/a;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
return-object v0
.end method
.method static synthetic e(Lcom/mixpanel/android/mpmetrics/l;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->f:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic f(Lcom/mixpanel/android/mpmetrics/l;)I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/l;->g:I
return v0
.end method
.method static synthetic g(Lcom/mixpanel/android/mpmetrics/l;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->h:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic h(Lcom/mixpanel/android/mpmetrics/l;)I
.registers 2
iget v0, p0, Lcom/mixpanel/android/mpmetrics/l;->i:I
return v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/a;->a()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/r;->a(Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
.registers 8
:try_start_0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_2e
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f
goto :goto_13
:catch_2f
move-exception v0
const-string v1, "MixpanelAPI"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Exception tracking event "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_44
return-void
:try_start_45
:cond_45
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->a()Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_4f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_4f
:cond_63
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v3, 0x3e8
div-long/2addr v0, v3
const-string v3, "time"
invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "distinct_id"
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->e:Lcom/mixpanel/android/mpmetrics/r;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/r;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v1
:goto_7e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_92
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_7e
:cond_92
new-instance v0, Lcom/mixpanel/android/mpmetrics/b;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->c:Ljava/lang/String;
invoke-direct {v0, p1, v2, v1}, Lcom/mixpanel/android/mpmetrics/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/a;
invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/b;)V
:try_end_9e
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_9e} :catch_2f
goto :goto_44
.end method
.method public final b()Lcom/mixpanel/android/mpmetrics/o;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/l;->d:Lcom/mixpanel/android/mpmetrics/p;
return-object v0
.end method