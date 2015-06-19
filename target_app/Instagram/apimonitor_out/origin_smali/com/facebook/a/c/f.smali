.class public final Lcom/facebook/a/c/f;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/a/c/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-class v1, Lcom/facebook/a/c/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/a/c/f;->a:Ljava/lang/String;

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "n/a"
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_32

    :goto_f
    monitor-exit v1

    return-object v0

    :cond_11
    :try_start_11
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ACRA-INSTALLATION"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_32

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {v2}, Lcom/facebook/a/c/f;->b(Ljava/io/File;)V

    :cond_25
    invoke-static {v2}, Lcom/facebook/a/c/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/c/f;->a:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2e

    :cond_2b
    :try_start_2b
    sget-object v0, Lcom/facebook/a/c/f;->a:Ljava/lang/String;

    goto :goto_f

    :catch_2e
    move-exception v0

    const-string v0, "n/a"
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_32

    goto :goto_f

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method private static b(Ljava/io/File;)V
    .registers 3

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_18
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method
