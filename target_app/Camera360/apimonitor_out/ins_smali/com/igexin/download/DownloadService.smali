.class public Lcom/igexin/download/DownloadService;
.super Landroid/app/Service;
.field static a:Z
.field private b:Lcom/igexin/download/d;
.field private c:Ljava/util/ArrayList;
.field private d:Lcom/igexin/download/f;
.field private e:Z
.field private f:Lcom/igexin/download/e;
.field private g:Z
.field private h:Ljava/lang/Object;
.field private i:Landroid/database/CharArrayBuffer;
.field private j:Landroid/database/CharArrayBuffer;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/igexin/download/DownloadService;->a:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method private a(IJ)J
.registers 9
const-wide/16 v1, 0x0
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
iget v3, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v3}, Lcom/igexin/download/Downloads;->isStatusCompleted(I)Z
move-result v3
if-eqz v3, :cond_15
const-wide/16 v0, -0x1
:goto_14
return-wide v0
:cond_15
iget v3, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
const/16 v4, 0xc1
if-eq v3, v4, :cond_1d
move-wide v0, v1
goto :goto_14
:cond_1d
iget v3, v0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
if-nez v3, :cond_23
move-wide v0, v1
goto :goto_14
:cond_23
invoke-virtual {v0}, Lcom/igexin/download/DownloadInfo;->restartTime()J
move-result-wide v3
cmp-long v0, v3, p2
if-gtz v0, :cond_2d
move-wide v0, v1
goto :goto_14
:cond_2d
sub-long v0, v3, p2
goto :goto_14
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;IJ)J
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/igexin/download/DownloadService;->a(IJ)J
move-result-wide v0
return-wide v0
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
.registers 2
iput-object p1, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;
return-object p1
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Lcom/igexin/download/f;)Lcom/igexin/download/f;
.registers 2
iput-object p1, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;
return-object p1
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
iput-object p1, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
return-object p1
.end method
.method private a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
.registers 11
const/4 v6, 0x0
invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
if-nez p1, :cond_c
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object p1
:cond_b
:goto_b
return-object p1
:cond_c
iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
if-nez v1, :cond_19
new-instance v1, Landroid/database/CharArrayBuffer;
const/16 v2, 0x80
invoke-direct {v1, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V
iput-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
:cond_19
iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
invoke-interface {p2, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
iget-object v1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-eq v1, v2, :cond_2d
invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object p1
goto :goto_b
:cond_2d
iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;
iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I
if-ge v0, v1, :cond_3e
:cond_37
new-instance v0, Landroid/database/CharArrayBuffer;
invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V
iput-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;
:cond_3e
iget-object v0, p0, Lcom/igexin/download/DownloadService;->i:Landroid/database/CharArrayBuffer;
iget-object v2, v0, Landroid/database/CharArrayBuffer;->data:[C
iget-object v0, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
iget-object v3, v0, Landroid/database/CharArrayBuffer;->data:[C
invoke-virtual {p1, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V
add-int/lit8 v0, v1, -0x1
:goto_4b
if-ltz v0, :cond_b
aget-char v4, v2, v0
aget-char v5, v3, v0
if-eq v4, v5, :cond_59
new-instance p1, Ljava/lang/String;
invoke-direct {p1, v3, v6, v1}, Ljava/lang/String;-><init>([CII)V
goto :goto_b
:cond_59
add-int/lit8 v0, v0, -0x1
goto :goto_4b
.end method
.method private a()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/igexin/download/DownloadService;->e:Z
iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;
if-nez v0, :cond_14
new-instance v0, Lcom/igexin/download/f;
invoke-direct {v0, p0}, Lcom/igexin/download/f;-><init>(Lcom/igexin/download/DownloadService;)V
iput-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;
iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;
invoke-virtual {v0}, Lcom/igexin/download/f;->start()V
:cond_14
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
:try_end_18
.catchall {:try_start_2 .. :try_end_18} :catchall_16
throw v0
.end method
.method private a(Landroid/database/Cursor;IZZJ)V
.registers 48
const-string/jumbo v2, "status"
move-object/from16 v0, p1
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v12
const-string/jumbo v2, "numfailed"
move-object/from16 v0, p1
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v13
const-string/jumbo v2, "method"
move-object/from16 v0, p1
invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v2
move-object/from16 v0, p1
invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
move-result v15
new-instance v2, Lcom/igexin/download/DownloadInfo;
const-string/jumbo v3, "_id"
move-object/from16 v0, p1
invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v3
move-object/from16 v0, p1
invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
move-result v3
const-string/jumbo v4, "uri"
move-object/from16 v0, p1
invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v4
move-object/from16 v0, p1
invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "no_integrity"
move-object/from16 v0, p1
invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v5
move-object/from16 v0, p1
invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_281
const/4 v5, 0x1
:goto_54
const-string/jumbo v6, "hint"
move-object/from16 v0, p1
invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v6
move-object/from16 v0, p1
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "_data"
move-object/from16 v0, p1
invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v7
move-object/from16 v0, p1
invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "mimetype"
move-object/from16 v0, p1
invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v8
move-object/from16 v0, p1
invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const-string/jumbo v9, "destination"
move-object/from16 v0, p1
invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v9
move-object/from16 v0, p1
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
const-string/jumbo v10, "visibility"
move-object/from16 v0, p1
invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v10
move-object/from16 v0, p1
invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
const-string/jumbo v11, "control"
move-object/from16 v0, p1
invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v11
move-object/from16 v0, p1
invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I
move-result v11
move-object/from16 v0, p1
invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I
move-result v12
move-object/from16 v0, p1
invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I
move-result v13
const v14, 0xfffffff
and-int/2addr v14, v15
shr-int/lit8 v15, v15, 0x1c
const-string/jumbo v16, "lastmod"
move-object/from16 v0, p1
move-object/from16 v1, v16
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v16
move-object/from16 v0, p1
move/from16 v1, v16
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v16
const-string/jumbo v18, "createmod"
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v18
move-object/from16 v0, p1
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v18
const-string/jumbo v20, "extras"
move-object/from16 v0, p1
move-object/from16 v1, v20
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v20
move-object/from16 v0, p1
move/from16 v1, v20
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v20
const-string/jumbo v21, "cookiedata"
move-object/from16 v0, p1
move-object/from16 v1, v21
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v21
move-object/from16 v0, p1
move/from16 v1, v21
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v21
const-string/jumbo v22, "useragent"
move-object/from16 v0, p1
move-object/from16 v1, v22
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v22
move-object/from16 v0, p1
move/from16 v1, v22
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v22
const-string/jumbo v23, "referer"
move-object/from16 v0, p1
move-object/from16 v1, v23
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v23
move-object/from16 v0, p1
move/from16 v1, v23
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v23
const-string/jumbo v24, "total_bytes"
move-object/from16 v0, p1
move-object/from16 v1, v24
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v24
move-object/from16 v0, p1
move/from16 v1, v24
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v24
const-string/jumbo v25, "current_bytes"
move-object/from16 v0, p1
move-object/from16 v1, v25
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v25
move-object/from16 v0, p1
move/from16 v1, v25
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v25
const-string/jumbo v26, "etag"
move-object/from16 v0, p1
move-object/from16 v1, v26
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v26
move-object/from16 v0, p1
move/from16 v1, v26
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v26
const-string/jumbo v27, "data_1"
move-object/from16 v0, p1
move-object/from16 v1, v27
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v27
move-object/from16 v0, p1
move/from16 v1, v27
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v27
const-string/jumbo v28, "data_2"
move-object/from16 v0, p1
move-object/from16 v1, v28
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v28
move-object/from16 v0, p1
move/from16 v1, v28
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v28
const-string/jumbo v29, "data_3"
move-object/from16 v0, p1
move-object/from16 v1, v29
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v29
move-object/from16 v0, p1
move/from16 v1, v29
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v29
const-string/jumbo v30, "data_4"
move-object/from16 v0, p1
move-object/from16 v1, v30
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v30
move-object/from16 v0, p1
move/from16 v1, v30
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v30
const-string/jumbo v31, "data_5"
move-object/from16 v0, p1
move-object/from16 v1, v31
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v31
move-object/from16 v0, p1
move/from16 v1, v31
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v31
const-string/jumbo v32, "data_6"
move-object/from16 v0, p1
move-object/from16 v1, v32
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v32
move-object/from16 v0, p1
move/from16 v1, v32
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v32
const-string/jumbo v33, "data_7"
move-object/from16 v0, p1
move-object/from16 v1, v33
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v33
move-object/from16 v0, p1
move/from16 v1, v33
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v33
const-string/jumbo v34, "data_8"
move-object/from16 v0, p1
move-object/from16 v1, v34
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v34
move-object/from16 v0, p1
move/from16 v1, v34
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v34
const-string/jumbo v35, "data_9"
move-object/from16 v0, p1
move-object/from16 v1, v35
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v35
move-object/from16 v0, p1
move/from16 v1, v35
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v35
const-string/jumbo v36, "data_10"
move-object/from16 v0, p1
move-object/from16 v1, v36
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v36
move-object/from16 v0, p1
move/from16 v1, v36
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v36
const-string/jumbo v38, "iswebicon"
move-object/from16 v0, p1
move-object/from16 v1, v38
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v38
move-object/from16 v0, p1
move/from16 v1, v38
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v38
const-string/jumbo v39, "scanned"
move-object/from16 v0, p1
move-object/from16 v1, v39
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v39
move-object/from16 v0, p1
move/from16 v1, v39
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v39
const/16 v40, 0x1
move/from16 v0, v39
move/from16 v1, v40
if-ne v0, v1, :cond_284
const/16 v39, 0x1
:goto_259
invoke-direct/range {v2 .. v39}, Lcom/igexin/download/DownloadInfo;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZ)V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
move/from16 v0, p2
invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
move/from16 v0, p3
move/from16 v1, p4
invoke-virtual {v2, v0, v1}, Lcom/igexin/download/DownloadInfo;->canUseNetwork(ZZ)Z
move-result v3
if-eqz v3, :cond_280
const-string/jumbo v3, "wifi"
iget-object v4, v2, Lcom/igexin/download/DownloadInfo;->mData9:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_287
invoke-static/range {p0 .. p0}, Lcom/igexin/download/h;->b(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_287
:goto_280
:cond_280
return-void
:cond_281
const/4 v5, 0x0
goto/16 :goto_54
:cond_284
const/16 v39, 0x0
goto :goto_259
:cond_287
move-wide/from16 v0, p5
invoke-virtual {v2, v0, v1}, Lcom/igexin/download/DownloadInfo;->isReadyToStart(J)Z
move-result v3
if-eqz v3, :cond_280
sget v3, Lcom/igexin/download/SdkDownLoader;->a:I
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/igexin/download/DownloadService;->a(I)Z
move-result v3
if-eqz v3, :cond_2db
iget-boolean v3, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-nez v3, :cond_280
iget v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
const/16 v4, 0xc0
if-eq v3, v4, :cond_2ca
const/16 v3, 0xc0
iput v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "status"
iget v5, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual/range {p0 .. p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
iget v6, v2, Lcom/igexin/download/DownloadInfo;->mId:I
int-to-long v6, v6
invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v5
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:cond_2ca
new-instance v3, Lcom/igexin/download/g;
move-object/from16 v0, p0
invoke-direct {v3, v0, v2}, Lcom/igexin/download/g;-><init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V
const/4 v4, 0x1
iput-boolean v4, v2, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
invoke-virtual {v3}, Lcom/igexin/download/g;->start()V
const/4 v3, 0x0
iput-boolean v3, v2, Lcom/igexin/download/DownloadInfo;->mNotice:Z
goto :goto_280
:cond_2db
iget v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
const/16 v4, 0xbe
if-eq v3, v4, :cond_280
const/16 v3, 0xbe
iput v3, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
new-instance v3, Landroid/content/ContentValues;
invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "status"
iget v5, v2, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual/range {p0 .. p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
iget v2, v2, Lcom/igexin/download/DownloadInfo;->mId:I
int-to-long v6, v2
invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v2
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
goto/16 :goto_280
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;)V
.registers 1
invoke-direct {p0}, Lcom/igexin/download/DownloadService;->a()V
return-void
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->b(I)V
return-void
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/igexin/download/DownloadService;->a(Landroid/database/Cursor;IZZJ)V
return-void
.end method
.method private a(I)Z
.registers 10
const/4 v4, 0x0
const/4 v6, 0x1
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
new-array v2, v6, [Ljava/lang/String;
const-string/jumbo v3, "_id"
aput-object v3, v2, v7
const-string/jumbo v3, "status == \'192\'"
move-object v5, v4
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_27
invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
move-result v0
if-ge v0, p1, :cond_25
move v0, v6
:goto_21
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_24
return v0
:cond_25
move v0, v7
goto :goto_21
:cond_27
move v0, v7
goto :goto_24
.end method
.method private a(Landroid/database/Cursor;I)Z
.registers 11
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
monitor-enter p0
:try_start_b
iget-object v3, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
:try_end_d
.catchall {:try_start_b .. :try_end_d} :catchall_71
if-eqz v3, :cond_6e
:try_start_f
iget-object v3, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
const-string/jumbo v4, "scanFile"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, Ljava/lang/String;
aput-object v7, v5, v6
const/4 v6, 0x1
const-class v7, Ljava/lang/String;
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
iget-object v4, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
iget-object v7, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
aput-object v7, v5, v6
const/4 v6, 0x1
iget-object v7, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
const/4 v3, 0x1
iput-boolean v3, v0, Lcom/igexin/download/DownloadInfo;->mMediaScanned:Z
if-eqz p1, :cond_6a
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v3, "scanned"
const/4 v4, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
sget-object v4, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const-string/jumbo v5, "_id"
invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v5
invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v5
invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v4
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:try_start_6a
:cond_6a
:try_end_6a
.catchall {:try_start_f .. :try_end_6a} :catchall_71
.catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_6a} :catch_7c
.catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_6a} :catch_7a
.catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_6a} :catch_78
.catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_6a} :catch_76
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_6a} :catch_74
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_6a} :catch_6d
monitor-exit p0
move v0, v1
:goto_6c
return v0
:catch_6d
move-exception v0
:cond_6e
:goto_6e
monitor-exit p0
move v0, v2
goto :goto_6c
:catchall_71
move-exception v0
monitor-exit p0
:try_end_73
.catchall {:try_start_6a .. :try_end_73} :catchall_71
throw v0
:catch_74
move-exception v0
goto :goto_6e
:catch_76
move-exception v0
goto :goto_6e
:catch_78
move-exception v0
goto :goto_6e
:catch_7a
move-exception v0
goto :goto_6e
:catch_7c
move-exception v0
goto :goto_6e
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/igexin/download/DownloadService;->a(Landroid/database/Cursor;I)Z
move-result v0
return v0
.end method
.method static synthetic a(Lcom/igexin/download/DownloadService;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/igexin/download/DownloadService;->g:Z
return p1
.end method
.method private a(Ljava/lang/String;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method static synthetic b(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
.registers 2
iput-object p1, p0, Lcom/igexin/download/DownloadService;->j:Landroid/database/CharArrayBuffer;
return-object p1
.end method
.method static synthetic b(Lcom/igexin/download/DownloadService;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
return-object v0
.end method
.method private b(I)V
.registers 5
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
const/16 v2, 0xc0
if-ne v1, v2, :cond_18
const/16 v1, 0x1ea
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
:cond_12
:goto_12
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
return-void
:cond_18
iget v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I
if-eqz v1, :cond_12
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
if-eqz v1, :cond_12
new-instance v1, Ljava/io/File;
iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->delete()Z
goto :goto_12
.end method
.method private b(Landroid/database/Cursor;IZZJ)V
.registers 16
const/16 v7, 0xbe
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v8, 0x0
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
const-string/jumbo v1, "status"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v4
const-string/jumbo v1, "numfailed"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v5
const-string/jumbo v1, "_id"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mId:I
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;
const-string/jumbo v6, "uri"
invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;
const-string/jumbo v1, "no_integrity"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-ne v1, v2, :cond_131
move v1, v2
:goto_41
iput-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;
const-string/jumbo v6, "hint"
invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
const-string/jumbo v6, "_data"
invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
const-string/jumbo v6, "mimetype"
invoke-direct {p0, v1, p1, v6}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
const-string/jumbo v1, "destination"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I
const-string/jumbo v1, "visibility"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mVisibility:I
monitor-enter v0
:try_start_7f
const-string/jumbo v1, "control"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mControl:I
monitor-exit v0
:try_end_8d
.catchall {:try_start_7f .. :try_end_8d} :catchall_134
invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
const-string/jumbo v1, "method"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
const v4, 0xfffffff
and-int/2addr v4, v1
iput v4, v0, Lcom/igexin/download/DownloadInfo;->mRetryAfter:I
shr-int/lit8 v1, v1, 0x1c
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I
const-string/jumbo v1, "lastmod"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lcom/igexin/download/DownloadInfo;->mLastMod:J
const-string/jumbo v1, "createmod"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v4
iput-wide v4, v0, Lcom/igexin/download/DownloadInfo;->mCreateMod:J
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;
const-string/jumbo v4, "cookiedata"
invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mExtras:Ljava/lang/String;
const-string/jumbo v4, "extras"
invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mExtras:Ljava/lang/String;
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;
const-string/jumbo v4, "useragent"
invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;
const-string/jumbo v4, "referer"
invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;
const-string/jumbo v1, "total_bytes"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I
const-string/jumbo v1, "current_bytes"
invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I
iget-object v1, v0, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;
const-string/jumbo v4, "etag"
invoke-direct {p0, v1, p1, v4}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;
invoke-virtual {v0, p3, p4}, Lcom/igexin/download/DownloadInfo;->canUseNetwork(ZZ)Z
move-result v1
if-eqz v1, :cond_130
const-string/jumbo v1, "wifi"
iget-object v4, v0, Lcom/igexin/download/DownloadInfo;->mData9:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_137
invoke-static {p0}, Lcom/igexin/download/h;->b(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_137
:goto_130
:cond_130
return-void
:cond_131
move v1, v3
goto/16 :goto_41
:catchall_134
move-exception v1
:try_start_135
monitor-exit v0
:try_end_136
.catchall {:try_start_135 .. :try_end_136} :catchall_134
throw v1
:cond_137
invoke-virtual {v0, p5, p6}, Lcom/igexin/download/DownloadInfo;->isReadyToRestart(J)Z
move-result v1
if-eqz v1, :cond_130
sget v1, Lcom/igexin/download/SdkDownLoader;->a:I
invoke-direct {p0, v1}, Lcom/igexin/download/DownloadService;->a(I)Z
move-result v1
if-eqz v1, :cond_17b
iget-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
if-nez v1, :cond_130
const/16 v1, 0xc0
iput v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v4, "status"
iget v5, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v4
sget-object v5, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
iget v6, v0, Lcom/igexin/download/DownloadInfo;->mId:I
int-to-long v6, v6
invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v5
invoke-virtual {v4, v5, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
new-instance v1, Lcom/igexin/download/g;
invoke-direct {v1, p0, v0}, Lcom/igexin/download/g;-><init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V
iput-boolean v2, v0, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z
invoke-virtual {v1}, Lcom/igexin/download/g;->start()V
iput-boolean v3, v0, Lcom/igexin/download/DownloadInfo;->mNotice:Z
goto :goto_130
:cond_17b
iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
if-eq v1, v7, :cond_130
iput v7, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
new-instance v1, Landroid/content/ContentValues;
invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v2, "status"
iget v3, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
sget-object v3, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I
int-to-long v4, v0
invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v2, v0, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
goto :goto_130
.end method
.method static synthetic b(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
.registers 7
invoke-direct/range {p0 .. p6}, Lcom/igexin/download/DownloadService;->b(Landroid/database/Cursor;IZZJ)V
return-void
.end method
.method private b()Z
.registers 2
iget-object v0, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method static synthetic b(Lcom/igexin/download/DownloadService;I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->d(I)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/igexin/download/DownloadService;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/igexin/download/DownloadService;->e:Z
return p1
.end method
.method static synthetic c(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/f;
.registers 2
iget-object v0, p0, Lcom/igexin/download/DownloadService;->d:Lcom/igexin/download/f;
return-object v0
.end method
.method private c(I)Z
.registers 3
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
invoke-virtual {v0}, Lcom/igexin/download/DownloadInfo;->hasCompletionNotification()Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/igexin/download/DownloadService;I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/igexin/download/DownloadService;->c(I)Z
move-result v0
return v0
.end method
.method private d(I)Z
.registers 4
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/download/DownloadInfo;
iget-boolean v1, v0, Lcom/igexin/download/DownloadInfo;->mMediaScanned:Z
if-nez v1, :cond_22
iget v1, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I
if-nez v1, :cond_22
iget v1, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I
invoke-static {v1}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z
move-result v1
if-eqz v1, :cond_22
iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/igexin/download/DownloadService;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_22
const/4 v0, 0x1
:goto_21
return v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method static synthetic d(Lcom/igexin/download/DownloadService;)Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/download/DownloadService;->e:Z
return v0
.end method
.method static synthetic e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic f(Lcom/igexin/download/DownloadService;)Z
.registers 2
invoke-direct {p0}, Lcom/igexin/download/DownloadService;->b()Z
move-result v0
return v0
.end method
.method static synthetic g(Lcom/igexin/download/DownloadService;)Z
.registers 2
iget-boolean v0, p0, Lcom/igexin/download/DownloadService;->g:Z
return v0
.end method
.method static synthetic h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;
.registers 2
iget-object v0, p0, Lcom/igexin/download/DownloadService;->f:Lcom/igexin/download/e;
return-object v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string/jumbo v1, "Cannot bind to Download Manager Service"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public onCreate()V
.registers 7
const-string v1, " + Lcom/igexin/download/DownloadService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const/4 v4, 0x0
invoke-super {p0}, Landroid/app/Service;->onCreate()V
const-string/jumbo v0, "com.google.android.collect.Lists"
:try_start_8
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string/jumbo v1, "newArrayList"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lcom/igexin/download/DownloadService;->c:Ljava/util/ArrayList;
:goto_20
:try_end_20
.catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_20} :catch_49
.catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_20} :catch_47
.catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_20} :catch_45
.catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_20} :catch_43
.catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_20} :catch_41
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_20} :catch_3f
new-instance v0, Lcom/igexin/download/d;
invoke-direct {v0, p0}, Lcom/igexin/download/d;-><init>(Lcom/igexin/download/DownloadService;)V
iput-object v0, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const/4 v2, 0x1
iget-object v3, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;
invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
iput-object v4, p0, Lcom/igexin/download/DownloadService;->h:Ljava/lang/Object;
iput-boolean v5, p0, Lcom/igexin/download/DownloadService;->g:Z
new-instance v0, Lcom/igexin/download/e;
invoke-direct {v0, p0}, Lcom/igexin/download/e;-><init>(Lcom/igexin/download/DownloadService;)V
iput-object v0, p0, Lcom/igexin/download/DownloadService;->f:Lcom/igexin/download/e;
const-string v1, " - Lcom/igexin/download/DownloadService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_3f
move-exception v0
goto :goto_20
:catch_41
move-exception v0
goto :goto_20
:catch_43
move-exception v0
goto :goto_20
:catch_45
move-exception v0
goto :goto_20
:catch_47
move-exception v0
goto :goto_20
:catch_49
move-exception v0
goto :goto_20
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/igexin/download/DownloadService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/igexin/download/DownloadService;->b:Lcom/igexin/download/d;
invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
const-string v1, " - Lcom/igexin/download/DownloadService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart(Landroid/content/Intent;I)V
.registers 5
const-string v1, " + Lcom/igexin/download/DownloadService; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V
invoke-direct {p0}, Lcom/igexin/download/DownloadService;->a()V
const-string v1, " - Lcom/igexin/download/DownloadService; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method