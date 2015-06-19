.class public Lcom/mologiq/analytics/v;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/mologiq/analytics/v;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private a(Lcom/mologiq/analytics/af;Landroid/content/Context;)V
.registers 16
const/4 v3, 0x0
:try_start_1
invoke-static {p2}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v6
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->j()Z
move-result v1
if-eqz v1, :cond_2b
invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
move-result-object v1
invoke-virtual {p1, p2}, Lcom/mologiq/analytics/af;->e(Landroid/content/Context;)Ljava/util/Map;
move-result-object v7
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
move-object v5, v3
move-object v2, v3
:goto_1f
:cond_1f
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-nez v1, :cond_1df
invoke-virtual {p1, v2}, Lcom/mologiq/analytics/af;->a(Ljava/util/List;)V
invoke-virtual {p1, v5}, Lcom/mologiq/analytics/af;->a(Ljava/util/Map;)V
:try_start_2b
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_266
:cond_2b
invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v4, 0x0
invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v1
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
if-eqz v1, :cond_4f
if-eqz v2, :cond_4f
invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->c(Ljava/lang/String;)V
:goto_4f
:cond_4f
:try_start_4f
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4f} :catch_25e
invoke-static {p2}, Lcom/mologiq/analytics/f;->a(Landroid/content/Context;)Lcom/mologiq/analytics/f;
move-result-object v1
invoke-virtual {v1}, Lcom/mologiq/analytics/f;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Lcom/mologiq/analytics/f;->b()Z
move-result v1
if-eqz v2, :cond_274
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_274
invoke-virtual {p1, v2}, Lcom/mologiq/analytics/af;->j(Ljava/lang/String;)V
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->a(Z)V
:try_end_69
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_69} :catch_283
:goto_69
:try_start_69
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->d(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->e(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->f(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->l(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->h(Ljava/lang/String;)V
invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;
move-result-object v1
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_93
invoke-virtual {p1, v2}, Lcom/mologiq/analytics/af;->m(Ljava/lang/String;)V
:cond_93
invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_9c
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->n(Ljava/lang/String;)V
:cond_9c
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->o(Ljava/lang/String;)V
instance-of v1, p2, Landroid/app/Activity;
if-eqz v1, :cond_d7
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
if-eqz v1, :cond_d7
new-instance v2, Ljava/lang/StringBuilder;
iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v4, "*"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->p(Ljava/lang/String;)V
:cond_d7
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->i(Ljava/lang/String;)V
const-string v1, "android.permission.ACCESS_WIFI_STATE"
invoke-static {p2, v1}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_13d
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->k()Z
move-result v1
if-eqz v1, :cond_13d
new-instance v4, Lcom/mologiq/analytics/ah;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v4, p1}, Lcom/mologiq/analytics/ah;-><init>(Lcom/mologiq/analytics/af;)V
const-string v1, "wifi"
invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v2
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
if-eqz v2, :cond_12e
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_10f
:goto_10f
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_286
invoke-virtual {v4, v5}, Lcom/mologiq/analytics/ah;->a(Ljava/util/List;)V
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
new-instance v2, Lcom/mologiq/analytics/al;
invoke-direct {v2}, Lcom/mologiq/analytics/al;-><init>()V
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/mologiq/analytics/al;->a(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/ah;->a(Lcom/mologiq/analytics/al;)V
invoke-virtual {p1, v4}, Lcom/mologiq/analytics/af;->a(Lcom/mologiq/analytics/ah;)V
:cond_12e
const-string v1, "phone"
invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/telephony/TelephonyManager;
invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->q(Ljava/lang/String;)V
:cond_13d
invoke-static {}, Lcom/mologiq/analytics/ak;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->g(Ljava/lang/String;)V
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->i()Z
move-result v1
if-eqz v1, :cond_1de
const-string v1, "location"
invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/location/LocationManager;
const-string v2, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {p2, v2}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_335
const-string v2, "gps"
invoke-static {v1, v2}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v2
:goto_164
if-eqz v2, :cond_2a1
invoke-static {v2}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v3
invoke-static {v2}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v5
int-to-double v9, v5
mul-double/2addr v9, v3
double-to-int v5, v9
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v5
int-to-double v9, v5
mul-double/2addr v9, v7
double-to-int v5, v9
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/mologiq/analytics/af;->l()D
move-result-wide v9
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v11
int-to-double v11, v11
mul-double/2addr v9, v11
double-to-int v9, v9
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/mologiq/analytics/af;->m()D
move-result-wide v9
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v6
int-to-double v11, v6
mul-double/2addr v9, v11
double-to-int v6, v9
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1c0
invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/af;->a(D)V
invoke-virtual {p1, v7, v8}, Lcom/mologiq/analytics/af;->b(D)V
:cond_1c0
invoke-static {v2}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v1
float-to-double v3, v1
invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/af;->d(D)V
invoke-static {v2}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v3
invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/af;->c(D)V
invoke-static {v2}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v1
float-to-double v3, v1
invoke-virtual {p1, v3, v4}, Lcom/mologiq/analytics/af;->e(D)V
invoke-static {v2}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v1
invoke-virtual {p1, v1, v2}, Lcom/mologiq/analytics/af;->a(J)V
:cond_1de
:goto_1de
return-void
:cond_1df
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/pm/ApplicationInfo;
iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_1f
if-nez v2, :cond_338
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
move-object v4, v2
:goto_1f5
iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
move-object v0, v1
check-cast v0, Lcom/mologiq/analytics/j;
move-object v2, v0
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->c()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I
move-result v1
if-lez v1, :cond_25b
if-nez v5, :cond_217
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
:cond_217
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24b
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v2, v4
goto/16 :goto_1f
:cond_24b
invoke-virtual {v2}, Lcom/mologiq/analytics/j;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_25b
move-object v2, v4
goto/16 :goto_1f
:catch_25e
move-exception v1
const-string v1, "Application name not found"
invoke-static {v1}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
:try_end_264
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_264} :catch_266
goto/16 :goto_4f
:catch_266
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto/16 :goto_1de
:try_start_274
:cond_274
invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
const-string v2, "android_id"
invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/mologiq/analytics/af;->k(Ljava/lang/String;)V
:try_end_281
.catch Ljava/lang/Exception; {:try_start_274 .. :try_end_281} :catch_283
goto/16 :goto_69
:catch_283
move-exception v1
goto/16 :goto_69
:cond_286
:try_start_286
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/net/wifi/ScanResult;
if-eqz v2, :cond_10f
iget-object v8, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
if-eqz v8, :cond_10f
new-instance v8, Lcom/mologiq/analytics/al;
invoke-direct {v8}, Lcom/mologiq/analytics/al;-><init>()V
iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
invoke-virtual {v8, v2}, Lcom/mologiq/analytics/al;->a(Ljava/lang/String;)V
invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_10f
:cond_2a1
const-string v2, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {p2, v2}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2b1
const-string v2, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {p2, v2}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_333
:cond_2b1
const-string v2, "network"
invoke-static {v1, v2}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
:goto_2b7
if-eqz v1, :cond_1de
invoke-static {v1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v8
int-to-double v8, v8
mul-double/2addr v8, v2
double-to-int v8, v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v8
int-to-double v8, v8
mul-double/2addr v8, v4
double-to-int v8, v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Lcom/mologiq/analytics/af;->l()D
move-result-wide v9
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v11
int-to-double v11, v11
mul-double/2addr v9, v11
double-to-int v9, v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {p1}, Lcom/mologiq/analytics/af;->m()D
move-result-wide v9
invoke-virtual {v6}, Lcom/mologiq/analytics/ae;->p()I
move-result v6
int-to-double v11, v6
mul-double/2addr v9, v11
double-to-int v6, v9
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_313
invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/af;->a(D)V
invoke-virtual {p1, v4, v5}, Lcom/mologiq/analytics/af;->b(D)V
:cond_313
invoke-static {v1}, Ldroidbox/android/location/Location;->getAccuracy(Landroid/location/Location;)F
move-result v2
float-to-double v2, v2
invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/af;->d(D)V
invoke-static {v1}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v2
invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/af;->c(D)V
invoke-static {v1}, Ldroidbox/android/location/Location;->getSpeed(Landroid/location/Location;)F
move-result v2
float-to-double v2, v2
invoke-virtual {p1, v2, v3}, Lcom/mologiq/analytics/af;->e(D)V
invoke-static {v1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v1
invoke-virtual {p1, v1, v2}, Lcom/mologiq/analytics/af;->a(J)V
:try_end_331
.catch Ljava/lang/Exception; {:try_start_286 .. :try_end_331} :catch_266
goto/16 :goto_1de
:cond_333
move-object v1, v3
goto :goto_2b7
:cond_335
move-object v2, v3
goto/16 :goto_164
:cond_338
move-object v4, v2
goto/16 :goto_1f5
.end method
.method public run()V
.registers 10
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Lcom/mologiq/analytics/v;->a:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/mologiq/analytics/v;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
move-object v3, v0
:cond_e
if-nez v3, :cond_11
:cond_10
:goto_10
return-void
:cond_11
invoke-static {v3}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v7
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->c()Z
move-result v0
if-nez v0, :cond_10
invoke-static {}, Lcom/mologiq/analytics/af;->c()Lcom/mologiq/analytics/af;
move-result-object v8
invoke-virtual {v8, v3}, Lcom/mologiq/analytics/af;->a(Landroid/content/Context;)V
invoke-direct {p0, v8, v3}, Lcom/mologiq/analytics/v;->a(Lcom/mologiq/analytics/af;Landroid/content/Context;)V
invoke-virtual {v8, v3}, Lcom/mologiq/analytics/af;->b(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_3c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->o()J
move-result-wide v4
sub-long/2addr v0, v4
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->n()J
move-result-wide v4
cmp-long v0, v0, v4
if-lez v0, :cond_10
:cond_3c
new-instance v0, Lcom/mologiq/analytics/ai;
invoke-direct {v0, v3}, Lcom/mologiq/analytics/ai;-><init>(Landroid/content/Context;)V
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->u()I
move-result v1
if-nez v1, :cond_76
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->d()Ljava/lang/String;
move-result-object v1
const-string v2, ""
const/16 v4, 0x1f4
const/16 v5, 0x3e8
const/4 v6, 0x0
invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_10
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ae;->a(I)V
invoke-virtual {v7, v3}, Lcom/mologiq/analytics/ae;->b(Landroid/content/Context;)Z
:try_end_68
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_68} :catch_69
goto :goto_10
:catch_69
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V
goto :goto_10
:try_start_76
:cond_76
invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->g()Ljava/lang/String;
move-result-object v1
new-instance v4, Lcom/mologiq/analytics/o;
invoke-direct {v4}, Lcom/mologiq/analytics/o;-><init>()V
const-string v2, "1.2.9"
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/o;->a(Ljava/lang/String;)V
const-string v2, "2014-07-08"
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/o;->b(Ljava/lang/String;)V
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_c1
const-string v2, ""
:goto_91
invoke-virtual {v4, v2}, Lcom/mologiq/analytics/o;->c(Ljava/lang/String;)V
invoke-virtual {v4, v8}, Lcom/mologiq/analytics/o;->a(Lcom/mologiq/analytics/af;)V
invoke-virtual {v4, v3}, Lcom/mologiq/analytics/o;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
const/16 v4, 0x1f4
const/16 v5, 0x3e8
const/4 v6, 0x1
invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_b9
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_b9
invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ae;->b(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {v7, v0, v1}, Lcom/mologiq/analytics/ae;->a(J)V
invoke-virtual {v7, v3}, Lcom/mologiq/analytics/ae;->b(Landroid/content/Context;)Z
:cond_b9
invoke-direct {p0, v8, v3}, Lcom/mologiq/analytics/v;->a(Lcom/mologiq/analytics/af;Landroid/content/Context;)V
invoke-virtual {v8, v3}, Lcom/mologiq/analytics/af;->b(Landroid/content/Context;)Z
goto/16 :goto_10
:cond_c1
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
:try_end_c4
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c4} :catch_69
move-result-object v2
goto :goto_91
.end method