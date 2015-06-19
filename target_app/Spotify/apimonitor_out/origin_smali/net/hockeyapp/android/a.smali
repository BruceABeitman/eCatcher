.class public final Lnet/hockeyapp/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->c:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_16

    const-string v2, "buildNumber"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result v0

    :cond_16
    :goto_16
    return v0

    :catch_17
    move-exception v1

    const-string v2, "HockeyApp"

    const-string v3, "Exception thrown when accessing the application info:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;

    if-eqz p0, :cond_1a

    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_53

    :cond_1a
    :goto_1a
    if-eqz p0, :cond_52

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/a;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)I

    move-result v0

    if-eqz v0, :cond_52

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_52

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_52} :catch_5f

    :cond_52
    :goto_52
    return-void

    :catch_53
    move-exception v0

    const-string v1, "HockeyApp"

    const-string v2, "Exception thrown when accessing the files dir:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :catch_5f
    move-exception v0

    const-string v1, "HockeyApp"

    const-string v2, "Exception thrown when accessing the package info:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method
