.class public final Lcom/c/a/a/j;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"
.field private static final c:Ljava/text/DateFormat;
.field private static d:Ljava/util/Map;
.field public final a:Lcom/c/a/a/l;
.field public b:Ljava/lang/String;
.field private final e:Landroid/content/Context;
.field private final f:Lcom/c/a/a/m;
.field private final g:Lcom/c/a/a/a;
.field private final h:Ljava/lang/String;
.field private final i:Landroid/content/SharedPreferences;
.field private j:Lorg/json/JSONObject;
.field private k:Ljava/lang/String;
.field private l:Lcom/c/a/a/n;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/c/a/a/j;->c:Ljava/text/DateFormat;
const-string v1, "UTC"
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/c/a/a/j;->d:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 7
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/c/a/a/j;->e:Landroid/content/Context;
iput-object p2, p0, Lcom/c/a/a/j;->h:Ljava/lang/String;
new-instance v0, Lcom/c/a/a/l;
invoke-direct {v0, p0, v2}, Lcom/c/a/a/l;-><init>(Lcom/c/a/a/j;B)V
iput-object v0, p0, Lcom/c/a/a/j;->a:Lcom/c/a/a/l;
iget-object v0, p0, Lcom/c/a/a/j;->e:Landroid/content/Context;
invoke-static {v0}, Lcom/c/a/a/a;->a(Landroid/content/Context;)Lcom/c/a/a/a;
move-result-object v0
iput-object v0, p0, Lcom/c/a/a/j;->g:Lcom/c/a/a/a;
new-instance v0, Lcom/c/a/a/m;
iget-object v1, p0, Lcom/c/a/a/j;->e:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/c/a/a/m;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "com.mixpanel.android.mpmetrics.MixpanelAPI_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
iget-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
const-string v1, "super_properties"
const-string v2, "{}"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_40
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/c/a/a/j;->j:Lorg/json/JSONObject;
:goto_47
:try_end_47
.catch Lorg/json/JSONException; {:try_start_40 .. :try_end_47} :catch_90
iget-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
const-string v1, "events_distinct_id"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/c/a/a/j;->b:Ljava/lang/String;
iget-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
const-string v1, "people_distinct_id"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
iput-object v3, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
iget-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
const-string v1, "waiting_people_record"
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_73
:try_start_67
new-instance v1, Lcom/c/a/a/n;
invoke-direct {v1}, Lcom/c/a/a/n;-><init>()V
iput-object v1, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
iget-object v1, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
invoke-virtual {v1, v0}, Lcom/c/a/a/n;->a(Ljava/lang/String;)V
:try_end_73
.catch Lorg/json/JSONException; {:try_start_67 .. :try_end_73} :catch_b4
:cond_73
:goto_73
iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/lang/String;
if-nez v0, :cond_84
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/c/a/a/j;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/c/a/a/j;->b()V
:cond_84
iget-object v0, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
if-eqz v0, :cond_8f
iget-object v0, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
if-eqz v0, :cond_8f
invoke-direct {p0}, Lcom/c/a/a/j;->c()V
:cond_8f
return-void
:catch_90
move-exception v0
const-string v0, "MixpanelAPI"
const-string v1, "Cannot parse stored superProperties"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/c/a/a/j;->j:Lorg/json/JSONObject;
iget-object v0, p0, Lcom/c/a/a/j;->j:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "super_properties"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_47
:catch_b4
move-exception v1
const-string v1, "MixpanelAPI"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not interpret waiting people JSON record "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_73
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/c/a/a/j;
.registers 6
sget-object v2, Lcom/c/a/a/j;->d:Ljava/util/Map;
monitor-enter v2
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v3
sget-object v0, Lcom/c/a/a/j;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-nez v0, :cond_31
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sget-object v1, Lcom/c/a/a/j;->d:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v1, v0
:goto_1c
invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/a/j;
if-nez v0, :cond_2c
new-instance v0, Lcom/c/a/a/j;
invoke-direct {v0, v3, p1}, Lcom/c/a/a/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
monitor-exit v2
:try_end_2d
.catchall {:try_start_3 .. :try_end_2d} :catchall_2e
return-object v0
:catchall_2e
move-exception v0
monitor-exit v2
throw v0
:cond_31
move-object v1, v0
goto :goto_1c
.end method
.method static synthetic a(Lcom/c/a/a/j;Lcom/c/a/a/n;)Lcom/c/a/a/n;
.registers 2
iput-object p1, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
return-object p1
.end method
.method static synthetic a(Lcom/c/a/a/j;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
return-object p1
.end method
.method public static a(Landroid/content/Context;)V
.registers 4
invoke-static {p0}, Lcom/c/a/a/a;->a(Landroid/content/Context;)Lcom/c/a/a/a;
move-result-object v0
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
sget v2, Lcom/c/a/a/a;->d:I
iput v2, v1, Landroid/os/Message;->what:I
const/4 v2, 0x0
iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, v0, Lcom/c/a/a/a;->a:Lcom/c/a/a/b;
invoke-virtual {v0, v1}, Lcom/c/a/a/b;->a(Landroid/os/Message;)V
return-void
.end method
.method static synthetic a(Lcom/c/a/a/j;)V
.registers 1
invoke-virtual {p0}, Lcom/c/a/a/j;->b()V
return-void
.end method
.method static synthetic b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
.registers 2
iget-object v0, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
return-object v0
.end method
.method private c()V
.registers 7
iget-object v0, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
if-eqz v0, :cond_52
iget-object v0, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
iget-object v0, v0, Lcom/c/a/a/n;->a:Lorg/json/JSONObject;
iget-object v1, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
iget-object v1, v1, Lcom/c/a/a/n;->b:Ljava/util/Map;
iget-object v2, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
iget-object v2, v2, Lcom/c/a/a/n;->c:Ljava/util/List;
iget-object v3, p0, Lcom/c/a/a/j;->a:Lcom/c/a/a/l;
invoke-interface {v3, v0}, Lcom/c/a/a/k;->a(Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/c/a/a/j;->a:Lcom/c/a/a/l;
invoke-interface {v0, v1}, Lcom/c/a/a/k;->a(Ljava/util/Map;)V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_22
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lorg/json/JSONObject;
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_33
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
:try_start_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
iget-object v5, p0, Lcom/c/a/a/j;->a:Lcom/c/a/a/l;
invoke-interface {v5, v0, v4}, Lcom/c/a/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_48
.catch Lorg/json/JSONException; {:try_start_39 .. :try_end_48} :catch_49
goto :goto_33
:catch_49
move-exception v0
const-string v4, "MixpanelAPI"
const-string v5, "Couldn\'t send stored append"
invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_33
:cond_52
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
invoke-virtual {p0}, Lcom/c/a/a/j;->b()V
return-void
.end method
.method static synthetic c(Lcom/c/a/a/j;)V
.registers 1
invoke-direct {p0}, Lcom/c/a/a/j;->c()V
return-void
.end method
.method static synthetic d(Lcom/c/a/a/j;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
return-object v0
.end method
.method static synthetic e(Lcom/c/a/a/j;)Lcom/c/a/a/a;
.registers 2
iget-object v0, p0, Lcom/c/a/a/j;->g:Lcom/c/a/a/a;
return-object v0
.end method
.method static synthetic f(Lcom/c/a/a/j;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/c/a/a/j;->h:Ljava/lang/String;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/c/a/a/j;->g:Lcom/c/a/a/a;
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
sget v2, Lcom/c/a/a/a;->c:I
iput v2, v1, Landroid/os/Message;->what:I
iget-object v0, v0, Lcom/c/a/a/a;->a:Lcom/c/a/a/b;
invoke-virtual {v0, v1}, Lcom/c/a/a/b;->a(Landroid/os/Message;)V
return-void
.end method
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
.registers 11
const/4 v1, 0x0
:try_start_1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string v0, "event"
invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v0, "mp_lib"
const-string v6, "android"
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$lib_version"
const-string v6, "3.3.0"
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$os"
const-string v6, "Android"
invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "$os_version"
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
if-nez v0, :cond_12f
const-string v0, "UNKNOWN"
:goto_34
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "$manufacturer"
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
if-nez v0, :cond_133
const-string v0, "UNKNOWN"
:goto_3f
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "$brand"
sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
if-nez v0, :cond_137
const-string v0, "UNKNOWN"
:goto_4a
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "$model"
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
if-nez v0, :cond_13b
const-string v0, "UNKNOWN"
:goto_55
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v0, v0, Lcom/c/a/a/m;->d:Landroid/util/DisplayMetrics;
const-string v6, "$screen_dpi"
iget v7, v0, Landroid/util/DisplayMetrics;->densityDpi:I
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v6, "$screen_height"
iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v6, "$screen_width"
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v0, v0, Lcom/c/a/a/m;->e:Ljava/lang/String;
if-eqz v0, :cond_7c
const-string v6, "$app_version"
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_7c
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v0, v0, Lcom/c/a/a/m;->b:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_93
const-string v6, "$has_nfc"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_93
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v0, v0, Lcom/c/a/a/m;->c:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_aa
const-string v6, "$has_telephone"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_aa
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v0, v0, Lcom/c/a/a/m;->a:Landroid/content/Context;
const-string v6, "phone"
invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
if-eqz v0, :cond_17c
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
move-result-object v0
:goto_bc
if-eqz v0, :cond_c3
const-string v6, "$carrier"
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_c3
iget-object v0, p0, Lcom/c/a/a/j;->f:Lcom/c/a/a/m;
iget-object v6, v0, Lcom/c/a/a/m;->a:Landroid/content/Context;
const-string v7, "android.permission.ACCESS_NETWORK_STATE"
invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v6
if-nez v6, :cond_179
iget-object v0, v0, Lcom/c/a/a/m;->a:Landroid/content/Context;
const-string v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_e6
if-eqz v0, :cond_f1
const-string v1, "$wifi"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_f1
const-string v0, "token"
iget-object v1, p0, Lcom/c/a/a/j;->h:Ljava/lang/String;
invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "time"
invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/c/a/a/j;->j:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v1
:goto_103
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_13f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/c/a/a/j;->j:Lorg/json/JSONObject;
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_118
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_118} :catch_119
goto :goto_103
:catch_119
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
:goto_12e
return-void
:try_start_12f
:cond_12f
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
goto/16 :goto_34
:cond_133
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
goto/16 :goto_3f
:cond_137
sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
goto/16 :goto_4a
:cond_13b
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
goto/16 :goto_55
:cond_13f
iget-object v0, p0, Lcom/c/a/a/j;->b:Ljava/lang/String;
if-eqz v0, :cond_148
const-string v1, "distinct_id"
invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_148
if-eqz p2, :cond_162
invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v1
:goto_14e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_162
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_14e
:cond_162
const-string v0, "properties"
invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/c/a/a/j;->g:Lcom/c/a/a/a;
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
sget v2, Lcom/c/a/a/a;->b:I
iput v2, v1, Landroid/os/Message;->what:I
iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, v0, Lcom/c/a/a/a;->a:Lcom/c/a/a/b;
invoke-virtual {v0, v1}, Lcom/c/a/a/b;->a(Landroid/os/Message;)V
:try_end_178
.catch Lorg/json/JSONException; {:try_start_12f .. :try_end_178} :catch_119
goto :goto_12e
:cond_179
move-object v0, v1
goto/16 :goto_e6
:cond_17c
move-object v0, v1
goto/16 :goto_bc
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/c/a/a/j;->i:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "events_distinct_id"
iget-object v2, p0, Lcom/c/a/a/j;->b:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string v1, "people_distinct_id"
iget-object v2, p0, Lcom/c/a/a/j;->k:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
iget-object v1, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
if-nez v1, :cond_21
const-string v1, "waiting_people_record"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:goto_1d
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
:cond_21
const-string v1, "waiting_people_record"
iget-object v2, p0, Lcom/c/a/a/j;->l:Lcom/c/a/a/n;
invoke-virtual {v2}, Lcom/c/a/a/n;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto :goto_1d
.end method