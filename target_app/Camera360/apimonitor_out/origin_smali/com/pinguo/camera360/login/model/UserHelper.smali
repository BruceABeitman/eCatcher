.class Lcom/pinguo/camera360/login/model/UserHelper;
.super Ljava/lang/Object;
.source "UserHelper.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "userinfo.txt"

.field private static final LOCK_FILE_NAME:Ljava/lang/String; = "userinfo_lock.txt"

.field private static final USER_GSON_KEY:Ljava/lang/String; = "user_info_gson"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPGLoginUserInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v1, Lcom/pinguo/camera360/login/model/UserHelper;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "user_info_gson"

    invoke-static {p0, v0}, Lcom/pinguo/camera360/login/model/UserHelper;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private static getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/UserHelper;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProperties(Landroid/content/Context;)Ljava/util/Properties;
    .registers 8

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_8
    const-string/jumbo v5, "userinfo_lock.txt"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    const-string/jumbo v5, "userinfo.txt"

    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_72
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_22} :catch_32
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_52

    if-eqz v2, :cond_27

    :try_start_24
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_92

    :cond_27
    :goto_27
    if-eqz v3, :cond_2c

    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_97

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_9c

    :cond_31
    :goto_31
    return-object v4

    :catch_32
    move-exception v5

    if-eqz v2, :cond_38

    :try_start_35
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_48

    :cond_38
    :goto_38
    if-eqz v3, :cond_3d

    :try_start_3a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4d

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_31

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_31

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    :catch_52
    move-exception v5

    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_68

    :cond_58
    :goto_58
    if-eqz v3, :cond_5d

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6d

    :cond_5d
    :goto_5d
    if-eqz v1, :cond_31

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_31

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    :catchall_72
    move-exception v5

    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_83

    :cond_78
    :goto_78
    if-eqz v3, :cond_7d

    :try_start_7a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_88

    :cond_7d
    :goto_7d
    if-eqz v1, :cond_82

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8d

    :cond_82
    :goto_82
    throw v5

    :catch_83
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31
.end method

.method public static putPGLoginUserInfo(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/pinguo/camera360/login/model/UserHelper;

    monitor-enter v1

    :try_start_3
    const-string/jumbo v0, "user_info_gson"

    invoke-static {p0, v0, p1}, Lcom/pinguo/camera360/login/model/UserHelper;->saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private static saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/UserHelper;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/pinguo/camera360/login/model/UserHelper;->saveProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method private static saveProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v4, "userinfo_lock.txt"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    const-string/jumbo v4, "userinfo.txt"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "save prop "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_32} :catch_42
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_32} :catch_62

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_a2

    :cond_37
    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_a7

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_ac

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v4

    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_58

    :cond_48
    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_5d

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_41

    :try_start_4f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_41

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_62
    move-exception v4

    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_78

    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_7d

    :cond_6d
    :goto_6d
    if-eqz v2, :cond_41

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_41

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    :catchall_82
    move-exception v4

    if-eqz v1, :cond_88

    :try_start_85
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_93

    :cond_88
    :goto_88
    if-eqz v3, :cond_8d

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_98

    :cond_8d
    :goto_8d
    if-eqz v2, :cond_92

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_9d

    :cond_92
    :goto_92
    throw v4

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    :catch_98
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8d

    :catch_9d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_92

    :catch_a2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catch_a7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method
