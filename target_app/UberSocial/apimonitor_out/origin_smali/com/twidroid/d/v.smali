.class public Lcom/twidroid/d/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "tweet_layout"

.field public static final B:Ljava/lang/String; = "normal"

.field public static final C:Ljava/lang/String; = "global_color"

.field public static final D:Ljava/lang/String; = "#979797"

.field public static final E:Ljava/lang/String; = "text_color"

.field public static final F:Ljava/lang/String; = "#333333"

.field public static final G:Ljava/lang/String; = "native"

.field public static final H:Ljava/lang/String; = "image_provider4"

.field public static final I:Ljava/lang/String; = "twitvidcom"

.field public static final J:Ljava/lang/String; = "showchangelogpopup"

.field public static final K:Ljava/lang/String; = "tweet_shortener3"

.field public static final L:Ljava/lang/String; = "Tmi"

.field public static final M:Ljava/lang/String; = "skyhookusername"

.field public static final N:Ljava/lang/String; = "willcreateshortcut"

.field public static final O:Ljava/lang/String; = "licensecheck_licensed"

.field public static final P:Ljava/lang/String; = "last_ad_check"

.field public static final Q:Ljava/lang/String; = "start_screen_ad_time"

.field public static final R:Ljava/lang/String; = "start_screen_ad_sleep"

.field public static final S:Ljava/lang/String; = "start_screen_ad_enabled"

.field public static final T:Ljava/lang/String; = "5"

.field public static final U:Ljava/lang/String; = "TwidroydPreferences"

.field public static final W:J = 0x1b77400L

.field public static final X:J = 0x1d4c0L

.field static final Y:Ljava/lang/String; = "video_provider"

.field private static final Z:Ljava/lang/String; = "location_provider"

.field public static final a:Ljava/lang/String; = "content://com.twidroid.ubersocial.provider.Settings"

.field private static final aa:Ljava/lang/String; = "wps"

.field private static ac:Ljava/lang/String; = null

.field private static ad:Z = false

.field static final e:Ljava/lang/String; = "firsttime_startup"

.field public static final f:Ljava/lang/String; = "mentions.timestamp"

.field public static final g:Ljava/lang/String; = "timeline.timestamp"

.field public static final h:Ljava/lang/String; = "billing_db_initialized.2"

.field static final i:Ljava/lang/String; = "recommend_twidroyd.shown"

.field static final j:Ljava/lang/String; = "rate_twidroyd3.shown"

.field public static final k:Ljava/lang/String; = "tweet_link_color"

.field public static final l:Ljava/lang/String; = "#027abb"

.field public static final m:Ljava/lang/String; = "tweet_small_text_color"

.field public static final n:Ljava/lang/String; = "#ff464646"

.field public static final o:Ljava/lang/String; = "tweet_username_color"

.field public static final p:Ljava/lang/String; = "#0d4b7a"

.field public static final q:Ljava/lang/String; = "main_background"

.field public static final r:Ljava/lang/String; = "remote_icon"

.field public static final s:Ljava/lang/String; = "display_icon"

.field public static final t:Ljava/lang/String; = "ringtone"

.field public static final u:Ljava/lang/String; = "buttonset"

.field public static final v:Ljava/lang/String; = "bright"

.field public static final w:Ljava/lang/String; = "bright"

.field public static final x:Ljava/lang/String; = "background_color"

.field public static final y:Ljava/lang/String; = "#eaeaea"

.field public static final z:Ljava/lang/String; = "apk.theme"


# instance fields
.field V:Landroid/content/SharedPreferences;

.field private final ab:Ljava/lang/CharSequence;

.field final b:J

.field final c:J

