.class public Lcom/commonsware/cwac/wakeful/demo/AppService;
.super Lcom/commonsware/cwac/wakeful/WakefulIntentService;
.source "AppService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "AppService"

    invoke-direct {p0, v0}, Lcom/commonsware/cwac/wakeful/WakefulIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .registers 8

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "AlarmLog.txt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_b
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v0

    const-string v3, "AppService"

    const-string v4, "Exception appending to log file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method
