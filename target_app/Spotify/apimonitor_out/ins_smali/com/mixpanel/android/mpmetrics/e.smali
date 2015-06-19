.class final Lcom/mixpanel/android/mpmetrics/e;
.super Landroid/os/Handler;
.source "SourceFile"
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/d;
.field private b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.field private final c:Ljava/util/Set;
.field private d:J
.field private e:Z
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/d;Landroid/os/Looper;)V
.registers 5
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->c:Ljava/util/Set;
iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/j;->d()Z
move-result v0
iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z
iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/j;->b()I
move-result v0
int-to-long v0, v0
iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
new-instance v0, Lcom/mixpanel/android/mpmetrics/y;
iget-object v1, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/y;-><init>(Landroid/content/Context;)V
invoke-static {p1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;Lcom/mixpanel/android/mpmetrics/y;)Lcom/mixpanel/android/mpmetrics/y;
return-void
.end method
.method private a(Lcom/mixpanel/android/mpmetrics/c;)Lcom/mixpanel/android/mpmetrics/Survey;
.registers 9
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/c;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/c;->b()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_10
:goto_f
return-object v2
:cond_10
:try_start_10
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v3, "surveys"
invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
:try_end_1a
.catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1a} :catch_44
move-result-object v4
const/4 v0, 0x0
move v3, v0
move-object v1, v2
:goto_1e
if-nez v1, :cond_90
invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
move-result v0
if-ge v3, v0, :cond_90
:try_start_26
invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v5
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey;
invoke-direct {v0, v5}, Lcom/mixpanel/android/mpmetrics/Survey;-><init>(Lorg/json/JSONObject;)V
iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/e;->c:Ljava/util/Set;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
:try_end_3c
.catch Lorg/json/JSONException; {:try_start_26 .. :try_end_3c} :catch_5a
.catch Lcom/mixpanel/android/mpmetrics/Survey$BadSurveyException; {:try_start_26 .. :try_end_3c} :catch_75
move-result v5
if-nez v5, :cond_93
:goto_3f
add-int/lit8 v1, v3, 0x1
move v3, v1
move-object v1, v0
goto :goto_1e
:catch_44
move-exception v1
const-string v1, "MixpanelAPI"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Mixpanel endpoint returned invalid JSON "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_f
:catch_5a
move-exception v0
const-string v0, "MixpanelAPI"
new-instance v1, Ljava/lang/StringBuilder;
const-string v5, "Received a strange response from surveys service: "
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v2
goto :goto_3f
:catch_75
move-exception v0
const-string v0, "MixpanelAPI"
new-instance v1, Ljava/lang/StringBuilder;
const-string v5, "Received a strange response from surveys service: "
invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v2
goto :goto_3f
:cond_90
move-object v2, v1
goto/16 :goto_f
:cond_93
move-object v0, v1
goto :goto_3f
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
const-string v0, "utf-8"
invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "utf-8"
invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_75
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "?version=1&lib=android&token="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "&distinct_id="
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v2
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/j;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v3
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/j;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->b()Lcom/mixpanel/android/mpmetrics/ServerMessage;
move-result-object v2
invoke-virtual {v2, v1, v0}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/s;->a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-result-object v1
sget-object v2, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-eq v1, v2, :cond_7e
const/4 v0, 0x0
:goto_74
return-object v0
:catch_75
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Mixpanel library requires utf-8 string encoding to be available"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_7e
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/s;->b()Ljava/lang/String;
move-result-object v0
goto :goto_74
.end method
.method private a(Lcom/mixpanel/android/mpmetrics/b;)Lorg/json/JSONObject;
.registers 8
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->b()Lorg/json/JSONObject;
move-result-object v2
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
const-string v0, "mp_lib"
const-string v4, "android"
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$lib_version"
const-string v4, "4.0.0"
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$os"
const-string v4, "Android"
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "$os_version"
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
if-nez v0, :cond_11b
const-string v0, "UNKNOWN"
:goto_2b
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "$manufacturer"
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
if-nez v0, :cond_11f
const-string v0, "UNKNOWN"
:goto_36
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "$brand"
sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
if-nez v0, :cond_123
const-string v0, "UNKNOWN"
:goto_41
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v4, "$model"
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
if-nez v0, :cond_127
const-string v0, "UNKNOWN"
:goto_4c
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->d()Landroid/util/DisplayMetrics;
move-result-object v0
const-string v4, "$screen_dpi"
iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v4, "$screen_height"
iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v4, "$screen_width"
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7f
const-string v4, "$app_version"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_7f
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->b()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_98
const-string v4, "$has_nfc"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_98
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->c()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_b1
const-string v4, "$has_telephone"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_b1
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_c2
const-string v4, "$carrier"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_c2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->f()Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_d7
const-string v4, "$wifi"
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_d7
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
invoke-static {}, Lcom/mixpanel/android/mpmetrics/y;->g()Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_e7
const-string v4, "$bluetooth_enabled"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_e7
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/y;->h()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_f8
const-string v4, "$bluetooth_version"
invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_f8
const-string v0, "token"
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz v2, :cond_12b
invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v4
:goto_107
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_12b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_107
:cond_11b
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
goto/16 :goto_2b
:cond_11f
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
goto/16 :goto_36
:cond_123
sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;
goto/16 :goto_41
:cond_127
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
goto/16 :goto_4c
:cond_12b
const-string v0, "event"
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "properties"
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-object v1
.end method
.method private a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/e;->a()Z
move-result v0
if-eqz v0, :cond_72
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v1, "Sending records to Mixpanel"
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z
if-eqz v0, :cond_37
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/j;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/j;->f()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;Ljava/lang/String;Ljava/lang/String;)V
:goto_36
return-void
:cond_37
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/j;->e()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v2
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/j;->h()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/j;->f()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v2
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/j;->i()Ljava/lang/String;
move-result-object v2
invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36
:cond_72
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v1, "Can\'t send data to mixpanel, because the device is not connected to the internet"
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
goto :goto_36
.end method
.method private a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;Ljava/lang/String;Ljava/lang/String;)V
.registers 10
invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4f
const/4 v1, 0x0
aget-object v1, v0, v1
const/4 v2, 0x1
aget-object v0, v0, v2
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->b()Lcom/mixpanel/android/mpmetrics/ServerMessage;
move-result-object v2
invoke-virtual {v2, v0, p3, p4}, Lcom/mixpanel/android/mpmetrics/ServerMessage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/s;
move-result-object v2
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/s;->a()Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
move-result-object v2
sget-object v3, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->a:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-ne v2, v3, :cond_50
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Posted to "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Sent Message\n"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
:cond_4c
invoke-virtual {p1, v1, p2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
:goto_4f
:cond_4f
return-void
:cond_50
sget-object v0, Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;->b:Lcom/mixpanel/android/mpmetrics/ServerMessage$Status;
if-ne v2, v0, :cond_4c
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_4f
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v0
iget-wide v1, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
invoke-virtual {p0, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->sendEmptyMessageDelayed(IJ)Z
goto :goto_4f
.end method
.method private a()Z
.registers 4
const/4 v1, 0x1
:try_start_1
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;
move-result-object v0
const-string v2, "connectivity"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
:try_end_1a
.catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1a} :catch_21
move-result v0
if-eqz v0, :cond_1f
move v0, v1
:goto_1e
return v0
:cond_1f
const/4 v0, 0x0
goto :goto_1e
:catch_21
move-exception v0
move v0, v1
goto :goto_1e
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 8
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
if-nez v0, :cond_48
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v3
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/j;->c()I
move-result v3
int-to-long v3, v3
sub-long/2addr v1, v3
sget-object v3, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v3
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/j;->c()I
move-result v3
int-to-long v3, v3
sub-long/2addr v1, v3
sget-object v3, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v0, v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(JLcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)V
:cond_48
const/4 v2, -0x1
:try_start_49
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->c()I
move-result v1
if-ne v0, v1, :cond_9b
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Long;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Changing flush interval to "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v0
invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->removeMessages(I)V
move v0, v2
:goto_79
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/j;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/j;->a()I
move-result v1
if-lt v0, v1, :cond_22c
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v1, "Flushing queue due to bulk upload limit"
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V
:goto_9a
:cond_9a
return-void
:cond_9b
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->e()I
move-result v1
if-ne v0, v1, :cond_c5
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Ljava/lang/Boolean;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Setting fallback to "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z
move v0, v2
goto :goto_79
:cond_c5
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->f()I
move-result v1
if-ne v0, v1, :cond_fe
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v2, "Queuing people record for sending later"
invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "    "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
sget-object v2, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v1, v0, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I
move-result v0
goto/16 :goto_79
:cond_fe
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->g()I
move-result v1
if-ne v0, v1, :cond_157
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/mixpanel/android/mpmetrics/b;
:try_start_10a
:try_end_10a
.catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_10a} :catch_1ed
invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/b;)Lorg/json/JSONObject;
move-result-object v1
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v4, "Queuing event for sending later"
invoke-static {v3, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "    "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
sget-object v4, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->a:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
invoke-virtual {v3, v1, v4}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;)I
:try_end_138
.catch Lorg/json/JSONException; {:try_start_10a .. :try_end_138} :catch_13b
.catch Ljava/lang/RuntimeException; {:try_start_10a .. :try_end_138} :catch_1ed
move-result v0
goto/16 :goto_79
:catch_13b
move-exception v1
:try_start_13c
const-string v3, "MixpanelAPI"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Exception tracking event "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/b;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move v0, v2
goto/16 :goto_79
:cond_157
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v1
if-ne v0, v1, :cond_175
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v1, "Flushing queue due to scheduled or forced flush"
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;)V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/MPDbAdapter;)V
move v0, v2
goto/16 :goto_79
:cond_175
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->h()I
move-result v1
if-ne v0, v1, :cond_1aa
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
const-string v1, "Checking Mixpanel for available surveys"
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/mixpanel/android/mpmetrics/c;
invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/c;)Lcom/mixpanel/android/mpmetrics/Survey;
move-result-object v1
new-instance v3, Lcom/mixpanel/android/mpmetrics/e$1;
invoke-direct {v3, p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/e$1;-><init>(Lcom/mixpanel/android/mpmetrics/e;Lcom/mixpanel/android/mpmetrics/c;Lcom/mixpanel/android/mpmetrics/Survey;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_19f
invoke-static {v3}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
move v0, v2
goto/16 :goto_79
:cond_19f
new-instance v0, Ljava/lang/Thread;
invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->run()V
move v0, v2
goto/16 :goto_79
:cond_1aa
iget v0, p1, Landroid/os/Message;->what:I
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->i()I
move-result v1
if-ne v0, v1, :cond_215
const-string v0, "MixpanelAPI"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Worker received a hard kill. Dumping all events and force-killing. Thread id "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Thread;->getId()J
move-result-wide v3
invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->b(Lcom/mixpanel/android/mpmetrics/d;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_end_1d5
.catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_1d5} :catch_1ed
:try_start_1d5
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter;->a()V
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->c(Lcom/mixpanel/android/mpmetrics/d;)Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
monitor-exit v1
:try_end_1e7
.catchall {:try_start_1d5 .. :try_end_1e7} :catchall_1ea
move v0, v2
goto/16 :goto_79
:catchall_1ea
move-exception v0
:try_start_1eb
monitor-exit v1
throw v0
:try_end_1ed
.catch Ljava/lang/RuntimeException; {:try_start_1eb .. :try_end_1ed} :catch_1ed
:catch_1ed
move-exception v0
const-string v1, "MixpanelAPI"
const-string v2, "Worker threw an unhandled exception"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/d;->b(Lcom/mixpanel/android/mpmetrics/d;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_1fc
iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/d;->c(Lcom/mixpanel/android/mpmetrics/d;)Landroid/os/Handler;
:try_end_201
.catchall {:try_start_1fc .. :try_end_201} :catchall_212
:try_start_201
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v2
invoke-virtual {v2}, Landroid/os/Looper;->quit()V
const-string v2, "MixpanelAPI"
const-string v3, "Mixpanel will not process any more analytics messages"
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_20f
:try_start_20f
:try_end_20f
.catchall {:try_start_201 .. :try_end_20f} :catchall_212
.catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20f} :catch_26d
monitor-exit v1
:try_end_210
.catchall {:try_start_20f .. :try_end_210} :catchall_212
goto/16 :goto_9a
:catchall_212
move-exception v0
monitor-exit v1
throw v0
:try_start_215
:cond_215
const-string v0, "MixpanelAPI"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Unexpected message received by Mixpanel worker: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move v0, v2
goto/16 :goto_79
:cond_22c
if-lez v0, :cond_9a
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v1
invoke-virtual {p0, v1}, Lcom/mixpanel/android/mpmetrics/e;->hasMessages(I)Z
move-result v1
if-nez v1, :cond_9a
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;
iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Queue depth "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " - Adding flush in "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
iget-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_9a
invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I
move-result v0
iget-wide v1, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J
invoke-virtual {p0, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->sendEmptyMessageDelayed(IJ)Z
:try_end_26b
.catch Ljava/lang/RuntimeException; {:try_start_215 .. :try_end_26b} :catch_1ed
goto/16 :goto_9a
:catch_26d
move-exception v0
:try_start_26e
const-string v2, "MixpanelAPI"
const-string v3, "Could not halt looper"
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_275
.catchall {:try_start_26e .. :try_end_275} :catchall_212
goto :goto_20f
.end method