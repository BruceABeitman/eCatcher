.class  Lcom/facebook/katana/provider/FacebookDatabaseHelper$2;
.super Ljava/lang/Object;
.source "FacebookDatabaseHelper.java"
.implements Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public update(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "DROP TABLE IF EXISTS "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/facebook/katana/provider/NotificationsProvider;->getTableName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
invoke-static {}, Lcom/facebook/katana/provider/NotificationsProvider;->getTableSQL()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
return-void
.end method