.class public Lcom/instagram/android/InstagramApplication;
.super Landroid/app/Application;
.source "InstagramApplication.java"

# interfaces
.implements Lcom/instagram/common/u/f/c;


# static fields
.field private static final a:Lch/boye/httpclientandroidlib/Header;

.field private static final b:Lcom/instagram/common/e/a/f;


# instance fields
.field private final c:Lcom/instagram/android/g/a;

.field private final d:Lcom/instagram/user/userservice/a/e;

.field private final e:Lcom/instagram/user/userservice/b/g;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Lcom/facebook/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;

    const-string v1, "Referer"

    const-string v2, "android.instagram.com"

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/android/InstagramApplication;->a:Lch/boye/httpclientandroidlib/Header;

    new-instance v0, Lcom/instagram/android/a;

    invoke-direct {v0}, Lcom/instagram/android/a;-><init>()V

    sput-object v0, Lcom/instagram/android/InstagramApplication;->b:Lcom/instagram/common/e/a/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/instagram/android/g/a;

    invoke-direct {v0}, Lcom/instagram/android/g/a;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    new-instance v0, Lcom/instagram/user/userservice/a/e;

    invoke-direct {v0}, Lcom/instagram/user/userservice/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->d:Lcom/instagram/user/userservice/a/e;

    new-instance v0, Lcom/instagram/user/userservice/b/g;

    invoke-direct {v0}, Lcom/instagram/user/userservice/b/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->e:Lcom/instagram/user/userservice/b/g;

    new-instance v0, Lcom/instagram/android/b;

    invoke-direct {v0, p0}, Lcom/instagram/android/b;-><init>(Lcom/instagram/android/InstagramApplication;)V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/instagram/android/c;

    invoke-direct {v0, p0}, Lcom/instagram/android/c;-><init>(Lcom/instagram/android/InstagramApplication;)V

    iput-object v0, p0, Lcom/instagram/android/InstagramApplication;->g:Lcom/facebook/b/f;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/a/e;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->d:Lcom/instagram/user/userservice/a/e;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/InstagramApplication;)Lcom/instagram/user/userservice/b/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->e:Lcom/instagram/user/userservice/b/g;

    return-object v0
.end method

.method static synthetic c()Lch/boye/httpclientandroidlib/Header;
    .registers 1

    sget-object v0, Lcom/instagram/android/InstagramApplication;->a:Lch/boye/httpclientandroidlib/Header;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/InstagramApplication;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->f()V

    return-void
.end method

.method private d()V
    .registers 10

    invoke-static {}, Lcom/instagram/strings/StringBridge;->a()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p0}, Lcom/instagram/common/o/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/instagram/common/o/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instagram/d/a;->d()Lcom/instagram/d/a;

    invoke-static {}, Lcom/instagram/d/a;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "f249176f09e26ce54212b472dbab8fa8"

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/instagram/share/b/a;->e()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/instagram/common/analytics/x;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/instagram/common/analytics/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/instagram/common/analytics/a;->a(Lcom/instagram/common/analytics/d;)V

    :cond_34
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-static {}, Lcom/facebook/d/f/b;->a()Lcom/facebook/d/f/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/d/c;->a(Lcom/instagram/common/analytics/d;Lcom/facebook/d/f/a;)V

    invoke-static {p0}, Lcom/instagram/j/a;->a(Landroid/content/Context;)Lcom/instagram/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/j/a;->a()V

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/b/a/b;

    invoke-direct {v1, p0}, Lcom/instagram/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/l;

    invoke-direct {v1, p0}, Lcom/instagram/common/analytics/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    return-void
.end method

.method private e()V
    .registers 5

    invoke-static {}, Lcom/instagram/android/i/f;->c()Lcom/instagram/android/i/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/c/j;

    invoke-direct {v2, p0}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/instagram/android/i/a;

    invoke-direct {v3, p0}, Lcom/instagram/android/i/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/android/i/f;->a(Landroid/content/Context;Lcom/instagram/common/c/j;Lcom/instagram/android/i/a;)V

    return-void
.end method

.method private f()V
    .registers 3

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->g:Lcom/facebook/b/f;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/b/b;->a(Landroid/content/Context;Lcom/facebook/b/f;)Z

    :goto_f
    invoke-static {p0}, Lcom/instagram/share/b/a;->a(Landroid/content/Context;)V

    return-void

    :cond_13
    invoke-static {}, Lcom/instagram/share/b/a;->f()V

    goto :goto_f
.end method

