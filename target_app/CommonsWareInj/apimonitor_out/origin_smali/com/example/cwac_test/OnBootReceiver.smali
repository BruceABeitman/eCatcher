.class public Lcom/example/cwac_test/OnBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootReceiver.java"


# static fields
.field private static final PERIOD:I = 0xbb8


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/4 v4, 0x0

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "ServiceRun.txt"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v12, ""

    :try_start_e
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_18
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5b

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_5d

    :goto_21
    const-string v1, "CWAC"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BOOTRECEIVE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Boot checking service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "start"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v10, Landroid/content/Intent;

    const-class v1, Lcom/example/cwac_test/OnAlarmReceiver;

    invoke-direct {v10, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_5a
    return-void

    :cond_5b
    move-object v12, v11

    goto :goto_18

    :catch_5d
    move-exception v9

    const-string v1, "CWAC:BootReceiver"

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!File error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method
