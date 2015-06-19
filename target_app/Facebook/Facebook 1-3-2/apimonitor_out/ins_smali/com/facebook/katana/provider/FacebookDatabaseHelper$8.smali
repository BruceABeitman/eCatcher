.class  Lcom/facebook/katana/provider/FacebookDatabaseHelper$8;
.super Ljava/lang/Object;
.source "FacebookDatabaseHelper.java"
.implements Lcom/facebook/katana/provider/FacebookDatabaseHelper$DatabaseUpdater;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public update(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 7
invoke-static {}, Lcom/facebook/katana/provider/LoggingProvider;->getTableNames()[Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
:goto_5
array-length v3, v1
if-lt v0, v3, :cond_11
invoke-static {}, Lcom/facebook/katana/provider/LoggingProvider;->getTableSQLs()[Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
:goto_d
array-length v3, v2
if-lt v0, v3, :cond_28
return-void
:cond_11
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "DROP TABLE IF EXISTS "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v4, v1, v0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_28
aget-object v3, v2, v0
invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_d
.end method