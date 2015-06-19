.class final Lcom/mapquest/android/maps/au;
.super Ljava/lang/Thread;
.source "MapView.java"


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/MapView;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 6

    const/4 v3, 0x5

    iput-object p1, p0, Lcom/mapquest/android/maps/au;->a:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, "http://content.mqcdn.com/mobile/android/"

    iput-object v0, p0, Lcom/mapquest/android/maps/au;->b:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logo_hdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logo_mdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "navteqlogo_hdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "navteqlogo_mdpi.png"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "osmlogo_hdpi.png"

    aput-object v2, v0, v1

    const-string v1, "osmlogo_mdpi.png"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/mapquest/android/maps/au;->d:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, -0xe

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/au;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/mapquest/android/maps/au;->d:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_6
    if-ge v5, v7, :cond_a1

    aget-object v1, v6, v5

    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mapquest/android/maps/au;->a:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/mapquest/android/maps/au;->c:J
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_99

    cmp-long v0, v9, v11

    if-gez v0, :cond_7f

    const/4 v0, 0x1

    :goto_3f
    if-eqz v0, :cond_7b

    :try_start_41
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_46} :catch_b1

    :try_start_46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "http://content.mqcdn.com/mobile/android/"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_ac
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_59} :catch_b5

    move-result-object v1

    const/16 v0, 0x400

    :try_start_5c
    new-array v0, v0, [B

    :goto_5e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_81

    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_69

    goto :goto_5e

    :catch_69
    move-exception v0

    :goto_6a
    :try_start_6a
    const-string v8, "mq.android.maps.assetupdater"

    const-string v9, "unable to update assets"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_ae

    if-eqz v3, :cond_76

    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_a4

    :cond_76
    :goto_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_a6

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_7f
    move v0, v4

    goto :goto_3f

    :cond_81
    :try_start_81
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_a2

    :goto_84
    if-eqz v1, :cond_7b

    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_7b

    :catch_8a
    move-exception v0

    goto :goto_7b

    :catchall_8c
    move-exception v0

    move-object v3, v2

    :goto_8e
    if-eqz v3, :cond_93

    :try_start_90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_a8

    :cond_93
    :goto_93
    if-eqz v2, :cond_98

    :try_start_95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_aa

    :cond_98
    :goto_98
    :try_start_98
    throw v0
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_99} :catch_99

    :catch_99
    move-exception v0

    const-string v1, "mq.android.maps.assetupdater"

    const-string v2, "unable to update assets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a1
    return-void

    :catch_a2
    move-exception v0

    goto :goto_84

    :catch_a4
    move-exception v0

    goto :goto_76

    :catch_a6
    move-exception v0

    goto :goto_7b

    :catch_a8
    move-exception v1

    goto :goto_93

    :catch_aa
    move-exception v1

    goto :goto_98

    :catchall_ac
    move-exception v0

    goto :goto_8e

    :catchall_ae
    move-exception v0

    move-object v2, v1

    goto :goto_8e

    :catch_b1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_6a

    :catch_b5
    move-exception v0

    move-object v1, v2

    goto :goto_6a
.end method
