.class public final Lcom/lenovo/lps/reaper/sdk/g/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Locale;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const-string/jumbo v0, "DeviceConfig"

    const-string/jumbo v2, "save device id into system settings."

    invoke-static {v0, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "ReaperAssignedDeviceId"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object p1, v0

    :cond_1a
    :goto_1a
    return-object p1

    :cond_1b
    if-nez p1, :cond_1f

    move-object p1, v1

    goto :goto_1a

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "ReaperAssignedDeviceId"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_2b} :catch_30

    move-result v0

    if-nez v0, :cond_1a

    :goto_2e
    move-object p1, v1

    goto :goto_1a

    :catch_30
    move-exception v0

    const-string/jumbo v2, "DeviceConfig"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "DeviceConfig"

    const-string/jumbo v1, "saving device id into storage."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->o:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "/LenovoReaper/did"

    invoke-static {v0, p1}, Lcom/lenovo/lps/reaper/sdk/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "DeviceConfig"

    const-string/jumbo v1, "saved device id into storage."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "\u0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->l:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->n:Landroid/content/Context;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    :try_start_3b
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->b:Ljava/lang/String;

    if-nez v0, :cond_59

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->b:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_59} :catch_184

    :cond_59
    :goto_59
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b/p;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/p;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->e:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/p;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/p;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->c:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_191

    const-string/jumbo v0, ""

    :goto_81
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19f

    const-string/jumbo v0, "en"

    :goto_90
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    if-nez v0, :cond_1ad

    const-string/jumbo v0, ""

    :goto_a5
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    if-nez v0, :cond_1b5

    const-string/jumbo v0, ""

    :goto_ae
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    if-nez v0, :cond_1bd

    const-string/jumbo v0, ""

    :goto_b7
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    if-nez v0, :cond_1c5

    const-string/jumbo v0, ""

    :goto_c0
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    if-nez v0, :cond_1cd

    const-string/jumbo v0, ""

    :goto_c9
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    if-nez v0, :cond_1d5

    const-string/jumbo v0, ""

    :goto_d2
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    if-nez v0, :cond_1dd

    const-string/jumbo v0, ""

    :goto_db
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v4, :cond_1e5

    move v0, v1

    :goto_fa
    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->o:Z

    if-nez v3, :cond_1e8

    :goto_fe
    iput-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->p:Z

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/m;->a()Z

    move-result v0

    if-eqz v0, :cond_183

    const-string/jumbo v0, "DeviceConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->c:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_183
    return-void

    :catch_184
    move-exception v0

    const-string/jumbo v3, "DeviceConfig"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    :cond_191
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_81

    :cond_19f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_90

    :cond_1ad
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a5

    :cond_1b5
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ae

    :cond_1bd
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b7

    :cond_1c5
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c0

    :cond_1cd
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c9

    :cond_1d5
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d2

    :cond_1dd
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_db

    :cond_1e5
    move v0, v2

    goto/16 :goto_fa

    :cond_1e8
    move v1, v2

    goto/16 :goto_fe
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/g/d;->d(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/g/d;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_2d

    if-eqz p2, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_25
    :goto_25
    if-nez v0, :cond_39

    :goto_27
    if-eqz p1, :cond_2c

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/d;->d(Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    if-eqz p2, :cond_35

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_35
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/g/d;->c(Ljava/lang/String;)V

    goto :goto_25

    :cond_39
    move-object p1, v0

    goto :goto_27
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->o:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->p:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/d;->o:Z

    return v0
.end method