.field final d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/twidroid/d/v;->ad:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5b8d80

    iput-wide v0, p0, Lcom/twidroid/d/v;->b:J

    const-wide v0, 0x2e593c000L

    iput-wide v0, p0, Lcom/twidroid/d/v;->c:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/twidroid/d/v;->d:J

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/twidroid/d/v;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/d/v;->ab:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/twidroid/d/v;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/service/BackgroundService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x5b8d80

    iput-wide v0, p0, Lcom/twidroid/d/v;->b:J

    const-wide v0, 0x2e593c000L

    iput-wide v0, p0, Lcom/twidroid/d/v;->c:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/twidroid/d/v;->d:J

    if-nez p1, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_38

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    :goto_2a
    invoke-virtual {p1}, Lcom/twidroid/service/BackgroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/d/v;->f(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/twidroid/d/v;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/d/v;->ab:Ljava/lang/CharSequence;

    return-void

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twidroid/service/BackgroundService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwidroydPreferences"

    const-string v2, "Using fixed version of shared settings"

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/twidroid/service/BackgroundService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    goto :goto_2a
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_72

    :try_start_2
    invoke-static {}, Lcom/twidroid/d/v;->cy()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/twidroid/d/v;->c()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    :goto_1c
    sget-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    :cond_47
    sget-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;

    :goto_49
    return-object v0

    :cond_4a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/d/v;->ac:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    goto :goto_1c

    :catch_59
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/twidroyd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/twidroyd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_49
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "jump_to_tweet"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_21
.end method

.method public static a(Landroid/app/Activity;)Z
    .registers 7

    const/16 v5, 0xa0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-gt v2, v3, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5b

    move v3, v1

    :goto_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5d

    move v2, v1

    :goto_2b
    if-nez v3, :cond_2f

    if-eqz v2, :cond_a

    :cond_2f
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v3, v5, :cond_59

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_59

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v3, v5, :cond_59

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xd5

    if-eq v3, v4, :cond_59

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_55} :catch_5f

    const/16 v3, 0x140

    if-ne v2, v3, :cond_a

    :cond_59
    move v0, v1

    goto :goto_a

    :cond_5b
    move v3, v0

    goto :goto_1b

    :cond_5d
    move v2, v0

    goto :goto_2b

    :catch_5f
    move-exception v1

    goto :goto_a
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v0

    move v3, v0

    :goto_10
    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    :goto_14
    return v0

    :cond_15
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v1

    move v3, v0

    goto :goto_10

    :cond_20
    move v2, v1

    move v3, v1

    goto :goto_10

    :cond_23
    move v0, v1

    goto :goto_14
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    invoke-static {p0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_11
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_16
    invoke-static {p0}, Lcom/twidroid/d/v;->d(Landroid/content/Context;)V

    :cond_19
    invoke-static {v0}, Lcom/twidroid/d/v;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private cA()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_twitter_conf_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static cy()Z
    .registers 1

    sget-boolean v0, Lcom/twidroid/d/v;->ad:Z

    return v0
.end method

.method private cz()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "importantmessage"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/twidroyd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/twidroid/d/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ubermedia/configuration/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3b
    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "themes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    goto :goto_10
.end method

.method public static m(Landroid/content/Context;)I
    .registers 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_6

    move v0, v6

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "new.direct"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1c

    move v0, v6

    goto :goto_5

    :cond_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method public static n(Landroid/content/Context;)I
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "new.innercircle"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_18

    move v0, v6

    :goto_17
    return v0

    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method private static n(Z)V
    .registers 1

    sput-boolean p0, Lcom/twidroid/d/v;->ad:Z

    return-void
.end method

.method public static o(Landroid/content/Context;)J
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "jump_to_tweet"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_18

    const-wide/16 v0, 0x0

    :goto_17
    return-wide v0

    :cond_18
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method public static p(Landroid/content/Context;)I
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "new.mentions"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_18

    move v0, v6

    :goto_17
    return v0

    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method public static q(Landroid/content/Context;)I
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "new.tweets"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_18

    move v0, v6

    :goto_17
    return v0

    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17
.end method

.method public static r()Z
    .registers 1

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twidroid/d/v;->c(Landroid/content/Context;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public A()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_tweetnotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public B()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_retweet_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_dmnotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public D()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_twitlonger_auto_expand1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public E()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_replynotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_favorite_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public G()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_follow_notification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "disable_send_on_enter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public I()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "is_ask_follow_twidroid"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public J()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_ask_follow_twidroid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public K()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_vibrator"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_autocomplete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_autocomplete_hashtags"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public N()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "show_notification_icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public O()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_ringtone"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public P()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_remembertimeline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Q()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "linkexplorerintro.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public R()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "linkexplorerintro.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public S()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "streamingintro.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public T()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "streamingintro.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public U()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "linkexplorerintro_ad.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public V()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "muteuser_intro.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public W()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "muteuser_intro.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public X()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "slidein_intro.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public Y()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "slidein_intro.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Z()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "whatsnewactivity.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 5

    const-string v0, "last_direct_message_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/twidroid/model/twitter/c;)J
    .registers 6

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_friends_sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "characters_reserved_per_media"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(J)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trend_topic_location"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new.direct"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "addvalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new.text"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5

    const-string v0, "last_direct_message_check"

    invoke-static {p1, v0, p2, p3}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4

    const-string v0, "editText"

    invoke-static {p1, v0, p2}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p1, p2, p3, p4}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/location/Address;)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "location.latitude"

    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location.longitude"

    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Float;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;J)V
    .registers 8

    if-nez p1, :cond_a

    const-string v0, "TwidroydPreferences"

    const-string v1, "Account is null in setLastFriendsSyncTimestamp"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_friends_sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_9
