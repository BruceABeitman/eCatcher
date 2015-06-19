.class public Lcom/pinguo/camera360/gallery/temps/PinguoEnvironment;
.super Ljava/lang/Object;
.source "PinguoEnvironment.java"
.field private static final EXTERNAL_STORAGE:Ljava/lang/String; = null
.field public static final LOW_STORAGE_THRESHOLD:J = 0x2faf080L
.field public static final PREPARING:J = -0x2L
.field private static final TAG:Ljava/lang/String; = "PinguoEnvironment"
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "sd_test"
.field public static final UNAVAILABLE:J = -0x1L
.field public static final UNKNOWN_SIZE:J = -0x3L
.field private static final VOLD_FILE_NAME:Ljava/lang/String; = "/system/etc/vold.fstab"
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/temps/PinguoEnvironment;->EXTERNAL_STORAGE:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAvailableSpace(Ljava/lang/String;)J
.registers 10
const-wide/16 v4, -0x1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
const-string/jumbo v6, "PinguoEnvironment"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "External storage state="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v6, "checking"
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
const-wide/16 v4, -0x2
:goto_27
:cond_27
return-wide v4
:cond_28
const-string/jumbo v6, "mounted"
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_27
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_27
invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
move-result v6
if-eqz v6, :cond_27
:try_start_45
new-instance v2, Landroid/os/StatFs;
invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v4
int-to-long v4, v4
invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
:try_end_52
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_52} :catch_56
move-result v6
int-to-long v6, v6
mul-long/2addr v4, v6
goto :goto_27
:catch_56
move-exception v1
const-string/jumbo v4, "PinguoEnvironment"
const-string/jumbo v5, "Fail to access external storage"
invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-wide/16 v4, -0x3
goto :goto_27
.end method
.method public static getExternalAltStorageDirectory()Ljava/io/File;
.registers 16
const/4 v12, 0x0
const/4 v15, 0x2
const/4 v4, 0x0
invoke-static {}, Lcom/pinguo/camera360/gallery/temps/PinguoEnvironment;->getMotoExtSD()Ljava/io/File;
move-result-object v4
if-eqz v4, :cond_a
:goto_9
return-object v4
:cond_a
const/4 v7, 0x0
const/4 v0, 0x0
:try_start_c
new-instance v6, Ljava/io/FileInputStream;
const-string/jumbo v13, "/system/etc/vold.fstab"
invoke-direct {v6, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
new-instance v8, Ljava/io/DataInputStream;
invoke-direct {v8, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_19
.catchall {:try_start_c .. :try_end_19} :catchall_147
.catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_19} :catch_c9
.catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_108
:try_start_19
new-instance v1, Ljava/io/BufferedReader;
new-instance v13, Ljava/io/InputStreamReader;
invoke-direct {v13, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_start_23
:try_end_23
.catchall {:try_start_19 .. :try_end_23} :catchall_183
.catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_19e
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_18f
:cond_23
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_186
.catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_26} :catch_1a2
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_193
move-result-object v11
if-nez v11, :cond_37
if-eqz v1, :cond_1b0
:try_start_2b
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:goto_2e
:try_end_2e
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_16b
const/4 v0, 0x0
:goto_2f
if-eqz v8, :cond_1ad
:try_start_31
invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
:goto_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_177
const/4 v7, 0x0
:goto_35
:cond_35
move-object v4, v12
goto :goto_9
:try_start_37
:cond_37
const-string/jumbo v13, "dev_mount"
invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_23
const-string/jumbo v13, " "
invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v10
array-length v13, v10
if-le v13, v15, :cond_23
const/4 v13, 0x1
aget-object v13, v10, v13
const-string/jumbo v14, "sdcard"
invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_23
const/4 v13, 0x2
aget-object v13, v10, v13
sget-object v14, Lcom/pinguo/camera360/gallery/temps/PinguoEnvironment;->EXTERNAL_STORAGE:Ljava/lang/String;
invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_23
const/4 v13, 0x2
aget-object v13, v10, v13
const-string/jumbo v14, ":"
invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v9
const/4 v13, 0x0
aget-object v3, v9, v13
new-instance v5, Ljava/io/File;
invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_73
.catchall {:try_start_37 .. :try_end_73} :catchall_186
.catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_73} :catch_1a2
.catch Ljava/io/IOException; {:try_start_37 .. :try_end_73} :catch_193
:try_start_73
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v13
if-eqz v13, :cond_a4
invoke-static {v5}, Lcom/pinguo/camera360/gallery/temps/PinguoEnvironment;->isDirCanAccess(Ljava/io/File;)Z
:try_end_7c
.catchall {:try_start_73 .. :try_end_7c} :catchall_18a
.catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_7c} :catch_1a7
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_7c} :catch_198
move-result v13
if-eqz v13, :cond_a4
if-eqz v1, :cond_1bc
:try_start_81
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:goto_84
:try_end_84
.catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8e
const/4 v0, 0x0
:goto_85
if-eqz v8, :cond_1b9
:try_start_87
invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
:goto_8a
:try_end_8a
.catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_99
const/4 v7, 0x0
:goto_8b
move-object v4, v5
goto/16 :goto_9
:catch_8e
move-exception v2
const-string/jumbo v12, "PinguoEnvironment"
const-string/jumbo v13, "Close file error."
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_84
:catch_99
move-exception v2
const-string/jumbo v12, "PinguoEnvironment"
const-string/jumbo v13, "Close file error."
invoke-static {v12, v13}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8a
:cond_a4
if-eqz v1, :cond_1b6
:try_start_a6
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:goto_a9
:try_end_a9
.catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b3
const/4 v0, 0x0
:goto_aa
if-eqz v8, :cond_1b3
:try_start_ac
invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
:goto_af
:try_end_af
.catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_be
const/4 v7, 0x0
:goto_b0
move-object v4, v12
goto/16 :goto_9
:catch_b3
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a9
:catch_be
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_af
:catch_c9
move-exception v2
:goto_ca
:try_start_ca
const-string/jumbo v13, "PinguoEnvironment"
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "Error: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_e4
.catchall {:try_start_ca .. :try_end_e4} :catchall_147
if-eqz v0, :cond_ea
:try_start_e6
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:goto_e9
:try_end_e9
.catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_f2
const/4 v0, 0x0
:cond_ea
if-eqz v7, :cond_35
:try_start_ec
invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
:goto_ef
:try_end_ef
.catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_fd
const/4 v7, 0x0
goto/16 :goto_35
:catch_f2
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_e9
:catch_fd
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_ef
:catch_108
move-exception v2
:goto_109
:try_start_109
const-string/jumbo v13, "PinguoEnvironment"
new-instance v14, Ljava/lang/StringBuilder;
const-string/jumbo v15, "Error: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_123
.catchall {:try_start_109 .. :try_end_123} :catchall_147
if-eqz v0, :cond_129
:try_start_125
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:try_end_128
.catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_131
:goto_128
const/4 v0, 0x0
:cond_129
if-eqz v7, :cond_35
:try_start_12b
invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
:try_end_12e
.catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_13c
:goto_12e
const/4 v7, 0x0
goto/16 :goto_35
:catch_131
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_128
:catch_13c
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_12e
:catchall_147
move-exception v12
:goto_148
if-eqz v0, :cond_14e
:try_start_14a
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:try_end_14d
.catch Ljava/io/IOException; {:try_start_14a .. :try_end_14d} :catch_155
:goto_14d
const/4 v0, 0x0
:cond_14e
if-eqz v7, :cond_154
:try_start_150
invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
:try_end_153
.catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_160
:goto_153
const/4 v7, 0x0
:cond_154
throw v12
:catch_155
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14d
:catch_160
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_153
:catch_16b
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_2e
:catch_177
move-exception v2
const-string/jumbo v13, "PinguoEnvironment"
const-string/jumbo v14, "Close file error."
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_34
:catchall_183
move-exception v12
move-object v7, v8
goto :goto_148
:catchall_186
move-exception v12
move-object v0, v1
move-object v7, v8
goto :goto_148
:catchall_18a
move-exception v12
move-object v0, v1
move-object v7, v8
move-object v4, v5
goto :goto_148
:catch_18f
move-exception v2
move-object v7, v8
goto/16 :goto_109
:catch_193
move-exception v2
move-object v0, v1
move-object v7, v8
goto/16 :goto_109
:catch_198
move-exception v2
move-object v0, v1
move-object v7, v8
move-object v4, v5
goto/16 :goto_109
:catch_19e
move-exception v2
move-object v7, v8
goto/16 :goto_ca
:catch_1a2
move-exception v2
move-object v0, v1
move-object v7, v8
goto/16 :goto_ca
:catch_1a7
move-exception v2
move-object v0, v1
move-object v7, v8
move-object v4, v5
goto/16 :goto_ca
:cond_1ad
move-object v7, v8
goto/16 :goto_35
:cond_1b0
move-object v0, v1
goto/16 :goto_2f
:cond_1b3
move-object v7, v8
goto/16 :goto_b0
:cond_1b6
move-object v0, v1
goto/16 :goto_aa
:cond_1b9
move-object v7, v8
goto/16 :goto_8b
:cond_1bc
move-object v0, v1
goto/16 :goto_85
.end method
.method private static getMotoExtSD()Ljava/io/File;
.registers 9
const/4 v3, 0x0
const-string/jumbo v6, ""
:try_start_4
const-string/jumbo v7, "com.motorola.android.storage.MotoEnvironment"
invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
const-string/jumbo v7, "getExternalAltStorageDirectory"
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/Class;
invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
const-string/jumbo v7, "getExternalAltStorageState"
const/4 v8, 0x0
new-array v8, v8, [Ljava/lang/Class;
invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v5
const/4 v7, 0x0
new-array v7, v7, [Ljava/lang/Object;
invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
move-object v0, v7
check-cast v0, Ljava/io/File;
move-object v3, v0
const/4 v7, 0x0
new-array v7, v7, [Ljava/lang/Object;
invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
move-object v0, v7
check-cast v0, Ljava/lang/String;
move-object v6, v0
const-string/jumbo v7, "mounted"
invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_3b
.catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_3b} :catch_40
.catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_3b} :catch_4b
.catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_3b} :catch_56
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_3b} :catch_61
.catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_3b} :catch_6c
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_77
move-result v7
if-nez v7, :cond_3f
const/4 v3, 0x0
:goto_3f
:cond_3f
return-object v3
:catch_40
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:catch_4b
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:catch_56
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:catch_61
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:catch_6c
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
:catch_77
move-exception v1
const-string/jumbo v7, "PinguoEnvironment"
const-string/jumbo v8, "Motorola api get external sdcard error."
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_3f
.end method
.method private static isDirCanAccess(Ljava/io/File;)Z
.registers 6
const/4 v2, 0x0
new-instance v1, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "sd_test"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_24
invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
move-result v3
if-eqz v3, :cond_2e
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:try_end_2d
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_2f
const/4 v2, 0x1
:goto_2e
:cond_2e
return v2
:catch_2f
move-exception v0
goto :goto_2e
.end method