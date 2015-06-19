.class public final Lcom/google/android/gms/plus/internal/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/g$a;
    }
.end annotation


# static fields
.field private static aag:Landroid/content/Context;

.field private static abP:Lcom/google/android/gms/plus/internal/c;


# direct methods
.method private static H(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/plus/internal/g$a;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/hn;->f(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->abP:Lcom/google/android/gms/plus/internal/c;

    if-nez v0, :cond_35

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aag:Landroid/content/Context;

    if-nez v0, :cond_1d

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/plus/internal/g;->aag:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aag:Landroid/content/Context;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aag:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_23
    const-string v1, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c$a;->bl(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/plus/internal/g;->abP:Lcom/google/android/gms/plus/internal/c;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_35} :catch_38
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_35} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_35} :catch_4a

    :cond_35
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->abP:Lcom/google/android/gms/plus/internal/c;

    return-object v0

    :catch_38
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_41
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4a
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    const-string v1, "Could not access creator."

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
    .registers 11

    if-nez p3, :cond_f

    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8

    :catch_8
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView;-><init>(Landroid/content/Context;I)V

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/plus/internal/g;->H(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_8

    goto :goto_e
.end method
