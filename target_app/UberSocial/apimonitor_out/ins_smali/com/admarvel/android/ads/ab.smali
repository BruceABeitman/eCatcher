.class  Lcom/admarvel/android/ads/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static a:Ljava/lang/String;
.field public static b:Z
.field private c:Ljava/lang/ref/WeakReference;
.field private final d:Landroid/os/Handler;
.field private e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, ""
sput-object v0, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
const/4 v0, 0x0
iput-object v0, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
return-void
.end method
.method public static a(Landroid/content/Context;II)F
.registers 6
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v1, Landroid/util/DisplayMetrics;->density:F
int-to-float v1, p1
int-to-float v2, p2
div-float/2addr v1, v2
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
return v0
.end method
.method public static a(FLandroid/content/Context;)I
.registers 4
const/4 v0, 0x1
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
return v0
.end method
.method public static a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I
.registers 3
sget-object v0, Lcom/admarvel/android/ads/ab$4;->a:[I
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_3e
const/4 v0, -0x1
:goto_c
return v0
:pswitch_d
const/16 v0, 0xc9
goto :goto_c
:pswitch_10
const/16 v0, 0xca
goto :goto_c
:pswitch_13
const/16 v0, 0xcb
goto :goto_c
:pswitch_16
const/16 v0, 0xcc
goto :goto_c
:pswitch_19
const/16 v0, 0xcd
goto :goto_c
:pswitch_1c
const/16 v0, 0xce
goto :goto_c
:pswitch_1f
const/16 v0, 0xcf
goto :goto_c
:pswitch_22
const/16 v0, 0xd0
goto :goto_c
:pswitch_25
const/16 v0, 0x12d
goto :goto_c
:pswitch_28
const/16 v0, 0x12e
goto :goto_c
:pswitch_2b
const/16 v0, 0x12f
goto :goto_c
:pswitch_2e
const/16 v0, 0x130
goto :goto_c
:pswitch_31
const/16 v0, 0x131
goto :goto_c
:pswitch_34
const/16 v0, 0x132
goto :goto_c
:pswitch_37
const/16 v0, 0x133
goto :goto_c
:pswitch_3a
const/16 v0, 0x134
goto :goto_c
nop
:pswitch_data_3e
.packed-switch 0x1
:pswitch_d
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
:pswitch_1c
:pswitch_1f
:pswitch_22
:pswitch_25
:pswitch_28
:pswitch_2b
:pswitch_2e
:pswitch_31
:pswitch_34
:pswitch_37
:pswitch_3a
.end packed-switch
.end method
.method public static a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
.registers 2
sparse-switch p0, :sswitch_data_36
const/4 v0, 0x0
:goto_4
return-object v0
:sswitch_5
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_OR_PARTNER_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_8
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_AND_PARTNER_ID_DO_NOT_MATCH:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_b
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->BOT_USER_AGENT_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_e
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_BANNER_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_11
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_AD_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_14
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_USER_AGENT_FOUND:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_17
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->SITE_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_1a
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->PARTNER_ID_NOT_PRESENT:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_1d
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NO_NETWORK_CONNECTIVITY:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_20
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->NETWORK_CONNECTIVITY_DISRUPTED:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_23
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_XML_PARSING_EXCEPTION:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_26
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_IN_PROCESS_EXCEPTION:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_29
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_UNIT_NOT_ABLE_TO_RENDER:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_2c
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_MISSING_XML_ELEMENTS:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_2f
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_REQUEST_SDK_TYPE_UNSUPPORTED:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
:sswitch_32
sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;->AD_UNIT_NOT_ABLE_TO_LOAD:Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
goto :goto_4
nop
:sswitch_data_36
.sparse-switch
0xc9 -> :sswitch_5
0xca -> :sswitch_8
0xcb -> :sswitch_b
0xcc -> :sswitch_e
0xcd -> :sswitch_11
0xce -> :sswitch_14
0xcf -> :sswitch_17
0xd0 -> :sswitch_1a
0x12d -> :sswitch_1d
0x12e -> :sswitch_20
0x12f -> :sswitch_23
0x130 -> :sswitch_26
0x131 -> :sswitch_29
0x132 -> :sswitch_2c
0x133 -> :sswitch_2f
0x134 -> :sswitch_32
.end sparse-switch
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
sget-object v0, Lcom/admarvel/android/ads/ab$f;->a:Lcom/admarvel/android/ads/ab$f;
:goto_1b
return-object v0
:cond_1c
invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
sget-object v0, Lcom/admarvel/android/ads/ab$f;->b:Lcom/admarvel/android/ads/ab$f;
goto :goto_1b
:cond_25
sget-object v0, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
goto :goto_1b
.end method
.method public static a(Landroid/app/Activity;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I
move-result v1
const-string v0, ""
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v2
const/16 v3, 0x9
if-ge v2, v3, :cond_29
packed-switch v1, :pswitch_data_52
const-string v0, "0"
:goto_13
return-object v0
:pswitch_14
const-string v0, "0,90"
goto :goto_13
:pswitch_17
const-string v0, "0,90"
goto :goto_13
:pswitch_1a
const-string v0, "0,90"
goto :goto_13
:pswitch_1d
const-string v0, "90"
goto :goto_13
:pswitch_20
const-string v0, "0"
goto :goto_13
:pswitch_23
const-string v0, "0,90"
goto :goto_13
:pswitch_26
const-string v0, "0"
goto :goto_13
:cond_29
packed-switch v1, :pswitch_data_64
goto :goto_13
:pswitch_2d
const-string v0, "0,-90,90"
goto :goto_13
:pswitch_30
const-string v0, "0,90,-90"
goto :goto_13
:pswitch_33
const-string v0, "0,90,-90"
goto :goto_13
:pswitch_36
const-string v0, "90"
goto :goto_13
:pswitch_39
const-string v0, "0"
goto :goto_13
:pswitch_3c
const-string v0, "-90"
goto :goto_13
:pswitch_3f
const-string v0, "180"
goto :goto_13
:pswitch_42
const-string v0, "90,-90"
goto :goto_13
:pswitch_45
const-string v0, "180,-180"
goto :goto_13
:pswitch_48
const-string v0, "0,-90,90"
goto :goto_13
:pswitch_4b
const-string v0, "0,-90,90,180"
goto :goto_13
:pswitch_4e
const-string v0, "0"
goto :goto_13
nop
:pswitch_data_64
.packed-switch -0x1
:pswitch_2d
:pswitch_36
:pswitch_39
:pswitch_30
:pswitch_33
:pswitch_48
:pswitch_4e
:pswitch_42
:pswitch_45
:pswitch_3c
:pswitch_3f
:pswitch_4b
.end packed-switch
:pswitch_data_52
.packed-switch -0x1
:pswitch_14
:pswitch_1d
:pswitch_20
:pswitch_17
:pswitch_1a
:pswitch_23
:pswitch_26
.end packed-switch
.end method
.method static a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const-string v0, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3b
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v1, :cond_2d
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v1
if-eqz v1, :cond_2d
const-string v0, "wifi"
:goto_2c
return-object v0
:cond_2d
if-eqz v0, :cond_38
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "mobile"
goto :goto_2c
:cond_38
const-string v0, "none"
goto :goto_2c
:cond_3b
const-string v0, "unknown"
goto :goto_2c
.end method
.method static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.registers 6
if-eqz p0, :cond_6c
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_6c
move-object v1, p0
:goto_9
:try_start_9
new-instance v0, Ljava/net/URL;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v2, "GET"
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
const-string v2, "User-Agent"
new-instance v3, Lcom/admarvel/android/ads/ab;
invoke-direct {v3, p1}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;)V
invoke-virtual {v3}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "Content-Type"
const-string v3, "application/x-www-form-urlencoded"
invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "Content-Length"
const-string v3, "0"
invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/16 v2, 0xfa0
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
const/16 v2, 0x1388
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
move-result v2
const/16 v3, 0x12d
if-eq v2, v3, :cond_5a
const/16 v3, 0x12e
if-ne v2, v3, :cond_63
:cond_5a
const-string v2, "Location"
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
:try_end_5f
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_5f} :catch_62
move-result-object v0
move-object v1, v0
goto :goto_9
:catch_62
move-exception v0
:cond_63
if-eqz v1, :cond_6c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_6c
move-object p0, v1
:cond_6c
return-object p0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_2b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_2b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "content://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".AdMarvelLocalFileContentProvider"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, ""
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p0
:cond_2b
const/4 v0, 0x0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->a:Lcom/admarvel/android/ads/ab$f;
if-ne p3, v1, :cond_48
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "://"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_47
:cond_47
return-object v0
:cond_48
sget-object v1, Lcom/admarvel/android/ads/ab$f;->b:Lcom/admarvel/android/ads/ab$f;
if-ne p3, v1, :cond_47
invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_47
.end method
.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v2, 0x0
if-nez p0, :cond_5
move-object v0, v2
:goto_4
return-object v0
:cond_5
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_12
:goto_12
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_59
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
instance-of v1, v1, Ljava/lang/String;
if-eqz v1, :cond_57
invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:goto_2c
if-eqz v1, :cond_12
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v5
if-lez v5, :cond_12
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v5
if-lez v5, :cond_3d
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3d
const-string v5, "UTF-8"
invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "=>"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, "UTF-8"
invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_12
:cond_57
move-object v1, v2
goto :goto_2c
:cond_59
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method static synthetic a(Lcom/admarvel/android/ads/ab;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_1f
if-eqz p2, :cond_1f
if-eqz p1, :cond_1f
const-string v0, "&"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "UTF-8"
invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1f
return-void
.end method
.method public static a(Landroid/content/Context;I)Z
.registers 5
if-eqz p0, :cond_16
:try_start_2
const-string v0, "android.permission.VIBRATE"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const-string v0, "vibrator"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Vibrator;
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:catch_18
move-exception v0
const/4 v0, 0x0
goto :goto_17
.end method
.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const/high16 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_9
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b
const/4 v0, 0x1
:goto_a
return v0
:catch_b
move-exception v1
goto :goto_a
.end method
.method public static b()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_67
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:goto_10
const-string v1, "; "
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_6d
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_38
const-string v2, "-"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_38
:goto_38
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_48
const-string v2, "; "
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_48
sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_58
const-string v2, " Build/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_58
const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"
const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_67
const-string v1, "1.0"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_10
:cond_6d
const-string v1, "en"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_38
.end method
.method static b(Landroid/content/Context;)Ljava/lang/String;
.registers 4
const-string v2, ""
if-nez p0, :cond_5
:goto_4
:cond_4
return-object v2
:cond_5
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
const-string v1, "phone"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_4
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
packed-switch v0, :pswitch_data_5e
move-object v0, v2
:goto_23
move-object v2, v0
goto :goto_4
:pswitch_25
const-string v0, "wifi"
goto :goto_23
:pswitch_28
invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v0
packed-switch v0, :pswitch_data_66
move-object v0, v2
goto :goto_23
:pswitch_31
const-string v0, "lte"
goto :goto_23
:pswitch_34
const-string v0, "HSPAP"
goto :goto_23
:pswitch_37
const-string v0, "EDGE"
goto :goto_23
:pswitch_3a
const-string v0, "GPRS"
goto :goto_23
:pswitch_3d
const-string v0, "1xRTT"
goto :goto_23
:pswitch_40
const-string v0, "CDMA"
goto :goto_23
:pswitch_43
const-string v0, "EHRPD"
goto :goto_23
:pswitch_46
const-string v0, "EVDO_0"
goto :goto_23
:pswitch_49
const-string v0, "EVDO_A"
goto :goto_23
:pswitch_4c
const-string v0, "EVDO_B"
goto :goto_23
:pswitch_4f
const-string v0, "HSDPA"
goto :goto_23
:pswitch_52
const-string v0, "HSPA"
goto :goto_23
:pswitch_55
const-string v0, "HSUPA"
goto :goto_23
:pswitch_58
const-string v0, "IDEN"
goto :goto_23
:pswitch_5b
const-string v0, "UMTS"
goto :goto_23
:pswitch_data_5e
.packed-switch 0x0
:pswitch_28
:pswitch_25
.end packed-switch
:pswitch_data_66
.packed-switch 0x1
:pswitch_3a
:pswitch_37
:pswitch_5b
:pswitch_40
:pswitch_46
:pswitch_49
:pswitch_3d
:pswitch_4f
:pswitch_55
:pswitch_52
:pswitch_58
:pswitch_4c
:pswitch_31
:pswitch_43
:pswitch_34
.end packed-switch
.end method
.method static synthetic b(Lcom/admarvel/android/ads/ab;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->e:Ljava/lang/String;
return-object v0
.end method
.method static b(Landroid/content/Context;Ljava/lang/String;)Z
.registers 11
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v0, 0x1
:try_start_3
sget-boolean v3, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-nez v3, :cond_b
sget-boolean v3, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v3, :cond_1de
:cond_b
if-eqz p1, :cond_1de
const-string v3, "/"
invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_1de
invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1de
const-string v3, "/"
invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->j(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_d1
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v5
const/16 v6, 0x12
if-le v5, v6, :cond_74
const-string v3, "?body="
invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_3c5
const-string v3, "\\?body="
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
const/4 v5, 0x1
aget-object v3, v3, v5
invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:goto_4e
new-instance v5, Landroid/content/Intent;
const-string v6, "android.intent.action.SENDTO"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
if-eqz v3, :cond_6a
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_6a
const-string v6, "sms_body"
invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_6a
invoke-static {p0, v5}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_f1
invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_73
:goto_73
return v0
:cond_74
new-instance v5, Landroid/content/Intent;
const-string v6, "android.intent.action.VIEW"
invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v6, "?body="
invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_c2
const-string v3, "\\?body="
invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
const-string v6, "address"
const/4 v7, 0x0
aget-object v7, v3, v7
invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x4
invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v6, "sms_body"
const/4 v7, 0x1
aget-object v3, v3, v7
invoke-static {v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:goto_a6
const-string v3, "vnd.android-dir/mms-sms"
invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v3, 0x1000
invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v5}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_f1
invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b9} :catch_ba
goto :goto_73
:catch_ba
move-exception v0
const-string v0, " Exception in handling special intents"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move v0, v1
goto :goto_73
:try_start_c2
:cond_c2
const-string v6, "address"
invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v3
const/4 v7, 0x4
invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
goto :goto_a6
:cond_d1
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->i(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_f1
new-instance v3, Landroid/content/Intent;
const-string v5, "android.intent.action.DIAL"
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v5, 0x1000
invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v5
if-eqz v5, :cond_f1
invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_f0
.catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_f0} :catch_ba
goto :goto_73
:cond_f1
:try_start_f1
invoke-static {p1}, Lcom/admarvel/android/b/a;->a(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v3
if-eqz v3, :cond_1c5
if-eqz v4, :cond_1c5
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->p(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_144
invoke-static {v3, v4}, Lcom/admarvel/android/b/a;->a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_1de
new-instance v4, Landroid/content/Intent;
const-string v5, "android.intent.action.VIEW"
invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v5, 0x1000
invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
new-instance v5, Ljava/io/File;
invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v3
const-string v5, "video/*"
invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_73
invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_128
.catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_128} :catch_12a
goto/16 :goto_73
:catch_12a
move-exception v3
:try_start_12b
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->p(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13d
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->r(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13d
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->q(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1de
:cond_13d
const-string v2, " "
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_142
.catch Ljava/lang/Exception; {:try_start_12b .. :try_end_142} :catch_ba
goto/16 :goto_73
:cond_144
:try_start_144
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->q(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_175
invoke-static {v3, v4}, Lcom/admarvel/android/b/a;->a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_1de
new-instance v4, Landroid/content/Intent;
const-string v5, "android.intent.action.VIEW"
invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v5, 0x1000
invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
new-instance v5, Ljava/io/File;
invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v3
const-string v5, "audio/*"
invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_73
invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_175
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->r(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_1de
invoke-static {v3, v4}, Lcom/admarvel/android/b/a;->a(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_73
new-instance v4, Landroid/content/Intent;
const-string v5, "android.intent.action.VIEW"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
new-instance v5, Ljava/io/File;
invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v3
const-string v5, "application/pdf"
invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v3, 0x1000
invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {p0, v4}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_1aa
invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_1aa
new-instance v3, Landroid/content/Intent;
const-string v4, "android.intent.action.VIEW"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v4, 0x1000
invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v4
if-eqz v4, :cond_73
invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_1c5
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->p(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1d7
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->r(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1d7
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->q(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1de
:cond_1d7
const-string v3, " "
invoke-static {v3}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_1dc
.catch Ljava/lang/Exception; {:try_start_144 .. :try_end_1dc} :catch_12a
goto/16 :goto_73
:cond_1de
if-eqz p1, :cond_209
:try_start_1e0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_209
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "content://"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ".AdMarvelLocalFileContentProvider"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, ""
invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_208
.catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_208} :catch_ba
move-result-object p1
:cond_209
:try_start_209
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_250
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->f(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_250
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
const-string v4, "video/*"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_24d
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_233
.catch Landroid/content/ActivityNotFoundException; {:try_start_209 .. :try_end_233} :catch_235
.catch Ljava/lang/Exception; {:try_start_209 .. :try_end_233} :catch_ba
goto/16 :goto_73
:catch_235
move-exception v2
:try_start_236
const-string v2, " ActivityNotFoundException"
invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->e(Ljava/lang/String;)Z
move-result v2
sput-boolean v2, Lcom/admarvel/android/ads/ab;->b:Z
sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-nez v2, :cond_249
sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->enableOfflineSDK:Z
if-eqz v2, :cond_24d
:cond_249
sget-boolean v2, Lcom/admarvel/android/ads/ab;->b:Z
:try_end_24b
.catch Ljava/lang/Exception; {:try_start_236 .. :try_end_24b} :catch_ba
if-eqz v2, :cond_73
:cond_24d
move v0, v1
goto/16 :goto_73
:try_start_250
:cond_250
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_27c
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->g(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_27c
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
const-string v4, "audio/*"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_24d
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_27c
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_2c7
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->m(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2c7
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
const-string v4, "application/pdf"
invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_2ac
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_2ac
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_73
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_2c7
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->j(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_36b
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v3
const/16 v4, 0x13
if-lt v3, v4, :cond_311
const-string v3, "?body="
invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_2ea
const-string v2, "\\?body="
invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:cond_2ea
new-instance v3, Landroid/content/Intent;
const-string v4, "android.intent.action.SENDTO"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
if-eqz v2, :cond_306
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_306
const-string v4, "sms_body"
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_306
invoke-static {p0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_24d
invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_311
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
new-instance v3, Landroid/content/Intent;
const-string v4, "android.intent.action.VIEW"
invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v4, "?body="
invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_35c
const-string v2, "\\?body="
invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const-string v4, "address"
const/4 v5, 0x0
aget-object v5, v2, v5
invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x4
invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v4, "sms_body"
const/4 v5, 0x1
aget-object v2, v2, v5
invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:goto_347
const-string v2, "vnd.android-dir/mms-sms"
invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v2, 0x1000
invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_24d
invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_35c
const-string v4, "address"
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
const/4 v5, 0x4
invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
goto :goto_347
:cond_36b
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->i(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_38c
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.DIAL"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_24d
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_73
:cond_38c
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->l(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3aa
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->h(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3aa
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->n(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3aa
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->o(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_3aa
invoke-static {p1}, Lcom/admarvel/android/ads/ab;->k(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_24d
:cond_3aa
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {p0, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v3
if-eqz v3, :cond_24d
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:try_end_3c3
.catch Landroid/content/ActivityNotFoundException; {:try_start_250 .. :try_end_3c3} :catch_235
.catch Ljava/lang/Exception; {:try_start_250 .. :try_end_3c3} :catch_ba
goto/16 :goto_73
:cond_3c5
move-object v3, v2
goto/16 :goto_4e
.end method
.method static c(Landroid/content/Context;)Ljava/lang/String;
.registers 3
:try_start_0
const-string v0, ""
if-nez p0, :cond_11
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a
:catch_a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_e
const-string v0, "unknown-network"
:goto_10
return-object v0
:cond_11
:try_start_11
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
:try_end_20
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_a
move-result v1
if-lez v1, :cond_e
goto :goto_10
.end method
.method static c(Ljava/lang/String;)Ljava/lang/String;
.registers 3
:try_start_0
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
const/16 v1, 0x8
invoke-static {v0, v1}, Lcom/admarvel/android/util/b;->b([BI)Ljava/lang/String;
move-result-object v0
const-string v1, "UTF-8"
invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_f
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object v0
:goto_10
return-object v0
:catch_11
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const-string v0, ""
goto :goto_10
.end method
.method public static c()Z
.registers 2
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0x10
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
.registers 6
const/4 v3, 0x1
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/4 v2, 0x7
if-lt v0, v2, :cond_22
const-string v0, "camera"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
invoke-static {p0, p1}, Lcom/admarvel/android/ads/ab$c;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_21
return v0
:cond_22
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v2, 0x8
if-lt v0, v2, :cond_37
invoke-static {p0, p1}, Lcom/admarvel/android/ads/ab$c;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_21
:cond_37
const-string v0, "camera"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_50
const/4 v0, 0x0
:try_start_40
invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
:try_end_43
.catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_95
move-result-object v0
:goto_44
if-eqz v0, :cond_97
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_4a
move-object v1, v0
:goto_4b
:cond_4b
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_21
:cond_50
const-string v0, "location"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
const-string v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
if-eqz v0, :cond_4b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
goto :goto_4b
:cond_67
const-string v0, "accelerometer"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7e
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/n;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_4b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
goto :goto_4b
:cond_7e
const-string v0, "compass"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/n;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_4b
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
goto :goto_4b
:catch_95
move-exception v2
goto :goto_44
:cond_97
move-object v0, v1
goto :goto_4a
.end method
.method static d(Landroid/content/Context;)I
.registers 3
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
const-string v0, "window"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v1
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
if-le v1, v0, :cond_20
const/4 v0, 0x2
:goto_1f
return v0
:cond_20
const/4 v0, 0x1
goto :goto_1f
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static d(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_1a
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1a
const-string v0, "admarvelsdk://noclick"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_18
const-string v0, "admarvelsdk://nothing"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
:cond_18
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public static e(Landroid/content/Context;)Ljava/lang/Integer;
.registers 3
const/4 v1, 0x1
if-eqz p0, :cond_14
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I
move-result v0
if-ne v0, v1, :cond_e
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_d
return-object v0
:cond_e
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_d
:cond_14
const/4 v0, 0x0
goto :goto_d
.end method
.method public static e(Ljava/lang/String;)Z
.registers 3
const-string v0, "admarvelsdk"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-ne v0, v1, :cond_32
const-string v0, "admarvelinternal"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-ne v0, v1, :cond_32
const-string v0, "admarvelvideo"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-ne v0, v1, :cond_32
const-string v0, "admarvelexternal"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-ne v0, v1, :cond_32
const-string v0, "admarvelcustomvideo"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v0, v1, :cond_34
:cond_32
const/4 v0, 0x1
:goto_33
return v0
:cond_34
const/4 v0, 0x0
goto :goto_33
.end method
.method public static final f(Landroid/content/Context;)Z
.registers 3
const-string v0, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {p0, v0}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_2c
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v1
if-eqz v1, :cond_2c
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_2c
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
const/4 v0, 0x0
goto :goto_2b
.end method
.method private static f(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_4b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_4b
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".mp4"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_21
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".3gp"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
:cond_21
:try_start_21
new-instance v1, Ljava/net/URL;
invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_26
.catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_26} :catch_4c
invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_4b
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_4b
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".mp4"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4a
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".3gp"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
:cond_4a
const/4 v0, 0x1
:goto_4b
:cond_4b
return v0
:catch_4c
move-exception v1
goto :goto_4b
.end method
.method public static g(Landroid/content/Context;)I
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xd
if-lt v1, v2, :cond_23
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
iget v0, v1, Landroid/graphics/Point;->x:I
:goto_22
return v0
:cond_23
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getWidth()I
move-result v0
goto :goto_22
.end method
.method private static g(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_f3
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_f3
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".flac"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".mp3"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".mid"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".xmf"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".mxmf"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".rtttl"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".rtx"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".ota"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_75
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".imy"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_f3
:try_start_75
:cond_75
new-instance v1, Ljava/net/URL;
invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_7a
.catch Ljava/net/MalformedURLException; {:try_start_75 .. :try_end_7a} :catch_f4
invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_f3
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_f3
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".flac"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".mp3"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".mid"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".xmf"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".mxmf"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".rtttl"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".rtx"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".ota"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_f2
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".imy"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_f3
:cond_f2
const/4 v0, 0x1
:goto_f3
:cond_f3
return v0
:catch_f4
move-exception v1
goto :goto_f3
.end method
.method public static h(Landroid/content/Context;)I
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xd
if-lt v1, v2, :cond_23
new-instance v1, Landroid/graphics/Point;
invoke-direct {v1}, Landroid/graphics/Point;-><init>()V
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V
iget v0, v1, Landroid/graphics/Point;->y:I
:goto_22
return v0
:cond_23
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0}, Landroid/view/Display;->getHeight()I
move-result v0
goto :goto_22
.end method
.method private static h(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "google.streetview:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static i(Landroid/content/Context;)F
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v1, Landroid/util/DisplayMetrics;->density:F
return v0
.end method
.method private static i(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "tel:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "voicemail:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public static j(Landroid/content/Context;)Z
.registers 2
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method private static j(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "sms:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static k(Landroid/content/Context;)Z
.registers 3
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_24
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method private static k(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "mailto:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static l(Landroid/content/Context;)V
.registers 7
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v2
const-string v0, "adm_viewport"
const-string v1, "adm_viewport_timestamp"
invoke-static {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->getPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v0
const-wide/32 v4, -0x80000000
cmp-long v4, v0, v4
if-nez v4, :cond_19
const-wide/16 v0, 0x0
:cond_19
sub-long v0, v2, v0
const-wide/32 v2, 0x5265c00
cmp-long v0, v0, v2
if-ltz v0, :cond_6a
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:try_start_27
const-string v0, "http://admarvel.s3.amazonaws.com/sdk/admarvel_android_sdk_dynamic_viewport.js"
new-instance v2, Ljava/net/URL;
invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
const-string v2, ""
new-instance v2, Ljava/io/BufferedReader;
new-instance v3, Ljava/io/InputStreamReader;
invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:goto_42
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_88
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_4b
.catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_4b} :catch_4c
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_4b} :catch_8c
goto :goto_42
:catch_4c
move-exception v0
invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
:goto_50
const-string v0, "adm_viewport"
const-string v2, "adm_viewport_data"
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v2, v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->setPreferenceValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "adm_viewport"
const-string v1, "adm_viewport_timestamp"
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v2
invoke-static {p0, v0, v1, v2, v3}, Lcom/admarvel/android/ads/AdMarvelUtils;->setPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
:cond_6a
const-string v0, "adm_viewport"
const-string v1, "adm_viewport_data"
invoke-static {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->getPreferenceValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;
const-string v1, "VALUE_NOT_DEFINED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_87
const-string v0, "Viewport data fetch failed - Setting blank string"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const-string v0, ""
sput-object v0, Lcom/admarvel/android/ads/ab;->a:Ljava/lang/String;
:cond_87
return-void
:cond_88
:try_start_88
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:try_end_8b
.catch Ljava/net/MalformedURLException; {:try_start_88 .. :try_end_8b} :catch_4c
.catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c
goto :goto_50
:catch_8c
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_50
.end method
.method private static l(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "geo:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static m(Landroid/content/Context;)V
.registers 7
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J
move-result-wide v2
const-string v0, "adm_viewport"
const-string v1, "adm_video_cleanup_timestamp"
invoke-static {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelUtils;->getPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
move-result-wide v0
const-wide/32 v4, -0x80000000
cmp-long v4, v0, v4
if-nez v4, :cond_19
const-wide/16 v0, 0x0
:cond_19
sub-long v0, v2, v0
const-wide/32 v2, 0xdbba0
cmp-long v0, v0, v2
if-ltz v0, :cond_2f
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/admarvel/android/ads/ab$3;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/ab$3;-><init>(Landroid/content/Context;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:cond_2f
return-void
.end method
.method private static m(Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x0
if-eqz p0, :cond_4b
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_4b
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".pdf"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_21
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".pdf"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
:cond_21
:try_start_21
new-instance v1, Ljava/net/URL;
invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_26
.catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_26} :catch_4c
invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_4b
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_4b
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string v3, ".pdf"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_4a
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, ".pdf"
invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
:cond_4a
const/4 v0, 0x1
:goto_4b
:cond_4b
return v0
:catch_4c
move-exception v1
goto :goto_4b
.end method
.method private static n(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "market://"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private static o(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_16
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, "vzw://"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private static p(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".mp4"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".3gp"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method private static q(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_76
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_76
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".flac"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".mp3"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".mid"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".xmf"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".mxmf"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".rtttl"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".rtx"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".ota"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_74
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".imy"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_76
:cond_74
const/4 v0, 0x1
:goto_75
return v0
:cond_76
const/4 v0, 0x0
goto :goto_75
.end method
.method private static r(Ljava/lang/String;)Z
.registers 3
if-eqz p0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_22
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".pdf"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string v1, ".pdf"
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
:cond_20
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method public a()Ljava/lang/String;
.registers 6
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_75
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_75
const-class v1, Landroid/webkit/WebSettings;
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/content/Context;
aput-object v4, v2, v3
const/4 v3, 0x1
const-class v4, Landroid/webkit/WebView;
aput-object v4, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_48
const/4 v2, 0x2
:try_start_26
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
aput-object v0, v2, v3
const/4 v0, 0x1
const/4 v3, 0x0
aput-object v3, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/webkit/WebSettings;
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
:try_end_3c
.catchall {:try_start_26 .. :try_end_3c} :catchall_42
move-result-object v0
const/4 v2, 0x0
:try_start_3e
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
:goto_41
return-object v0
:catchall_42
move-exception v0
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
throw v0
:catch_48
:try_end_48
.catch Ljava/lang/Exception; {:try_start_3e .. :try_end_48} :catch_48
move-exception v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "main"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_7a
new-instance v1, Landroid/webkit/WebView;
invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
move-result-object v0
goto :goto_41
:try_start_75
:cond_75
invoke-static {}, Lcom/admarvel/android/ads/ab;->b()Ljava/lang/String;
:try_end_78
.catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_48
move-result-object v0
goto :goto_41
:cond_7a
invoke-static {}, Lcom/admarvel/android/ads/ab;->b()Ljava/lang/String;
move-result-object v0
goto :goto_41
.end method
.method public a(Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 8
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p1, :cond_32
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPixels()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getPixels()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v4, "<img src=\""
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\" />"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_16
:cond_32
if-eqz v3, :cond_6a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_6a
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "main"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6b
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_6a
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v2, v0
check-cast v2, Landroid/content/Context;
if-eqz v2, :cond_6a
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_6a
:cond_6a
return-void
:cond_6b
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/ab;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/ab$1;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/ab$1;-><init>(Lcom/admarvel/android/ads/ab;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_6a
.end method
.method public a(Ljava/lang/String;)V
.registers 8
const/4 v1, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-void
:cond_4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "<img src=\""
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\" />"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v3, :cond_3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
const-string v2, "main"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_57
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_3
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v2, v0
check-cast v2, Landroid/content/Context;
if-eqz v2, :cond_3
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
move-object v5, v1
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3
:cond_57
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/ab;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/ab$2;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/ab$2;-><init>(Lcom/admarvel/android/ads/ab;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_3
.end method
.method public a(Ljava/lang/String;Landroid/os/Handler;)V
.registers 5
:try_start_0
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_13
if-eqz p2, :cond_13
new-instance v0, Lcom/admarvel/android/ads/ab$e;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/ab$e;-><init>(Lcom/admarvel/android/ads/ab;Ljava/lang/String;)V
invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_12
return-void
:cond_13
new-instance v0, Lcom/admarvel/android/ads/ab$d;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/ab$d;-><init>(Lcom/admarvel/android/ads/ab;Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/ab$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_end_1e
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f
goto :goto_12
:catch_1f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_12
.end method
.method  b(Ljava/lang/String;)V
.registers 10
const/4 v3, 0x0
const/4 v4, 0x0
if-nez p1, :cond_5
:goto_4
:cond_4
return-void
:try_start_5
:cond_5
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_96
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/ab$b;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/admarvel/android/ads/ab$b;-><init>(Lcom/admarvel/android/ads/ab$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_18
new-instance v0, Lcom/admarvel/android/ads/AdMarvelXMLReader;
invoke-direct {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;-><init>()V
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v1
const-string v2, "trackers"
invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_146
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v0
const-string v1, "trackers"
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelXMLElement;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;
move-result-object v1
const-string v2, "id"
invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:try_start_4f
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4f} :catch_a3
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v2
const-string v5, "tracker"
invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_143
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v2
const-string v5, "tracker"
invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_6a} :catch_130
move-result v6
move v5, v3
move-object v3, v4
:goto_6d
if-ge v5, v6, :cond_ad
:try_start_6f
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;
move-result-object v2
const-string v7, "tracker"
invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/ArrayList;
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;
if-eqz v2, :cond_140
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->b()Ljava/lang/String;
move-result-object v7
if-nez v3, :cond_13d
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:try_start_8e
:goto_8e
:try_end_8e
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8e} :catch_138
invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_91
.catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_134
:goto_91
add-int/lit8 v3, v5, 0x1
move v5, v3
move-object v3, v2
goto :goto_6d
:try_start_96
:cond_96
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->d:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/ab$a;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/admarvel/android/ads/ab$a;-><init>(Lcom/admarvel/android/ads/ab$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_a1
.catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a1} :catch_a3
goto/16 :goto_18
:catch_a3
move-exception v0
move-object v3, v4
move-object v1, v4
:goto_a6
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_ad
:goto_ad
if-eqz v1, :cond_4
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_4
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_13b
iget-object v0, p0, Lcom/admarvel/android/ads/ab;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:goto_c1
if-eqz v0, :cond_4
invoke-static {v0, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4
if-eqz v3, :cond_4
:try_start_cb
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_4
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string v2, "mounted"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
new-instance v2, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "adm_tracker_dir"
invoke-static {v5}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
new-instance v0, Ljava/io/FileOutputStream;
invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v1, Ljava/io/ObjectOutputStream;
invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
:try_end_124
.catch Ljava/lang/Exception; {:try_start_cb .. :try_end_124} :catch_126
goto/16 :goto_4
:catch_126
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_4
:catch_130
move-exception v0
move-object v3, v4
goto/16 :goto_a6
:catch_134
move-exception v0
move-object v3, v2
goto/16 :goto_a6
:catch_138
move-exception v0
goto/16 :goto_a6
:cond_13b
move-object v0, v4
goto :goto_c1
:cond_13d
move-object v2, v3
goto/16 :goto_8e
:cond_140
move-object v2, v3
goto/16 :goto_91
:cond_143
move-object v3, v4
goto/16 :goto_ad
:cond_146
move-object v3, v4
move-object v1, v4
goto/16 :goto_ad
.end method