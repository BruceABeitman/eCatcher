.class  Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;
.super Lcom/pinguo/lib/os/AsyncTask;
.source "CameraPluginManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
.field private final synthetic val$key:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->this$0:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
iput-object p2, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->val$key:Ljava/lang/String;
invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 8
const/4 v0, 0x0
:try_start_1
iget-object v2, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->this$0:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
#getter for: Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->mDBHelper:Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;
invoke-static {v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->access$0(Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;)Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v2, "UPDATE camera_mode SET isNew=0 WHERE key = ?"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager$1;->val$key:Ljava/lang/String;
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_4d
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_2f
if-eqz v0, :cond_2d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:goto_2d
:cond_2d
const/4 v2, 0x0
return-object v2
:catch_2f
move-exception v1
:try_start_30
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->access$1()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "Clear new flag fail!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->access$1()Ljava/lang/String;
move-result-object v2
invoke-static {v2, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_41
.catchall {:try_start_30 .. :try_end_41} :catchall_4d
if-eqz v0, :cond_2d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v2
if-eqz v2, :cond_2d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_2d
:catchall_4d
move-exception v2
if-eqz v0, :cond_59
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v3
if-eqz v3, :cond_59
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_59
throw v2
.end method