.class public final Lcom/flurry/sdk/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/dx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/dx;->i()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dx;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/flurry/sdk/dx;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called from a background thread!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/flurry/sdk/dx;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/flurry/sdk/dx;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dx;->c:Ljava/lang/String;

    :cond_2a
    sget-object v0, Lcom/flurry/sdk/dx;->c:Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_19

    monitor-exit v1

    return-object v0
.end method

.method private static a(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;Ljava/io/DataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_12

    :try_start_b
    invoke-static {p0, v1}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;Ljava/io/DataOutput;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_26
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_28

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_11
    return-void

    :catch_12
    move-exception v0

    move-object v1, v2

    :goto_14
    const/4 v2, 0x6

    :try_start_15
    sget-object v3, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v4, "Error when saving phoneId"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_26

    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_11

    :catchall_20
    move-exception v0

    move-object v1, v2

    :goto_22
    invoke-static {v1}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_22

    :catch_28
    move-exception v0

    goto :goto_14
.end method

.method static a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/dx;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method static b()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private static b(Ljava/io/DataInput;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0xb5fa

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-eq v1, v2, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x2

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v2

    if-ne v1, v2, :cond_a

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/dx;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, v0}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_6
.end method

.method static c()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/flurry/sdk/dx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/flurry/sdk/dx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/flurry/sdk/dx;->d()Ljava/lang/String;

    move-result-object v0

    :cond_18
    invoke-static {v0}, Lcom/flurry/sdk/dx;->b(Ljava/lang/String;)V

    :cond_1b
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/flurry/sdk/dx;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static d()Ljava/lang/String;
    .registers 8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flurry/sdk/du;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x25

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/dx;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_3a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_2c

    :try_start_24
    invoke-static {v2}, Lcom/flurry/sdk/dx;->a(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_41
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_43

    move-result-object v0

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_19

    :catch_2c
    move-exception v1

    move-object v2, v0

    :goto_2e
    const/4 v3, 0x6

    :try_start_2f
    sget-object v4, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v5, "Error when loading phoneId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_41

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_19

    :catchall_3a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3d
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_41
    move-exception v0

    goto :goto_3d

    :catch_43
    move-exception v1

    goto :goto_2e
.end method

.method static f()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    new-instance v2, Lcom/flurry/sdk/dx$1;

    invoke-direct {v2}, Lcom/flurry/sdk/dx$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    array-length v2, v1

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    :try_start_35
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_55
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3f} :catch_47

    :try_start_3f
    invoke-static {v2}, Lcom/flurry/sdk/dx;->b(Ljava/io/DataInput;)Ljava/lang/String;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5c
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_42} :catch_5e

    move-result-object v0

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_f

    :catch_47
    move-exception v1

    move-object v2, v0

    :goto_49
    const/4 v3, 0x6

    :try_start_4a
    sget-object v4, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v5, "Error when loading phoneId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5c

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_f

    :catchall_55
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_58
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_5c
    move-exception v0

    goto :goto_58

    :catch_5e
    move-exception v1

    goto :goto_49
.end method

.method private static g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/flurry/sdk/dx;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/flurry/sdk/dx;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static h()Ljava/lang/String;
    .registers 1

    const-string v0, ".flurryb."

    return-object v0
.end method

.method private static i()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