.method private g()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "failed_to_initialize_cache_dir"

    const-string v1, "failed_to_initialize_cache_dir"

    invoke-static {v0, v1}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method private static h()V
    .registers 7

    const/16 v6, 0x14

    const/16 v5, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/String;

    const-string v2, "Galaxy Nexus"

    aput-object v2, v3, v1

    const-string v2, "Nexus S"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "HTC_Amaze_4G"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "DROID3"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "DROID4"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "DROIDX"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "DROID BIONIC"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "SPH-D700"

    aput-object v4, v3, v2

    const/16 v2, 0x8

    const-string v4, "GT-I9100"

    aput-object v4, v3, v2

    const/16 v2, 0x9

    const-string v4, "SGH-T959V"

    aput-object v4, v3, v2

    const/16 v2, 0xa

    const-string v4, "SCH-I500"

    aput-object v4, v3, v2

    const/16 v2, 0xb

    const-string v4, "SCH-I510"

    aput-object v4, v3, v2

    const/16 v2, 0xc

    const-string v4, "ADR6425LVW"

    aput-object v4, v3, v2

    const/16 v2, 0xd

    const-string v4, "MB865"

    aput-object v4, v3, v2

    const-string v2, "LT15a"

    aput-object v2, v3, v5

    const/16 v2, 0xf

    const-string v4, "PC36100"

    aput-object v4, v3, v2

    const/16 v2, 0x10

    const-string v4, "PG86100"

    aput-object v4, v3, v2

    const/16 v2, 0x11

    const-string v4, "GT-N7000"

    aput-object v4, v3, v2

    const/16 v2, 0x12

    const-string v4, "GT-P7510"

    aput-object v4, v3, v2

    const/16 v2, 0x13

    const-string v4, "ThinkPad Tablet"

    aput-object v4, v3, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_90

    :cond_84
    :goto_84
    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/k/a/b;->a(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/k/a/b;->b(Z)Z

    return-void

    :cond_90
    move v2, v1

    :goto_91
    if-ge v2, v6, :cond_a0

    aget-object v4, v3, v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_84

    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_a0
    move v0, v1

    goto :goto_84
.end method

.method private static i()V
    .registers 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/k/a/b;->c(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/k/a/b;->d(Z)Z

    return-void
.end method

.method private static j()V
    .registers 2

    const-string v0, "fb_needs_reauth"

    invoke-static {}, Lcom/instagram/share/b/a;->k()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "foursquare_needs_reauth"

    invoke-static {}, Lcom/instagram/share/d/a;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "vkontakte_needs_reauth"

    invoke-static {}, Lcom/instagram/share/vkontakte/a;->h()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v0, "twitter_needs_reauth"

    invoke-static {}, Lcom/instagram/share/f/a;->i()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/api/i/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    invoke-virtual {v0}, Lcom/instagram/android/g/a;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Observer;)Lcom/instagram/android/g/a;
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/g/a;->addObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/instagram/android/InstagramApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/instagram/android/g/a;->a(Landroid/location/LocationManager;)V

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    return-object v0
.end method

.method public final a(Landroid/location/Location;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/g/a;->a(Landroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/instagram/common/u/f/a;
    .registers 2

    invoke-static {}, Lcom/instagram/android/login/b/a;->a()Lcom/instagram/android/login/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/Observer;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    invoke-virtual {v0, p1}, Lcom/instagram/android/g/a;->deleteObserver(Ljava/util/Observer;)V

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->c:Lcom/instagram/android/g/a;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/instagram/android/InstagramApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Lcom/instagram/android/g/a;->b(Landroid/location/LocationManager;)V

    return-void
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lcom/instagram/j/d;->a()Lcom/instagram/j/d;

    move-result-object v0

    sget-object v1, Lcom/instagram/j/f;->a:Lcom/instagram/j/f;

    invoke-virtual {v0, v1}, Lcom/instagram/j/d;->a(Lcom/instagram/j/f;)V

    invoke-static {p0}, Lcom/instagram/common/f/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/instagram/android/InstagramApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/ba;->InstagramTheme:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-eqz v0, :cond_100

    const/4 v0, 0x6

    :goto_1f
    invoke-static {v0}, Lcom/facebook/e/a/a;->a(I)V

    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AuthHelper.BROADCAST_USER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Lcom/instagram/e/a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/instagram/common/o/a;->d()Z

    move-result v0

    if-nez v0, :cond_103

    const/4 v0, 0x1

    :goto_3c
    invoke-static {v0}, Landroid/support/v4/app/an;->a(Z)V

    new-instance v0, Lcom/instagram/api/a/c;

    invoke-direct {v0}, Lcom/instagram/api/a/c;-><init>()V

    invoke-static {v0}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/b/c;)V

    const-string v0, "1006803734412"

    invoke-static {v0}, Lcom/instagram/common/q/b/b;->a(Ljava/lang/String;)V

    const-string v0, "instagram"

    invoke-static {v0}, Lcom/instagram/common/q/b/d;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/instagram/creation/photo/b/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/instagram/k/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/l/k;->c()V

    new-instance v0, Lcom/instagram/android/util/c;

    invoke-direct {v0}, Lcom/instagram/android/util/c;-><init>()V

    invoke-static {v0}, Lcom/instagram/n/f/f;->a(Lcom/instagram/n/f/e;)V

    new-instance v0, Lcom/instagram/android/maps/f/a;

    invoke-direct {v0}, Lcom/instagram/android/maps/f/a;-><init>()V

    invoke-static {v0}, Lcom/instagram/n/f/d;->a(Lcom/instagram/n/f/c;)V

    new-instance v0, Lcom/instagram/android/feed/e/g;

    invoke-direct {v0}, Lcom/instagram/android/feed/e/g;-><init>()V

    invoke-static {v0}, Lcom/instagram/n/f/b;->a(Lcom/instagram/n/f/a;)V

    new-instance v0, Lcom/instagram/android/fragment/fj;

    invoke-direct {v0}, Lcom/instagram/android/fragment/fj;-><init>()V

    invoke-static {v0}, Lcom/instagram/n/f/h;->a(Lcom/instagram/n/f/g;)V

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    new-instance v0, Lcom/instagram/user/f/a;

    invoke-direct {v0}, Lcom/instagram/user/f/a;-><init>()V

    invoke-static {v0}, Lcom/instagram/user/c/i;->a(Lcom/instagram/user/c/h;)V

    invoke-static {}, Lcom/instagram/share/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/e/a;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->e()V

    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->d()V

    invoke-static {}, Lcom/instagram/ui/e/d;->a()Lcom/instagram/ui/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/e/a;->d()V

    invoke-direct {p0}, Lcom/instagram/android/InstagramApplication;->g()V

    invoke-static {}, Lcom/instagram/camera/h;->a()V

    new-instance v0, Lcom/instagram/android/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/d;-><init>(Lcom/instagram/android/InstagramApplication;)V

    invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;

    move-result-object v1

    new-instance v2, Lcom/instagram/common/e/b/o;

    invoke-direct {v2, p0}, Lcom/instagram/common/e/b/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V

    const-string v1, "images"

    invoke-static {p0, v1}, Lcom/instagram/common/e/b/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/instagram/common/e/b/h;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/InstagramApplication;->b:Lcom/instagram/common/e/a/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/f;)V

    sget-object v2, Lcom/instagram/api/g/e;->a:Lcom/instagram/api/g/e;

    invoke-virtual {v1, v2}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/f;)V

    sget-object v2, Lcom/instagram/api/g/f;->a:Lcom/instagram/api/g/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/i;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/e/b/h;->a(Lcom/instagram/common/e/a/c;)V

    invoke-static {p0}, Lcom/instagram/common/e/c/a;->a(Landroid/content/Context;)Lcom/instagram/common/e/c/a;

    move-result-object v1

    sget-object v2, Lcom/instagram/api/g/e;->a:Lcom/instagram/api/g/e;

    invoke-virtual {v1, v2}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/a/f;)V

    sget-object v2, Lcom/instagram/api/g/f;->a:Lcom/instagram/api/g/f;

    invoke-virtual {v1, v2}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/a/i;)V

    invoke-virtual {v1, v0}, Lcom/instagram/common/e/c/a;->a(Lcom/instagram/common/e/a/c;)V

    invoke-static {}, Lcom/instagram/creation/b/d/c;->a()Lcom/instagram/creation/b/d/c;

    invoke-static {}, Lcom/instagram/android/InstagramApplication;->h()V

    invoke-static {}, Lcom/instagram/android/InstagramApplication;->i()V

    invoke-static {}, Lcom/instagram/android/InstagramApplication;->j()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/instagram/android/e;

    invoke-direct {v1, p0}, Lcom/instagram/android/e;-><init>(Lcom/instagram/android/InstagramApplication;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/instagram/n/a;->a()Lcom/instagram/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/n/a;->b()V

    return-void

    :cond_100
    const/4 v0, 0x2

    goto/16 :goto_1f

    :cond_103
    const/4 v0, 0x0

    goto/16 :goto_3c
.end method

.method public onTerminate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {p0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/InstagramApplication;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/instagram/common/f/a;->a(Landroid/content/Context;)V

    return-void
.end method
