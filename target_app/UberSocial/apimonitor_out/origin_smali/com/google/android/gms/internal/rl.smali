.class public abstract Lcom/google/android/gms/internal/rl;
.super Lcom/google/android/gms/internal/qb;


# static fields
.field static d:Z

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/String;

.field private static l:J

.field private static m:Lcom/google/android/gms/internal/ta;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/rl;->l:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/rl;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/sy;Lcom/google/android/gms/internal/sz;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/qb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/sy;Lcom/google/android/gms/internal/sz;)V

    return-void
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/rl;->k:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->k:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/sy;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/rl;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_32

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/sy;->a([BZ)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_32

    move-result-object v0

    return-object v0

    :catch_32
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/rl;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    if-nez p0, :cond_c

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    sget-object v0, Lcom/google/android/gms/internal/rl;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1e} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1e} :catch_26

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/sy;)V
    .registers 7

    const-class v1, Lcom/google/android/gms/internal/rl;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/rl;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v0, :cond_21

    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/ta;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/google/android/gms/internal/ta;-><init>(Lcom/google/android/gms/internal/sy;Ljava/security/SecureRandom;)V

    sput-object v0, Lcom/google/android/gms/internal/rl;->m:Lcom/google/android/gms/internal/ta;

    sput-object p0, Lcom/google/android/gms/internal/rl;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/rl;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/rl;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/rl;->l:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/rl;->d:Z
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_23
    .catch Lcom/google/android/gms/internal/rm; {:try_start_7 .. :try_end_21} :catch_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_21} :catch_26

    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_26
    move-exception v0

    goto :goto_21

    :catch_28
    move-exception v0

    goto :goto_21
.end method

.method static b()Ljava/lang/Long;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/rl;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b(Landroid/content/Context;Lcom/google/android/gms/internal/sy;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/rl;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_32

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/sy;->a([BZ)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_32

    move-result-object v0

    return-object v0

    :catch_32
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/rl;->m:Lcom/google/android/gms/internal/ta;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ta;->a([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/tb; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_15

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static c()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/rl;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/rl;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/rl;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_28

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .registers 12

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/rl;->m:Lcom/google/android/gms/internal/ta;

    invoke-static {}, Lcom/google/android/gms/internal/td;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ta;->a(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/rl;->m:Lcom/google/android/gms/internal/ta;

    invoke-static {}, Lcom/google/android/gms/internal/td;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ta;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "dex"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rm;-><init>()V

    throw v0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_136
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_13d
    .catch Lcom/google/android/gms/internal/tb; {:try_start_0 .. :try_end_29} :catch_144
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_29} :catch_14b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_29} :catch_152

    :catch_29
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    :try_start_30
    const-string v3, "ads"

    const-string v4, ".jar"

    invoke-static {v3, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/android/gms/internal/td;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/td;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/td;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/td;->m()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/td;->e()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/td;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/td;->d()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/rl;->e:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/td;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/rl;->f:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/td;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v5, v9

    invoke-virtual {v6, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/rl;->g:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/td;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/view/MotionEvent;

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-class v9, Landroid/util/DisplayMetrics;

    aput-object v9, v5, v6

    invoke-virtual {v7, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/rl;->h:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/td;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v8, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/rl;->i:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/td;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/rl;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/rl;->j:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_135
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_135} :catch_29
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_135} :catch_136
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_135} :catch_13d
    .catch Lcom/google/android/gms/internal/tb; {:try_start_30 .. :try_end_135} :catch_144
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_135} :catch_14b
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_135} :catch_152

    return-void

    :catch_136
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_13d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_144
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_14b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_152
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/rm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/rm;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/rl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/rm; {:try_start_1 .. :try_end_8} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_27

    :goto_8
    const/4 v0, 0x2

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/rl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/rm; {:try_start_9 .. :try_end_10} :catch_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_27

    :goto_10
    const/16 v0, 0x19

    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/rl;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/rl;->a(IJ)V
    :try_end_1d
    .catch Lcom/google/android/gms/internal/rm; {:try_start_12 .. :try_end_1d} :catch_2b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_27

    :goto_1d
    const/16 v0, 0x18

    :try_start_1f
    invoke-static {p1}, Lcom/google/android/gms/internal/rl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_26
    .catch Lcom/google/android/gms/internal/rm; {:try_start_1f .. :try_end_26} :catch_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_26} :catch_27

    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26

    :catch_29
    move-exception v0

    goto :goto_26

    :catch_2b
    move-exception v0

    goto :goto_1d

    :catch_2d
    move-exception v0

    goto :goto_10

    :catch_2f
    move-exception v0

    goto :goto_8
.end method

.method protected c(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/rl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/rm; {:try_start_1 .. :try_end_8} :catch_97
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_8a

    :goto_8
    const/4 v0, 0x1

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/rl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/rm; {:try_start_9 .. :try_end_10} :catch_94
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_8a

    :goto_10
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/internal/rl;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/rl;->a(IJ)V

    sget-wide v2, Lcom/google/android/gms/internal/rl;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    const/16 v2, 0x11

    sget-wide v3, Lcom/google/android/gms/internal/rl;->l:J

    sub-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/rl;->a(IJ)V

    const/16 v0, 0x17

    sget-wide v1, Lcom/google/android/gms/internal/rl;->l:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/rl;->a(IJ)V
    :try_end_34
    .catch Lcom/google/android/gms/internal/rm; {:try_start_10 .. :try_end_34} :catch_92
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_8a

    :cond_34
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/rl;->a:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/rl;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rl;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gms/internal/rl;->a(IJ)V

    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gms/internal/rl;->a(IJ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_73

    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/rl;->a(IJ)V
    :try_end_73
    .catch Lcom/google/android/gms/internal/rm; {:try_start_34 .. :try_end_73} :catch_90
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_73} :catch_8a

    :cond_73
    :goto_73
    const/16 v0, 0x1b

    :try_start_75
    iget-object v1, p0, Lcom/google/android/gms/internal/rl;->c:Lcom/google/android/gms/internal/sy;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/rl;->a(Landroid/content/Context;Lcom/google/android/gms/internal/sy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_7e
    .catch Lcom/google/android/gms/internal/rm; {:try_start_75 .. :try_end_7e} :catch_8e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7e} :catch_8a

    :goto_7e
    const/16 v0, 0x1d

    :try_start_80
    iget-object v1, p0, Lcom/google/android/gms/internal/rl;->c:Lcom/google/android/gms/internal/sy;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/rl;->b(Landroid/content/Context;Lcom/google/android/gms/internal/sy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/rl;->a(ILjava/lang/String;)V
    :try_end_89
    .catch Lcom/google/android/gms/internal/rm; {:try_start_80 .. :try_end_89} :catch_8c
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_89} :catch_8a

    :goto_89
    return-void

    :catch_8a
    move-exception v0

    goto :goto_89

    :catch_8c
    move-exception v0

    goto :goto_89

    :catch_8e
    move-exception v0

    goto :goto_7e

    :catch_90
    move-exception v0

    goto :goto_73

    :catch_92
    move-exception v0

    goto :goto_34

    :catch_94
    move-exception v0

    goto/16 :goto_10

    :catch_97
    move-exception v0

    goto/16 :goto_8
.end method
