.class public final Lcom/google/android/gms/internal/ed;
.super Ljava/lang/Object;
.field public final qY:I
.field public final qZ:Z
.field public final ra:Z
.field public final rb:Ljava/lang/String;
.field public final rc:Ljava/lang/String;
.field public final rd:Z
.field public final re:Z
.field public final rf:Z
.field public final rg:Ljava/lang/String;
.field public final rh:Ljava/lang/String;
.field public final ri:I
.field public final rj:I
.field public final rk:I
.field public final rl:I
.field public final rm:I
.field public final rn:I
.field public final ro:F
.field public final rp:I
.field public final rq:I
.field public final rr:D
.field public final rs:Z
.field public final rt:Z
.field public final ru:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 14
const/4 v11, 0x2
const/4 v4, 0x1
const/4 v5, 0x0
const/4 v10, -0x1
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
new-instance v3, Landroid/content/IntentFilter;
const-string v9, "android.intent.action.BATTERY_CHANGED"
invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
const/4 v9, 0x0
invoke-virtual {p1, v9, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
move-result-object v9
invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/ed;->qY:I
const-string v3, "geo:0,0?q=donuts"
invoke-static {v8, v3}, Lcom/google/android/gms/internal/ed;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-eqz v3, :cond_f4
move v3, v4
:goto_4a
iput-boolean v3, p0, Lcom/google/android/gms/internal/ed;->qZ:Z
const-string v3, "http://www.google.com"
invoke-static {v8, v3}, Lcom/google/android/gms/internal/ed;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
move-result-object v3
if-eqz v3, :cond_f7
move v3, v4
:goto_55
iput-boolean v3, p0, Lcom/google/android/gms/internal/ed;->ra:Z
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/ed;->rb:Ljava/lang/String;
invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/ed;->rc:Ljava/lang/String;
invoke-static {}, Lcom/google/android/gms/internal/eu;->bQ()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/ed;->rd:Z
invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/ed;->re:Z
invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z
move-result v3
iput-boolean v3, p0, Lcom/google/android/gms/internal/ed;->rf:Z
invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/ed;->rg:Ljava/lang/String;
invoke-static {v8}, Lcom/google/android/gms/internal/ed;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/google/android/gms/internal/ed;->rh:Ljava/lang/String;
const/4 v3, 0x3
invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/ed;->ri:I
invoke-static {p1, v1, v8}, Lcom/google/android/gms/internal/ed;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/ed;->rj:I
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I
move-result v3
iput v3, p0, Lcom/google/android/gms/internal/ed;->rk:I
invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I
move-result v2
iput v2, p0, Lcom/google/android/gms/internal/ed;->rl:I
invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I
move-result v2
iput v2, p0, Lcom/google/android/gms/internal/ed;->rm:I
invoke-virtual {v0, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ed;->rn:I
iget v0, v6, Landroid/util/DisplayMetrics;->density:F
iput v0, p0, Lcom/google/android/gms/internal/ed;->ro:F
iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I
iput v0, p0, Lcom/google/android/gms/internal/ed;->rp:I
iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I
iput v0, p0, Lcom/google/android/gms/internal/ed;->rq:I
if-eqz v9, :cond_fc
const-string v0, "status"
invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string v2, "level"
invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
const-string v3, "scale"
invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
int-to-float v2, v2
int-to-float v3, v3
div-float/2addr v2, v3
float-to-double v2, v2
iput-wide v2, p0, Lcom/google/android/gms/internal/ed;->rr:D
if-eq v0, v11, :cond_d1
const/4 v2, 0x5
if-ne v0, v2, :cond_fa
:goto_d1
:cond_d1
iput-boolean v4, p0, Lcom/google/android/gms/internal/ed;->rs:Z
:goto_d3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v0, v2, :cond_106
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/ed;->rt:Z
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_103
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
move-result-object v0
invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/ed;->ru:I
:goto_f3
return-void
:cond_f4
move v3, v5
goto/16 :goto_4a
:cond_f7
move v3, v5
goto/16 :goto_55
:cond_fa
move v4, v5
goto :goto_d1
:cond_fc
const-wide/high16 v2, -0x4010
iput-wide v2, p0, Lcom/google/android/gms/internal/ed;->rr:D
iput-boolean v5, p0, Lcom/google/android/gms/internal/ed;->rs:Z
goto :goto_d3
:cond_103
iput v10, p0, Lcom/google/android/gms/internal/ed;->ru:I
goto :goto_f3
:cond_106
iput-boolean v5, p0, Lcom/google/android/gms/internal/ed;->rt:Z
iput v10, p0, Lcom/google/android/gms/internal/ed;->ru:I
goto :goto_f3
.end method
.method private static a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
.registers 6
const/4 v0, -0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-string v2, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/ep;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
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
invoke-static {p0, v1}, Lcom/google/android/gms/internal/ed;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
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