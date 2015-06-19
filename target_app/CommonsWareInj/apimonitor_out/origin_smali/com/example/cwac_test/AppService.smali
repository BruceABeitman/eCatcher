.class public Lcom/example/cwac_test/AppService;
.super Lcom/example/cwac_test/WakefulIntentService;
.source "AppService.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "AppService"

    invoke-direct {p0, v0}, Lcom/example/cwac_test/WakefulIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doWakefulWork(Landroid/content/Intent;)V
    .registers 9

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "TestLog.txt"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    :goto_1e
    const/16 v4, 0x64

    if-lt v1, v4, :cond_2a

    const-string v4, "CWAC"

    const-string v5, "APPSERVCE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!AppService Success"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void

    :cond_2a
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_3e} :catch_41

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :catch_41
    move-exception v0

    const-string v4, "AppService"

    const-string v5, "Exception appending to log file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "CWAC"

    const-string v5, "APPSERVICE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!AppService error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
