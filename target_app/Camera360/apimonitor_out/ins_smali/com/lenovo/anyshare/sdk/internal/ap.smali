.class public final Lcom/lenovo/anyshare/sdk/internal/ap;
.super Ljava/lang/Object;
.source "FileScanner.java"
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "mounted"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1c
const-string/jumbo v1, "FileScanner"
const-string/jumbo v2, "scanFiles(): SD card isn\'t mounted."
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_1b
return-object v0
:cond_1c
invoke-static {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_41
const-string/jumbo v1, "FileScanner"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "scanFiles(): Get files from DB success and count = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:cond_41
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/aq;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p1}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "FileScanner"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "scanFiles(): Get files from storage success and count = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
.end method
.method private static a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
.registers 13
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v4
if-nez v4, :cond_7
:cond_6
return-void
:cond_7
move-object v0, v4
array-length v3, v0
const/4 v2, 0x0
:goto_a
if-ge v2, v3, :cond_6
aget-object v1, v0, v2
invoke-virtual {v1}, Ljava/io/File;->isHidden()Z
move-result v6
if-eqz v6, :cond_17
:cond_14
:goto_14
add-int/lit8 v2, v2, 0x1
goto :goto_a
:cond_17
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_21
invoke-static {p0, v1, p2}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
goto :goto_14
:cond_21
invoke-virtual {v1}, Ljava/io/File;->isFile()Z
move-result v6
if-eqz v6, :cond_14
invoke-virtual {v1}, Ljava/io/File;->length()J
move-result-wide v6
const-wide/16 v8, 0x0
cmp-long v6, v6, v8
if-lez v6, :cond_14
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
invoke-virtual {v6, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_14
invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_14
.end method
.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {p0, v0, p2}, Lcom/lenovo/anyshare/sdk/internal/ap;->a(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)Z
.registers 14
const/4 v10, 0x1
const/4 v9, 0x0
const/4 v6, 0x0
:try_start_3
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string/jumbo v1, "content://media/external/file"
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string/jumbo v4, "_id"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string/jumbo v4, "_data"
aput-object v4, v2, v3
const/4 v3, 0x2
const-string/jumbo v4, "_size"
aput-object v4, v2, v3
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "_data LIKE \'%"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "\' AND _size>0"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_43
.catchall {:try_start_3 .. :try_end_43} :catchall_6a
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_5a
move-result-object v6
if-nez v6, :cond_4b
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
move v0, v9
:goto_4a
return v0
:goto_4b
:try_start_4b
:cond_4b
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_6f
const/4 v0, 0x1
invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_59
.catchall {:try_start_4b .. :try_end_59} :catchall_6a
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_59} :catch_5a
goto :goto_4b
:catch_5a
move-exception v7
:try_start_5b
const-string/jumbo v0, "FileScanner"
invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_65
.catchall {:try_start_5b .. :try_end_65} :catchall_6a
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
move v0, v9
goto :goto_4a
:catchall_6a
move-exception v0
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
throw v0
:cond_6f
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Landroid/database/Cursor;)V
move v0, v10
goto :goto_4a
.end method