.end method

.method public a(Ljava/lang/String;J)V
    .registers 7

    const-string v0, "TwidroydPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Update for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_enable_link_explorer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "willcreateshortcut"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Z)Z
    .registers 4

    const-string v0, "other_isUpdateFollowers"

    invoke-static {p1, v0, p2}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aA()I
    .registers 3

    const-string v0, "ui_singleview_fontsize"

    const-string v1, "17"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public aB()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "singleview_use_italic_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aC()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "singleview_use_bold_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aD()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "urlshortener_provider"

    const-string v2, "bit.ly"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is.gd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "urlshortener_provider"

    const-string v2, "bit.ly"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_22
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "urlshortener_provider"

    const-string v2, "bit.ly"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aE()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "automaticFiltersBringUp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aF()I
    .registers 3

    const-string v0, "tweet_length2"

    const-string v1, "250"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public aG()I
    .registers 3

    const-string v0, "max_load_size"

    const-string v1, "50"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public aH()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "use_flash_light"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aI()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "use_update_after_tweet"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aJ()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "tweet.hide.links"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aK()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "always_show_merged_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aL()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "tweet.hide.rt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aM()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "is_always_refresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aN()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "refresh_on_shake"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aO()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "limit_to_100_chars"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aP()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_streaming_on_wifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aQ()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_streaming_pin_to_top"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aR()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_streaming_bg_streaming"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aS()Z
    .registers 4

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "disable_swipe_gesture"

    sget-boolean v0, Lcom/twidroid/y;->y:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_9
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public aT()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "is_license_already_checked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aU()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "licensecheck_licensed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public aV()Z
    .registers 5

    const/4 v0, 0x1

    sget-boolean v1, Lcom/twidroid/y;->c:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "is_premium"

    sget-boolean v3, Lcom/twidroid/y;->y:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "SHOW_ADS"

    const-string v3, "YES"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public aW()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "billing_db_initialized.2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aX()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "license_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aY()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "postal_code"

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aZ()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "custom_flurry_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "custom_flurry_key"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1PB1KAZNXQ7D7BKQKCU3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_1f
    return-object v0

    :cond_20
    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "custom_flurry_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public aa()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "whatsnewactivity.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ab()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "eula2.accepted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public ac()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public ad()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "dofollow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ae()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setup.ok"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public af()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "setup.ok"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ag()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "ringtone"

    const-string v2, "content://settings/system/notification_sound"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ah()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_intersection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ai()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_fullnotification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aj()Z
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/d/v;->bi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v3, "adconfiguration_update_check"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    :cond_22
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "adconfiguration_update_check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method public ak()Z
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "firsttime_startup"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firsttime_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "rate_twidroyd3.shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v4, "firsttime_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide v3, 0x2e593c000L

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    const/4 v0, 0x1

    goto :goto_21
.end method

.method public al()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "ubermediaapiactive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public am()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "ubermediaapiactive_logger"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public an()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "uberchannelsactive"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ao()Z
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "firsttime_startup"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firsttime_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "recommend_twidroyd.shown"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v4, "firsttime_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5b8d80

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    const/4 v0, 0x1

    goto :goto_21
.end method

.method public ap()V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firsttime_startup"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "recommend_twidroyd.shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public aq()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_twidroyd.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public ar()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "firsttime_startup"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-nez v2, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "firsttime_startup"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_20
    return-wide v0
.end method

.method public as()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rate_twidroyd3.shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public at()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enableRealNames"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public au()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "use_google_gwt"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public av()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_enable_hover_arrows"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aw()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enableStartAtBootTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ax()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enableGPS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ay()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "other_externalStorage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public az()I
    .registers 3

    const-string v0, "ui_fontsize"

    const-string v1, "15"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "willcreateshortcut"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_media_per_upload"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(J)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_native_image_upload_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/content/Context;I)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new.innercircle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "addvalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5

    const-string v0, "lastCleanupCheck"

    invoke-static {p1, v0, p2, p3}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p4}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "video_provider"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto_update_tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dofollow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 4

    const-string v0, "other_isUpdateFollowers"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bA()V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/d/v;->by()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/twidroid/d/v;->bz()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twidroid/ui/themes/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/twidroid/ui/themes/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_18
