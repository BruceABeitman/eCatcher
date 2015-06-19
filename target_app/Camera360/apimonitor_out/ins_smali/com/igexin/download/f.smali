.class  Lcom/igexin/download/f;
.super Ljava/lang/Thread;
.field final synthetic a:Lcom/igexin/download/DownloadService;
.method public constructor <init>(Lcom/igexin/download/DownloadService;)V
.registers 3
iput-object p1, p0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const-string/jumbo v0, "Download Service"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 19
const/16 v1, 0xa
invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
const/4 v3, 0x0
const-wide v1, 0x7fffffffffffffffL
move-wide v7, v1
move v9, v3
:goto_d
move-object/from16 v0, p0
iget-object v2, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
monitor-enter v2
:try_start_12
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/f;
move-result-object v1
move-object/from16 v0, p0
if-eq v1, v0, :cond_2a
new-instance v1, Ljava/lang/IllegalStateException;
const-string/jumbo v3, "multiple UpdateThreads in DownloadService"
invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_27
move-exception v1
monitor-exit v2
:try_end_29
.catchall {:try_start_12 .. :try_end_29} :catchall_27
throw v1
:try_start_2a
:cond_2a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->d(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-nez v1, :cond_9d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Lcom/igexin/download/f;)Lcom/igexin/download/f;
if-nez v9, :cond_45
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-virtual {v1}, Lcom/igexin/download/DownloadService;->stopSelf()V
:cond_45
const-wide v3, 0x7fffffffffffffffL
cmp-long v1, v7, v3
if-eqz v1, :cond_5d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const-string/jumbo v3, "alarm"
invoke-virtual {v1, v3}, Lcom/igexin/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/app/AlarmManager;
if-nez v1, :cond_6f
:goto_5d
:cond_5d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
monitor-exit v2
:goto_6e
:cond_6e
return-void
:cond_6f
new-instance v3, Landroid/content/Intent;
const-string/jumbo v4, "android.intent.action.GTDOWNLOAD_WAKEUP"
invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-virtual {v4}, Lcom/igexin/download/DownloadService;->getPackageName()Ljava/lang/String;
move-result-object v4
const-class v5, Lcom/igexin/download/DownloadReceiver;
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v4, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
add-long/2addr v5, v7
move-object/from16 v0, p0
iget-object v7, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v8, 0x0
const/high16 v9, 0x4000
invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v3
invoke-virtual {v1, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
goto :goto_5d
:cond_9d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v3, 0x0
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Z)Z
monitor-exit v2
:try_end_a6
.catchall {:try_start_2a .. :try_end_a6} :catchall_27
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
move-result v12
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/h;->c(Landroid/content/Context;)Z
move-result v13
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v14
const/4 v10, 0x0
:try_start_bb
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-virtual {v1}, Lcom/igexin/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const-string/jumbo v6, "_id"
invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_ce
.catchall {:try_start_bb .. :try_end_ce} :catchall_300
.catch Ljava/lang/Exception; {:try_start_bb .. :try_end_ce} :catch_303
move-result-object v2
if-nez v2, :cond_d7
if-eqz v2, :cond_6e
invoke-interface {v2}, Landroid/database/Cursor;->close()V
goto :goto_6e
:cond_d7
:try_start_d7
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
:try_end_da
.catchall {:try_start_d7 .. :try_end_da} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_309
const/4 v3, 0x0
const/4 v8, 0x0
const/4 v11, 0x0
const-wide v9, 0x7fffffffffffffffL
:try_start_e2
invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
move-result v4
const-string/jumbo v1, "_id"
invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v16
:goto_ed
if-eqz v4, :cond_fd
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v3, v1, :cond_292
:cond_fd
if-eqz v4, :cond_113
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;I)V
:try_end_106
.catchall {:try_start_e2 .. :try_end_106} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_106} :catch_107
goto :goto_ed
:catch_107
move-exception v1
:goto_108
if-eqz v2, :cond_313
invoke-interface {v2}, Landroid/database/Cursor;->close()V
move-wide v1, v9
move v3, v11
:goto_10f
move-wide v7, v1
move v9, v3
goto/16 :goto_d
:cond_113
:try_start_113
move/from16 v0, v16
invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ne v3, v1, :cond_18f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
move v4, v12
move v5, v13
move-wide v6, v14
invoke-static/range {v1 .. v7}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_329
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-eqz v1, :cond_14f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v2, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
move-result v1
if-nez v1, :cond_329
:cond_14f
const/4 v8, 0x1
const/4 v11, 0x1
move v4, v8
:goto_152
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_15d
const/4 v11, 0x1
:cond_15d
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3, v14, v15}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
:try_end_164
.catchall {:try_start_113 .. :try_end_164} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_113 .. :try_end_164} :catch_107
move-result-wide v5
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-nez v1, :cond_183
const/4 v11, 0x1
move-wide v5, v9
move v7, v11
:goto_16e
add-int/lit8 v3, v3, 0x1
:try_start_170
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
:try_end_176
.catchall {:try_start_170 .. :try_end_176} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_170 .. :try_end_176} :catch_30e
move-result v1
move/from16 v17, v4
move v4, v3
move/from16 v3, v17
:goto_17c
move v8, v3
move-wide v9, v5
move v11, v7
move v3, v4
move v4, v1
goto/16 :goto_ed
:cond_183
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-lez v1, :cond_325
cmp-long v1, v5, v9
if-gez v1, :cond_325
move v7, v11
goto :goto_16e
:cond_18f
:try_start_18f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/igexin/download/DownloadInfo;
iget v1, v1, Lcom/igexin/download/DownloadInfo;->mId:I
if-ge v1, v5, :cond_1ca
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_1bd
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-eqz v1, :cond_1bd
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v5, 0x0
invoke-static {v1, v5, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
:cond_1bd
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;I)V
move v1, v4
move-wide v5, v9
move v7, v11
move v4, v3
move v3, v8
goto :goto_17c
:cond_1ca
if-ne v1, v5, :cond_22f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
move v4, v12
move v5, v13
move-wide v6, v14
invoke-static/range {v1 .. v7}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_322
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-eqz v1, :cond_1f4
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v2, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
move-result v1
if-nez v1, :cond_322
:cond_1f4
const/4 v8, 0x1
const/4 v11, 0x1
move v4, v8
:goto_1f7
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_202
const/4 v11, 0x1
:cond_202
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3, v14, v15}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
:try_end_209
.catchall {:try_start_18f .. :try_end_209} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_18f .. :try_end_209} :catch_107
move-result-wide v5
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-nez v1, :cond_223
const/4 v11, 0x1
move-wide v5, v9
move v7, v11
:goto_213
add-int/lit8 v3, v3, 0x1
:try_start_215
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
:try_end_21b
.catchall {:try_start_215 .. :try_end_21b} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_215 .. :try_end_21b} :catch_30e
move-result v1
move/from16 v17, v4
move v4, v3
move/from16 v3, v17
goto/16 :goto_17c
:cond_223
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-lez v1, :cond_31e
cmp-long v1, v5, v9
if-gez v1, :cond_31e
move v7, v11
goto :goto_213
:try_start_22f
:cond_22f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
move v4, v12
move v5, v13
move-wide v6, v14
invoke-static/range {v1 .. v7}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;IZZJ)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->b(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_31b
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->f(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-eqz v1, :cond_257
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v2, v3}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Landroid/database/Cursor;I)Z
move-result v1
if-nez v1, :cond_31b
:cond_257
const/4 v8, 0x1
const/4 v11, 0x1
move v4, v8
:goto_25a
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3}, Lcom/igexin/download/DownloadService;->c(Lcom/igexin/download/DownloadService;I)Z
move-result v1
if-eqz v1, :cond_265
const/4 v11, 0x1
:cond_265
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1, v3, v14, v15}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;IJ)J
:try_end_26c
.catchall {:try_start_22f .. :try_end_26c} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_22f .. :try_end_26c} :catch_107
move-result-wide v5
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-nez v1, :cond_286
const/4 v11, 0x1
move-wide v5, v9
move v7, v11
:goto_276
add-int/lit8 v3, v3, 0x1
:try_start_278
invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
:try_end_27e
.catchall {:try_start_278 .. :try_end_27e} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_278 .. :try_end_27e} :catch_30e
move-result v1
move/from16 v17, v4
move v4, v3
move/from16 v3, v17
goto/16 :goto_17c
:cond_286
const-wide/16 v7, 0x0
cmp-long v1, v5, v7
if-lez v1, :cond_317
cmp-long v1, v5, v9
if-gez v1, :cond_317
move v7, v11
goto :goto_276
:try_start_292
:cond_292
sget-object v1, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
if-eqz v1, :cond_2b2
sget-object v1, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v3}, Lcom/igexin/download/DownloadService;->e(Lcom/igexin/download/DownloadService;)Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/igexin/download/SdkDownLoader;->a(Ljava/util/Collection;)V
new-instance v1, Landroid/os/Message;
invoke-direct {v1}, Landroid/os/Message;-><init>()V
const/4 v3, 0x2
iput v3, v1, Landroid/os/Message;->what:I
sget-object v3, Lcom/igexin/download/SdkDownLoader;->c:Lcom/igexin/download/SdkDownLoader;
iget-object v3, v3, Lcom/igexin/download/SdkDownLoader;->d:Landroid/os/Handler;
invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_2b2
if-eqz v8, :cond_2ed
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->g(Lcom/igexin/download/DownloadService;)Z
move-result v1
if-nez v1, :cond_2e4
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
const-string/jumbo v3, "com.android.providers.media"
const-string/jumbo v4, "com.android.providers.media.MediaScannerService"
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
const/4 v4, 0x1
invoke-static {v3, v4}, Lcom/igexin/download/DownloadService;->a(Lcom/igexin/download/DownloadService;Z)Z
move-object/from16 v0, p0
iget-object v3, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v4}, Lcom/igexin/download/DownloadService;->h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;
move-result-object v4
const/4 v5, 0x1
invoke-virtual {v3, v1, v4, v5}, Lcom/igexin/download/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
:try_end_2e4
.catchall {:try_start_292 .. :try_end_2e4} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2e4} :catch_107
:cond_2e4
:goto_2e4
if-eqz v2, :cond_313
invoke-interface {v2}, Landroid/database/Cursor;->close()V
move-wide v1, v9
move v3, v11
goto/16 :goto_10f
:cond_2ed
:try_start_2ed
move-object/from16 v0, p0
iget-object v1, v0, Lcom/igexin/download/f;->a:Lcom/igexin/download/DownloadService;
invoke-static {v1}, Lcom/igexin/download/DownloadService;->h(Lcom/igexin/download/DownloadService;)Lcom/igexin/download/e;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/download/e;->a()V
:try_end_2f8
.catchall {:try_start_2ed .. :try_end_2f8} :catchall_2f9
.catch Ljava/lang/Exception; {:try_start_2ed .. :try_end_2f8} :catch_107
goto :goto_2e4
:catchall_2f9
move-exception v1
:goto_2fa
if-eqz v2, :cond_2ff
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_2ff
throw v1
:catchall_300
move-exception v1
move-object v2, v10
goto :goto_2fa
:catch_303
move-exception v1
move-object v2, v10
move v11, v9
move-wide v9, v7
goto/16 :goto_108
:catch_309
move-exception v1
move v11, v9
move-wide v9, v7
goto/16 :goto_108
:catch_30e
move-exception v1
move-wide v9, v5
move v11, v7
goto/16 :goto_108
:cond_313
move-wide v1, v9
move v3, v11
goto/16 :goto_10f
:cond_317
move-wide v5, v9
move v7, v11
goto/16 :goto_276
:cond_31b
move v4, v8
goto/16 :goto_25a
:cond_31e
move-wide v5, v9
move v7, v11
goto/16 :goto_213
:cond_322
move v4, v8
goto/16 :goto_1f7
:cond_325
move-wide v5, v9
move v7, v11
goto/16 :goto_16e
:cond_329
move v4, v8
goto/16 :goto_152
.end method