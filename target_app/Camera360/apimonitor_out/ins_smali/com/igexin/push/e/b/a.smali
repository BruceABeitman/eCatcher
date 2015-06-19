.class public Lcom/igexin/push/e/b/a;
.super Lcom/igexin/push/e/b/h;
.field private static a:Lcom/igexin/push/e/b/a;
.method public constructor <init>()V
.registers 3
const-wide/32 v0, 0x1b7740
invoke-direct {p0, v0, v1}, Lcom/igexin/push/e/b/h;-><init>(J)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/igexin/push/e/b/a;->A:Z
return-void
.end method
.method public static g()Lcom/igexin/push/e/b/a;
.registers 1
sget-object v0, Lcom/igexin/push/e/b/a;->a:Lcom/igexin/push/e/b/a;
if-nez v0, :cond_b
new-instance v0, Lcom/igexin/push/e/b/a;
invoke-direct {v0}, Lcom/igexin/push/e/b/a;-><init>()V
sput-object v0, Lcom/igexin/push/e/b/a;->a:Lcom/igexin/push/e/b/a;
:cond_b
sget-object v0, Lcom/igexin/push/e/b/a;->a:Lcom/igexin/push/e/b/a;
return-object v0
.end method
.method public a_()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()V
.registers 2
invoke-super {p0}, Lcom/igexin/push/e/b/h;->c()V
iget-boolean v0, p0, Lcom/igexin/push/e/b/a;->x:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Lcom/igexin/push/e/b/a;->h()V
:cond_a
return-void
.end method
.method public h()V
.registers 4
const-wide/32 v0, 0x1b7740
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/e/b/a;->a(JLjava/util/concurrent/TimeUnit;)I
return-void
.end method
.method protected i()V
.registers 16
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/a/f;->A()V
const/4 v6, 0x0
const-wide/16 v11, 0x0
const-wide/16 v9, 0x0
const-wide/32 v7, 0x1b7740
:try_start_f
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-eqz v0, :cond_16
const-wide/32 v11, 0x1b7740
:cond_16
sget-boolean v0, Lcom/igexin/push/core/g;->k:Z
if-eqz v0, :cond_1d
const-wide/32 v9, 0x1b7740
:cond_1d
new-instance v0, Ljava/text/SimpleDateFormat;
const-string/jumbo v1, "yyyy-MM-dd"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v13
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v0
const-string/jumbo v1, "bi"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string/jumbo v4, "type"
aput-object v4, v2, v3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
const-string/jumbo v5, "1"
aput-object v5, v3, v4
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_50
.catchall {:try_start_f .. :try_end_50} :catchall_207
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_50} :catch_20e
move-result-object v6
if-eqz v6, :cond_a5
:try_start_53
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v0
if-nez v0, :cond_212
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-wide/16 v1, 0x0
cmp-long v1, v11, v1
if-eqz v1, :cond_6e
const-string/jumbo v1, "online_time"
invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_6e
const-wide/16 v1, 0x0
cmp-long v1, v9, v1
if-eqz v1, :cond_7e
const-string/jumbo v1, "network_time"
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_7e
const-string/jumbo v1, "running_time"
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v1, "create_time"
invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "type"
const-string/jumbo v2, "1"
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v1
invoke-virtual {v1}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v1
const-string/jumbo v2, "bi"
invoke-virtual {v1, v2, v0}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
:try_end_a5
.catchall {:try_start_53 .. :try_end_a5} :catchall_207
.catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a5} :catch_185
:cond_a5
if-eqz v6, :cond_aa
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_aa
:goto_aa
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->O:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
sub-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_ed
invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/igexin/push/core/a/f;->a(ZI)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_ed
const-string/jumbo v1, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_ed
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
new-instance v1, Lcom/igexin/push/e/a/c;
new-instance v2, Lcom/igexin/push/core/d/f;
invoke-static {}, Lcom/igexin/push/core/g;->a()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x1
invoke-direct {v2, v3, v0, v4, v5}, Lcom/igexin/push/core/d/f;-><init>(Ljava/lang/String;[BIZ)V
invoke-direct {v1, v2}, Lcom/igexin/push/e/a/c;-><init>(Lcom/igexin/push/e/a/b;)V
invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;
move-result-object v0
const/4 v2, 0x0
const/4 v3, 0x1
invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z
:cond_ed
return-void
:try_start_ee
:goto_ee
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v7
if-eqz v7, :cond_a5
const-string/jumbo v7, "create_time"
invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v7
invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, "id"
invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v8
invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_18e
new-instance v7, Landroid/content/ContentValues;
invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
const-wide/16 v9, 0x0
cmp-long v9, v4, v9
if-eqz v9, :cond_132
const-string/jumbo v9, "online_time"
invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v9
invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
int-to-long v9, v9
add-long/2addr v4, v9
const-string/jumbo v9, "online_time"
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_132
const-wide/16 v9, 0x0
cmp-long v9, v2, v9
if-eqz v9, :cond_14f
const-string/jumbo v9, "network_time"
invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v9
invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
int-to-long v9, v9
add-long/2addr v2, v9
const-string/jumbo v9, "network_time"
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_14f
const-string/jumbo v9, "running_time"
invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v9
invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
int-to-long v9, v9
add-long/2addr v0, v9
const-string/jumbo v9, "running_time"
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v9
invoke-virtual {v9}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v9
const-string/jumbo v10, "bi"
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
const-string/jumbo v14, "id"
aput-object v14, v11, v12
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/String;
const/4 v14, 0x0
aput-object v8, v12, v14
invoke-virtual {v9, v10, v7, v11, v12}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
:try_end_183
.catchall {:try_start_ee .. :try_end_183} :catchall_207
.catch Ljava/lang/Exception; {:try_start_ee .. :try_end_183} :catch_185
goto/16 :goto_ee
:catch_185
move-exception v0
move-object v0, v6
:goto_187
if-eqz v0, :cond_aa
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto/16 :goto_aa
:cond_18e
:try_start_18e
new-instance v7, Landroid/content/ContentValues;
invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
const-string/jumbo v9, "type"
const-string/jumbo v10, "2"
invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v9
invoke-virtual {v9}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v9
const-string/jumbo v10, "bi"
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/String;
const/4 v12, 0x0
const-string/jumbo v14, "id"
aput-object v14, v11, v12
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/String;
const/4 v14, 0x0
aput-object v8, v12, v14
invoke-virtual {v9, v10, v7, v11, v12}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
new-instance v7, Landroid/content/ContentValues;
invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
const-wide/16 v8, 0x0
cmp-long v8, v4, v8
if-eqz v8, :cond_1ce
const-string/jumbo v8, "online_time"
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_1ce
const-wide/16 v8, 0x0
cmp-long v8, v2, v8
if-eqz v8, :cond_1de
const-string/jumbo v8, "network_time"
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
:cond_1de
const-string/jumbo v8, "running_time"
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v8, "create_time"
invoke-virtual {v7, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "type"
const-string/jumbo v9, "1"
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v8
invoke-virtual {v8}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;
move-result-object v8
const-string/jumbo v9, "bi"
invoke-virtual {v8, v9, v7}, Lcom/igexin/push/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
:try_end_205
.catchall {:try_start_18e .. :try_end_205} :catchall_207
.catch Ljava/lang/Exception; {:try_start_18e .. :try_end_205} :catch_185
goto/16 :goto_ee
:catchall_207
move-exception v0
if-eqz v6, :cond_20d
invoke-interface {v6}, Landroid/database/Cursor;->close()V
:cond_20d
throw v0
:catch_20e
move-exception v0
move-object v0, v6
goto/16 :goto_187
:cond_212
move-wide v0, v7
move-wide v2, v9
move-wide v4, v11
goto/16 :goto_ee
.end method