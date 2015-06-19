.class public final Lcom/google/android/gms/internal/cm;
.super Ljava/lang/Object;
.field public final oM:I
.field public final oN:Z
.field public final oO:Z
.field public final oP:Ljava/lang/String;
.field public final oQ:Ljava/lang/String;
.field public final oR:Z
.field public final oS:Z
.field public final oT:Z
.field public final oU:Ljava/lang/String;
.field public final oV:Ljava/lang/String;
.field public final oW:I
.field public final oX:I
.field public final oY:I
.field public final oZ:I
.field public final pa:I
.field public final pb:I
.field public final pc:F
.field public final pd:I
.field public final pe:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 11
const/4 v4, 0x1
const/4 v5, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "audio"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
const-string v1, "connectivity"
invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v6
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v7
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v8
const-string v2, "phone"
invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/cm;->oM:I
const-string v3, "geo:0,0?q=donuts"
invoke-static {v8, v3}, Lcom/google/android/gms/internal/cm;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-eqz v3, :cond_a5
move v3, v4
:goto_3c
iput-boolean v3, p0, Lcom/google/android/gms/internal/cm;->oN:Z
const-string v3, "http://www.google.com"
invoke-static {v8, v3}, Lcom/google/android/gms/internal/cm;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-eqz v3, :cond_a7
:goto_46
iput-boolean v4, p0, Lcom/google/android/gms/internal/cm;->oO:Z
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/cm;->oP:Ljava/lang/String;
invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/cm;->oQ:Ljava/lang/String;
invoke-static {}, Lcom/google/android/gms/internal/cz;->aW()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/cm;->oR:Z
invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/cm;->oS:Z
invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/cm;->oT:Z
invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/cm;->oU:Ljava/lang/String;
invoke-static {v8}, Lcom/google/android/gms/internal/cm;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/cm;->oV:Ljava/lang/String;
const/4 v3, 0x3
invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/cm;->oW:I
invoke-static {p1, v1, v8}, Lcom/google/android/gms/internal/cm;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
move-result v1
iput v1, p0, Lcom/google/android/gms/internal/cm;->oX:I
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v1
iput v1, p0, Lcom/google/android/gms/internal/cm;->oY:I
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v1
iput v1, p0, Lcom/google/android/gms/internal/cm;->oZ:I
invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I
move-result v1
iput v1, p0, Lcom/google/android/gms/internal/cm;->pa:I
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/cm;->pb:I
iget v0, v6, Landroid/util/DisplayMetrics;->density:F
iput v0, p0, Lcom/google/android/gms/internal/cm;->pc:F
iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I
iput v0, p0, Lcom/google/android/gms/internal/cm;->pd:I
iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I
iput v0, p0, Lcom/google/android/gms/internal/cm;->pe:I
return-void
:cond_a5
move v3, v5
goto :goto_3c
:cond_a7
move v4, v5
goto :goto_46
.end method
.method private static a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
.registers 6
const/4 v0, -0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-string v2, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_17
invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
:cond_17
:goto_17
return v0
:cond_18
const/4 v0, -0x1
goto :goto_17
.end method
.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
.registers 5
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v1, 0x1
invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
.registers 5
const/4 v0, 0x0
const-string v1, "market://details?id=com.google.android.gms.ads"
invoke-static {p0, v1}, Lcom/google/android/gms/internal/cm;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
move-result-object v1
if-nez v1, :cond_a
:goto_9
:cond_9
return-object v0
:cond_a
iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
if-eqz v1, :cond_9
:try_start_e
iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
if-eqz v2, :cond_9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_31
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_31} :catch_33
move-result-object v0
goto :goto_9
:catch_33
move-exception v1
goto :goto_9
.end method