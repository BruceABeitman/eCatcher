.class public Lcom/igexin/download/g;
.super Ljava/lang/Thread;
.field private a:Landroid/content/Context;
.field private b:Lcom/igexin/download/DownloadInfo;
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object p1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
return-void
.end method
.method private a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;
if-eqz v0, :cond_6
:cond_6
if-nez v0, :cond_b
const-string/jumbo v0, "AndroidDownloadManager"
:cond_b
return-object v0
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
:try_start_0
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
const/16 v1, 0x3b
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_18
const/4 v2, 0x0
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_17
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19
move-result-object v0
:goto_18
:cond_18
return-object v0
:catch_19
move-exception v0
const/4 v0, 0x0
goto :goto_18
.end method
.method private a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-direct/range {p0 .. p8}, Lcom/igexin/download/g;->b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v5, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v1, "status"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v1, "_data"
invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p7, :cond_1e
const-string/jumbo v1, "uri"
invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
const-string/jumbo v1, "mimetype"
invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "lastmod"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v1, "method"
shl-int/lit8 v2, p4, 0x1c
add-int/2addr v2, p3
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
if-nez p2, :cond_61
const-string/jumbo v1, "numfailed"
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:goto_4c
iget-object v1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
iget-object v3, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mId:I
int-to-long v3, v3
invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
return-void
:cond_61
if-eqz p5, :cond_6f
const-string/jumbo v1, "numfailed"
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
goto :goto_4c
:cond_6f
const-string/jumbo v1, "numfailed"
iget-object v2, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v2, v2, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
add-int/lit8 v2, v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
goto :goto_4c
.end method
.method public run()V
.registers 34
const/16 v2, 0xa
invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V
const/16 v20, 0x1eb
const/16 v19, 0x0
const/16 v18, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v0, v2, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I
move/from16 v17, v0
const/16 v16, 0x0
const/4 v15, 0x0
const/4 v5, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const/4 v14, 0x0
const/4 v12, 0x0
const/4 v3, 0x0
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v4, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, "/"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v4, v4, Lcom/igexin/download/DownloadInfo;->mId:I
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v27
const/4 v11, 0x0
const/4 v7, 0x0
const/4 v10, 0x0
const/4 v6, 0x0
const/4 v4, 0x0
const/4 v9, 0x0
const/16 v2, 0x1000
:try_start_52
new-array v0, v2, [B
move-object/from16 v28, v0
const/16 v25, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
const-string/jumbo v8, "power"
invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/PowerManager;
const/4 v8, 0x1
const-string/jumbo v21, "GexinSdkDownloadService"
move-object/from16 v0, v21
invoke-virtual {v2, v8, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
:try_end_6e
.catchall {:try_start_52 .. :try_end_6e} :catchall_b15
.catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_6e} :catch_135b
.catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_6e} :catch_849
.catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_6e} :catch_8fc
.catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_6e} :catch_9af
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_52 .. :try_end_6e} :catch_a62
move-result-object v21
:try_start_6f
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v8, v2, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
:try_end_78
.catchall {:try_start_6f .. :try_end_78} :catchall_c01
.catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_78} :catch_136b
.catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_78} :catch_1237
.catch Ljava/lang/ClassNotFoundException; {:try_start_6f .. :try_end_78} :catch_10bc
.catch Ljava/lang/IllegalAccessException; {:try_start_6f .. :try_end_78} :catch_f41
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6f .. :try_end_78} :catch_dc6
if-eqz v8, :cond_1512
:try_start_7a
invoke-static {v8}, Lcom/igexin/download/h;->a(Ljava/lang/String;)Z
:try_end_7d
.catchall {:try_start_7a .. :try_end_7d} :catchall_c19
.catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_137c
.catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7d} :catch_1248
.catch Ljava/lang/ClassNotFoundException; {:try_start_7a .. :try_end_7d} :catch_10cf
.catch Ljava/lang/IllegalAccessException; {:try_start_7a .. :try_end_7d} :catch_f54
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7a .. :try_end_7d} :catch_dd9
move-result v2
if-nez v2, :cond_137
const/16 v3, 0x1ec
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v9, 0x0
:try_start_87
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v10, v2, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_92
.catchall {:try_start_87 .. :try_end_92} :catchall_c30
.catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_92} :catch_137c
.catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_92} :catch_1248
.catch Ljava/lang/ClassNotFoundException; {:try_start_87 .. :try_end_92} :catch_10e1
.catch Ljava/lang/IllegalAccessException; {:try_start_87 .. :try_end_92} :catch_f66
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_87 .. :try_end_92} :catch_deb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v4, 0x0
iput-boolean v4, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_9e
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_9e
if-eqz v12, :cond_b2
invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_a4
const-string/jumbo v4, "close"
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v2, v12, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_b2
:cond_b2
:try_end_b2
.catch Ljava/lang/SecurityException; {:try_start_a4 .. :try_end_b2} :catch_14e2
.catch Ljava/lang/NoSuchMethodException; {:try_start_a4 .. :try_end_b2} :catch_14df
.catch Ljava/lang/IllegalArgumentException; {:try_start_a4 .. :try_end_b2} :catch_14dc
.catch Ljava/lang/IllegalAccessException; {:try_start_a4 .. :try_end_b2} :catch_14d9
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a4 .. :try_end_b2} :catch_14d6
if-eqz v14, :cond_b7
:try_start_b4
invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
:cond_b7
:try_end_b7
.catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_bcc
:goto_b7
if-eqz v8, :cond_c8
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_d8
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:cond_c8
:goto_c8
move-object/from16 v2, p0
move/from16 v4, v19
move/from16 v5, v18
move/from16 v6, v17
move v7, v15
move-object/from16 v9, v16
move-object v10, v13
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:goto_d7
return-void
:cond_d8
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_c8
const-string/jumbo v2, "android.os.FileUtils"
:try_start_e1
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v5
const/4 v2, 0x0
const/4 v4, 0x0
:goto_eb
array-length v6, v5
if-ge v4, v6, :cond_ff
aget-object v6, v5, v4
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "setPermissions"
invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_134
aget-object v2, v5, v4
:cond_ff
if-eqz v2, :cond_124
const/4 v4, 0x0
const/4 v5, 0x4
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object v8, v5, v6
const/4 v6, 0x1
const/16 v7, 0x1a4
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x2
const/4 v7, -0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x3
const/4 v7, -0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_124
:try_end_124
.catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_124} :catch_14d3
:try_start_124
:goto_124
new-instance v2, Ljava/io/FileOutputStream;
const/4 v4, 0x1
invoke-direct {v2, v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_131
.catch Ljava/io/FileNotFoundException; {:try_start_124 .. :try_end_131} :catch_132
.catch Ljava/io/SyncFailedException; {:try_start_124 .. :try_end_131} :catch_14d0
.catch Ljava/io/IOException; {:try_start_124 .. :try_end_131} :catch_14cd
.catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_131} :catch_14ca
goto :goto_c8
:catch_132
move-exception v2
goto :goto_c8
:cond_134
add-int/lit8 v4, v4, 0x1
goto :goto_eb
:cond_137
:try_start_137
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1512
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v3
const-wide/16 v22, 0x0
cmp-long v5, v3, v22
if-nez v5, :cond_150f
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:try_end_14f
.catchall {:try_start_137 .. :try_end_14f} :catchall_c19
.catch Ljava/io/FileNotFoundException; {:try_start_137 .. :try_end_14f} :catch_137c
.catch Ljava/lang/RuntimeException; {:try_start_137 .. :try_end_14f} :catch_1248
.catch Ljava/lang/ClassNotFoundException; {:try_start_137 .. :try_end_14f} :catch_10cf
.catch Ljava/lang/IllegalAccessException; {:try_start_137 .. :try_end_14f} :catch_f54
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_137 .. :try_end_14f} :catch_dd9
const/4 v5, 0x0
:goto_150
:try_start_150
new-instance v2, Ljava/io/FileOutputStream;
const/4 v8, 0x1
invoke-direct {v2, v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
:try_end_156
.catchall {:try_start_150 .. :try_end_156} :catchall_c45
.catch Ljava/io/FileNotFoundException; {:try_start_150 .. :try_end_156} :catch_138c
.catch Ljava/lang/RuntimeException; {:try_start_150 .. :try_end_156} :catch_1258
.catch Ljava/lang/ClassNotFoundException; {:try_start_150 .. :try_end_156} :catch_10f1
.catch Ljava/lang/IllegalAccessException; {:try_start_150 .. :try_end_156} :catch_f76
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_150 .. :try_end_156} :catch_dfb
long-to-int v0, v3
move/from16 v25, v0
:try_start_159
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I
const/4 v4, -0x1
if-eq v3, v4, :cond_150c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v4
:goto_16c
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v8, v3, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;
:try_end_172
.catchall {:try_start_159 .. :try_end_172} :catchall_c5d
.catch Ljava/io/FileNotFoundException; {:try_start_159 .. :try_end_172} :catch_139d
.catch Ljava/lang/RuntimeException; {:try_start_159 .. :try_end_172} :catch_1269
.catch Ljava/lang/ClassNotFoundException; {:try_start_159 .. :try_end_172} :catch_1104
.catch Ljava/lang/IllegalAccessException; {:try_start_159 .. :try_end_172} :catch_f89
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_159 .. :try_end_172} :catch_e0e
const/4 v11, 0x1
move-object v14, v5
:goto_174
const-wide/16 v23, 0x0
:try_start_176
const-string/jumbo v3, "android.net.http.AndroidHttpClient"
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v10
const/4 v3, 0x0
const/4 v5, 0x0
:goto_183
array-length v0, v10
move/from16 v22, v0
move/from16 v0, v22
if-ge v5, v0, :cond_19f
aget-object v22, v10, v5
invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v22
const-string/jumbo v26, "newInstance"
move-object/from16 v0, v22
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v22
if-eqz v22, :cond_2c9
aget-object v3, v10, v5
:cond_19f
if-eqz v3, :cond_1508
const/4 v5, 0x0
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/16 v22, 0x0
invoke-direct/range {p0 .. p0}, Lcom/igexin/download/g;->a()Ljava/lang/String;
move-result-object v26
aput-object v26, v10, v22
invoke-virtual {v3, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1b0
.catchall {:try_start_176 .. :try_end_1b0} :catchall_c72
.catch Ljava/io/FileNotFoundException; {:try_start_176 .. :try_end_1b0} :catch_13ae
.catch Ljava/lang/RuntimeException; {:try_start_176 .. :try_end_1b0} :catch_127a
.catch Ljava/lang/ClassNotFoundException; {:try_start_176 .. :try_end_1b0} :catch_1117
.catch Ljava/lang/IllegalAccessException; {:try_start_176 .. :try_end_1b0} :catch_f9c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_176 .. :try_end_1b0} :catch_e21
move-result-object v22
:goto_1b1
if-eqz v2, :cond_1505
:try_start_1b3
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mDestination:I
:try_end_1b9
.catchall {:try_start_1b3 .. :try_end_1b9} :catchall_c87
.catch Ljava/io/FileNotFoundException; {:try_start_1b3 .. :try_end_1b9} :catch_13bf
.catch Ljava/lang/RuntimeException; {:try_start_1b3 .. :try_end_1b9} :catch_128b
.catch Ljava/lang/ClassNotFoundException; {:try_start_1b3 .. :try_end_1b9} :catch_112a
.catch Ljava/lang/IllegalAccessException; {:try_start_1b3 .. :try_end_1b9} :catch_faf
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b3 .. :try_end_1b9} :catch_e34
if-nez v3, :cond_1505
:try_start_1bb
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_1be
.catchall {:try_start_1bb .. :try_end_1be} :catchall_c87
.catch Ljava/io/IOException; {:try_start_1bb .. :try_end_1be} :catch_2cd
.catch Ljava/io/FileNotFoundException; {:try_start_1bb .. :try_end_1be} :catch_13bf
.catch Ljava/lang/RuntimeException; {:try_start_1bb .. :try_end_1be} :catch_128b
.catch Ljava/lang/ClassNotFoundException; {:try_start_1bb .. :try_end_1be} :catch_112a
.catch Ljava/lang/IllegalAccessException; {:try_start_1bb .. :try_end_1be} :catch_faf
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1bb .. :try_end_1be} :catch_e34
const/4 v2, 0x0
move-object v12, v2
:try_start_1c0
:goto_1c0
new-instance v29, Lorg/apache/http/client/methods/HttpGet;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;
move-object/from16 v0, v29
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;
if-eqz v2, :cond_1e3
const-string/jumbo v2, "Cookie"
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;
move-object/from16 v0, v29
invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e3
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v2, v2, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;
if-eqz v2, :cond_1f9
const-string/jumbo v2, "Referer"
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;
move-object/from16 v0, v29
invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f9
if-eqz v11, :cond_22a
if-eqz v8, :cond_205
const-string/jumbo v2, "If-Match"
move-object/from16 v0, v29
invoke-virtual {v0, v2, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_205
const-string/jumbo v2, "Range"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "bytes="
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move/from16 v0, v25
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v5, "-"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v29
invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_22a
:try_end_22a
.catchall {:try_start_1c0 .. :try_end_22a} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_1c0 .. :try_end_22a} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_1c0 .. :try_end_22a} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_1c0 .. :try_end_22a} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_1c0 .. :try_end_22a} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c0 .. :try_end_22a} :catch_e45
const/4 v3, 0x0
:try_start_22b
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
:try_end_22e
.catchall {:try_start_22b .. :try_end_22e} :catchall_c9a
.catch Ljava/lang/IllegalArgumentException; {:try_start_22b .. :try_end_22e} :catch_2d5
.catch Ljava/lang/Exception; {:try_start_22b .. :try_end_22e} :catch_2e8
.catch Ljava/io/FileNotFoundException; {:try_start_22b .. :try_end_22e} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_22b .. :try_end_22e} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_22b .. :try_end_22e} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_22b .. :try_end_22e} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22b .. :try_end_22e} :catch_e45
move-result-object v2
:try_start_22f
const-string/jumbo v5, "execute"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Class;
const/16 v26, 0x0
const-class v30, Lorg/apache/http/client/methods/HttpUriRequest;
aput-object v30, v10, v26
invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v10, 0x0
aput-object v29, v5, v10
move-object/from16 v0, v22
invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lorg/apache/http/HttpResponse;
:try_end_24d
.catchall {:try_start_22f .. :try_end_24d} :catchall_c9a
.catch Ljava/lang/NoSuchMethodException; {:try_start_22f .. :try_end_24d} :catch_2d1
.catch Ljava/lang/IllegalArgumentException; {:try_start_22f .. :try_end_24d} :catch_2d5
.catch Ljava/lang/Exception; {:try_start_22f .. :try_end_24d} :catch_2e8
.catch Ljava/io/FileNotFoundException; {:try_start_22f .. :try_end_24d} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_22f .. :try_end_24d} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_22f .. :try_end_24d} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_22f .. :try_end_24d} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22f .. :try_end_24d} :catch_e45
move-object v10, v2
:goto_24e
:try_start_24e
invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0x1f7
if-ne v2, v3, :cond_344
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
:try_end_260
.catchall {:try_start_24e .. :try_end_260} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_24e .. :try_end_260} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_24e .. :try_end_260} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_24e .. :try_end_260} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_24e .. :try_end_260} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24e .. :try_end_260} :catch_e45
const/4 v5, 0x5
if-ge v3, v5, :cond_344
const/16 v3, 0xc1
const/4 v4, 0x1
:try_start_266
const-string/jumbo v2, "Retry-After"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
:try_end_26c
.catchall {:try_start_266 .. :try_end_26c} :catchall_caf
.catch Ljava/io/FileNotFoundException; {:try_start_266 .. :try_end_26c} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_266 .. :try_end_26c} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_266 .. :try_end_26c} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_266 .. :try_end_26c} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_266 .. :try_end_26c} :catch_e55
move-result-object v2
if-eqz v2, :cond_340
:try_start_26f
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_276
.catchall {:try_start_26f .. :try_end_276} :catchall_caf
.catch Ljava/lang/NumberFormatException; {:try_start_26f .. :try_end_276} :catch_33c
.catch Ljava/io/FileNotFoundException; {:try_start_26f .. :try_end_276} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_26f .. :try_end_276} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_26f .. :try_end_276} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_26f .. :try_end_276} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26f .. :try_end_276} :catch_e55
move-result v18
if-gez v18, :cond_31b
const/4 v2, 0x0
:goto_27a
move v5, v2
:try_start_27b
:goto_27b
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_27e
.catchall {:try_start_27b .. :try_end_27e} :catchall_cc0
.catch Ljava/io/FileNotFoundException; {:try_start_27b .. :try_end_27e} :catch_13f6
.catch Ljava/lang/RuntimeException; {:try_start_27b .. :try_end_27e} :catch_12b4
.catch Ljava/lang/ClassNotFoundException; {:try_start_27b .. :try_end_27e} :catch_1157
.catch Ljava/lang/IllegalAccessException; {:try_start_27b .. :try_end_27e} :catch_fdc
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27b .. :try_end_27e} :catch_e61
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move-object v11, v14
:goto_287
move-object/from16 v0, p0
iget-object v12, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v13, 0x0
iput-boolean v13, v12, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_293
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_293
if-eqz v22, :cond_2a9
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
:try_start_299
const-string/jumbo v13, "close"
const/4 v14, 0x0
invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v12
const/4 v13, 0x0
new-array v13, v13, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_2a9
:try_end_2a9
.catch Ljava/lang/SecurityException; {:try_start_299 .. :try_end_2a9} :catch_14bc
.catch Ljava/lang/NoSuchMethodException; {:try_start_299 .. :try_end_2a9} :catch_14b9
.catch Ljava/lang/IllegalArgumentException; {:try_start_299 .. :try_end_2a9} :catch_14b6
.catch Ljava/lang/IllegalAccessException; {:try_start_299 .. :try_end_2a9} :catch_14b3
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_299 .. :try_end_2a9} :catch_14b0
:cond_2a9
if-eqz v8, :cond_2ae
:try_start_2ab
invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
:try_end_2ae
.catch Ljava/io/IOException; {:try_start_2ab .. :try_end_2ae} :catch_bd2
:cond_2ae
:goto_2ae
if-eqz v11, :cond_14e5
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v8
if-eqz v8, :cond_779
if-nez v2, :cond_14e5
new-instance v2, Ljava/io/File;
invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v11, 0x0
move-object v8, v11
:goto_2c2
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_2c9
add-int/lit8 v5, v5, 0x1
goto/16 :goto_183
:catch_2cd
move-exception v3
move-object v12, v2
goto/16 :goto_1c0
:catch_2d1
move-exception v2
move-object v10, v3
goto/16 :goto_24e
:catch_2d5
move-exception v2
const/4 v4, 0x1
const/16 v3, 0x190
:try_start_2d9
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_2dc
.catchall {:try_start_2d9 .. :try_end_2dc} :catchall_caf
.catch Ljava/io/FileNotFoundException; {:try_start_2d9 .. :try_end_2dc} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_2d9 .. :try_end_2dc} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_2d9 .. :try_end_2dc} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_2d9 .. :try_end_2dc} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d9 .. :try_end_2dc} :catch_e55
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move-object v11, v14
goto :goto_287
:catch_2e8
move-exception v2
:try_start_2e9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-static {v2}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
:try_end_2f0
.catchall {:try_start_2e9 .. :try_end_2f0} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_2e9 .. :try_end_2f0} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_2e9 .. :try_end_2f0} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_2e9 .. :try_end_2f0} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_2e9 .. :try_end_2f0} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e9 .. :try_end_2f0} :catch_e45
move-result v2
if-nez v2, :cond_306
const/16 v3, 0xc1
move/from16 v4, v19
:goto_2f7
:try_start_2f7
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_2fa
.catchall {:try_start_2f7 .. :try_end_2fa} :catchall_caf
.catch Ljava/io/FileNotFoundException; {:try_start_2f7 .. :try_end_2fa} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_2f7 .. :try_end_2fa} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_2f7 .. :try_end_2fa} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_2f7 .. :try_end_2fa} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f7 .. :try_end_2fa} :catch_e55
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move-object v11, v14
goto :goto_287
:try_start_306
:cond_306
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v2, v2, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
:try_end_30c
.catchall {:try_start_306 .. :try_end_30c} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_306 .. :try_end_30c} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_306 .. :try_end_30c} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_306 .. :try_end_30c} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_306 .. :try_end_30c} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_306 .. :try_end_30c} :catch_e45
const/4 v3, 0x5
if-ge v2, v3, :cond_316
const/16 v3, 0xc1
const/16 v19, 0x1
move/from16 v4, v19
goto :goto_2f7
:cond_316
const/16 v3, 0x1ef
move/from16 v4, v19
goto :goto_2f7
:cond_31b
const/16 v2, 0x1e
move/from16 v0, v18
if-ge v0, v2, :cond_331
const/16 v18, 0x1e
:cond_323
:goto_323
:try_start_323
sget-object v2, Lcom/igexin/download/h;->a:Ljava/util/Random;
const/16 v5, 0x1f
invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I
:try_end_32a
.catchall {:try_start_323 .. :try_end_32a} :catchall_caf
.catch Ljava/lang/NumberFormatException; {:try_start_323 .. :try_end_32a} :catch_33c
.catch Ljava/io/FileNotFoundException; {:try_start_323 .. :try_end_32a} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_323 .. :try_end_32a} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_323 .. :try_end_32a} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_323 .. :try_end_32a} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_323 .. :try_end_32a} :catch_e55
move-result v2
add-int v2, v2, v18
mul-int/lit16 v2, v2, 0x3e8
goto/16 :goto_27a
:cond_331
const v2, 0x15180
move/from16 v0, v18
if-le v0, v2, :cond_323
const v18, 0x15180
goto :goto_323
:catch_33c
move-exception v2
:try_start_33d
invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
:cond_340
:try_end_340
.catchall {:try_start_33d .. :try_end_340} :catchall_caf
.catch Ljava/io/FileNotFoundException; {:try_start_33d .. :try_end_340} :catch_13e5
.catch Ljava/lang/RuntimeException; {:try_start_33d .. :try_end_340} :catch_12a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_33d .. :try_end_340} :catch_114b
.catch Ljava/lang/IllegalAccessException; {:try_start_33d .. :try_end_340} :catch_fd0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33d .. :try_end_340} :catch_e55
move/from16 v5, v18
goto/16 :goto_27b
:cond_344
const/16 v3, 0x12d
if-eq v2, v3, :cond_354
const/16 v3, 0x12e
if-eq v2, v3, :cond_354
const/16 v3, 0x12f
if-eq v2, v3, :cond_354
const/16 v3, 0x133
if-ne v2, v3, :cond_3b9
:cond_354
const/4 v3, 0x5
move/from16 v0, v17
if-lt v0, v3, :cond_36d
const/16 v3, 0x1f1
:try_start_35b
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_35e
.catchall {:try_start_35b .. :try_end_35e} :catchall_ccf
.catch Ljava/io/FileNotFoundException; {:try_start_35b .. :try_end_35e} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_35b .. :try_end_35e} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_35b .. :try_end_35e} :catch_1161
.catch Ljava/lang/IllegalAccessException; {:try_start_35b .. :try_end_35e} :catch_fe6
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35b .. :try_end_35e} :catch_e6b
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v11, v14
goto/16 :goto_287
:try_start_36d
:cond_36d
const-string/jumbo v3, "Location"
invoke-interface {v10, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
:try_end_373
.catchall {:try_start_36d .. :try_end_373} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_36d .. :try_end_373} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_36d .. :try_end_373} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_36d .. :try_end_373} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_36d .. :try_end_373} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36d .. :try_end_373} :catch_e45
move-result-object v3
if-eqz v3, :cond_3b9
:try_start_376
new-instance v2, Ljava/net/URI;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v4, v4, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;
invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
new-instance v4, Ljava/net/URI;
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;
move-result-object v2
invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
:try_end_391
.catchall {:try_start_376 .. :try_end_391} :catchall_c9a
.catch Ljava/net/URISyntaxException; {:try_start_376 .. :try_end_391} :catch_3a4
.catch Ljava/io/FileNotFoundException; {:try_start_376 .. :try_end_391} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_376 .. :try_end_391} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_376 .. :try_end_391} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_376 .. :try_end_391} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_376 .. :try_end_391} :catch_e45
move-result-object v9
add-int/lit8 v6, v17, 0x1
const/16 v3, 0xc1
:try_start_396
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_399
.catchall {:try_start_396 .. :try_end_399} :catchall_ce2
.catch Ljava/io/FileNotFoundException; {:try_start_396 .. :try_end_399} :catch_1405
.catch Ljava/lang/RuntimeException; {:try_start_396 .. :try_end_399} :catch_12be
.catch Ljava/lang/ClassNotFoundException; {:try_start_396 .. :try_end_399} :catch_116f
.catch Ljava/lang/IllegalAccessException; {:try_start_396 .. :try_end_399} :catch_ff4
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_396 .. :try_end_399} :catch_e79
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
move-object v11, v14
goto/16 :goto_287
:catch_3a4
move-exception v2
const/16 v3, 0x190
:try_start_3a7
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_3aa
.catchall {:try_start_3a7 .. :try_end_3aa} :catchall_ccf
.catch Ljava/io/FileNotFoundException; {:try_start_3a7 .. :try_end_3aa} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_3a7 .. :try_end_3aa} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_3a7 .. :try_end_3aa} :catch_1161
.catch Ljava/lang/IllegalAccessException; {:try_start_3a7 .. :try_end_3aa} :catch_fe6
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3a7 .. :try_end_3aa} :catch_e6b
move v2, v11
move-object v8, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v11, v14
goto/16 :goto_287
:cond_3b9
if-nez v11, :cond_3bf
const/16 v3, 0xc8
if-ne v2, v3, :cond_3c5
:cond_3bf
if-eqz v11, :cond_40c
const/16 v3, 0xce
if-eq v2, v3, :cond_40c
:cond_3c5
:try_start_3c5
invoke-static {v2}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
:try_end_3c8
.catchall {:try_start_3c5 .. :try_end_3c8} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_3c5 .. :try_end_3c8} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_3c5 .. :try_end_3c8} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_3c5 .. :try_end_3c8} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_3c5 .. :try_end_3c8} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c5 .. :try_end_3c8} :catch_e45
move-result v3
if-eqz v3, :cond_3e1
move v3, v11
:goto_3cc
:try_start_3cc
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_3cf
.catchall {:try_start_3cc .. :try_end_3cf} :catchall_cf1
.catch Ljava/io/FileNotFoundException; {:try_start_3cc .. :try_end_3cf} :catch_1414
.catch Ljava/lang/RuntimeException; {:try_start_3cc .. :try_end_3cf} :catch_12c8
.catch Ljava/lang/ClassNotFoundException; {:try_start_3cc .. :try_end_3cf} :catch_1179
.catch Ljava/lang/IllegalAccessException; {:try_start_3cc .. :try_end_3cf} :catch_ffe
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3cc .. :try_end_3cf} :catch_e83
const/4 v4, 0x1
move-object v8, v12
move-object v10, v13
move-object v11, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v32, v3
move v3, v2
move/from16 v2, v32
goto/16 :goto_287
:cond_3e1
const/16 v3, 0x12c
if-lt v2, v3, :cond_3ed
const/16 v3, 0x190
if-ge v2, v3, :cond_3ed
const/16 v2, 0x1ed
move v3, v11
goto :goto_3cc
:cond_3ed
if-eqz v11, :cond_408
const/16 v3, 0xc8
if-ne v2, v3, :cond_408
const/16 v20, 0x19c
const/4 v11, 0x0
:try_start_3f6
new-instance v2, Ljava/io/File;
invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_404
invoke-virtual {v2}, Ljava/io/File;->delete()Z
:cond_404
move v3, v11
move/from16 v2, v20
goto :goto_3cc
:cond_408
const/16 v2, 0x1ee
move v3, v11
goto :goto_3cc
:cond_40c
if-nez v11, :cond_14ff
const-string/jumbo v2, "Accept-Ranges"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_41a
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
:cond_41a
const-string/jumbo v2, "Content-Disposition"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_14fc
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v5
:goto_427
const-string/jumbo v2, "Content-Location"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_434
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v6
:cond_434
if-nez v13, :cond_14f9
const-string/jumbo v2, "Content-Type"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_14f9
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
invoke-direct {v0, v2}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;
:try_end_448
.catchall {:try_start_3f6 .. :try_end_448} :catchall_c9a
.catch Ljava/io/FileNotFoundException; {:try_start_3f6 .. :try_end_448} :catch_13d2
.catch Ljava/lang/RuntimeException; {:try_start_3f6 .. :try_end_448} :catch_129a
.catch Ljava/lang/ClassNotFoundException; {:try_start_3f6 .. :try_end_448} :catch_113b
.catch Ljava/lang/IllegalAccessException; {:try_start_3f6 .. :try_end_448} :catch_fc0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3f6 .. :try_end_448} :catch_e45
move-result-object v13
move-object v7, v13
:goto_44a
:try_start_44a
const-string/jumbo v2, "ETag"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_14f5
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
move-object/from16 v26, v2
:goto_459
const-string/jumbo v2, "Transfer-Encoding"
invoke-interface {v10, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v2
if-eqz v2, :cond_14f2
invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v2
:goto_466
if-nez v2, :cond_14ef
const-string/jumbo v3, "Content-Length"
invoke-interface {v10, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v3
if-eqz v3, :cond_14ef
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
move-object v13, v4
:goto_476
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-boolean v3, v3, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z
if-nez v3, :cond_49f
if-nez v13, :cond_49f
if-eqz v2, :cond_48b
const-string/jumbo v3, "chunked"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_488
.catchall {:try_start_44a .. :try_end_488} :catchall_d05
.catch Ljava/io/FileNotFoundException; {:try_start_44a .. :try_end_488} :catch_1428
.catch Ljava/lang/RuntimeException; {:try_start_44a .. :try_end_488} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_44a .. :try_end_488} :catch_1189
.catch Ljava/lang/IllegalAccessException; {:try_start_44a .. :try_end_488} :catch_100e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_44a .. :try_end_488} :catch_e93
move-result v2
if-nez v2, :cond_49f
:cond_48b
const/16 v3, 0x19b
:try_start_48d
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_490
.catchall {:try_start_48d .. :try_end_490} :catchall_d1a
.catch Ljava/io/FileNotFoundException; {:try_start_48d .. :try_end_490} :catch_1428
.catch Ljava/lang/RuntimeException; {:try_start_48d .. :try_end_490} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_48d .. :try_end_490} :catch_1199
.catch Ljava/lang/IllegalAccessException; {:try_start_48d .. :try_end_490} :catch_101e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_48d .. :try_end_490} :catch_ea3
move v2, v11
move-object v8, v12
move-object v10, v7
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v11, v14
move v7, v15
goto/16 :goto_287
:try_start_49f
:cond_49f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v3, v3, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget-object v4, v4, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v8, v8, Lcom/igexin/download/DownloadInfo;->mDestination:I
if-eqz v13, :cond_4d7
invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v9
:goto_4bb
invoke-static/range {v2 .. v9}, Lcom/igexin/download/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/igexin/download/a;
move-result-object v2
iget-object v3, v2, Lcom/igexin/download/a;->a:Ljava/lang/String;
if-nez v3, :cond_4d9
iget v3, v2, Lcom/igexin/download/a;->c:I
:try_end_4c5
.catchall {:try_start_49f .. :try_end_4c5} :catchall_d05
.catch Ljava/io/FileNotFoundException; {:try_start_49f .. :try_end_4c5} :catch_1428
.catch Ljava/lang/RuntimeException; {:try_start_49f .. :try_end_4c5} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_49f .. :try_end_4c5} :catch_1189
.catch Ljava/lang/IllegalAccessException; {:try_start_49f .. :try_end_4c5} :catch_100e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_49f .. :try_end_4c5} :catch_e93
:try_start_4c5
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_4c8
.catchall {:try_start_4c5 .. :try_end_4c8} :catchall_d1a
.catch Ljava/io/FileNotFoundException; {:try_start_4c5 .. :try_end_4c8} :catch_1428
.catch Ljava/lang/RuntimeException; {:try_start_4c5 .. :try_end_4c8} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_4c5 .. :try_end_4c8} :catch_1199
.catch Ljava/lang/IllegalAccessException; {:try_start_4c5 .. :try_end_4c8} :catch_101e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4c5 .. :try_end_4c8} :catch_ea3
move v2, v11
move-object v8, v12
move-object v10, v7
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v11, v14
move v7, v15
goto/16 :goto_287
:cond_4d7
const/4 v9, 0x0
goto :goto_4bb
:try_start_4d9
:cond_4d9
iget-object v14, v2, Lcom/igexin/download/a;->a:Ljava/lang/String;
iget-object v12, v2, Lcom/igexin/download/a;->b:Ljava/io/FileOutputStream;
:try_start_4dd
:try_end_4dd
.catchall {:try_start_4d9 .. :try_end_4dd} :catchall_d05
.catch Ljava/io/FileNotFoundException; {:try_start_4d9 .. :try_end_4dd} :catch_1428
.catch Ljava/lang/RuntimeException; {:try_start_4d9 .. :try_end_4dd} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_4d9 .. :try_end_4dd} :catch_1189
.catch Ljava/lang/IllegalAccessException; {:try_start_4d9 .. :try_end_4dd} :catch_100e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4d9 .. :try_end_4dd} :catch_e93
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "_data"
invoke-virtual {v3, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v26, :cond_4f2
const-string/jumbo v2, "etag"
move-object/from16 v0, v26
invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_4f2
if-eqz v7, :cond_4fa
const-string/jumbo v2, "mimetype"
invoke-virtual {v3, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
:cond_4fa
const/4 v2, -0x1
if-eqz v13, :cond_501
invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
:cond_501
const-string/jumbo v4, "total_bytes"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const/4 v4, 0x0
const/4 v5, 0x0
move-object/from16 v0, v27
invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_end_51a
.catchall {:try_start_4dd .. :try_end_51a} :catchall_d05
.catch Ljava/io/FileNotFoundException; {:try_start_4dd .. :try_end_51a} :catch_143b
.catch Ljava/lang/RuntimeException; {:try_start_4dd .. :try_end_51a} :catch_12d7
.catch Ljava/lang/ClassNotFoundException; {:try_start_4dd .. :try_end_51a} :catch_1189
.catch Ljava/lang/IllegalAccessException; {:try_start_4dd .. :try_end_51a} :catch_100e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4dd .. :try_end_51a} :catch_e93
move-object v2, v12
move-object v5, v14
move-object v14, v13
:try_start_51d
:goto_51d
invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
:try_end_524
.catchall {:try_start_51d .. :try_end_524} :catchall_d2d
.catch Ljava/io/IOException; {:try_start_51d .. :try_end_524} :catch_586
.catch Ljava/io/FileNotFoundException; {:try_start_51d .. :try_end_524} :catch_144e
.catch Ljava/lang/RuntimeException; {:try_start_51d .. :try_end_524} :catch_12e5
.catch Ljava/lang/ClassNotFoundException; {:try_start_51d .. :try_end_524} :catch_11a7
.catch Ljava/lang/IllegalAccessException; {:try_start_51d .. :try_end_524} :catch_102c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51d .. :try_end_524} :catch_eb1
move-result-object v26
move/from16 v13, v25
move v3, v11
move v4, v15
move-wide/from16 v10, v23
:goto_52b
:try_start_52b
move-object/from16 v0, v26
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
:try_end_532
.catchall {:try_start_52b .. :try_end_532} :catchall_d4f
.catch Ljava/io/IOException; {:try_start_52b .. :try_end_532} :catch_5ba
.catch Ljava/io/FileNotFoundException; {:try_start_52b .. :try_end_532} :catch_1472
.catch Ljava/lang/RuntimeException; {:try_start_52b .. :try_end_532} :catch_1301
.catch Ljava/lang/ClassNotFoundException; {:try_start_52b .. :try_end_532} :catch_11c5
.catch Ljava/lang/IllegalAccessException; {:try_start_52b .. :try_end_532} :catch_104a
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_52b .. :try_end_532} :catch_ecf
move-result v8
const/4 v6, -0x1
if-ne v8, v6, :cond_641
:try_start_536
new-instance v6, Landroid/content/ContentValues;
invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v8, "current_bytes"
invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
if-nez v14, :cond_551
const-string/jumbo v8, "total_bytes"
invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_551
move-object/from16 v0, p0
iget-object v8, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v8
const/4 v9, 0x0
const/4 v10, 0x0
move-object/from16 v0, v27
invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
if-eqz v14, :cond_767
invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
move/from16 v0, v25
if-eq v0, v6, :cond_767
move-object/from16 v0, p0
iget-object v6, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-static {v6}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
:try_end_571
.catchall {:try_start_536 .. :try_end_571} :catchall_d4f
.catch Ljava/io/FileNotFoundException; {:try_start_536 .. :try_end_571} :catch_1472
.catch Ljava/lang/RuntimeException; {:try_start_536 .. :try_end_571} :catch_1301
.catch Ljava/lang/ClassNotFoundException; {:try_start_536 .. :try_end_571} :catch_11c5
.catch Ljava/lang/IllegalAccessException; {:try_start_536 .. :try_end_571} :catch_104a
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_536 .. :try_end_571} :catch_ecf
move-result v6
if-nez v6, :cond_611
const/16 v6, 0xc1
move-object v8, v2
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v4
move v2, v3
move/from16 v5, v18
move/from16 v4, v19
move v3, v6
move/from16 v6, v17
goto/16 :goto_287
:catch_586
move-exception v3
:try_start_587
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-static {v3}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
:try_end_58e
.catchall {:try_start_587 .. :try_end_58e} :catchall_d2d
.catch Ljava/io/FileNotFoundException; {:try_start_587 .. :try_end_58e} :catch_144e
.catch Ljava/lang/RuntimeException; {:try_start_587 .. :try_end_58e} :catch_12e5
.catch Ljava/lang/ClassNotFoundException; {:try_start_587 .. :try_end_58e} :catch_11a7
.catch Ljava/lang/IllegalAccessException; {:try_start_587 .. :try_end_58e} :catch_102c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_587 .. :try_end_58e} :catch_eb1
move-result v3
if-nez v3, :cond_5a5
const/16 v3, 0xc1
move/from16 v4, v19
:try_start_595
:goto_595
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_598
.catchall {:try_start_595 .. :try_end_598} :catchall_d40
.catch Ljava/io/FileNotFoundException; {:try_start_595 .. :try_end_598} :catch_1461
.catch Ljava/lang/RuntimeException; {:try_start_595 .. :try_end_598} :catch_12f4
.catch Ljava/lang/ClassNotFoundException; {:try_start_595 .. :try_end_598} :catch_11b8
.catch Ljava/lang/IllegalAccessException; {:try_start_595 .. :try_end_598} :catch_103d
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_595 .. :try_end_598} :catch_ec2
move-object v8, v2
move-object v10, v7
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v15
move v2, v11
move-object v11, v5
move/from16 v5, v18
goto/16 :goto_287
:cond_5a5
:try_start_5a5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v3, v3, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
:try_end_5ab
.catchall {:try_start_5a5 .. :try_end_5ab} :catchall_d2d
.catch Ljava/io/FileNotFoundException; {:try_start_5a5 .. :try_end_5ab} :catch_144e
.catch Ljava/lang/RuntimeException; {:try_start_5a5 .. :try_end_5ab} :catch_12e5
.catch Ljava/lang/ClassNotFoundException; {:try_start_5a5 .. :try_end_5ab} :catch_11a7
.catch Ljava/lang/IllegalAccessException; {:try_start_5a5 .. :try_end_5ab} :catch_102c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5a5 .. :try_end_5ab} :catch_eb1
const/4 v4, 0x5
if-ge v3, v4, :cond_5b5
const/16 v3, 0xc1
const/16 v19, 0x1
move/from16 v4, v19
goto :goto_595
:cond_5b5
const/16 v3, 0x1ef
move/from16 v4, v19
goto :goto_595
:catch_5ba
move-exception v6
:try_start_5bb
new-instance v6, Landroid/content/ContentValues;
invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v8, "current_bytes"
invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
move-object/from16 v0, p0
iget-object v8, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v8
const/4 v9, 0x0
const/4 v10, 0x0
move-object/from16 v0, v27
invoke-virtual {v8, v0, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move-object/from16 v0, p0
iget-object v6, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-static {v6}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
:try_end_5e0
.catchall {:try_start_5bb .. :try_end_5e0} :catchall_d4f
.catch Ljava/io/FileNotFoundException; {:try_start_5bb .. :try_end_5e0} :catch_1472
.catch Ljava/lang/RuntimeException; {:try_start_5bb .. :try_end_5e0} :catch_1301
.catch Ljava/lang/ClassNotFoundException; {:try_start_5bb .. :try_end_5e0} :catch_11c5
.catch Ljava/lang/IllegalAccessException; {:try_start_5bb .. :try_end_5e0} :catch_104a
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5bb .. :try_end_5e0} :catch_ecf
move-result v6
if-nez v6, :cond_5fc
const/16 v8, 0xc1
move/from16 v6, v19
:goto_5e7
:try_start_5e7
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
:try_end_5ea
.catchall {:try_start_5e7 .. :try_end_5ea} :catchall_d62
.catch Ljava/io/FileNotFoundException; {:try_start_5e7 .. :try_end_5ea} :catch_1486
.catch Ljava/lang/RuntimeException; {:try_start_5e7 .. :try_end_5ea} :catch_1311
.catch Ljava/lang/ClassNotFoundException; {:try_start_5e7 .. :try_end_5ea} :catch_11d7
.catch Ljava/lang/IllegalAccessException; {:try_start_5e7 .. :try_end_5ea} :catch_105c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e7 .. :try_end_5ea} :catch_ee1
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v4
move/from16 v5, v18
move v4, v6
move/from16 v6, v17
move-object/from16 v32, v2
move v2, v3
move v3, v8
move-object/from16 v8, v32
goto/16 :goto_287
:cond_5fc
:try_start_5fc
move-object/from16 v0, p0
iget-object v6, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v6, v6, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
const/4 v8, 0x5
if-ge v6, v8, :cond_60c
const/16 v8, 0xc1
const/16 v19, 0x1
move/from16 v6, v19
goto :goto_5e7
:cond_60c
const/16 v8, 0x1ef
move/from16 v6, v19
goto :goto_5e7
:cond_611
move-object/from16 v0, p0
iget-object v6, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v6, v6, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
:try_end_617
.catchall {:try_start_5fc .. :try_end_617} :catchall_d4f
.catch Ljava/io/FileNotFoundException; {:try_start_5fc .. :try_end_617} :catch_1472
.catch Ljava/lang/RuntimeException; {:try_start_5fc .. :try_end_617} :catch_1301
.catch Ljava/lang/ClassNotFoundException; {:try_start_5fc .. :try_end_617} :catch_11c5
.catch Ljava/lang/IllegalAccessException; {:try_start_5fc .. :try_end_617} :catch_104a
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5fc .. :try_end_617} :catch_ecf
const/4 v8, 0x5
if-ge v6, v8, :cond_62f
const/16 v8, 0xc1
const/4 v6, 0x1
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v4
move/from16 v5, v18
move v4, v6
move/from16 v6, v17
move-object/from16 v32, v2
move v2, v3
move v3, v8
move-object/from16 v8, v32
goto/16 :goto_287
:cond_62f
const/16 v6, 0x1ef
move-object v8, v2
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v4
move v2, v3
move/from16 v5, v18
move/from16 v4, v19
move v3, v6
move/from16 v6, v17
goto/16 :goto_287
:cond_641
const/4 v6, 0x1
:goto_642
if-nez v2, :cond_64b
:try_start_644
new-instance v4, Ljava/io/FileOutputStream;
const/4 v9, 0x1
invoke-direct {v4, v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
move-object v2, v4
:cond_64b
const/4 v4, 0x0
move-object/from16 v0, v28
invoke-virtual {v2, v0, v4, v8}, Ljava/io/FileOutputStream;->write([BII)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v4, v4, Lcom/igexin/download/DownloadInfo;->mDestination:I
:try_end_657
.catchall {:try_start_644 .. :try_end_657} :catchall_d73
.catch Ljava/io/IOException; {:try_start_644 .. :try_end_657} :catch_6b4
.catch Ljava/io/FileNotFoundException; {:try_start_644 .. :try_end_657} :catch_70d
.catch Ljava/lang/RuntimeException; {:try_start_644 .. :try_end_657} :catch_1320
.catch Ljava/lang/ClassNotFoundException; {:try_start_644 .. :try_end_657} :catch_11e7
.catch Ljava/lang/IllegalAccessException; {:try_start_644 .. :try_end_657} :catch_106c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_644 .. :try_end_657} :catch_ef1
if-nez v4, :cond_65d
:try_start_659
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_65c
.catchall {:try_start_659 .. :try_end_65c} :catchall_d73
.catch Ljava/io/IOException; {:try_start_659 .. :try_end_65c} :catch_bcf
.catch Ljava/io/FileNotFoundException; {:try_start_659 .. :try_end_65c} :catch_70d
.catch Ljava/lang/RuntimeException; {:try_start_659 .. :try_end_65c} :catch_1320
.catch Ljava/lang/ClassNotFoundException; {:try_start_659 .. :try_end_65c} :catch_11e7
.catch Ljava/lang/IllegalAccessException; {:try_start_659 .. :try_end_65c} :catch_106c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_659 .. :try_end_65c} :catch_ef1
const/4 v2, 0x0
:goto_65d
:cond_65d
add-int v12, v25, v8
:try_start_65f
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
sub-int v4, v12, v13
const/16 v15, 0x1000
if-le v4, v15, :cond_14e8
sub-long v23, v8, v10
const-wide/16 v30, 0x5dc
cmp-long v4, v23, v30
if-lez v4, :cond_14e8
new-instance v4, Landroid/content/ContentValues;
invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v10, "current_bytes"
invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
move-object/from16 v0, p0
iget-object v10, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v10
const/4 v11, 0x0
const/4 v13, 0x0
move-object/from16 v0, v27
invoke-virtual {v10, v0, v4, v11, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
move v4, v12
:goto_690
move-object/from16 v0, p0
iget-object v10, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
monitor-enter v10
:try_end_695
.catchall {:try_start_65f .. :try_end_695} :catchall_d73
.catch Ljava/io/FileNotFoundException; {:try_start_65f .. :try_end_695} :catch_70d
.catch Ljava/lang/RuntimeException; {:try_start_65f .. :try_end_695} :catch_1320
.catch Ljava/lang/ClassNotFoundException; {:try_start_65f .. :try_end_695} :catch_11e7
.catch Ljava/lang/IllegalAccessException; {:try_start_65f .. :try_end_695} :catch_106c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_65f .. :try_end_695} :catch_ef1
:try_start_695
move-object/from16 v0, p0
iget-object v11, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v11, v11, Lcom/igexin/download/DownloadInfo;->mControl:I
:try_end_69b
.catchall {:try_start_695 .. :try_end_69b} :catchall_708
const/4 v13, 0x1
if-ne v11, v13, :cond_6eb
const/16 v4, 0xc1
:try_start_6a0
invoke-virtual/range {v29 .. v29}, Lorg/apache/http/client/methods/HttpGet;->abort()V
monitor-exit v10
:try_end_6a4
.catchall {:try_start_6a0 .. :try_end_6a4} :catchall_14bf
move-object v8, v2
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v6
move v2, v3
move/from16 v5, v18
move/from16 v6, v17
move v3, v4
move/from16 v4, v19
goto/16 :goto_287
:catch_6b4
move-exception v4
move-object v4, v2
:try_start_6b6
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v2
const-string/jumbo v9, "mounted"
invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_6c8
const/4 v2, 0x1
:goto_6c4
move v3, v2
move-object v2, v4
goto/16 :goto_642
:cond_6c8
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;
const-wide/16 v23, 0x1000
move-wide/from16 v0, v23
invoke-static {v2, v0, v1}, Lcom/igexin/download/h;->a(Landroid/content/Context;J)Z
:try_end_6d3
.catchall {:try_start_6b6 .. :try_end_6d3} :catchall_d86
.catch Ljava/io/FileNotFoundException; {:try_start_6b6 .. :try_end_6d3} :catch_1499
.catch Ljava/lang/RuntimeException; {:try_start_6b6 .. :try_end_6d3} :catch_1330
.catch Ljava/lang/ClassNotFoundException; {:try_start_6b6 .. :try_end_6d3} :catch_11f9
.catch Ljava/lang/IllegalAccessException; {:try_start_6b6 .. :try_end_6d3} :catch_107e
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6b6 .. :try_end_6d3} :catch_f03
move-result v2
if-nez v2, :cond_14ec
const/16 v2, 0x1ec
move-object v8, v4
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v6, v17
move/from16 v32, v3
move v3, v2
move/from16 v2, v32
goto/16 :goto_287
:cond_6eb
:try_start_6eb
monitor-exit v10
:try_end_6ec
.catchall {:try_start_6eb .. :try_end_6ec} :catchall_708
:try_start_6ec
move-object/from16 v0, p0
iget-object v10, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
iget v10, v10, Lcom/igexin/download/DownloadInfo;->mStatus:I
:try_end_6f2
.catchall {:try_start_6ec .. :try_end_6f2} :catchall_d73
.catch Ljava/io/FileNotFoundException; {:try_start_6ec .. :try_end_6f2} :catch_70d
.catch Ljava/lang/RuntimeException; {:try_start_6ec .. :try_end_6f2} :catch_1320
.catch Ljava/lang/ClassNotFoundException; {:try_start_6ec .. :try_end_6f2} :catch_11e7
.catch Ljava/lang/IllegalAccessException; {:try_start_6ec .. :try_end_6f2} :catch_106c
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6ec .. :try_end_6f2} :catch_ef1
const/16 v11, 0x1ea
if-ne v10, v11, :cond_760
const/16 v4, 0x1ea
move-object v8, v2
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v6
move v2, v3
move/from16 v5, v18
move/from16 v6, v17
move v3, v4
move/from16 v4, v19
goto/16 :goto_287
:catchall_708
move-exception v4
move/from16 v8, v20
:goto_70b
:try_start_70b
monitor-exit v10
:try_end_70c
.catchall {:try_start_70b .. :try_end_70c} :catchall_14c7
:try_start_70c
throw v4
:catch_70d
:try_end_70d
.catchall {:try_start_70c .. :try_end_70d} :catchall_d99
.catch Ljava/io/FileNotFoundException; {:try_start_70c .. :try_end_70d} :catch_70d
.catch Ljava/lang/RuntimeException; {:try_start_70c .. :try_end_70d} :catch_1320
.catch Ljava/lang/ClassNotFoundException; {:try_start_70c .. :try_end_70d} :catch_120b
.catch Ljava/lang/IllegalAccessException; {:try_start_70c .. :try_end_70d} :catch_1090
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_70c .. :try_end_70d} :catch_f15
move-exception v4
move v11, v3
move-object/from16 v12, v22
move-object v13, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v4, v19
move-object/from16 v2, v21
move/from16 v5, v18
move v7, v6
move/from16 v6, v17
:goto_71f
const/16 v3, 0x1ec
move-object/from16 v0, p0
iget-object v14, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v15, 0x0
iput-boolean v15, v14, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v2, :cond_72d
invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_72d
if-eqz v12, :cond_741
invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_733
const-string/jumbo v14, "close"
const/4 v15, 0x0
invoke-virtual {v2, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v14, 0x0
new-array v14, v14, [Ljava/lang/Object;
invoke-virtual {v2, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_741
:cond_741
:try_end_741
.catch Ljava/lang/SecurityException; {:try_start_733 .. :try_end_741} :catch_1358
.catch Ljava/lang/NoSuchMethodException; {:try_start_733 .. :try_end_741} :catch_1355
.catch Ljava/lang/IllegalArgumentException; {:try_start_733 .. :try_end_741} :catch_1352
.catch Ljava/lang/IllegalAccessException; {:try_start_733 .. :try_end_741} :catch_134f
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_733 .. :try_end_741} :catch_134c
if-eqz v13, :cond_746
:try_start_743
invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
:try_end_746
.catch Ljava/io/IOException; {:try_start_743 .. :try_end_746} :catch_bd5
:cond_746
:goto_746
if-eqz v8, :cond_759
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_7e8
if-nez v11, :cond_759
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:cond_759
:goto_759
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_760
move-wide v10, v8
move v13, v4
move/from16 v25, v12
move v4, v6
goto/16 :goto_52b
:cond_767
const/16 v6, 0xc8
move-object v8, v2
move-object v10, v7
move-object v11, v5
move-object/from16 v9, v16
move v7, v4
move v2, v3
move/from16 v5, v18
move/from16 v4, v19
move v3, v6
move/from16 v6, v17
goto/16 :goto_287
:cond_779
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_14e5
const-string/jumbo v2, "android.os.FileUtils"
:try_start_782
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v8, 0x0
:goto_78c
array-length v13, v12
if-ge v8, v13, :cond_7a0
aget-object v13, v12, v8
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_7d5
aget-object v2, v12, v8
:cond_7a0
if-eqz v2, :cond_7c5
const/4 v8, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v11, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_start_7c5
:try_end_7c5
.catch Ljava/lang/Exception; {:try_start_782 .. :try_end_7c5} :catch_14ad
:cond_7c5
:goto_7c5
new-instance v2, Ljava/io/FileOutputStream;
const/4 v8, 0x1
invoke-direct {v2, v11, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_7d2
.catch Ljava/io/FileNotFoundException; {:try_start_7c5 .. :try_end_7d2} :catch_7d8
.catch Ljava/io/SyncFailedException; {:try_start_7c5 .. :try_end_7d2} :catch_7dc
.catch Ljava/io/IOException; {:try_start_7c5 .. :try_end_7d2} :catch_7e0
.catch Ljava/lang/RuntimeException; {:try_start_7c5 .. :try_end_7d2} :catch_7e4
move-object v8, v11
goto/16 :goto_2c2
:cond_7d5
add-int/lit8 v8, v8, 0x1
goto :goto_78c
:catch_7d8
move-exception v2
move-object v8, v11
goto/16 :goto_2c2
:catch_7dc
move-exception v2
move-object v8, v11
goto/16 :goto_2c2
:catch_7e0
move-exception v2
move-object v8, v11
goto/16 :goto_2c2
:catch_7e4
move-exception v2
move-object v8, v11
goto/16 :goto_2c2
:cond_7e8
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_759
const-string/jumbo v2, "android.os.FileUtils"
:try_start_7f1
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v11, 0x0
:goto_7fb
array-length v13, v12
if-ge v11, v13, :cond_80f
aget-object v13, v12, v11
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_846
aget-object v2, v12, v11
:cond_80f
if-eqz v2, :cond_834
const/4 v11, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v8, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_start_834
:goto_834
:try_end_834
.catch Ljava/lang/Exception; {:try_start_7f1 .. :try_end_834} :catch_1349
:cond_834
new-instance v2, Ljava/io/FileOutputStream;
const/4 v11, 0x1
invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_841
.catch Ljava/io/FileNotFoundException; {:try_start_834 .. :try_end_841} :catch_843
.catch Ljava/io/SyncFailedException; {:try_start_834 .. :try_end_841} :catch_1346
.catch Ljava/io/IOException; {:try_start_834 .. :try_end_841} :catch_1343
.catch Ljava/lang/RuntimeException; {:try_start_834 .. :try_end_841} :catch_1340
goto/16 :goto_759
:catch_843
move-exception v2
goto/16 :goto_759
:cond_846
add-int/lit8 v11, v11, 0x1
goto :goto_7fb
:catch_849
move-exception v2
move-object/from16 v21, v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
:goto_85a
const/16 v3, 0x1eb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v13, 0x0
iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_868
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_868
if-eqz v22, :cond_87e
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_86e
const-string/jumbo v13, "close"
const/4 v14, 0x0
invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v13, 0x0
new-array v13, v13, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_87e
:try_end_87e
.catch Ljava/lang/SecurityException; {:try_start_86e .. :try_end_87e} :catch_1234
.catch Ljava/lang/NoSuchMethodException; {:try_start_86e .. :try_end_87e} :catch_1231
.catch Ljava/lang/IllegalArgumentException; {:try_start_86e .. :try_end_87e} :catch_122e
.catch Ljava/lang/IllegalAccessException; {:try_start_86e .. :try_end_87e} :catch_122b
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_86e .. :try_end_87e} :catch_1228
:cond_87e
if-eqz v12, :cond_883
:try_start_880
invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
:try_end_883
.catch Ljava/io/IOException; {:try_start_880 .. :try_end_883} :catch_bd8
:cond_883
:goto_883
if-eqz v8, :cond_896
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_89d
if-nez v11, :cond_896
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:cond_896
:goto_896
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_89d
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_896
const-string/jumbo v2, "android.os.FileUtils"
:try_start_8a6
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v11, 0x0
:goto_8b0
array-length v13, v12
if-ge v11, v13, :cond_8c4
aget-object v13, v12, v11
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_8f9
aget-object v2, v12, v11
:cond_8c4
if-eqz v2, :cond_8e9
const/4 v11, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v8, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_8e9
:try_end_8e9
.catch Ljava/lang/Exception; {:try_start_8a6 .. :try_end_8e9} :catch_1225
:try_start_8e9
:cond_8e9
new-instance v2, Ljava/io/FileOutputStream;
const/4 v11, 0x1
invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_8f6
.catch Ljava/io/FileNotFoundException; {:try_start_8e9 .. :try_end_8f6} :catch_8f7
.catch Ljava/io/SyncFailedException; {:try_start_8e9 .. :try_end_8f6} :catch_1222
.catch Ljava/io/IOException; {:try_start_8e9 .. :try_end_8f6} :catch_121f
.catch Ljava/lang/RuntimeException; {:try_start_8e9 .. :try_end_8f6} :catch_121c
goto :goto_896
:catch_8f7
move-exception v2
goto :goto_896
:cond_8f9
add-int/lit8 v11, v11, 0x1
goto :goto_8b0
:catch_8fc
move-exception v2
move-object/from16 v21, v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
move/from16 v3, v20
:goto_90f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v13, 0x0
iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_91b
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_91b
if-eqz v22, :cond_931
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_921
const-string/jumbo v13, "close"
const/4 v14, 0x0
invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v13, 0x0
new-array v13, v13, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_931
.catch Ljava/lang/SecurityException; {:try_start_921 .. :try_end_931} :catch_10b9
.catch Ljava/lang/NoSuchMethodException; {:try_start_921 .. :try_end_931} :catch_10b6
.catch Ljava/lang/IllegalArgumentException; {:try_start_921 .. :try_end_931} :catch_10b3
.catch Ljava/lang/IllegalAccessException; {:try_start_921 .. :try_end_931} :catch_10b0
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_921 .. :try_end_931} :catch_10ad
:goto_931
:cond_931
if-eqz v12, :cond_936
:try_start_933
invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
:goto_936
:try_end_936
.catch Ljava/io/IOException; {:try_start_933 .. :try_end_936} :catch_bdb
:cond_936
if-eqz v8, :cond_949
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_950
if-nez v11, :cond_949
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:goto_949
:cond_949
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_950
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_949
const-string/jumbo v2, "android.os.FileUtils"
:try_start_959
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v11, 0x0
:goto_963
array-length v13, v12
if-ge v11, v13, :cond_977
aget-object v13, v12, v11
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_9ac
aget-object v2, v12, v11
:cond_977
if-eqz v2, :cond_99c
const/4 v11, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v8, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_99c
:cond_99c
:try_end_99c
.catch Ljava/lang/Exception; {:try_start_959 .. :try_end_99c} :catch_10aa
:try_start_99c
new-instance v2, Ljava/io/FileOutputStream;
const/4 v11, 0x1
invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_9a9
.catch Ljava/io/FileNotFoundException; {:try_start_99c .. :try_end_9a9} :catch_9aa
.catch Ljava/io/SyncFailedException; {:try_start_99c .. :try_end_9a9} :catch_10a7
.catch Ljava/io/IOException; {:try_start_99c .. :try_end_9a9} :catch_10a4
.catch Ljava/lang/RuntimeException; {:try_start_99c .. :try_end_9a9} :catch_10a1
goto :goto_949
:catch_9aa
move-exception v2
goto :goto_949
:cond_9ac
add-int/lit8 v11, v11, 0x1
goto :goto_963
:catch_9af
move-exception v2
move-object/from16 v21, v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
move/from16 v3, v20
:goto_9c2
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v13, 0x0
iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_9ce
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_9ce
if-eqz v22, :cond_9e4
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_9d4
const-string/jumbo v13, "close"
const/4 v14, 0x0
invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v13, 0x0
new-array v13, v13, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_9e4
:try_end_9e4
.catch Ljava/lang/SecurityException; {:try_start_9d4 .. :try_end_9e4} :catch_f3e
.catch Ljava/lang/NoSuchMethodException; {:try_start_9d4 .. :try_end_9e4} :catch_f3b
.catch Ljava/lang/IllegalArgumentException; {:try_start_9d4 .. :try_end_9e4} :catch_f38
.catch Ljava/lang/IllegalAccessException; {:try_start_9d4 .. :try_end_9e4} :catch_f35
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9d4 .. :try_end_9e4} :catch_f32
:cond_9e4
if-eqz v12, :cond_9e9
:try_start_9e6
invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
:goto_9e9
:try_end_9e9
.catch Ljava/io/IOException; {:try_start_9e6 .. :try_end_9e9} :catch_bde
:cond_9e9
if-eqz v8, :cond_9fc
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_a03
if-nez v11, :cond_9fc
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:cond_9fc
:goto_9fc
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_a03
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_9fc
const-string/jumbo v2, "android.os.FileUtils"
:try_start_a0c
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v11, 0x0
:goto_a16
array-length v13, v12
if-ge v11, v13, :cond_a2a
aget-object v13, v12, v11
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_a5f
aget-object v2, v12, v11
:cond_a2a
if-eqz v2, :cond_a4f
const/4 v11, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v8, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_a4f
.catch Ljava/lang/Exception; {:try_start_a0c .. :try_end_a4f} :catch_f2f
:try_start_a4f
:cond_a4f
:goto_a4f
new-instance v2, Ljava/io/FileOutputStream;
const/4 v11, 0x1
invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_a5c
.catch Ljava/io/FileNotFoundException; {:try_start_a4f .. :try_end_a5c} :catch_a5d
.catch Ljava/io/SyncFailedException; {:try_start_a4f .. :try_end_a5c} :catch_f2c
.catch Ljava/io/IOException; {:try_start_a4f .. :try_end_a5c} :catch_f29
.catch Ljava/lang/RuntimeException; {:try_start_a4f .. :try_end_a5c} :catch_f26
goto :goto_9fc
:catch_a5d
move-exception v2
goto :goto_9fc
:cond_a5f
add-int/lit8 v11, v11, 0x1
goto :goto_a16
:catch_a62
move-exception v2
move-object/from16 v21, v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
move/from16 v3, v20
:goto_a75
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v13, 0x0
iput-boolean v13, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_a81
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_a81
if-eqz v22, :cond_a97
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
:try_start_a87
const-string/jumbo v13, "close"
const/4 v14, 0x0
invoke-virtual {v2, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v13, 0x0
new-array v13, v13, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v2, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_a97
:cond_a97
:try_end_a97
.catch Ljava/lang/SecurityException; {:try_start_a87 .. :try_end_a97} :catch_dc3
.catch Ljava/lang/NoSuchMethodException; {:try_start_a87 .. :try_end_a97} :catch_dc0
.catch Ljava/lang/IllegalArgumentException; {:try_start_a87 .. :try_end_a97} :catch_dbd
.catch Ljava/lang/IllegalAccessException; {:try_start_a87 .. :try_end_a97} :catch_dba
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a87 .. :try_end_a97} :catch_db7
if-eqz v12, :cond_a9c
:try_start_a99
invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
:goto_a9c
:cond_a9c
:try_end_a9c
.catch Ljava/io/IOException; {:try_start_a99 .. :try_end_a9c} :catch_be1
if-eqz v8, :cond_aaf
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v2
if-eqz v2, :cond_ab6
if-nez v11, :cond_aaf
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:goto_aaf
:cond_aaf
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d7
:cond_ab6
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_aaf
const-string/jumbo v2, "android.os.FileUtils"
:try_start_abf
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v12
const/4 v2, 0x0
const/4 v11, 0x0
:goto_ac9
array-length v13, v12
if-ge v11, v13, :cond_add
aget-object v13, v12, v11
invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "setPermissions"
invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_b12
aget-object v2, v12, v11
:cond_add
if-eqz v2, :cond_b02
const/4 v11, 0x0
const/4 v12, 0x4
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
aput-object v8, v12, v13
const/4 v13, 0x1
const/16 v14, 0x1a4
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x2
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
const/4 v13, 0x3
const/4 v14, -0x1
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v2, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_start_b02
:goto_b02
:try_end_b02
.catch Ljava/lang/Exception; {:try_start_abf .. :try_end_b02} :catch_db4
:cond_b02
new-instance v2, Ljava/io/FileOutputStream;
const/4 v11, 0x1
invoke-direct {v2, v8, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_b0f
.catch Ljava/io/FileNotFoundException; {:try_start_b02 .. :try_end_b0f} :catch_b10
.catch Ljava/io/SyncFailedException; {:try_start_b02 .. :try_end_b0f} :catch_db1
.catch Ljava/io/IOException; {:try_start_b02 .. :try_end_b0f} :catch_dae
.catch Ljava/lang/RuntimeException; {:try_start_b02 .. :try_end_b0f} :catch_dab
goto :goto_aaf
:catch_b10
move-exception v2
goto :goto_aaf
:cond_b12
add-int/lit8 v11, v11, 0x1
goto :goto_ac9
:catchall_b15
move-exception v2
move-object/from16 v21, v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
move/from16 v3, v20
move/from16 v32, v11
move-object v11, v2
move/from16 v2, v32
:goto_b2d
move-object/from16 v0, p0
iget-object v13, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;
const/4 v14, 0x0
iput-boolean v14, v13, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-eqz v21, :cond_b39
invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_b39
if-eqz v22, :cond_b4f
invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v13
:try_start_b3f
const-string/jumbo v14, "close"
const/4 v15, 0x0
invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v13
const/4 v14, 0x0
new-array v14, v14, [Ljava/lang/Object;
move-object/from16 v0, v22
invoke-virtual {v13, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b4f
.catch Ljava/lang/SecurityException; {:try_start_b3f .. :try_end_b4f} :catch_bfe
.catch Ljava/lang/NoSuchMethodException; {:try_start_b3f .. :try_end_b4f} :catch_bfb
.catch Ljava/lang/IllegalArgumentException; {:try_start_b3f .. :try_end_b4f} :catch_bf8
.catch Ljava/lang/IllegalAccessException; {:try_start_b3f .. :try_end_b4f} :catch_bf5
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b3f .. :try_end_b4f} :catch_bf2
:goto_b4f
:cond_b4f
if-eqz v12, :cond_b54
:try_start_b51
invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
:cond_b54
:try_end_b54
.catch Ljava/io/IOException; {:try_start_b51 .. :try_end_b54} :catch_be4
:goto_b54
if-eqz v8, :cond_b67
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
move-result v12
if-eqz v12, :cond_b6d
if-nez v2, :cond_b67
new-instance v2, Ljava/io/File;
invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->delete()Z
const/4 v8, 0x0
:cond_b67
:goto_b67
move-object/from16 v2, p0
invoke-direct/range {v2 .. v10}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
throw v11
:cond_b6d
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v2
if-eqz v2, :cond_b67
const-string/jumbo v2, "android.os.FileUtils"
:try_start_b76
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
move-result-object v13
const/4 v2, 0x0
const/4 v12, 0x0
:goto_b80
array-length v14, v13
if-ge v12, v14, :cond_b94
aget-object v14, v13, v12
invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v14
const-string/jumbo v15, "setPermissions"
invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_bc9
aget-object v2, v13, v12
:cond_b94
if-eqz v2, :cond_bb9
const/4 v12, 0x0
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
aput-object v8, v13, v14
const/4 v14, 0x1
const/16 v15, 0x1a4
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x2
const/4 v15, -0x1
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x3
const/4 v15, -0x1
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
invoke-virtual {v2, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_bb9
:goto_bb9
:try_end_bb9
.catch Ljava/lang/Exception; {:try_start_b76 .. :try_end_bb9} :catch_bf0
:try_start_bb9
new-instance v2, Ljava/io/FileOutputStream;
const/4 v12, 0x1
invoke-direct {v2, v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v2
invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
:try_end_bc6
.catch Ljava/io/FileNotFoundException; {:try_start_bb9 .. :try_end_bc6} :catch_bc7
.catch Ljava/io/SyncFailedException; {:try_start_bb9 .. :try_end_bc6} :catch_bed
.catch Ljava/io/IOException; {:try_start_bb9 .. :try_end_bc6} :catch_bea
.catch Ljava/lang/RuntimeException; {:try_start_bb9 .. :try_end_bc6} :catch_be7
goto :goto_b67
:catch_bc7
move-exception v2
goto :goto_b67
:cond_bc9
add-int/lit8 v12, v12, 0x1
goto :goto_b80
:catch_bcc
move-exception v2
goto/16 :goto_b7
:catch_bcf
move-exception v4
goto/16 :goto_65d
:catch_bd2
move-exception v8
goto/16 :goto_2ae
:catch_bd5
move-exception v2
goto/16 :goto_746
:catch_bd8
move-exception v2
goto/16 :goto_883
:catch_bdb
move-exception v2
goto/16 :goto_936
:catch_bde
move-exception v2
goto/16 :goto_9e9
:catch_be1
move-exception v2
goto/16 :goto_a9c
:catch_be4
move-exception v12
goto/16 :goto_b54
:catch_be7
move-exception v2
goto/16 :goto_b67
:catch_bea
move-exception v2
goto/16 :goto_b67
:catch_bed
move-exception v2
goto/16 :goto_b67
:catch_bf0
move-exception v2
goto :goto_bb9
:catch_bf2
move-exception v13
goto/16 :goto_b4f
:catch_bf5
move-exception v13
goto/16 :goto_b4f
:catch_bf8
move-exception v13
goto/16 :goto_b4f
:catch_bfb
move-exception v13
goto/16 :goto_b4f
:catch_bfe
move-exception v13
goto/16 :goto_b4f
:catchall_c01
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move/from16 v5, v18
move-object v12, v14
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_c19
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_c30
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v14
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_c45
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move/from16 v5, v18
move-object v12, v14
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_c5d
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v2
move v2, v11
move-object v11, v3
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_c72
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v2
move v2, v11
move-object v11, v3
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_c87
move-exception v3
move-object v12, v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v2, v11
move-object v11, v3
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_c9a
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_caf
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_cc0
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v32, v11
move-object v11, v2
move/from16 v2, v32
goto/16 :goto_b2d
:catchall_ccf
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v32, v11
move-object v11, v2
move/from16 v2, v32
goto/16 :goto_b2d
:catchall_ce2
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
move/from16 v32, v11
move-object v11, v2
move/from16 v2, v32
goto/16 :goto_b2d
:catchall_cf1
move-exception v4
move-object v11, v4
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v32, v3
move v3, v2
move/from16 v2, v32
goto/16 :goto_b2d
:catchall_d05
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
move-object/from16 v32, v2
move v2, v11
move-object/from16 v11, v32
goto/16 :goto_b2d
:catchall_d1a
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v7, v15
move/from16 v32, v11
move-object v11, v2
move/from16 v2, v32
goto/16 :goto_b2d
:catchall_d2d
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move v2, v11
move/from16 v5, v18
move v7, v15
move-object v11, v3
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_d40
move-exception v6
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v15
move v2, v11
move/from16 v5, v18
move-object v11, v6
move/from16 v6, v17
goto/16 :goto_b2d
:catchall_d4f
move-exception v6
move-object v11, v6
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v4
move v2, v3
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_d62
move-exception v9
move-object v11, v9
move-object v12, v2
move-object v10, v7
move v2, v3
move v7, v4
move-object/from16 v9, v16
move v4, v6
move v3, v8
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_b2d
:catchall_d73
move-exception v4
move-object v11, v4
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move v2, v3
move/from16 v5, v18
move/from16 v4, v19
move/from16 v6, v17
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_d86
move-exception v2
move-object v11, v2
move-object v12, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move v2, v3
move/from16 v5, v18
move/from16 v4, v19
move/from16 v6, v17
move/from16 v3, v20
goto/16 :goto_b2d
:catchall_d99
move-exception v4
move-object v11, v4
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move v7, v6
move v2, v3
move/from16 v4, v19
move/from16 v6, v17
move v3, v8
move-object v8, v5
move/from16 v5, v18
goto/16 :goto_b2d
:catch_dab
move-exception v2
goto/16 :goto_aaf
:catch_dae
move-exception v2
goto/16 :goto_aaf
:catch_db1
move-exception v2
goto/16 :goto_aaf
:catch_db4
move-exception v2
goto/16 :goto_b02
:catch_db7
move-exception v2
goto/16 :goto_a97
:catch_dba
move-exception v2
goto/16 :goto_a97
:catch_dbd
move-exception v2
goto/16 :goto_a97
:catch_dc0
move-exception v2
goto/16 :goto_a97
:catch_dc3
move-exception v2
goto/16 :goto_a97
:catch_dc6
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_a75
:catch_dd9
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
goto/16 :goto_a75
:catch_deb
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v14
goto/16 :goto_a75
:catch_dfb
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_a75
:catch_e0e
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
move/from16 v5, v18
goto/16 :goto_a75
:catch_e21
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
goto/16 :goto_a75
:catch_e34
move-exception v3
move-object v12, v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_a75
:catch_e45
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_a75
:catch_e55
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_a75
:catch_e61
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
goto/16 :goto_a75
:catch_e6b
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_a75
:catch_e79
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_a75
:catch_e83
move-exception v4
move v11, v3
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v3, v2
goto/16 :goto_a75
:catch_e93
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
goto/16 :goto_a75
:catch_ea3
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v7, v15
goto/16 :goto_a75
:catch_eb1
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
move/from16 v5, v18
goto/16 :goto_a75
:catch_ec2
move-exception v6
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v15
move/from16 v5, v18
goto/16 :goto_a75
:catch_ecf
move-exception v6
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v4
move/from16 v5, v18
move/from16 v3, v20
move/from16 v4, v19
goto/16 :goto_a75
:catch_ee1
move-exception v9
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move v7, v4
move v3, v8
move v4, v6
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_a75
:catch_ef1
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v4, v19
move/from16 v5, v18
move v7, v6
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_a75
:catch_f03
move-exception v2
move v11, v3
move-object v12, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_a75
:catch_f15
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move/from16 v4, v19
move v7, v6
move v3, v8
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_a75
:catch_f26
move-exception v2
goto/16 :goto_9fc
:catch_f29
move-exception v2
goto/16 :goto_9fc
:catch_f2c
move-exception v2
goto/16 :goto_9fc
:catch_f2f
move-exception v2
goto/16 :goto_a4f
:catch_f32
move-exception v2
goto/16 :goto_9e4
:catch_f35
move-exception v2
goto/16 :goto_9e4
:catch_f38
move-exception v2
goto/16 :goto_9e4
:catch_f3b
move-exception v2
goto/16 :goto_9e4
:catch_f3e
move-exception v2
goto/16 :goto_9e4
:catch_f41
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_9c2
:catch_f54
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
goto/16 :goto_9c2
:catch_f66
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v14
goto/16 :goto_9c2
:catch_f76
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_9c2
:catch_f89
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
move/from16 v5, v18
goto/16 :goto_9c2
:catch_f9c
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
goto/16 :goto_9c2
:catch_faf
move-exception v3
move-object v12, v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_9c2
:catch_fc0
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_9c2
:catch_fd0
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_9c2
:catch_fdc
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
goto/16 :goto_9c2
:catch_fe6
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_9c2
:catch_ff4
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_9c2
:catch_ffe
move-exception v4
move v11, v3
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v3, v2
goto/16 :goto_9c2
:catch_100e
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
goto/16 :goto_9c2
:catch_101e
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v7, v15
goto/16 :goto_9c2
:catch_102c
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
move/from16 v5, v18
goto/16 :goto_9c2
:catch_103d
move-exception v6
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v15
move/from16 v5, v18
goto/16 :goto_9c2
:catch_104a
move-exception v6
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v4
move/from16 v5, v18
move/from16 v3, v20
move/from16 v4, v19
goto/16 :goto_9c2
:catch_105c
move-exception v9
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move v7, v4
move v3, v8
move v4, v6
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_9c2
:catch_106c
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v4, v19
move/from16 v5, v18
move v7, v6
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_9c2
:catch_107e
move-exception v2
move v11, v3
move-object v12, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_9c2
:catch_1090
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move/from16 v4, v19
move v7, v6
move v3, v8
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_9c2
:catch_10a1
move-exception v2
goto/16 :goto_949
:catch_10a4
move-exception v2
goto/16 :goto_949
:catch_10a7
move-exception v2
goto/16 :goto_949
:catch_10aa
move-exception v2
goto/16 :goto_99c
:catch_10ad
move-exception v2
goto/16 :goto_931
:catch_10b0
move-exception v2
goto/16 :goto_931
:catch_10b3
move-exception v2
goto/16 :goto_931
:catch_10b6
move-exception v2
goto/16 :goto_931
:catch_10b9
move-exception v2
goto/16 :goto_931
:catch_10bc
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_90f
:catch_10cf
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
goto/16 :goto_90f
:catch_10e1
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v14
goto/16 :goto_90f
:catch_10f1
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v14
move/from16 v5, v18
goto/16 :goto_90f
:catch_1104
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
move/from16 v5, v18
goto/16 :goto_90f
:catch_1117
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move-object v12, v2
goto/16 :goto_90f
:catch_112a
move-exception v3
move-object v12, v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_90f
:catch_113b
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
goto/16 :goto_90f
:catch_114b
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_90f
:catch_1157
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
goto/16 :goto_90f
:catch_1161
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_90f
:catch_116f
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_90f
:catch_1179
move-exception v4
move v11, v3
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v3, v2
goto/16 :goto_90f
:catch_1189
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
goto/16 :goto_90f
:catch_1199
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v7, v15
goto/16 :goto_90f
:catch_11a7
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v3, v20
move v7, v15
move/from16 v5, v18
goto/16 :goto_90f
:catch_11b8
move-exception v6
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v15
move/from16 v5, v18
goto/16 :goto_90f
:catch_11c5
move-exception v6
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v4
move/from16 v5, v18
move/from16 v3, v20
move/from16 v4, v19
goto/16 :goto_90f
:catch_11d7
move-exception v9
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move v7, v4
move v3, v8
move v4, v6
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_90f
:catch_11e7
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v4, v19
move/from16 v5, v18
move v7, v6
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_90f
:catch_11f9
move-exception v2
move v11, v3
move-object v12, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v3, v20
move/from16 v6, v17
goto/16 :goto_90f
:catch_120b
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object/from16 v9, v16
move/from16 v4, v19
move v7, v6
move v3, v8
move-object v8, v5
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_90f
:catch_121c
move-exception v2
goto/16 :goto_896
:catch_121f
move-exception v2
goto/16 :goto_896
:catch_1222
move-exception v2
goto/16 :goto_896
:catch_1225
move-exception v2
goto/16 :goto_8e9
:catch_1228
move-exception v2
goto/16 :goto_87e
:catch_122b
move-exception v2
goto/16 :goto_87e
:catch_122e
move-exception v2
goto/16 :goto_87e
:catch_1231
move-exception v2
goto/16 :goto_87e
:catch_1234
move-exception v2
goto/16 :goto_87e
:catch_1237
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
goto/16 :goto_85a
:catch_1248
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v14
goto/16 :goto_85a
:catch_1258
move-exception v2
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v14
goto/16 :goto_85a
:catch_1269
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v12, v2
goto/16 :goto_85a
:catch_127a
move-exception v3
move-object/from16 v22, v12
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v12, v2
goto/16 :goto_85a
:catch_128b
move-exception v3
move-object v12, v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_85a
:catch_129a
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_85a
:catch_12a8
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
goto/16 :goto_85a
:catch_12b4
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
goto/16 :goto_85a
:catch_12be
move-exception v2
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_85a
:catch_12c8
move-exception v2
move v11, v3
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_85a
:catch_12d7
move-exception v2
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move v7, v15
goto/16 :goto_85a
:catch_12e5
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move v7, v15
goto/16 :goto_85a
:catch_12f4
move-exception v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v15
move/from16 v5, v18
goto/16 :goto_85a
:catch_1301
move-exception v6
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move v7, v4
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_85a
:catch_1311
move-exception v8
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v4
move/from16 v5, v18
move v4, v6
move/from16 v6, v17
goto/16 :goto_85a
:catch_1320
move-exception v4
move v11, v3
move-object v12, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v4, v19
move/from16 v5, v18
move v7, v6
move/from16 v6, v17
goto/16 :goto_85a
:catch_1330
move-exception v2
move v11, v3
move-object v12, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v6, v17
goto/16 :goto_85a
:catch_1340
move-exception v2
goto/16 :goto_759
:catch_1343
move-exception v2
goto/16 :goto_759
:catch_1346
move-exception v2
goto/16 :goto_759
:catch_1349
move-exception v2
goto/16 :goto_834
:catch_134c
move-exception v2
goto/16 :goto_741
:catch_134f
move-exception v2
goto/16 :goto_741
:catch_1352
move-exception v2
goto/16 :goto_741
:catch_1355
move-exception v2
goto/16 :goto_741
:catch_1358
move-exception v2
goto/16 :goto_741
:catch_135b
move-exception v2
move-object v2, v3
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v13, v14
goto/16 :goto_71f
:catch_136b
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v13, v14
goto/16 :goto_71f
:catch_137c
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v14
goto/16 :goto_71f
:catch_138c
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v13, v14
goto/16 :goto_71f
:catch_139d
move-exception v3
move-object v10, v13
move-object v8, v5
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move/from16 v5, v18
move-object v13, v2
move-object/from16 v2, v21
goto/16 :goto_71f
:catch_13ae
move-exception v3
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v2
move-object/from16 v2, v21
goto/16 :goto_71f
:catch_13bf
move-exception v3
move-object/from16 v12, v22
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v2
move-object/from16 v2, v21
goto/16 :goto_71f
:catch_13d2
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v12
move-object/from16 v12, v22
goto/16 :goto_71f
:catch_13e5
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move-object v13, v12
move-object/from16 v12, v22
goto/16 :goto_71f
:catch_13f6
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move-object v13, v12
move-object/from16 v12, v22
goto/16 :goto_71f
:catch_1405
move-exception v2
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v14
move v7, v15
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v12
move-object/from16 v12, v22
goto/16 :goto_71f
:catch_1414
move-exception v2
move v11, v3
move-object/from16 v2, v21
move-object v10, v13
move-object v8, v14
move v7, v15
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object v13, v12
move-object/from16 v12, v22
goto/16 :goto_71f
:catch_1428
move-exception v2
move-object/from16 v2, v21
move-object v13, v12
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object/from16 v12, v22
move v7, v15
goto/16 :goto_71f
:catch_143b
move-exception v2
move-object/from16 v2, v21
move-object v13, v12
move-object v10, v7
move-object v8, v14
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v5, v18
move/from16 v4, v19
move-object/from16 v12, v22
move v7, v15
goto/16 :goto_71f
:catch_144e
move-exception v3
move-object/from16 v12, v22
move-object v13, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move/from16 v4, v19
move v7, v15
move/from16 v5, v18
move-object/from16 v2, v21
goto/16 :goto_71f
:catch_1461
move-exception v3
move-object/from16 v12, v22
move-object v13, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move-object/from16 v2, v21
move v7, v15
move/from16 v5, v18
goto/16 :goto_71f
:catch_1472
move-exception v6
move v11, v3
move-object/from16 v12, v22
move-object v13, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move/from16 v6, v17
move-object/from16 v2, v21
move v7, v4
move/from16 v5, v18
move/from16 v4, v19
goto/16 :goto_71f
:catch_1486
move-exception v8
move v11, v3
move-object/from16 v12, v22
move-object v13, v2
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v4
move-object/from16 v2, v21
move/from16 v5, v18
move v4, v6
move/from16 v6, v17
goto/16 :goto_71f
:catch_1499
move-exception v2
move v11, v3
move-object/from16 v2, v21
move-object/from16 v12, v22
move-object v13, v4
move-object v10, v7
move-object v8, v5
move-object/from16 v9, v16
move v7, v6
move/from16 v5, v18
move/from16 v4, v19
move/from16 v6, v17
goto/16 :goto_71f
:catch_14ad
move-exception v2
goto/16 :goto_7c5
:catch_14b0
move-exception v12
goto/16 :goto_2a9
:catch_14b3
move-exception v12
goto/16 :goto_2a9
:catch_14b6
move-exception v12
goto/16 :goto_2a9
:catch_14b9
move-exception v12
goto/16 :goto_2a9
:catch_14bc
move-exception v12
goto/16 :goto_2a9
:catchall_14bf
move-exception v8
move-object/from16 v32, v8
move v8, v4
move-object/from16 v4, v32
goto/16 :goto_70b
:catchall_14c7
move-exception v4
goto/16 :goto_70b
:catch_14ca
move-exception v2
goto/16 :goto_c8
:catch_14cd
move-exception v2
goto/16 :goto_c8
:catch_14d0
move-exception v2
goto/16 :goto_c8
:catch_14d3
move-exception v2
goto/16 :goto_124
:catch_14d6
move-exception v2
goto/16 :goto_b2
:catch_14d9
move-exception v2
goto/16 :goto_b2
:catch_14dc
move-exception v2
goto/16 :goto_b2
:catch_14df
move-exception v2
goto/16 :goto_b2
:catch_14e2
move-exception v2
goto/16 :goto_b2
:cond_14e5
move-object v8, v11
goto/16 :goto_2c2
:cond_14e8
move-wide v8, v10
move v4, v13
goto/16 :goto_690
:cond_14ec
move v2, v3
goto/16 :goto_6c4
:cond_14ef
move-object v13, v4
goto/16 :goto_476
:cond_14f2
move-object v2, v9
goto/16 :goto_466
:cond_14f5
move-object/from16 v26, v8
goto/16 :goto_459
:cond_14f9
move-object v7, v13
goto/16 :goto_44a
:cond_14fc
move-object v5, v7
goto/16 :goto_427
:cond_14ff
move-object v2, v12
move-object v7, v13
move-object v5, v14
move-object v14, v4
goto/16 :goto_51d
:cond_1505
move-object v12, v2
goto/16 :goto_1c0
:cond_1508
move-object/from16 v22, v12
goto/16 :goto_1b1
:cond_150c
move-object v4, v10
goto/16 :goto_16c
:cond_150f
move-object v5, v8
goto/16 :goto_150
:cond_1512
move-object v2, v14
move-object v14, v8
move-object v8, v4
move-object v4, v10
goto/16 :goto_174
.end method