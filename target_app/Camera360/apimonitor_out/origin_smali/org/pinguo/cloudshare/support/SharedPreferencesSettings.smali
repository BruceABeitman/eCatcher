.class public Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;
.super Ljava/lang/Object;
.source "SharedPreferencesSettings.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPreference(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->cleanPreference(Landroid/content/Context;)V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public static clearBeforeUserInfo(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "user_extradata"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_b
    if-lt v2, v4, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_12
    aget-char v0, v3, v2

    const/16 v5, 0x80

    if-le v0, v5, :cond_29

    const-string/jumbo v5, "\\u"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26
.end method

.method public static getPreferences(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_6
.end method

.method public static getPreferences(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    invoke-static {p0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_6
.end method

.method public static getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    move-object p2, v0

    goto :goto_6
.end method

.method public static getPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {p0, p1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_6
.end method

.method public static getPreferencesForLogin(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v5

    const-string/jumbo v8, "user_extradata"

    invoke-virtual {v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6b

    const/4 v3, 0x1

    :goto_13
    const-string/jumbo v8, "camera_user_id"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "user_expire"

    invoke-virtual {v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "local_key"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "user_name"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "user_extradata"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "userId"

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "expire"

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "pwd"

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "email"

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "extraData"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v8, "hasExtraData"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_6b
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static getPreferencesForUploadSetting(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v3

    const/4 v8, 0x0

    const-string/jumbo v10, "preference_wifi"

    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_17

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    :cond_17
    const/4 v4, 0x0

    const-string/jumbo v10, "preference_mobile"

    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_25
    const/4 v1, 0x0

    const-string/jumbo v10, "preference_power"

    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_33
    const/4 v6, 0x0

    const-string/jumbo v10, "preference_upload"

    invoke-virtual {v3, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_41

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_41
    const-string/jumbo v10, "wifi"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "threeg"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "onlyCharging"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "valve"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static getProperties(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

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
    const-string/jumbo v5, "cloudlock.txt"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    const-string/jumbo v5, "cloud.properties"

    invoke-virtual {p0, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_22} :catch_32
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_5c

    if-eqz v2, :cond_27

    :try_start_24
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_9c

    :cond_27
    :goto_27
    if-eqz v3, :cond_2c

    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_a1

    :cond_2c
    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_a6

    :cond_31
    :goto_31
    return-object v4

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v5, "System.err"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_7c

    if-eqz v2, :cond_42

    :try_start_3f
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_52

    :cond_42
    :goto_42
    if-eqz v3, :cond_47

    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_57

    :cond_47
    :goto_47
    if-eqz v1, :cond_31

    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_31

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :catch_5c
    move-exception v5

    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_72

    :cond_62
    :goto_62
    if-eqz v3, :cond_67

    :try_start_64
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_77

    :cond_67
    :goto_67
    if-eqz v1, :cond_31

    :try_start_69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_31

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    :catchall_7c
    move-exception v5

    if-eqz v2, :cond_82

    :try_start_7f
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8d

    :cond_82
    :goto_82
    if-eqz v3, :cond_87

    :try_start_84
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_92

    :cond_87
    :goto_87
    if-eqz v1, :cond_8c

    :try_start_89
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_97

    :cond_8c
    :goto_8c
    throw v5

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_a1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31
.end method

.method private static saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    invoke-static {p2}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->decodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->saveProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method private static saveProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v4, "cloudlock.txt"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    const-string/jumbo v4, "cloud.properties"

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
    .catchall {:try_start_3 .. :try_end_32} :catchall_62
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_32} :catch_42

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_82

    :cond_37
    :goto_37
    if-eqz v3, :cond_3c

    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_87

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_8c

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

    :catchall_62
    move-exception v4

    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_73

    :cond_68
    :goto_68
    if-eqz v3, :cond_6d

    :try_start_6a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_78

    :cond_6d
    :goto_6d
    if-eqz v2, :cond_72

    :try_start_6f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_7d

    :cond_72
    :goto_72
    throw v4

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    :catch_78
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->saveProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPreferencesForUploadSetting(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 7

    invoke-static {p1, p0}, Lorg/pinguo/cloudshare/support/HelperConsole;->setNetShowStatus(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    sput-boolean p2, Lorg/pinguo/cloudshare/support/Config;->SET_BATTY_INFORMATION:Z

    const-string/jumbo v1, "preference_power"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sput-boolean p3, Lorg/pinguo/cloudshare/support/Config;->SET_AUTO_UPLOAD:Z

    const-string/jumbo v1, "preference_upload"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->saveProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method
