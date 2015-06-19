.class final Lcom/mapquest/android/maps/ak;
.super Ljava/lang/Thread;
.source "MapConfiguration.java"


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/ai;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ai;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/ai;->a()Ljava/io/File;

    move-result-object v1

    const-string v3, "mqTileVersion.json"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10d

    :try_start_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Referer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v6, v6, Lcom/mapquest/android/maps/ai;->d:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v6}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept"

    const-string v5, "*/*"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://mapconfig.mapquest.com/mapconfig?version=3&format=json&sdk=android-api-1.0.4"

    const-string v5, "mq.android.maps.tileversionupdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Downloading tile config from:  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v1}, Lcom/mapquest/android/maps/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_100
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_12a

    move-result-object v1

    if-eqz v1, :cond_131

    :try_start_57
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_11f
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_12e

    const/16 v0, 0x400

    :try_start_5e
    new-array v0, v0, [B

    :goto_60
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_ec

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_6b

    goto :goto_60

    :catch_6b
    move-exception v0

    move-object v2, v3

    :goto_6d
    :try_start_6d
    const-string v3, "mq.android.maps.tileversionupdater"

    const-string v5, "unable to update tile version info"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_126

    if-eqz v2, :cond_79

    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_118

    :cond_79
    :goto_79
    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_fd

    :cond_7e
    move v0, v4

    :cond_7f
    :goto_7f
    if-eqz v0, :cond_eb

    :try_start_81
    const-string v0, "mq.android.maps.tileversionupdater"

    const-string v1, "New map configuration has been downloaded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ai;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d9

    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v1, v1, Lcom/mapquest/android/maps/ai;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "mq.android.maps.tileversionupdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new tile cache verison detected. switching tile cache version to:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v1, v1, Lcom/mapquest/android/maps/ai;->d:Lcom/mapquest/android/maps/MapView;

    iget-object v2, v1, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;

    if-eqz v2, :cond_c3

    iget-object v1, v1, Lcom/mapquest/android/maps/MapView;->e:Lcom/mapquest/android/maps/cb;

    sget-object v2, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;

    move-result-object v1

    if-eqz v1, :cond_c3

    invoke-interface {v1}, Lcom/mapquest/android/maps/x;->a()V

    :cond_c3
    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v1, v1, Lcom/mapquest/android/maps/ai;->d:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getTileCacher()Lcom/mapquest/android/maps/cb;

    move-result-object v1

    sget-object v2, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/mapquest/android/maps/x;->a()V

    const/16 v1, 0x17

    invoke-static {v1}, Lcom/mapquest/android/maps/g;->a(I)V

    :cond_d9
    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iput-object v0, v1, Lcom/mapquest/android/maps/ai;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v1, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v2, p0, Lcom/mapquest/android/maps/ak;->a:Lcom/mapquest/android/maps/ai;

    iget-object v2, v2, Lcom/mapquest/android/maps/ai;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/ai;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mapquest/android/maps/ai;->b:Ljava/util/Map;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_eb} :catch_10d

    :cond_eb
    :goto_eb
    return-void

    :cond_ec
    :try_start_ec
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_6b

    const/4 v0, 0x1

    :goto_f0
    if-eqz v3, :cond_f5

    :try_start_f2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_116

    :cond_f5
    :goto_f5
    if-eqz v1, :cond_7f

    :try_start_f7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_7f

    :catch_fb
    move-exception v1

    goto :goto_7f

    :catch_fd
    move-exception v0

    move v0, v4

    goto :goto_7f

    :catchall_100
    move-exception v0

    move-object v3, v2

    :goto_102
    if-eqz v3, :cond_107

    :try_start_104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_11b

    :cond_107
    :goto_107
    if-eqz v2, :cond_10c

    :try_start_109
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_11d

    :cond_10c
    :goto_10c
    :try_start_10c
    throw v0
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10d} :catch_10d

    :catch_10d
    move-exception v0

    const-string v1, "mq.android.maps.tileversionupdater"

    const-string v2, "unable to update tile version info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_eb

    :catch_116
    move-exception v2

    goto :goto_f5

    :catch_118
    move-exception v0

    goto/16 :goto_79

    :catch_11b
    move-exception v1

    goto :goto_107

    :catch_11d
    move-exception v1

    goto :goto_10c

    :catchall_11f
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_102

    :catchall_123
    move-exception v0

    move-object v2, v1

    goto :goto_102

    :catchall_126
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_102

    :catch_12a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6d

    :catch_12e
    move-exception v0

    goto/16 :goto_6d

    :cond_131
    move v0, v4

    move-object v3, v2

    goto :goto_f0
.end method
