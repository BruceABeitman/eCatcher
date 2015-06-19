.class public Lcom/twidroid/net/hockeyapp/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = null

.field public static final g:Ljava/lang/String; = "HockeyApp"

.field public static final h:Ljava/lang/String; = "https://rink.hockeyapp.net/"

.field public static final i:Ljava/lang/String; = "HockeySDK"

.field public static final j:Ljava/lang/String; = "2.1.0"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->a:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->b:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->c:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->d:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->e:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/twidroid/net/hockeyapp/android/b;->b:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/twidroid/net/hockeyapp/android/b;->c:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    const-string v1, "HockeyApp"

    const-string v2, "Exception thrown when accessing the package info:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method
