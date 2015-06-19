.class  Lcom/tencent/stat/t;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/tencent/stat/n;
.method constructor <init>(Lcom/tencent/stat/n;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/t;->a:Lcom/tencent/stat/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
const/4 v8, 0x0
:try_start_1
iget-object v0, p0, Lcom/tencent/stat/t;->a:Lcom/tencent/stat/n;
invoke-static {v0}, Lcom/tencent/stat/n;->b(Lcom/tencent/stat/n;)Lcom/tencent/stat/w;
move-result-object v0
invoke-virtual {v0}, Lcom/tencent/stat/w;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
const-string/jumbo v1, "config"
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_5c
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_66
move-result-object v1
:goto_18
:try_start_18
invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
move-result v0
if-eqz v0, :cond_56
const/4 v0, 0x0
invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
const/4 v2, 0x1
invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x2
invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x3
invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
move-result v4
new-instance v5, Lcom/tencent/stat/b;
invoke-direct {v5, v0}, Lcom/tencent/stat/b;-><init>(I)V
iput v0, v5, Lcom/tencent/stat/b;->a:I
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
iput-object v0, v5, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
iput-object v3, v5, Lcom/tencent/stat/b;->c:Ljava/lang/String;
iput v4, v5, Lcom/tencent/stat/b;->d:I
invoke-static {v5}, Lcom/tencent/stat/StatConfig;->a(Lcom/tencent/stat/b;)V
:try_end_47
.catchall {:try_start_18 .. :try_end_47} :catchall_64
.catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_47} :catch_48
goto :goto_18
:catch_48
move-exception v0
:try_start_49
:goto_49
invoke-static {}, Lcom/tencent/stat/n;->d()Lcom/tencent/stat/common/StatLogger;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/tencent/stat/common/StatLogger;->e(Ljava/lang/Object;)V
:try_end_50
.catchall {:try_start_49 .. :try_end_50} :catchall_64
if-eqz v1, :cond_55
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:goto_55
:cond_55
return-void
:cond_56
if-eqz v1, :cond_55
invoke-interface {v1}, Landroid/database/Cursor;->close()V
goto :goto_55
:catchall_5c
move-exception v0
move-object v1, v8
:goto_5e
if-eqz v1, :cond_63
invoke-interface {v1}, Landroid/database/Cursor;->close()V
:cond_63
throw v0
:catchall_64
move-exception v0
goto :goto_5e
:catch_66
move-exception v0
move-object v1, v8
goto :goto_49
.end method