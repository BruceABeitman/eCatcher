.class public Lcom/google/android/gms/maps/a/bn;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/google/android/gms/maps/a/z;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/maps/a/bn;->b:Lcom/google/android/gms/maps/a/z;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/maps/a/bn;->b:Lcom/google/android/gms/maps/a/z;

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->c(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/a/bn;->b:Lcom/google/android/gms/maps/a/z;

    :try_start_13
    sget-object v0, Lcom/google/android/gms/maps/a/bn;->b:Lcom/google/android/gms/maps/a/z;

    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v1

    const v2, 0x41f6b8

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/a/z;->a(Lcom/google/android/gms/c/d;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_27} :catch_2a

    sget-object v0, Lcom/google/android/gms/maps/a/bn;->b:Lcom/google/android/gms/maps/a/z;

    goto :goto_9

    :catch_2a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_23

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to instantiate the dynamic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_23
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to call the default constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find dynamic class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static b()Ljava/lang/Class;
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_d

    const-string v0, "com.google.android.gms.maps.internal.CreatorImplGmm6"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    goto :goto_c

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    new-instance v1, Lcom/google/android/gms/common/g;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/g;-><init>(I)V

    throw v1

    :pswitch_d
    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/maps/a/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Lcom/google/android/gms/maps/a/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Making Creator statically"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/maps/a/bn;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/z;

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {p0}, Lcom/google/android/gms/maps/a/bn;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/a/bn;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/z;

    move-result-object v0

    goto :goto_1b
.end method

.method private static d(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    sget-object v0, Lcom/google/android/gms/maps/a/bn;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/gms/maps/a/bn;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    sput-object p0, Lcom/google/android/gms/maps/a/bn;->a:Landroid/content/Context;

    :cond_c
    :goto_c
    sget-object v0, Lcom/google/android/gms/maps/a/bn;->a:Landroid/content/Context;

    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/google/android/gms/common/i;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/a/bn;->a:Landroid/content/Context;

    goto :goto_c
.end method