.class public abstract Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteOpenHelperForSD.java"
.field private static final TAG:Ljava/lang/String;
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;
.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
.field private mIsInitializing:Z
.field private final mName:Ljava/lang/String;
.field private final mNewVersion:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Landroid/database/sqlite/SQLiteOpenHelper;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 7
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
const/4 v0, 0x1
if-ge p3, v0, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Version must be >= 1, was "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
iput-object p1, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
iput p3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->createFile(Ljava/lang/String;)V
return-void
.end method
.method private createFile(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/io/File;
const-string/jumbo v1, "/sdcard/Camera360/TempData/.sandbox"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_1c
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_1c
sget-object v1, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Create dir failed!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_1c
return-void
.end method
.method public declared-synchronized close()V
.registers 3
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Closed during initialization"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_e
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_e
move-exception v0
monitor-exit p0
throw v0
:cond_11
:try_start_11
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:cond_25
:try_end_25
.catchall {:try_start_11 .. :try_end_25} :catchall_e
monitor-exit p0
return-void
.end method
.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.registers 6
monitor-enter p0
:try_start_1
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v2, :cond_11
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v2
if-eqz v2, :cond_11
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:cond_f
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_1e
:goto_f
monitor-exit p0
return-object v2
:cond_11
:try_start_11
iget-boolean v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v2, :cond_21
new-instance v2, Ljava/lang/IllegalStateException;
const-string/jumbo v3, "getReadableDatabase called recursively"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_1e
.catchall {:try_start_11 .. :try_end_1e} :catchall_1e
:catchall_1e
move-exception v2
monitor-exit p0
throw v2
:cond_21
:try_start_21
invoke-virtual {p0}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_1e
.catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_24} :catch_26
move-result-object v2
goto :goto_f
:catch_26
move-exception v1
:try_start_27
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
if-nez v2, :cond_2c
throw v1
:cond_2c
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
sget-object v2, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Couldn\'t open "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " for writing (will try read-only):"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_4d
.catchall {:try_start_27 .. :try_end_4d} :catchall_1e
const/4 v0, 0x0
const/4 v2, 0x1
:try_start_4f
iput-boolean v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
const/4 v4, 0x0
invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
move-result v2
iget v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
if-eq v2, v3, :cond_aa
new-instance v2, Landroid/database/sqlite/SQLiteException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Can\'t upgrade read-only database from version "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V
throw v2
:try_end_96
.catchall {:try_start_4f .. :try_end_96} :catchall_96
:catchall_96
move-exception v2
const/4 v3, 0x0
:try_start_98
iput-boolean v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v0, :cond_a9
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
if-eq v0, v3, :cond_a9
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v3
if-eqz v3, :cond_a9
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_a9
throw v2
:cond_aa
:try_end_aa
.catchall {:try_start_98 .. :try_end_aa} :catchall_1e
:try_start_aa
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
sget-object v2, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Opened "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " in read-only mode"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
iget-object v2, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:try_end_cf
.catchall {:try_start_aa .. :try_end_cf} :catchall_96
const/4 v3, 0x0
:try_start_d0
iput-boolean v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v0, :cond_f
iget-object v3, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
if-eq v0, v3, :cond_f
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v3
if-eqz v3, :cond_f
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:try_end_e1
.catchall {:try_start_d0 .. :try_end_e1} :catchall_1e
goto/16 :goto_f
.end method
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
.registers 7
monitor-enter p0
:try_start_1
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
if-eqz v4, :cond_19
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v4
if-eqz v4, :cond_19
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z
move-result v4
if-nez v4, :cond_19
iget-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:cond_17
:goto_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_26
monitor-exit p0
return-object v0
:cond_19
:try_start_19
iget-boolean v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v4, :cond_29
new-instance v4, Ljava/lang/IllegalStateException;
const-string/jumbo v5, "getWritableDatabase called recursively"
invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v4
:try_end_26
.catchall {:try_start_19 .. :try_end_26} :catchall_26
:catchall_26
move-exception v4
monitor-exit p0
throw v4
:cond_29
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v4, 0x1
:try_start_2c
iput-boolean v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
if-nez v4, :cond_6b
const/4 v4, 0x0
invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
:goto_37
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
move-result v3
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
if-eq v3, v4, :cond_56
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
:try_end_42
.catchall {:try_start_2c .. :try_end_42} :catchall_83
if-nez v3, :cond_74
:try_start_44
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
:goto_47
:cond_47
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
if-le v4, v3, :cond_50
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
:cond_50
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
:try_start_53
:try_end_53
.catchall {:try_start_44 .. :try_end_53} :catchall_7e
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:cond_56
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
:try_end_59
.catchall {:try_start_53 .. :try_end_59} :catchall_83
const/4 v2, 0x1
const/4 v4, 0x0
:try_start_5b
iput-boolean v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v2, :cond_9a
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:try_end_61
.catchall {:try_start_5b .. :try_end_61} :catchall_26
if-eqz v4, :cond_68
:try_start_63
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:try_end_68
.catchall {:try_start_63 .. :try_end_68} :catchall_26
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_95
:cond_68
:goto_68
:try_start_68
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:try_end_6a
.catchall {:try_start_68 .. :try_end_6a} :catchall_26
goto :goto_17
:cond_6b
:try_start_6b
iget-object v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mName:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
:try_end_72
.catchall {:try_start_6b .. :try_end_72} :catchall_83
move-result-object v0
goto :goto_37
:cond_74
:try_start_74
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
if-le v4, v3, :cond_47
iget v4, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mNewVersion:I
invoke-virtual {p0, v0, v3, v4}, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
:try_end_7d
.catchall {:try_start_74 .. :try_end_7d} :catchall_7e
goto :goto_47
:catchall_7e
move-exception v4
:try_start_7f
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
throw v4
:catchall_83
:try_end_83
.catchall {:try_start_7f .. :try_end_83} :catchall_83
move-exception v4
const/4 v5, 0x0
:try_start_85
iput-boolean v5, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mIsInitializing:Z
if-eqz v2, :cond_ac
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:try_end_8b
.catchall {:try_start_85 .. :try_end_8b} :catchall_26
if-eqz v5, :cond_92
:try_start_8d
iget-object v5, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:try_start_92
:try_end_92
.catchall {:try_start_8d .. :try_end_92} :catchall_26
.catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_a7
:goto_92
:cond_92
iput-object v0, p0, Lcom/pinguo/camera360/save/sandbox/SQLiteOpenHelperForSD;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
:cond_94
:goto_94
throw v4
:catch_95
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_68
:cond_9a
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v4
if-eqz v4, :cond_17
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto/16 :goto_17
:catch_a7
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_92
:cond_ac
if-eqz v0, :cond_94
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v5
if-eqz v5, :cond_94
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:try_end_b7
.catchall {:try_start_92 .. :try_end_b7} :catchall_26
goto :goto_94
.end method
.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 2
return-void
.end method
.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method