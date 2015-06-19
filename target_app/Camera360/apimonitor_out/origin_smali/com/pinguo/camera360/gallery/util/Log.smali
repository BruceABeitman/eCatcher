.class public Lcom/pinguo/camera360/gallery/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:Z

.field public static final DUMP_TO_FILE:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static init()V
    .registers 0

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method private static writeToLogFile(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "/c360_album.log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v1

    const-string/jumbo v4, "albumTag"

    const-string/jumbo v5, "-------writeToLogFile--IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
