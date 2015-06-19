.class public Lcom/flurry/sdk/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field private e:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/dc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/dc;->c:I

    iput-object v2, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".flurrydatasenderblock."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/dc;->c:I

    iput-object v2, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    iput-object p1, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/dl;->a()Lcom/flurry/sdk/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dl;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".flurrydatasenderblock."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a([B)Z
    .registers 8

    const/4 v3, 0x6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_13

    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "setData(byte[]) running on the MAIN thread!"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing FlurryDataSenderBlockInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_33
    iget-object v1, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-static {v1}, Lcom/flurry/sdk/fa;->a(Ljava/io/File;)Z
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_71
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_38} :catch_63

    move-result v1

    if-nez v1, :cond_3f

    invoke-static {v3}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_3e
    return v0

    :cond_3f
    :try_start_3f
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_71
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_4b} :catch_63

    :try_start_4b
    array-length v1, p1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x1

    iput v1, p0, Lcom/flurry/sdk/dc;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/flurry/sdk/dc;->b:J
    :try_end_5f
    .catchall {:try_start_4b .. :try_end_5f} :catchall_77
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_5f} :catch_79

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_3e

    :catch_63
    move-exception v1

    move-object v2, v3

    :goto_65
    const/4 v3, 0x6

    :try_start_66
    sget-object v4, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_77

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_3e

    :catchall_71
    move-exception v0

    move-object v2, v3

    :goto_73
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_77
    move-exception v0

    goto :goto_73

    :catch_79
    move-exception v1

    goto :goto_65
.end method

.method public b()[B
    .registers 7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_14

    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "getData() running on the MAIN thread!"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_74

    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading FlurryDataSenderBlockInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_6d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_46} :catch_5f

    :try_start_46
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_7c
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_7e

    move-result v1

    if-nez v1, :cond_50

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    :goto_4f
    return-object v0

    :cond_50
    :try_start_50
    new-array v0, v1, [B

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_7c
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_58} :catch_7e

    move-result v1

    if-nez v1, :cond_5b

    :cond_5b
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_4f

    :catch_5f
    move-exception v1

    move-object v2, v0

    :goto_61
    const/4 v3, 0x6

    :try_start_62
    sget-object v4, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v5, "Error when loading persistent file"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_7c

    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    goto :goto_4f

    :catchall_6d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_70
    invoke-static {v2}, Lcom/flurry/sdk/fb;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_74
    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :catchall_7c
    move-exception v0

    goto :goto_70

    :catch_7e
    move-exception v1

    goto :goto_61
.end method

.method public c()Z
    .registers 4

    iget-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/flurry/sdk/dc;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Deleted persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/dc;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/dc;->c:I

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/dc;->d:Ljava/lang/String;

    const-string v2, "Cannot delete persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 v0, 0x0

    goto :goto_20
.end method