.end method

.method public bB()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public bC()Z
    .registers 12

    const-wide/16 v9, 0x3e8

    const-wide/16 v7, 0x3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v3, "last_checkin_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v5, "CALL_HOME_INTERVAL"

    const-string v6, "120"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v7

    mul-long/2addr v4, v9

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_50

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_checkin_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v5, "CALL_HOME_INTERVAL"

    const-string v6, "120"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v7

    mul-long/2addr v4, v9

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x6ddd00

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    :goto_4f
    return v0

    :cond_50
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public bD()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_checkin_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bE()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "last_checkin_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bF()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "AD_REFRESH"

    const-string v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x190

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bG()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "RUN"

    const-string v2, "YES"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bH()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "MESSAGE"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bI()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "UPGRADE_URL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "use_italic_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bK()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "use_bold_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bL()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "send_on_enter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bM()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "default_post_to_facebook"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bN()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bO()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "email_tweet"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bP()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "update_gtalk_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "gtalk_user"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bR()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "gtalk_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bS()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "email_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bT()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "smtp_password"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bU()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "smtp_username"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bV()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "smtp_server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bW()I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "smtp_port"

    const-string v2, "25"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bX()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bY()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "unread_clearing_options"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bZ()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "unread_options"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "remote_icon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bb()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "main_background"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "main_background"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_c
.end method

.method public bc()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "main_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bd()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "menu_title_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public be()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "menu_title_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "menu_shadow_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bg()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "menu_shadow_color"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bh()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "location_provider"

    const-string v2, "wps"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bi()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "importantmessage"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bj()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "web_view_enabled_flag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public bk()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "web_view_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bl()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bm()Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/twidroid/d/v;->bj()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "importmesg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/twidroid/d/v;->cz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method public bn()V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CheckStatusTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bo()Z
    .registers 8

    const-wide/32 v5, 0x493e0

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "CheckStatusTimestamp"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmp-long v0, v0, v5

    if-gez v0, :cond_22

    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public bp()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importmesg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/twidroid/d/v;->cz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bq()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "AskToFollow"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public br()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AskToFollow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public bs()Landroid/location/Location;
    .registers 5

    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "location.latitude"

    const v3, 0x4208357d

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "location.longitude"

    const v3, -0x3d13833c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    return-object v0
.end method

.method public bt()Ljava/lang/String;
    .registers 2

    const-string v0, "http://api.tweetmixx.com/topics?format=json&group=postup&client=droid2"

    return-object v0
.end method

.method public bu()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "trend_topic_location"

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bv()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "apk.theme"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bw()V
    .registers 2

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V

    return-void
.end method

.method public bx()V
    .registers 2

    const-string v0, "5"

    invoke-virtual {p0, v0}, Lcom/twidroid/d/v;->f(Ljava/lang/String;)V

    return-void
.end method

