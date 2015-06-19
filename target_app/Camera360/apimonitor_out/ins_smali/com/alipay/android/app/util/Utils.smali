.class public Lcom/alipay/android/app/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.field private static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"
.field private static final ALIPAY_VERSION:Ljava/lang/String; = "7.0.0.0602"
.field private static final MSP_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.android.app"
.field private static final MSP_VERSION:Ljava/lang/String; = "5.0.0"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static chmod(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "chmod "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
:try_end_22
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23
:goto_22
return-void
:catch_23
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_22
.end method
.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
.registers 8
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const-string/jumbo v4, "\\."
invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
const-string/jumbo v4, "\\."
invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v5
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v2
:goto_32
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
if-lt v4, v2, :cond_43
:goto_38
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
if-lt v4, v2, :cond_4a
const/4 v1, 0x0
:goto_3f
if-lt v1, v2, :cond_51
const/4 v4, 0x0
:goto_42
return v4
:cond_43
const-string/jumbo v4, "0"
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_32
:cond_4a
const-string/jumbo v4, "0"
invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_38
:cond_51
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
if-ne v5, v4, :cond_6a
add-int/lit8 v1, v1, 0x1
goto :goto_3f
:cond_6a
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v5
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
sub-int v4, v5, v4
goto :goto_42
.end method
.method public static getAlixTid(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->isEmpty4AlixTid(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_a
const-string/jumbo v0, ""
:goto_9
return-object v0
:cond_a
const-string/jumbo v0, "alix_tid"
invoke-static {p0, v0}, Lcom/alipay/android/app/util/StoreUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
return-object v0
.end method
.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v5, -0x1
const/4 v0, 0x0
const-string/jumbo v1, "charset="
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-eq v3, v5, :cond_1d
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v4
add-int/2addr v3, v4
const-string/jumbo v4, ";"
invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v2
if-eq v2, v5, :cond_1e
invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_1d
:cond_1d
return-object v0
:cond_1e
invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_1d
.end method
.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getClientKey(Landroid/content/Context;)Ljava/lang/String;
.registers 8
const-string/jumbo v3, "client_key"
invoke-static {p0, v3}, Lcom/alipay/android/app/util/StoreUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_21
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
:goto_13
const/16 v3, 0xa
if-lt v1, v3, :cond_22
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "client_key"
invoke-static {p0, v3, v0}, Lcom/alipay/android/app/util/StoreUtils;->putValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:cond_21
return-object v0
:cond_22
const-wide/high16 v3, 0x4024
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v5
mul-double/2addr v3, v5
double-to-int v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method public static getContentType(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
const-string/jumbo v1, ";"
invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-lez v2, :cond_10
const/4 v3, 0x0
invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:goto_f
return-object v0
:cond_10
move-object v0, p0
goto :goto_f
.end method
.method public static getDefaultLocale(Landroid/content/Context;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
.end method
.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
.registers 4
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
const-string/jumbo v2, "window"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/WindowManager;
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
return-object v1
.end method
.method public static getFormattedKernelVersion()Ljava/lang/String;
.registers 9
const/4 v8, 0x4
:try_start_1
new-instance v5, Ljava/io/BufferedReader;
new-instance v6, Ljava/io/FileReader;
const-string/jumbo v7, "/proc/version"
invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
const/16 v7, 0x100
invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
:try_start_10
:try_end_10
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_34
invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_13
.catchall {:try_start_10 .. :try_end_13} :catchall_2f
move-result-object v4
:try_start_14
invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
const-string/jumbo v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"
const-string/jumbo v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"
invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v3
invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
:try_end_28
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_28} :catch_34
move-result v6
if-nez v6, :cond_39
const-string/jumbo v6, "Unavailable"
:goto_2e
return-object v6
:catchall_2f
move-exception v6
:try_start_30
invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
throw v6
:try_end_34
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34
:catch_34
move-exception v1
const-string/jumbo v6, "Unavailable"
goto :goto_2e
:cond_39
:try_start_39
invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I
:try_end_3c
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_34
move-result v6
if-ge v6, v8, :cond_43
const-string/jumbo v6, "Unavailable"
goto :goto_2e
:try_start_43
:cond_43
new-instance v6, Ljava/lang/StringBuilder;
const/4 v7, 0x1
invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "\n"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/4 v7, 0x2
invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, " "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/4 v7, 0x3
invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string/jumbo v7, "\n"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/4 v7, 0x4
invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_80
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_80} :catch_34
move-result-object v6
goto :goto_2e
.end method
.method public static getKernelVersion(Landroid/content/Context;)Ljava/lang/String;
.registers 6
const/4 v4, 0x0
const/4 v3, -0x1
invoke-static {}, Lcom/alipay/android/app/util/Utils;->getFormattedKernelVersion()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "-"
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v3, :cond_13
invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_13
const-string/jumbo v2, "\n"
invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v1
if-eq v1, v3, :cond_20
invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
:cond_20
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Linux "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static getNetConnectionType(Landroid/content/Context;)Lcom/alipay/android/app/util/NetConnectionType;
.registers 5
const-string/jumbo v2, "connectivity"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_1e
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
move-result v2
if-nez v2, :cond_1e
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I
move-result v2
invoke-static {v2}, Lcom/alipay/android/app/util/NetConnectionType;->getTypeByCode(I)Lcom/alipay/android/app/util/NetConnectionType;
move-result-object v2
:goto_1d
return-object v2
:cond_1e
if-eqz v1, :cond_2a
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_2a
sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->WIFI:Lcom/alipay/android/app/util/NetConnectionType;
goto :goto_1d
:cond_2a
sget-object v2, Lcom/alipay/android/app/util/NetConnectionType;->NONE:Lcom/alipay/android/app/util/NetConnectionType;
goto :goto_1d
.end method
.method private static getOsInfo(Landroid/content/Context;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "Android "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v2, "*"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
.registers 8
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getOsInfo(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getKernelVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getDefaultLocale(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getScreenResolution(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, " ("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ";"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ";"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ";"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ";"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "(sdk android)"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method public static installApk(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
const-string/jumbo v1, "777"
invoke-static {v1, p1}, Lcom/alipay/android/app/util/Utils;->chmod(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v1, 0x1000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "file://"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string/jumbo v2, "application/vnd.android.package-archive"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static is2G(Landroid/content/Context;)Z
.registers 3
invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->getNetConnectionType(Landroid/content/Context;)Lcom/alipay/android/app/util/NetConnectionType;
move-result-object v1
invoke-virtual {v1}, Lcom/alipay/android/app/util/NetConnectionType;->getCode()I
move-result v0
packed-switch v0, :pswitch_data_10
:pswitch_b
const/4 v1, 0x0
:goto_c
return v1
:pswitch_d
const/4 v1, 0x1
goto :goto_c
nop
:pswitch_data_10
.packed-switch 0x1
:pswitch_d
:pswitch_d
:pswitch_b
:pswitch_d
.end packed-switch
.end method
.method public static isEmpty4AlixTid(Landroid/content/Context;)Z
.registers 3
const-string/jumbo v1, "alix_tid"
invoke-static {p0, v1}, Lcom/alipay/android/app/util/StoreUtils;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_f
const/4 v1, 0x1
:goto_e
return v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method public static isExistClient(Landroid/content/Context;)Z
.registers 8
const/4 v4, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const-string/jumbo v5, "com.eg.android.AlipayGphone"
const/16 v6, 0x80
invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
if-nez v0, :cond_11
:cond_10
:goto_10
return v4
:cond_11
iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
const-string/jumbo v5, "7.0.0.0602"
invoke-static {v3, v5}, Lcom/alipay/android/app/util/Utils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I
:try_end_19
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1e
move-result v5
if-ltz v5, :cond_10
const/4 v4, 0x1
goto :goto_10
:catch_1e
move-exception v1
goto :goto_10
.end method
.method public static isExistMsp(Landroid/content/Context;)Z
.registers 7
const/4 v3, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const-string/jumbo v4, "com.alipay.android.app"
const/16 v5, 0x80
invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_d
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_11
move-result-object v0
if-nez v0, :cond_13
:goto_10
return v3
:catch_11
move-exception v1
goto :goto_10
:cond_13
const/4 v3, 0x1
goto :goto_10
.end method
.method public static isLatestMspVersion(Landroid/content/Context;)Z
.registers 8
const/4 v4, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
const-string/jumbo v5, "com.alipay.android.app"
const/16 v6, 0x80
invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
const-string/jumbo v5, "5.0.0"
invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
:try_end_16
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1b
move-result v5
if-ltz v5, :cond_1a
const/4 v4, 0x1
:goto_1a
:cond_1a
return v4
:catch_1b
move-exception v1
goto :goto_1a
.end method
.method public static isVerifyURL(Ljava/lang/String;)Z
.registers 5
const-string/jumbo v2, "^(http|https)://([a-zA-Z0-9])+.alipay.com/.*"
invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v3
return v3
.end method
.method public static retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 12
const/4 v7, 0x0
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v8
invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v5
new-instance v2, Ljava/io/File;
invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
const/16 v8, 0x400
new-array v6, v8, [B
const/4 v4, 0x0
:goto_1c
invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I
move-result v4
if-gtz v4, :cond_2b
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v5}, Ljava/io/InputStream;->close()V
const/4 v0, 0x1
move v7, v0
:goto_2a
return v7
:cond_2b
const/4 v8, 0x0
invoke-virtual {v3, v6, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_2f
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_30
goto :goto_1c
:catch_30
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2a
.end method