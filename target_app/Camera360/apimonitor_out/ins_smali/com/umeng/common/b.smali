.class public Lcom/umeng/common/b;
.super Ljava/lang/Object;
.source "DeviceConfig.java"
.field protected static final a:Ljava/lang/String; = null
.field protected static final b:Ljava/lang/String; = "Unknown"
.field public static final c:I = 0x8
.field private static final d:Ljava/lang/String; = "2G/3G"
.field private static final e:Ljava/lang/String; = "Wi-Fi"
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/common/b;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
.registers 4
:try_start_0
const-class v0, Landroid/util/DisplayMetrics;
invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
:try_end_d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f
move-result v0
:goto_e
return v0
:catch_f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v0, -0x1
goto :goto_e
.end method
.method public static a(Ljava/util/Date;Ljava/util/Date;)I
.registers 7
invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_15
:goto_6
invoke-virtual {p1}, Ljava/util/Date;->getTime()J
move-result-wide v0
invoke-virtual {p0}, Ljava/util/Date;->getTime()J
move-result-wide v2
sub-long v0, v2, v0
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
long-to-int v0, v0
return v0
:cond_15
move-object v4, p1
move-object p1, p0
move-object p0, v4
goto :goto_6
.end method
.method public static a()Ljava/lang/String;
.registers 4
const/4 v1, 0x0
:try_start_1
new-instance v0, Ljava/io/FileReader;
const-string/jumbo v2, "/proc/cpuinfo"
invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
:try_end_9
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_3b
if-eqz v0, :cond_46
:try_start_b
new-instance v2, Ljava/io/BufferedReader;
const/16 v3, 0x400
invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v0}, Ljava/io/FileReader;->close()V
:try_end_1c
.catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_30
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1c} :catch_3b
move-object v0, v1
:goto_1d
if-eqz v0, :cond_2b
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:cond_2b
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
return-object v0
:catch_30
move-exception v0
:try_start_31
sget-object v2, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v3, "Could not read from file /proc/cpuinfo"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
:try_end_39
.catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_39} :catch_3b
move-object v0, v1
goto :goto_1d
:catch_3b
move-exception v0
sget-object v2, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v3, "Could not open file /proc/cpuinfo"
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
move-object v0, v1
goto :goto_1d
:cond_46
move-object v0, v1
goto :goto_1d
.end method
.method public static a(Ljava/util/Date;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Ljava/util/Date;
.registers 3
:try_start_0
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v0
:goto_c
return-object v0
:catch_d
move-exception v0
const/4 v0, 0x0
goto :goto_c
.end method
.method public static a(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
.registers 5
const/4 v0, 0x1
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x1
:try_start_6
invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_9
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a
:goto_9
return v0
:catch_a
move-exception v0
const/4 v0, 0x0
goto :goto_9
.end method
.method public static a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
.registers 6
const/4 v4, 0x0
const/4 v0, 0x2
:try_start_2
new-array v0, v0, [Ljava/lang/String;
const/16 v1, 0x1f00
invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;
move-result-object v1
const/16 v2, 0x1f01
invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
aput-object v1, v0, v3
const/4 v1, 0x1
aput-object v2, v0, v1
:goto_16
:try_end_16
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17
return-object v0
:catch_17
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "Could not read gpu infor:"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
new-array v0, v4, [Ljava/lang/String;
goto :goto_16
.end method
.method public static b(Landroid/content/Context;)Ljava/util/Set;
.registers 5
const/4 v0, 0x0
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
move-result-object v3
move v1, v0
:goto_f
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-lt v1, v0, :cond_16
return-object v2
:cond_16
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/PackageInfo;
iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
.end method
.method public static b()Z
.registers 2
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "mounted"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public static c()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Ljava/text/SimpleDateFormat;
const-string/jumbo v2, "yyyy-MM-dd"
invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v0, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static d(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
:try_end_12
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_14
move-result-object v0
:goto_13
return-object v0
:catch_14
move-exception v0
const-string/jumbo v0, "Unknown"
goto :goto_13
.end method
.method public static e(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_f
:try_end_f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10
return-object v0
:catch_10
move-exception v0
const-string/jumbo v0, "Unknown"
goto :goto_f
.end method
.method public static f(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
:try_start_4
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_16
move-result-object v0
:goto_d
if-eqz v0, :cond_19
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
:goto_13
check-cast v0, Ljava/lang/String;
return-object v0
:catch_16
move-exception v0
const/4 v0, 0x0
goto :goto_d
:cond_19
const-string/jumbo v0, ""
goto :goto_13
.end method
.method public static g(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const-string/jumbo v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
if-nez v0, :cond_13
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "No IMEI."
invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_13
const-string/jumbo v1, ""
:try_start_16
const-string/jumbo v2, "android.permission.READ_PHONE_STATE"
invoke-static {p0, v2}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6d
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
:try_end_22
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_64
move-result-object v0
:goto_23
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_63
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v1, "No IMEI."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_63
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v1, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "android_id"
invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "getDeviceId: Secure.ANDROID_ID: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_63
return-object v0
:catch_64
move-exception v0
sget-object v2, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v3, "No IMEI."
invoke-static {v2, v3, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
:cond_6d
move-object v0, v1
goto :goto_23
.end method
.method public static h(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/umeng/common/util/g;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static i(Landroid/content/Context;)Ljava/lang/String;
.registers 2
:try_start_0
const-string/jumbo v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_14
if-nez v0, :cond_f
const-string/jumbo v0, "Unknown"
:goto_e
return-object v0
:cond_f
:try_start_f
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
:try_end_12
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_14
move-result-object v0
goto :goto_e
:catch_14
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "Unknown"
goto :goto_e
.end method
.method public static j(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
const-string/jumbo v0, "window"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "*"
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_38
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a
move-result-object v0
:goto_39
return-object v0
:catch_3a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v0, "Unknown"
goto :goto_39
.end method
.method public static k(Landroid/content/Context;)[Ljava/lang/String;
.registers 7
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v0, 0x2
new-array v1, v0, [Ljava/lang/String;
const-string/jumbo v0, "Unknown"
aput-object v0, v1, v4
const-string/jumbo v0, "Unknown"
aput-object v0, v1, v5
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_27
const-string/jumbo v0, "Unknown"
aput-object v0, v1, v4
move-object v0, v1
:goto_26
return-object v0
:cond_27
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_39
const-string/jumbo v0, "Unknown"
aput-object v0, v1, v4
move-object v0, v1
goto :goto_26
:cond_39
invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v2
invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v2
sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
if-ne v2, v3, :cond_4c
const-string/jumbo v0, "Wi-Fi"
aput-object v0, v1, v4
move-object v0, v1
goto :goto_26
:cond_4c
invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;
move-result-object v2
sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
if-ne v2, v3, :cond_65
const-string/jumbo v2, "2G/3G"
aput-object v2, v1, v4
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
move-result-object v0
aput-object v0, v1, v5
move-object v0, v1
goto :goto_26
:cond_65
move-object v0, v1
goto :goto_26
.end method
.method public static l(Landroid/content/Context;)Z
.registers 4
const-string/jumbo v0, "Wi-Fi"
invoke-static {p0}, Lcom/umeng/common/b;->k(Landroid/content/Context;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public static m(Landroid/content/Context;)Landroid/location/Location;
.registers 7
const/4 v2, 0x0
:try_start_1
const-string/jumbo v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {p0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_46
const-string/jumbo v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
if-eqz v1, :cond_46
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "get location from gps:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
:goto_45
return-object v0
:cond_46
const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {p0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8d
const-string/jumbo v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
if-eqz v0, :cond_8d
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "get location from network:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ","
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {v0}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_80
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_81
goto :goto_45
:catch_81
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v2
goto :goto_45
:cond_8d
:try_start_8d
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v1, "Could not get location from GPS or Cell-id, lack ACCESS_COARSE_LOCATION or ACCESS_COARSE_LOCATION permission?"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_95
.catch Ljava/lang/Exception; {:try_start_8d .. :try_end_95} :catch_81
move-object v0, v2
goto :goto_45
.end method
.method public static n(Landroid/content/Context;)Z
.registers 2
:try_start_0
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_14
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
:try_end_12
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_16
move-result v0
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
:catch_16
move-exception v0
const/4 v0, 0x1
goto :goto_13
.end method
.method public static o(Landroid/content/Context;)I
.registers 4
:try_start_0
invoke-static {p0}, Lcom/umeng/common/b;->y(Landroid/content/Context;)Ljava/util/Locale;
move-result-object v0
invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;
move-result-object v0
invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I
move-result v0
const v1, 0x36ee80
div-int/2addr v0, v1
:goto_16
:try_end_16
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17
return v0
:catch_17
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "error in getTimeZone"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
:cond_20
const/16 v0, 0x8
goto :goto_16
.end method
.method public static p(Landroid/content/Context;)[Ljava/lang/String;
.registers 5
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
:try_start_3
invoke-static {p0}, Lcom/umeng/common/b;->y(Landroid/content/Context;)Ljava/util/Locale;
move-result-object v1
if-eqz v1, :cond_17
const/4 v2, 0x0
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v3
aput-object v3, v0, v2
const/4 v2, 0x1
invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v2
:cond_17
const/4 v1, 0x0
aget-object v1, v0, v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_26
const/4 v1, 0x0
const-string/jumbo v2, "Unknown"
aput-object v2, v0, v1
:cond_26
const/4 v1, 0x1
aget-object v1, v0, v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_35
const/4 v1, 0x1
const-string/jumbo v2, "Unknown"
aput-object v2, v0, v1
:cond_35
:goto_35
:try_end_35
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36
return-object v0
:catch_36
move-exception v1
sget-object v2, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v3, "error in getLocaleInfo"
invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_35
.end method
.method public static q(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
if-eqz v0, :cond_28
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v1, "UMENG_APPKEY"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
:goto_1f
return-object v0
:cond_20
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v1, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_28
:goto_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a
const/4 v0, 0x0
goto :goto_1f
:catch_2a
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_28
.end method
.method public static r(Landroid/content/Context;)Ljava/lang/String;
.registers 5
:try_start_0
const-string/jumbo v0, "wifi"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"
invoke-static {p0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v1, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_27
const-string/jumbo v0, ""
goto :goto_1a
:catch_27
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Could not get mac address."
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_23
.end method
.method public static s(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const/4 v2, -0x1
:try_start_1
new-instance v3, Landroid/util/DisplayMetrics;
invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V
const-string/jumbo v0, "window"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
and-int/lit16 v0, v0, 0x2000
if-nez v0, :cond_59
const-string/jumbo v0, "noncompatWidthPixels"
invoke-static {v3, v0}, Lcom/umeng/common/b;->a(Ljava/lang/Object;Ljava/lang/String;)I
move-result v1
const-string/jumbo v0, "noncompatHeightPixels"
invoke-static {v3, v0}, Lcom/umeng/common/b;->a(Ljava/lang/Object;Ljava/lang/String;)I
move-result v0
:goto_2e
if-eq v1, v2, :cond_32
if-ne v0, v2, :cond_36
:cond_32
iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I
iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I
:cond_36
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
const-string/jumbo v1, "*"
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4c
move-result-object v0
:goto_4b
return-object v0
:catch_4c
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "read resolution fail"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
const-string/jumbo v0, "Unknown"
goto :goto_4b
:cond_59
move v0, v2
move v1, v2
goto :goto_2e
.end method
.method public static t(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
const-string/jumbo v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e
move-result-object v0
:goto_d
return-object v0
:catch_e
move-exception v0
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "read carrier fail"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
const-string/jumbo v0, "Unknown"
goto :goto_d
.end method
.method public static u(Landroid/content/Context;)Ljava/lang/String;
.registers 5
const-string/jumbo v1, "Unknown"
:try_start_3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
if-eqz v0, :cond_3f
iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v2, :cond_3f
iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v2, "UMENG_CHANNEL"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_29
:goto_28
return-object v0
:cond_29
sget-object v0, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."
invoke-static {v0, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_end_31
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_31} :catch_33
move-object v0, v1
goto :goto_28
:catch_33
move-exception v0
sget-object v2, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v3, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."
invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_3f
move-object v0, v1
goto :goto_28
.end method
.method public static v(Landroid/content/Context;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static w(Landroid/content/Context;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static x(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
:try_end_7
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_d
and-int/lit8 v1, v1, 0x2
if-eqz v1, :cond_c
const/4 v0, 0x1
:cond_c
:goto_c
return v0
:catch_d
move-exception v1
goto :goto_c
.end method
.method private static y(Landroid/content/Context;)Ljava/util/Locale;
.registers 4
const/4 v0, 0x0
:try_start_1
new-instance v1, Landroid/content/res/Configuration;
invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
if-eqz v1, :cond_11
iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
:cond_11
:try_end_11
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_18
:goto_11
if-nez v0, :cond_17
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
:cond_17
return-object v0
:catch_18
move-exception v1
sget-object v1, Lcom/umeng/common/b;->a:Ljava/lang/String;
const-string/jumbo v2, "fail to read user config locale"
invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
.end method