.method public by()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/twidroid/ui/themes/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bz()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/twidroid/ui/themes/a;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 4

    const-string v0, "editText"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "streaming_server_score"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(J)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_ad_check"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Landroid/content/Context;I)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new.mentions"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "addvalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 5

    const-string v0, "lastNagScreenCheck"

    invoke-static {p1, v0, p2, p3}, Lcom/twidroid/b/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "license_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "other_externalStorage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public ca()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "invert_context_click"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cb()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "merge_direct_messages_into_hometimeline"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cc()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "auto_collapse_tweet_view"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cd()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "color_tweets_in_timeline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ce()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "skyhookusername"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public cf()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "skyhookusername"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cg()Ljava/lang/String;
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ubermedia/b/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ch()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "setDisableProtectAccountPrivacyWarning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public ci()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "setDisableProtectAccountPrivacyWarning"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cj()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "max_native_image_upload_size"

    const-wide/32 v2, 0x300000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ck()I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "characters_reserved_per_media"

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public cl()I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "max_media_per_upload"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public cm()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "show_tweet_send_confirmation_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cn()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "isShowOwnTweetsInverted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public co()Z
    .registers 7

    const-wide/16 v3, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "last_twitter_conf_update_time"

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-nez v3, :cond_13

    invoke-direct {p0}, Lcom/twidroid/d/v;->cA()V

    :goto_12
    return v0

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_24

    sub-long v1, v3, v1

    const-wide/32 v3, 0x19bfcc00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_28

    :cond_24
    invoke-direct {p0}, Lcom/twidroid/d/v;->cA()V

    goto :goto_12

    :cond_28
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public cp()I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "streaming_server_score"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public cq()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "last_ad_check"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public cr()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "start_screen_ad_time"

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public cs()J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "start_screen_ad_sleep"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ct()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "start_screen_ad_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cu()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "tablet_2_column_mode_was_switched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cv()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "already_set_twitvid_as_default"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public cw()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "already_set_twitvid_as_default"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public cx()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "install_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .registers 4

    const-string v0, "searchText"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_screen_ad_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d(Landroid/content/Context;I)V
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "new.tweets"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "addvalue"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "custom_flurry_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public d(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_streaming_on_wifi"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 5

    const-string v0, "lastCleanupCheck"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e(J)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_screen_ad_sleep"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "postal_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public e(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_license_already_checked"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 5

    const-string v0, "lastNagScreenCheck"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Lcom/twidroid/b/a/b;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/d/v;->ay()Z

    move-result v0

    invoke-static {v0}, Lcom/twidroid/d/v;->n(Z)V

    invoke-static {p1}, Lcom/twidroid/d/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/d/v;->c(Z)V

    :cond_11
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buttonset"

    const-string v2, "bright"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tweet_layout"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/twidroid/ui/themes/r;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "main_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/twidroid/ui/themes/r;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/twidroid/ui/themes/s;->a(I)Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->H()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "tweet_layout"

    const-string v2, "bubble"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_35
    :goto_35
    const-string v1, "apk.theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_3e
    const-string v1, "tweet_layout"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_35
.end method

.method public f(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "licensecheck_licensed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public f()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "play_sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()I
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "global_color"

    const-string v2, "#979797"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "TwidroydPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Color Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v3, "global_color"

    const-string v4, "DEFAULT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public g(Landroid/content/Context;)I
    .registers 4

    const-string v0, "ui_imageQuality"

    const v1, 0x7f0c00cf

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twidroid/ui/themes/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public g(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_premium"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    const-string v0, "bright"

    return-object v0
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "video_provider"

    const-string v1, "twitvidcom"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v0, "TwidroydPreferences"

    const-string v1, "Video provider reset to default value"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "twitvidcom"

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "twitvidcom"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_34
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/twidroid/ui/themes/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public h(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "billing_db_initialized.2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_tweet_send_confirmation_dialog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public i()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "high_res_avatars"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2e

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "new.tweets"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "value"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d
.end method

.method public i(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "current_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public j(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "skyhookusername"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setDisableProtectAccountPrivacyWarning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public j()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "show_timestamp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2e

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "new.direct"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "value"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d
.end method

.method public k()I
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "text_color"

    const-string v2, "#333333"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public k(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setDisableProtectAccountPrivacyWarning"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public k(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/twidroid/d/v;->n(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2e

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "new.innercircle"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "value"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d
.end method

.method public l()I
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "background_color"

    const-string v2, "#eaeaea"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "TwidroydPreferences"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "THEME_BACKGROUND_COLOR Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v3, "background_color"

    const-string v4, "DEFAULT"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#eaeaea"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_e
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_screen_ad_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public l(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2e

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "new.mentions"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "value"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://com.twidroid.ubersocial.provider.Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d
.end method

.method public m(Z)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "tablet_2_column_mode_was_switched"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public m()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showchangelogpopup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/d/v;->ab:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_shorten_tweet_automatically"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o(Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto_update_tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showchangelogpopup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/d/v;->ab:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "tweet_layout"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public q()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "tweet_shortener3"

    const-string v2, "Tmi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public t()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_pulltorefresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public u()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "disable_hover_buttons"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public v()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_background_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public w()I
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "enable_background_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x1d4c0

    :goto_e
    return v0

    :cond_f
    :try_start_f
    const-string v0, "notif_update_interval"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/d/v;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_18

    move-result v0

    goto :goto_e

    :catch_18
    move-exception v0

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notif_update_interval"

    const-string v2, "5"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x5

    goto :goto_e
.end method

.method public x()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v2, "is_avatars_disabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public y()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "pref_enable_link_explorer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .registers 4

    iget-object v0, p0, Lcom/twidroid/d/v;->V:Landroid/content/SharedPreferences;

    const-string v1, "show_source"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
