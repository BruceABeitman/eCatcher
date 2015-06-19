.class public final Lnet/hockeyapp/android/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lnet/hockeyapp/android/c/a;

.field private static b:Lnet/hockeyapp/android/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/h;->a:Lnet/hockeyapp/android/c/a;

    sput-object v0, Lnet/hockeyapp/android/h;->b:Lnet/hockeyapp/android/i;

    return-void
.end method

.method public static a()Ljava/lang/Boolean;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_d

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_b} :catch_f

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    move v0, v1

    goto :goto_8

    :catch_f
    move-exception v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1f

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    move v0, v1

    goto :goto_20

    :cond_27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_24
.end method

.method public static b()Lnet/hockeyapp/android/i;
    .registers 1

    sget-object v0, Lnet/hockeyapp/android/h;->b:Lnet/hockeyapp/android/i;

    return-object v0
.end method
