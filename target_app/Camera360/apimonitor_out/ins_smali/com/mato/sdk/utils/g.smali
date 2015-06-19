.class public final Lcom/mato/sdk/utils/g;
.super Ljava/lang/Object;
.field private static final a:Ljava/lang/String; = "Mato.MatoUtil"
.field private static b:Landroid/content/Context;
.field private static c:I
.field private static d:I
.field private static final e:Ljavax/security/auth/x500/X500Principal;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
sput v0, Lcom/mato/sdk/utils/g;->c:I
sput v0, Lcom/mato/sdk/utils/g;->d:I
new-instance v0, Ljavax/security/auth/x500/X500Principal;
const-string/jumbo v1, "CN=Android Debug,O=Android,C=US"
invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mato/sdk/utils/g;->e:Ljavax/security/auth/x500/X500Principal;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Z)Lcom/mato/android/matoid/service/mtunnel/g;
.registers 3
invoke-static {}, Lcom/mato/sdk/utils/g;->q()V
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;
if-nez p0, :cond_1f
invoke-static {}, Lcom/mato/sdk/a/b;->e()I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_56
const/16 v0, 0xe
invoke-static {v0}, Lcom/mato/sdk/utils/g;->d(I)Z
move-result v0
if-nez v0, :cond_20
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/g;->a()I
move-result v1
invoke-static {v1}, Lcom/mato/sdk/a/b;->b(I)V
:goto_1f
:cond_1f
return-object v0
:cond_20
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
const-string/jumbo v1, "has_alpha.wsg"
invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_53
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
const-string/jumbo v1, "no_alpha.wsg"
invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_50
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->a:Lcom/mato/android/matoid/service/mtunnel/g;
:goto_48
invoke-virtual {v0}, Lcom/mato/android/matoid/service/mtunnel/g;->a()I
move-result v1
invoke-static {v1}, Lcom/mato/sdk/a/b;->b(I)V
goto :goto_1f
:cond_50
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->b:Lcom/mato/android/matoid/service/mtunnel/g;
goto :goto_48
:cond_53
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/g;->c:Lcom/mato/android/matoid/service/mtunnel/g;
goto :goto_48
:cond_56
invoke-static {}, Lcom/mato/android/matoid/service/mtunnel/g;->b()[Lcom/mato/android/matoid/service/mtunnel/g;
move-result-object v1
aget-object v0, v1, v0
goto :goto_1f
.end method
.method public static a()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/mato/sdk/utils/g;->q()V
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(I)Ljava/lang/String;
.registers 7
rem-int/lit16 v0, p0, 0x3e8
div-int/lit16 v1, p0, 0x3e8
rem-int/lit16 v2, v1, 0x3e8
div-int/lit16 v1, v1, 0x3e8
const-string/jumbo v3, "2.8.0"
const-string/jumbo v4, "\\."
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v4, "."
invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v1
const-string/jumbo v2, "."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string/jumbo v1, "."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 1
sput-object p0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
return-void
.end method
.method public static b()Ljava/lang/String;
.registers 2
invoke-static {}, Lcom/mato/sdk/utils/g;->q()V
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
const-string/jumbo v1, "phone"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_17
const-string/jumbo v0, "null"
:cond_17
return-object v0
.end method
.method public static b(I)V
.registers 1
sput p0, Lcom/mato/sdk/utils/g;->c:I
return-void
.end method
.method public static b(Landroid/content/Context;)Z
.registers 6
const/4 v1, 0x0
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_39
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "MAA"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "the wap is:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/mato/sdk/utils/f;->c(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_37
const-string/jumbo v2, "3gwap"
invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const/4 v0, 0x1
:goto_36
return v0
:cond_37
move v0, v1
goto :goto_36
:cond_39
move v0, v1
goto :goto_36
.end method
.method public static c()Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/mato/sdk/utils/g;->q()V
:try_start_3
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
sget-object v1, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x40
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
array-length v1, v0
if-lez v1, :cond_27
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v0
invoke-static {v0}, Lcom/mato/sdk/utils/j;->a([B)Ljava/lang/String;
:try_end_24
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_24} :catch_26
move-result-object v0
:goto_25
return-object v0
:catch_26
move-exception v0
:cond_27
const/4 v0, 0x0
goto :goto_25
.end method
.method public static c(I)V
.registers 1
sput p0, Lcom/mato/sdk/utils/g;->d:I
return-void
.end method
.method public static c(Landroid/content/Context;)Z
.registers 7
const/4 v1, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x40
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
move v2, v1
:goto_12
array-length v0, v3
if-lt v2, v0, :cond_17
move v0, v1
:cond_16
:goto_16
return v0
:cond_17
const-string/jumbo v0, "X.509"
invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
move-result-object v0
new-instance v4, Ljava/io/ByteArrayInputStream;
aget-object v5, v3, v2
invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B
move-result-object v5
invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
move-result-object v0
check-cast v0, Ljava/security/cert/X509Certificate;
invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
move-result-object v0
sget-object v4, Lcom/mato/sdk/utils/g;->e:Ljavax/security/auth/x500/X500Principal;
invoke-virtual {v0, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
:try_end_38
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_43
.catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_38} :catch_40
move-result v0
if-nez v0, :cond_16
add-int/lit8 v1, v2, 0x1
move v2, v1
move v1, v0
goto :goto_12
:catch_40
move-exception v0
move v0, v1
goto :goto_16
:catch_43
move-exception v0
move v0, v1
goto :goto_16
.end method
.method public static d()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/mato/sdk/utils/g;->q()V
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static d(I)Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, p0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public static e()I
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "/proc/meminfo"
:try_start_4
new-instance v2, Ljava/io/FileReader;
invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/BufferedReader;
const/16 v3, 0x2000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "\\s+"
invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
:try_end_1a
.catch Ljava/io/IOException; {:try_start_4 .. :try_end_1a} :catch_28
move-result-object v2
const/4 v3, 0x1
:try_start_1c
aget-object v2, v2, v3
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
div-int/lit16 v0, v2, 0x400
:goto_24
:try_end_24
.catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_24} :catch_2a
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_28
:try_start_24
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:goto_27
:try_end_27
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28
return v0
:catch_28
move-exception v1
goto :goto_27
:catch_2a
move-exception v2
goto :goto_24
.end method
.method public static f()I
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"
const-string/jumbo v2, "/proc/cpuinfo"
:try_start_7
new-instance v3, Ljava/io/FileReader;
invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/BufferedReader;
invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_1b
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_21
.catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_1b} :catch_59
move-result v0
const/high16 v1, 0x4480
div-float/2addr v0, v1
float-to-int v0, v0
:goto_20
return v0
:catch_21
move-exception v1
const-string/jumbo v1, "Mato.MatoUtil"
const-string/jumbo v3, "can not get cur freq, try to get from /proc/cpuinfo"
invoke-static {v1, v3}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2b
new-instance v1, Ljava/io/FileReader;
invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/BufferedReader;
const/16 v3, 0x2000
invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
const-string/jumbo v2, "\\s+"
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_4e
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4e} :catch_51
move-result v0
float-to-int v0, v0
goto :goto_20
:catch_51
move-exception v1
const-string/jumbo v2, "Mato.MatoUtil"
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/Exception;Ljava/lang/String;)V
goto :goto_20
:catch_59
move-exception v1
const-string/jumbo v2, "Mato.MatoUtil"
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/Exception;Ljava/lang/String;)V
goto :goto_20
.end method
.method public static g()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd-HH-mm"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static h()Z
.registers 1
const/16 v0, 0x8
invoke-static {v0}, Lcom/mato/sdk/utils/g;->d(I)Z
move-result v0
return v0
.end method
.method public static i()Ljava/io/File;
.registers 1
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v0
return-object v0
.end method
.method public static j()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
:try_start_6
sget-object v1, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_13
:try_end_13
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_14
return-object v0
:catch_14
move-exception v0
const-string/jumbo v0, ""
goto :goto_13
.end method
.method public static k()Ljava/lang/String;
.registers 3
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
const-string/jumbo v1, "window"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v0
new-instance v1, Landroid/util/DisplayMetrics;
invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
const-string/jumbo v2, "*"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static l()Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string/jumbo v1, "android/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static m()I
.registers 1
sget v0, Lcom/mato/sdk/utils/g;->c:I
return v0
.end method
.method public static n()I
.registers 1
sget v0, Lcom/mato/sdk/utils/g;->d:I
return v0
.end method
.method public static o()Z
.registers 4
const/4 v0, 0x0
const-string/jumbo v1, "/proc/cpuinfo"
:try_start_4
new-instance v2, Ljava/io/FileReader;
invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/BufferedReader;
const/16 v3, 0x2000
invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:try_end_17
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_2c
const-string/jumbo v1, "ARM"
invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2a
const-string/jumbo v1, "Marvell"
invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2a
:goto_29
return v0
:cond_2a
const/4 v0, 0x1
goto :goto_29
:catch_2c
move-exception v1
goto :goto_29
.end method
.method public static p()Z
.registers 3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "zh"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_50
const-string/jumbo v2, "cn"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_43
const-string/jumbo v0, "zh-CN"
:goto_25
:cond_25
if-eqz v0, :cond_73
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "zh-CN"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_41
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "zh-TW"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_73
:cond_41
const/4 v0, 0x1
:goto_42
return v0
:cond_43
const-string/jumbo v2, "tw"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
const-string/jumbo v0, "zh-TW"
goto :goto_25
:cond_50
const-string/jumbo v2, "pt"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
const-string/jumbo v2, "br"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_66
const-string/jumbo v0, "pt-BR"
goto :goto_25
:cond_66
const-string/jumbo v2, "pt"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
const-string/jumbo v0, "pt-PT"
goto :goto_25
:cond_73
const/4 v0, 0x0
goto :goto_42
.end method
.method private static q()V
.registers 2
sget-object v0, Lcom/mato/sdk/utils/g;->b:Landroid/content/Context;
if-nez v0, :cond_16
const-string/jumbo v0, "Mato.MatoUtil"
const-string/jumbo v1, "context is null"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->d(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/lang/NullPointerException;
const-string/jumbo v1, "context is null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
return-void
.end method
.method private static r()Z
.registers 1
const/16 v0, 0xe
invoke-static {v0}, Lcom/mato/sdk/utils/g;->d(I)Z
move-result v0
return v0
.end method
.method private static s()Ljava/lang/String;
.registers 3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "zh"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_33
const-string/jumbo v2, "cn"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
const-string/jumbo v0, "zh-CN"
:goto_25
:cond_25
return-object v0
:cond_26
const-string/jumbo v2, "tw"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
const-string/jumbo v0, "zh-TW"
goto :goto_25
:cond_33
const-string/jumbo v2, "pt"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_25
const-string/jumbo v2, "br"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_49
const-string/jumbo v0, "pt-BR"
goto :goto_25
:cond_49
const-string/jumbo v2, "pt"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
const-string/jumbo v0, "pt-PT"
goto :goto_25
.end method