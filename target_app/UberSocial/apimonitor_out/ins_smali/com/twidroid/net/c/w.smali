.class public Lcom/twidroid/net/c/w;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "demographicsPrefs"
.field static final b:Ljava/lang/String; = "keywords"
.field private static final c:Ljava/lang/String; = "https://reg20.ubermedia.com/v2/register"
.field private static final d:Ljava/lang/String; = "UberSocialCheckInService"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;)Landroid/net/Uri;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://bb.ubersocial.com/android/purchase.php?bb_pin="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p0}, Lcom/twidroid/net/c/w;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string v0, "demographicsPrefs"
const/4 v2, 0x0
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_24
const-string v4, ""
invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e
goto :goto_18
:catch_2e
move-exception v0
goto :goto_18
:cond_30
const-string v0, "keywords"
invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6d
const-string v0, "keywords"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "keywords"
invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-class v3, Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_6c
return-object v1
:cond_6d
const-string v0, "keywords"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-class v3, Lcom/twidroid/activity/UberSocialBaseActivity;
invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ","
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6c
.end method
.method private static a()V
.registers 0
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/twidroid/b/a/b;Lcom/twidroid/d/v;Lcom/twidroid/v;)V
.registers 15
:try_start_0
invoke-static {p2, p1, p3}, Lcom/twidroid/net/c/w;->a(Lcom/twidroid/d/v;Lcom/twidroid/b/a/b;Lcom/twidroid/v;)V
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_1e4
:goto_3
invoke-static {p0}, Lcom/twidroid/net/c/w;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
invoke-static {p0}, Lcom/twidroid/d/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_1ea
invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:goto_19
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
sget-boolean v1, Lcom/twidroid/y;->a:Z
if-nez v1, :cond_2af
invoke-static {p0}, Lcom/twidroid/d/b;->b(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_1ef
const/4 v0, 0x1
:goto_29
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
move-object v1, v0
:goto_2e
const-string v3, "unknown"
const-string v2, "unknown"
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
:try_start_3a
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
:try_end_41
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_1f2
move-result-object v0
move-object v2, v3
:goto_43
invoke-virtual {p1}, Lcom/twidroid/b/a/b;->e()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-static {p0}, Lcom/ubermedia/b/h;->a(Landroid/content/Context;)Landroid/location/Location;
move-result-object v5
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
:try_start_50
const-string v7, "twitter_user"
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v7, "twitter_id"
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v8
invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v7, "twitter_verified_user"
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->u()Z
move-result v3
invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v3, "product_name"
const-string v7, "ubersocialandroid"
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "product_version"
invoke-static {p0}, Lcom/twidroid/d/v;->e(Landroid/content/Context;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "device_model"
sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "device_platform"
const-string v7, "ANDROID_PH"
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "device_os_version"
sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "location_enabled"
invoke-virtual {p2}, Lcom/twidroid/d/v;->bh()Ljava/lang/String;
move-result-object v7
const-string v8, "gps"
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "carrier"
invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "country"
invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "lat"
if-nez v5, :cond_1f9
const-string v0, "0.0"
:goto_b7
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "lon"
if-nez v5, :cond_203
const-string v0, "0.0"
:goto_c4
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "postal_code"
invoke-virtual {p2}, Lcom/twidroid/d/v;->aY()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "language"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
if-eqz v4, :cond_e8
const-string v0, "device_ids"
invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_e8
invoke-virtual {p2}, Lcom/twidroid/d/v;->cx()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_fb
const-string v0, "install_id"
invoke-virtual {p2}, Lcom/twidroid/d/v;->cx()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_fb
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z
move-result v0
if-nez v0, :cond_12a
const-string v2, "com.twidroidpro"
invoke-static {p0, v2}, Lcom/twidroid/net/c/w;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_12a
const-string v0, "UberSocialCheckInService"
const-string v2, "PRO TAGGING"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
const/4 v3, 0x1
invoke-virtual {v0, v3}, Lcom/twidroid/d/v;->g(Z)V
move v0, v2
:cond_12a
const-string v2, "paid"
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "optOut"
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_13c
.catch Lorg/json/JSONException; {:try_start_50 .. :try_end_13c} :catch_20d
:try_start_13c
new-instance v0, Lorg/apache/http/client/methods/HttpPost;
const-string v1, "https://reg20.ubermedia.com/v2/register"
invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
const-string v1, "apiKey"
const-string v2, "jX6k0jkT0VeP2S/EgWrVcQ=="
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "content-type"
const-string v2, "application/json"
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lorg/apache/http/entity/StringEntity;
invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "UTF-8"
invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-static {v1}, Lcom/ubermedia/net/d;->a(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
:try_end_177
.catch Ljava/lang/Exception; {:try_start_13c .. :try_end_177} :catch_225
move-result v0
const/16 v2, 0xc8
if-ne v0, v2, :cond_215
:try_start_17c
invoke-virtual {p2}, Lcom/twidroid/d/v;->bB()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "resp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_193
:cond_193
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2aa
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "ad_params"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_241
const-string v4, "demographicsPrefs"
const/4 v5, 0x0
invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v5, "||"
invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v5
if-nez v5, :cond_1c3
const/4 v5, 0x2
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_1c3
const-string v5, "\\|\\|"
invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
const/4 v0, 0x0
:goto_1cb
if-ge v0, v6, :cond_23c
aget-object v7, v5, v0
const-string v8, "=>"
invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v7
array-length v8, v7
const/4 v9, 0x1
if-ne v8, v9, :cond_216
const/4 v8, 0x0
aget-object v7, v7, v8
const-string v8, ""
invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_end_1e1
.catch Lorg/json/JSONException; {:try_start_17c .. :try_end_1e1} :catch_220
.catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1e1} :catch_225
:goto_1e1
add-int/lit8 v0, v0, 0x1
goto :goto_1cb
:catch_1e4
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_3
:cond_1ea
invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto/16 :goto_19
:cond_1ef
const/4 v0, 0x0
goto/16 :goto_29
:catch_1f2
move-exception v0
move-object v0, v3
move-object v10, v2
move-object v2, v0
move-object v0, v10
goto/16 :goto_43
:cond_1f9
:try_start_1f9
invoke-static {v5}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto/16 :goto_b7
:cond_203
invoke-static {v5}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
:try_end_20a
.catch Lorg/json/JSONException; {:try_start_1f9 .. :try_end_20a} :catch_20d
move-result-object v0
goto/16 :goto_c4
:catch_20d
move-exception v0
const-string v1, "UberSocialCheckInService"
const-string v2, "can\'t perform check-in"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_215
:cond_215
return-void
:cond_216
const/4 v8, 0x0
:try_start_217
aget-object v8, v7, v8
const/4 v9, 0x1
aget-object v7, v7, v9
invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_end_21f
.catch Lorg/json/JSONException; {:try_start_217 .. :try_end_21f} :catch_220
.catch Ljava/lang/Exception; {:try_start_217 .. :try_end_21f} :catch_225
goto :goto_1e1
:catch_220
move-exception v0
:try_start_221
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
:try_end_224
.catch Ljava/lang/Exception; {:try_start_221 .. :try_end_224} :catch_225
goto :goto_215
:catch_225
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
invoke-virtual {p2}, Lcom/twidroid/d/v;->bB()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "CALL_HOME_INTERVAL"
const-string v2, "120"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_215
:cond_23c
:try_start_23c
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto/16 :goto_193
:cond_241
const-string v4, "call_home_interval"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_254
const-string v4, "CALL_HOME_INTERVAL"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v4, v0}, Lcom/twidroid/d/v;->c(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_193
:cond_254
const-string v4, "ad_refresh"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_26b
const-string v4, "AD_REFRESH"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
goto/16 :goto_193
:cond_26b
const-string v4, "run"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_29e
const/4 v4, 0x1
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_193
const-string v0, "message"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v4, "text"
const-string v5, ""
invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v4, Landroid/content/Intent;
const-class v5, Lcom/twidroid/activity/CloseAppACtivity;
invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v5, 0x1000
invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v5, "KEY_MESSAGE"
invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_29c
.catch Lorg/json/JSONException; {:try_start_23c .. :try_end_29c} :catch_220
.catch Ljava/lang/Exception; {:try_start_23c .. :try_end_29c} :catch_225
goto/16 :goto_193
:try_start_29e
:cond_29e
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:try_end_2a5
.catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2a5} :catch_2a7
.catch Lorg/json/JSONException; {:try_start_29e .. :try_end_2a5} :catch_220
goto/16 :goto_193
:catch_2a7
move-exception v0
goto/16 :goto_193
:cond_2aa
:try_start_2aa
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_2ad
.catch Lorg/json/JSONException; {:try_start_2aa .. :try_end_2ad} :catch_220
.catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2ad} :catch_225
goto/16 :goto_215
:cond_2af
move-object v1, v0
goto/16 :goto_2e
.end method
.method public static a(Lcom/twidroid/d/v;Lcom/twidroid/b/a/b;Lcom/twidroid/v;)V
.registers 12
const-wide/16 v7, 0x3e8
const-string v0, "http://ubersocial.s3.amazonaws.com/twitter/app.json"
new-instance v1, Lcom/ubermedia/net/e;
invoke-direct {v1}, Lcom/ubermedia/net/e;-><init>()V
const-string v2, "UberSocialCheckInService"
const-string v3, "Get server settings"
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
:try_start_11
invoke-static {v0, v2, v1}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Lcom/ubermedia/net/e;->a()I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_93
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_66
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "streaming_enabled_by_default"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_66
const-string v1, "streaming_enabled_by_default"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
invoke-virtual {p0}, Lcom/twidroid/d/v;->cp()I
move-result v0
if-eq v1, v0, :cond_66
invoke-virtual {p0, v1}, Lcom/twidroid/d/v;->c(I)V
invoke-virtual {p1}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
:try_end_51
.catch Lcom/ubermedia/net/a/a/a; {:try_start_11 .. :try_end_51} :catch_aa
.catch Lorg/json/JSONException; {:try_start_11 .. :try_end_51} :catch_b6
move-result-object v0
:try_start_52
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v3
add-int/lit8 v3, v3, -0x2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_63
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_63} :catch_a1
.catch Lcom/ubermedia/net/a/a/a; {:try_start_52 .. :try_end_63} :catch_aa
.catch Lorg/json/JSONException; {:try_start_52 .. :try_end_63} :catch_b6
move-result v0
if-le v0, v1, :cond_94
:cond_66
:goto_66
:try_start_66
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_93
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "start_screen_ad"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v1
const-string v2, "start_screen_ad_time"
const-wide/16 v3, 0x5
invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v2
mul-long/2addr v2, v7
const-string v4, "start_screen_ad_sleep"
const-wide/16 v5, 0x3c
invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
move-result-wide v4
mul-long/2addr v4, v7
invoke-virtual {p0, v1}, Lcom/twidroid/d/v;->l(Z)V
invoke-virtual {p0, v4, v5}, Lcom/twidroid/d/v;->e(J)V
invoke-virtual {p0, v2, v3}, Lcom/twidroid/d/v;->d(J)V
:try_end_93
.catch Lcom/ubermedia/net/a/a/a; {:try_start_66 .. :try_end_93} :catch_aa
.catch Lorg/json/JSONException; {:try_start_66 .. :try_end_93} :catch_b6
:cond_93
:goto_93
return-void
:try_start_94
:cond_94
invoke-virtual {p0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-nez v0, :cond_66
if-eqz p2, :cond_66
const/4 v0, 0x1
invoke-interface {p2, v0}, Lcom/twidroid/v;->a(Z)V
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a0} :catch_a1
.catch Lcom/ubermedia/net/a/a/a; {:try_start_94 .. :try_end_a0} :catch_aa
.catch Lorg/json/JSONException; {:try_start_94 .. :try_end_a0} :catch_b6
goto :goto_66
:catch_a1
move-exception v0
:try_start_a2
const-string v1, "UberSocialCheckInService"
const-string v3, "error int enabling streaming"
invoke-static {v1, v3, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a9
.catch Lcom/ubermedia/net/a/a/a; {:try_start_a2 .. :try_end_a9} :catch_aa
.catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_a9} :catch_b6
goto :goto_66
:catch_aa
move-exception v0
const-string v1, "UberSocialCheckInService"
const-string v2, "Error checking for configuration"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_93
:catch_b6
move-exception v0
const-string v1, "UberSocialCheckInService"
const-string v2, "Error checking for configuration"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
goto :goto_93
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/ubermedia/b/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x2
:try_start_1
invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
:try_end_4
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_4} :catch_6
const/4 v0, 0x1
:goto_5
return v0
:catch_6
move-exception v0
const/4 v0, 0x0
goto :goto_5
.end method