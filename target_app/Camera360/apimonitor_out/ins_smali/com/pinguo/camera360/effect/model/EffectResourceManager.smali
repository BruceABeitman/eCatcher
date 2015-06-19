.class public Lcom/pinguo/camera360/effect/model/EffectResourceManager;
.super Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;
.source "EffectResourceManager.java"
.field private static final MIN_INSTALL_TIME:J = 0x3e8L
.field private static final TAG:Ljava/lang/String;
.field protected mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
.field private mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/effect/model/EffectModel;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/effect/model/AbstractEffectResourceManager;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
return-void
.end method
.method private publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
.registers 20
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v3
sub-long v6, v3, p1
const/high16 v11, 0x447a
move/from16 v0, p4
int-to-float v12, v0
move/from16 v0, p5
int-to-float v13, v0
div-float/2addr v12, v13
mul-float/2addr v11, v12
float-to-long v8, v11
cmp-long v11, v6, v8
if-gez v11, :cond_32
long-to-float v11, v6
long-to-float v12, v8
div-float/2addr v11, v12
move/from16 v0, p4
int-to-float v12, v0
mul-float/2addr v11, v12
float-to-int v10, v11
move-object/from16 v0, p3
move/from16 v1, p5
invoke-virtual {p0, v0, v10, v1}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
const-wide/16 v11, 0x32
:try_start_26
invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
:goto_29
:try_end_29
.catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2d
invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
:goto_2c
return-void
:catch_2d
move-exception v5
invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_29
:cond_32
move-object/from16 v0, p3
move/from16 v1, p4
move/from16 v2, p5
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProcess(Lcom/pinguo/camera360/base/BaseModel$Callback;II)V
goto :goto_2c
.end method
.method private updateDBWhenUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
.registers 13
const/4 v7, 0x1
const/4 v6, 0x0
if-nez p1, :cond_e
sget-object v5, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Param error, update database fail!"
invoke-static {v5, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move v5, v6
:goto_d
return v5
:cond_e
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v5
iget-object v8, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {v5, v8}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;
move-result-object v5
iput-object v5, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->effects:Ljava/util/List;
iget-object v5, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->effects:Ljava/util/List;
if-eqz v5, :cond_26
iget-object v5, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->effects:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
if-nez v5, :cond_30
:cond_26
sget-object v5, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Param error, update database fail!"
invoke-static {v5, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
move v5, v6
goto :goto_d
:cond_30
sget-object v5, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Update database"
invoke-static {v5, v8}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->effects:Ljava/util/List;
invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v4, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_44
iget-object v5, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v5}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v5, "UPDATE effect SET installation = ? WHERE packKey = ?"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
const/4 v10, 0x0
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
aput-object v10, v8, v9
invoke-virtual {v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
const-string/jumbo v5, "SELECT COUNT(*) FROM effect WHERE typeKey = ? and installation = ?"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v4, v8, v9
const/4 v9, 0x1
const-string/jumbo v10, "1"
aput-object v10, v8, v9
invoke-virtual {v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_94
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v5, 0x0
invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
move-result v5
if-eqz v5, :cond_aa
move v3, v7
:goto_83
if-nez v3, :cond_91
const-string/jumbo v5, "DELETE FROM effect_type WHERE key = ?"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/String;
const/4 v9, 0x0
aput-object v4, v8, v9
invoke-virtual {v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_91
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
:cond_94
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_97
.catchall {:try_start_44 .. :try_end_97} :catchall_cd
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_97} :catch_ac
if-eqz v0, :cond_9c
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_9c
if-eqz v1, :cond_a7
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v5
if-eqz v5, :cond_a7
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_a7
move v5, v7
goto/16 :goto_d
:cond_aa
move v3, v6
goto :goto_83
:catch_ac
move-exception v2
:try_start_ad
sget-object v5, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v7, "Update database exception occurs"
invoke-static {v5, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v5, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_ba
.catchall {:try_start_ad .. :try_end_ba} :catchall_cd
if-eqz v0, :cond_bf
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_bf
if-eqz v1, :cond_ca
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v5
if-eqz v5, :cond_ca
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_ca
move v5, v6
goto/16 :goto_d
:catchall_cd
move-exception v5
if-eqz v0, :cond_d3
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_d3
if-eqz v1, :cond_de
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v6
if-eqz v6, :cond_de
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_de
throw v5
.end method
.method public clearNewFlagInDB(Ljava/lang/String;Ljava/lang/String;)Z
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
sget-object v4, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "Clear new flag in table:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " with key:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:try_start_23
iget-object v4, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v4}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "UPDATE "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " SET isNew = 0 WHERE key = ?"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v6, 0x0
aput-object p2, v5, v6
invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_52
.catchall {:try_start_23 .. :try_end_52} :catchall_79
.catch Ljava/lang/Exception; {:try_start_23 .. :try_end_52} :catch_5e
if-eqz v0, :cond_5d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v3
if-eqz v3, :cond_5d
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:goto_5d
:cond_5d
return v2
:catch_5e
move-exception v1
:try_start_5f
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v4, "Clear new flag fail!"
invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v2, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_6c
.catchall {:try_start_5f .. :try_end_6c} :catchall_79
if-eqz v0, :cond_77
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v2
if-eqz v2, :cond_77
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_77
move v2, v3
goto :goto_5d
:catchall_79
move-exception v2
if-eqz v0, :cond_85
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v3
if-eqz v3, :cond_85
invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_85
throw v2
.end method
.method public destroy()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->close()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
:cond_c
return-void
.end method
.method public doUpdateEffectTypeList(Ljava/util/List;Ljava/util/List;)Z
.registers 20
const/4 v1, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
:try_start_5
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v11}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
if-eqz p1, :cond_22
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v11
add-int/lit8 v3, v11, -0x1
invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_1c
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_55
:cond_22
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_28
.catchall {:try_start_5 .. :try_end_28} :catchall_9f
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_84
if-eqz v1, :cond_33
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v11
if-eqz v11, :cond_33
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_33
if-eqz p2, :cond_4b
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:cond_3e
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-nez v12, :cond_ac
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v11
invoke-virtual {v11, v9}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->uninstallBatch(Ljava/util/List;)V
:cond_4b
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
const/4 v12, 0x1
invoke-virtual {v11, v12}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V
const/4 v11, 0x1
:goto_54
return v11
:try_start_55
:cond_55
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v12, v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
sget-object v13, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v13, v13, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-nez v12, :cond_81
const-string/jumbo v12, "UPDATE effect_type SET opTime = ? WHERE key = ?"
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
mul-int/lit8 v15, v3, 0x64
int-to-long v15, v15
sub-long v15, v5, v15
invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x1
iget-object v15, v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
aput-object v15, v13, v14
invoke-virtual {v1, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_81
.catchall {:try_start_55 .. :try_end_81} :catchall_9f
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_81} :catch_84
:cond_81
add-int/lit8 v3, v3, -0x1
goto :goto_1c
:catch_84
move-exception v2
:try_start_85
sget-object v11, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v12, "Update database exception occurs"
invoke-static {v11, v12}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v11, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v11, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_92
.catchall {:try_start_85 .. :try_end_92} :catchall_9f
if-eqz v1, :cond_9d
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v11
if-eqz v11, :cond_9d
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_9d
const/4 v11, 0x0
goto :goto_54
:catchall_9f
move-exception v11
if-eqz v1, :cond_ab
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v12
if-eqz v12, :cond_ab
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_ab
throw v11
:cond_ac
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v12
invoke-virtual {v12, v10}, Lcom/pinguo/camera360/effect/model/EffectModel;->getPackKeyListInEffectType(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Ljava/util/List;
move-result-object v7
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v12
:goto_be
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_3e
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
move-result-object v13
invoke-virtual {v13, v4}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
move-result-object v8
if-nez v8, :cond_db
new-instance v8, Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {v8}, Lcom/pinguo/camera360/shop/model/entity/Product;-><init>()V
iput-object v4, v8, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
:cond_db
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_be
.end method
.method public getEffectInstalledDir()Ljava/io/File;
.registers 4
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "installed"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_30
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->initEffectInstalledDir()V
:cond_30
return-object v0
.end method
.method public getFrontImageFile()Ljava/io/File;
.registers 5
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v1
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "shader"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "frontImage.jpg"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
return-object v0
.end method
.method public init()V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "effect"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->initEffectInstalledDir()V
new-instance v0, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
iget-object v1, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mContext:Landroid/content/Context;
const-string/jumbo v2, "effect.db"
const/4 v3, 0x0
const/4 v4, 0x1
invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
iput-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
return-void
.end method
.method protected initEffectInstalledDir()V
.registers 4
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->EFFECT_SUB_DIRS:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_7
return-void
:cond_7
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectDirPath:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "installed"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->EFFECT_SUB_DIRS:[Ljava/lang/String;
aget-object v2, v2, v0
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->checkFolder(Ljava/lang/String;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
.registers 17
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
const/16 v9, 0x64
if-nez p1, :cond_12
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Install failed, param effectPackage is null. exit install!"
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_11
return v0
:cond_12
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->isSDCardAvalable()Z
move-result v8
const/16 v4, 0xa
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
iget-object v12, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->downloadPath:Ljava/lang/String;
invoke-virtual {p0, v12}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getZipFileName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
if-eqz v13, :cond_2e
invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_45
:cond_2e
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Install fail! Bad download url: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_11
:cond_45
invoke-virtual {p0, v12, v13, v8}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->download(Ljava/lang/String;Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_69
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Download package fail: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", exit install!"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_11
:cond_69
const/16 v4, 0x14
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
:try_start_73
invoke-virtual {p0, v13, v8}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->unzip(Ljava/lang/String;Z)Ljava/io/File;
:try_end_76
.catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_a4
move-result-object v11
if-eqz v11, :cond_85
invoke-virtual {v11}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_85
invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_b5
:cond_85
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Unzip fail: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", exit install!"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_11
:catch_a4
move-exception v6
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "unzip fail, exit install!"
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto/16 :goto_11
:cond_b5
const/16 v4, 0x1e
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
new-instance v10, Ljava/io/File;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v11}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "index"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "pack.json"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v7, 0x0
:try_start_f0
iget-object v0, p1, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;->guid:Ljava/lang/String;
invoke-virtual {p0, v0, v10}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->parseMetaJson(Ljava/lang/String;Ljava/io/File;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
:try_end_f5
.catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f5} :catch_111
move-result-object v7
const/16 v4, 0x28
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-virtual {p0, v11}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->copyResource(Ljava/io/File;)Z
move-result v0
if-nez v0, :cond_122
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Copy effect resource fail, exit install!"
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_11
:catch_111
move-exception v6
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Parse meta data fail, exit install!"
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto/16 :goto_11
:cond_122
const/16 v4, 0x3c
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->updateDBWhenInstall(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Z
move-result v0
if-nez v0, :cond_13d
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Update database fail, exit install!"
invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto/16 :goto_11
:cond_13d
const/16 v4, 0x55
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
invoke-static {v11}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
const/16 v4, 0x5f
const/16 v5, 0x64
move-object v0, p0
move-object/from16 v3, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->publishProgressGradually(JLcom/pinguo/camera360/base/BaseModel$Callback;II)V
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
const/4 v3, 0x1
invoke-virtual {v0, v3}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V
const/4 v0, 0x1
goto/16 :goto_11
.end method
.method public loadEffectDict(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/EffectDict;
.registers 15
const/4 v5, 0x1
const/4 v9, 0x0
sget-object v10, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Load effect dict with locale: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/pinguo/lib/util/LocaleSupport;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v7
new-instance v10, Ljava/io/File;
new-instance v11, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->getEffectInstalledDir()Ljava/io/File;
move-result-object v12
invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "icon"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
new-instance v2, Lcom/pinguo/camera360/effect/model/EffectDict;
invoke-direct {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;-><init>()V
sget-object v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "file://"
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "eft_none.png"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
iput-object v11, v10, Lcom/pinguo/camera360/effect/model/entity/EffectType;->icon:Ljava/lang/String;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v10
sget-object v11, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v11, v11, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
sget-object v12, Lcom/pinguo/camera360/effect/model/entity/EffectType;->EFFECT_TYPE_NONE:Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v10
sget-object v11, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
iget-object v11, v11, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
sget-object v12, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const/4 v1, 0x0
const/4 v0, 0x0
:try_start_92
iget-object v10, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v10}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
const-string/jumbo v10, "SELECT COUNT(*) FROM effect_type"
const/4 v11, 0x0
invoke-virtual {v1, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_cc
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v10, 0x0
invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I
move-result v10
if-nez v10, :cond_ca
:goto_ac
invoke-interface {v0}, Landroid/database/Cursor;->close()V
if-eqz v5, :cond_cc
sget-object v9, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v10, "Effect table is empty, exit load"
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_b9
.catchall {:try_start_92 .. :try_end_b9} :catchall_27e
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b9} :catch_195
if-eqz v0, :cond_be
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_be
if-eqz v1, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v9
if-eqz v9, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:goto_c9
:cond_c9
return-object v2
:cond_ca
move v5, v9
goto :goto_ac
:cond_cc
:try_start_cc
const-string/jumbo v9, "SELECT key,locale,name,tag,description,icon,opTime,isNew,resText1 FROM effect_type WHERE locale = ?"
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/String;
const/4 v11, 0x0
aput-object v7, v10, v11
invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_e4
:goto_db
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v9
if-nez v9, :cond_120
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_e4
const-string/jumbo v9, "SELECT key,locale,name,description,version,requirementStr,icon,realRender,preCmdStr,gpuCmdStr,cpuCmd,textureStr,typeKey,idxInType,packKey,idxInPack,installation,installTime,isNew FROM effect WHERE installation = ? and locale = ?"
const/4 v10, 0x2
new-array v10, v10, [Ljava/lang/String;
const/4 v11, 0x0
const-string/jumbo v12, "1"
aput-object v12, v10, v11
const/4 v11, 0x1
aput-object v7, v10, v11
invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
:goto_f7
invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
move-result v9
if-nez v9, :cond_1ad
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v9
invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v9
invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_109
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
:try_end_10c
.catchall {:try_start_cc .. :try_end_10c} :catchall_27e
.catch Ljava/lang/Exception; {:try_start_cc .. :try_end_10c} :catch_195
move-result v10
if-nez v10, :cond_290
if-eqz v0, :cond_114
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_114
if-eqz v1, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v9
if-eqz v9, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto :goto_c9
:cond_120
:try_start_120
new-instance v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-direct {v8}, Lcom/pinguo/camera360/effect/model/entity/EffectType;-><init>()V
const/4 v9, 0x0
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
const/4 v9, 0x1
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
const/4 v9, 0x2
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
const/4 v9, 0x3
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
const/4 v9, 0x4
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "file://"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const/4 v10, 0x5
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->icon:Ljava/lang/String;
const/4 v9, 0x6
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v9
iput-wide v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->optime:J
const/4 v9, 0x7
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->isNew:I
const/16 v9, 0x8
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
iput-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v9
iget-object v10, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_193
.catchall {:try_start_120 .. :try_end_193} :catchall_27e
.catch Ljava/lang/Exception; {:try_start_120 .. :try_end_193} :catch_195
goto/16 :goto_db
:catch_195
move-exception v3
:try_start_196
sget-object v9, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v9, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_19b
.catchall {:try_start_196 .. :try_end_19b} :catchall_27e
if-eqz v0, :cond_1a0
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_1a0
if-eqz v1, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v9
if-eqz v9, :cond_c9
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
goto/16 :goto_c9
:try_start_1ad
:cond_1ad
new-instance v4, Lcom/pinguo/camera360/effect/model/entity/Effect;
invoke-direct {v4}, Lcom/pinguo/camera360/effect/model/entity/Effect;-><init>()V
const/4 v9, 0x0
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
const/4 v9, 0x1
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
const/4 v9, 0x2
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
const/4 v9, 0x3
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
const/4 v9, 0x4
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
const/4 v9, 0x5
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "file://"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const/4 v10, 0x6
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
const/4 v9, 0x7
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
const/16 v9, 0x8
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
const/16 v9, 0x9
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
const/16 v9, 0xa
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
const/16 v9, 0xb
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
const/16 v9, 0xc
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
const/16 v9, 0xd
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
const/16 v9, 0xe
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
iput-object v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
const/16 v9, 0xf
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
const/16 v9, 0x10
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->installation:I
const/16 v9, 0x11
invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v9
iput-wide v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->installTime:J
const/16 v9, 0x12
invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I
move-result v9
iput v9, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->isNew:I
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectTypeMap()Ljava/util/Map;
move-result-object v9
iget-object v10, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;
if-eqz v8, :cond_273
iget-object v9, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_273
invoke-virtual {v2}, Lcom/pinguo/camera360/effect/model/EffectDict;->getEffectMap()Ljava/util/Map;
move-result-object v9
iget-object v10, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_27c
.catchall {:try_start_1ad .. :try_end_27c} :catchall_27e
.catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_27c} :catch_195
goto/16 :goto_f7
:catchall_27e
move-exception v9
if-eqz v0, :cond_284
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_284
if-eqz v1, :cond_28f
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v10
if-eqz v10, :cond_28f
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_28f
throw v9
:try_start_290
:cond_290
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v10, v8, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:try_end_29b
.catchall {:try_start_290 .. :try_end_29b} :catchall_27e
.catch Ljava/lang/Exception; {:try_start_290 .. :try_end_29b} :catch_195
goto/16 :goto_109
.end method
.method public uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p1, :cond_d
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Uninstall failed, param effectPackage is null. exit uninstall!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_c
return v0
:cond_d
invoke-direct {p0, p1}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->updateDBWhenUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
move-result v2
if-nez v2, :cond_1c
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Update database fail, exit uninstall!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_1c
iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V
move v0, v1
goto :goto_c
.end method
.method public uninstallBatch(Ljava/util/List;)Z
.registers 6
const/4 v1, 0x1
if-eqz p1, :cond_9
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v2
if-nez v2, :cond_13
:cond_9
sget-object v1, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Uninstall failed, param effectPackage list is null or empty. exit uninstall!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:goto_12
return v1
:cond_13
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_23
iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mEffectModel:Lcom/pinguo/camera360/effect/model/EffectModel;
invoke-virtual {v2, v1}, Lcom/pinguo/camera360/effect/model/EffectModel;->invalidEffectDict(Z)V
goto :goto_12
:cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->updateDBWhenUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Z
goto :goto_17
.end method
.method protected updateDBWhenInstall(Lcom/pinguo/camera360/effect/model/entity/EffectType;)Z
.registers 24
if-eqz p1, :cond_12
move-object/from16 v0, p1
iget-object v14, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
if-eqz v14, :cond_12
move-object/from16 v0, p1
iget-object v14, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v14}, Ljava/util/List;->size()I
move-result v14
if-nez v14, :cond_1c
:cond_12
sget-object v14, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v15, "Param error, update database fail!"
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v14, 0x0
:goto_1b
return v14
:cond_1c
sget-object v14, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v15, "Update database"
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
const/4 v2, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
:try_start_2a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->mDBHelper:Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v14}, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v3
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
const-string/jumbo v14, "SELECT COUNT(*) FROM effect_type WHERE key = ?"
const/4 v15, 0x1
new-array v15, v15, [Ljava/lang/String;
const/16 v16, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
move-object/from16 v17, v0
aput-object v17, v15, v16
invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_65
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v14, 0x0
invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v14
if-eqz v14, :cond_b5
const/4 v12, 0x1
:goto_56
if-nez v12, :cond_62
sget-object v15, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;
array-length v0, v15
move/from16 v16, v0
const/4 v14, 0x0
:goto_5e
move/from16 v0, v16
if-lt v14, v0, :cond_b7
:cond_62
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_65
const-string/jumbo v14, "SELECT isNew FROM effect_type WHERE key = ?"
const/4 v15, 0x1
new-array v15, v15, [Ljava/lang/String;
const/16 v16, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
move-object/from16 v17, v0
aput-object v17, v15, v16
invoke-virtual {v3, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
const/4 v13, 0x0
if-eqz v2, :cond_8e
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v14
if-eqz v14, :cond_8b
const/4 v14, 0x0
invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v14
const/4 v15, 0x1
if-ne v14, v15, :cond_8b
const/4 v13, 0x1
:cond_8b
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_8e
move-object/from16 v0, p1
iget-object v14, v0, Lcom/pinguo/camera360/effect/model/entity/EffectType;->effects:Ljava/util/List;
invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:cond_96
:goto_96
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-nez v14, :cond_13a
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
:try_end_a2
.catchall {:try_start_2a .. :try_end_a2} :catchall_2bb
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_a2} :catch_1a2
if-eqz v2, :cond_a7
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_a7
if-eqz v3, :cond_b2
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v14
if-eqz v14, :cond_b2
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_b2
const/4 v14, 0x1
goto/16 :goto_1b
:cond_b5
const/4 v12, 0x0
goto :goto_56
:try_start_b7
:cond_b7
aget-object v11, v15, v14
move-object/from16 v0, p1
invoke-virtual {v0, v11}, Lcom/pinguo/camera360/effect/model/entity/EffectType;->getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/EffectType;
move-result-object v7
const-string/jumbo v17, "INSERT INTO effect_type values(null,?,?,?,?,?,?,?,?,?,?,?,?)"
const/16 v18, 0xc
move/from16 v0, v18
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v18, v0
const/16 v19, 0x0
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->key:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x1
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->locale:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x2
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x3
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->tag:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x4
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->description:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x5
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->icon:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0x6
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v20
aput-object v20, v18, v19
const/16 v19, 0x7
const/16 v20, 0x1
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
aput-object v20, v18, v19
const/16 v19, 0x8
const/16 v20, 0x0
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
aput-object v20, v18, v19
const/16 v19, 0x9
const/16 v20, 0x0
invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v20
aput-object v20, v18, v19
const/16 v19, 0xa
iget-object v0, v7, Lcom/pinguo/camera360/effect/model/entity/EffectType;->resText1:Ljava/lang/String;
move-object/from16 v20, v0
aput-object v20, v18, v19
const/16 v19, 0xb
const-string/jumbo v20, ""
aput-object v20, v18, v19
move-object/from16 v0, v17
move-object/from16 v1, v18
invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
add-int/lit8 v14, v14, 0x1
goto/16 :goto_5e
:cond_13a
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/effect/model/entity/Effect;
const-string/jumbo v14, "SELECT COUNT(*) FROM effect WHERE key = ?"
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/String;
move-object/from16 v16, v0
const/16 v17, 0x0
iget-object v0, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
move-object/from16 v18, v0
aput-object v18, v16, v17
move-object/from16 v0, v16
invoke-virtual {v3, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
if-eqz v2, :cond_96
invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
const/4 v14, 0x0
invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v14
if-eqz v14, :cond_1c3
const/4 v6, 0x1
:goto_166
if-eqz v13, :cond_1c5
const/4 v10, 0x0
:goto_169
if-eqz v6, :cond_1c7
const-string/jumbo v14, "UPDATE effect SET installation=?, installTime=?, isNew=? WHERE key = ?"
const/16 v16, 0x4
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v16, v0
const/16 v17, 0x0
const/16 v18, 0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v16, v17
const/16 v17, 0x1
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v18
aput-object v18, v16, v17
const/16 v17, 0x2
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v16, v17
const/16 v17, 0x3
iget-object v0, v5, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
move-object/from16 v18, v0
aput-object v18, v16, v17
move-object/from16 v0, v16
invoke-virtual {v3, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_19d
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:try_end_1a0
.catchall {:try_start_b7 .. :try_end_1a0} :catchall_2bb
.catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_1a0} :catch_1a2
goto/16 :goto_96
:catch_1a2
move-exception v4
:try_start_1a3
sget-object v14, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
const-string/jumbo v15, "Update database exception occurs"
invoke-static {v14, v15}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v14, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->TAG:Ljava/lang/String;
invoke-static {v14, v4}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_1b0
.catchall {:try_start_1a3 .. :try_end_1b0} :catchall_2bb
if-eqz v2, :cond_1b5
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_1b5
if-eqz v3, :cond_1c0
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v14
if-eqz v14, :cond_1c0
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_1c0
const/4 v14, 0x0
goto/16 :goto_1b
:cond_1c3
const/4 v6, 0x0
goto :goto_166
:cond_1c5
const/4 v10, 0x1
goto :goto_169
:try_start_1c7
:cond_1c7
sget-object v16, Lcom/pinguo/lib/util/LocaleSupport;->sSupportLocales:[Ljava/util/Locale;
move-object/from16 v0, v16
array-length v0, v0
move/from16 v17, v0
const/4 v14, 0x0
:goto_1cf
move/from16 v0, v17
if-ge v14, v0, :cond_19d
aget-object v11, v16, v14
invoke-virtual {v5, v11}, Lcom/pinguo/camera360/effect/model/entity/Effect;->getLocaleObject(Ljava/util/Locale;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v4
const-string/jumbo v18, "INSERT INTO effect values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
const/16 v19, 0x17
move/from16 v0, v19
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v19, v0
const/16 v20, 0x0
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x1
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->locale:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x2
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->name:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x3
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->description:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x4
iget v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->version:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x5
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->requirementStr:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x6
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->icon:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x7
iget v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->realRender:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x8
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->preCmdStr:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0x9
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->gpuCmdStr:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0xa
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->cpuCmd:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0xb
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->textureStr:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0xc
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0xd
iget v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInType:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0xe
iget-object v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->packKey:Ljava/lang/String;
move-object/from16 v21, v0
aput-object v21, v19, v20
const/16 v20, 0xf
iget v0, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->idxInPack:I
move/from16 v21, v0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x10
const/16 v21, 0x1
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x11
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x12
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x13
const/16 v21, 0x0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x14
const/16 v21, 0x0
invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v21
aput-object v21, v19, v20
const/16 v20, 0x15
const-string/jumbo v21, ""
aput-object v21, v19, v20
const/16 v20, 0x16
const-string/jumbo v21, ""
aput-object v21, v19, v20
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_2b7
.catchall {:try_start_1c7 .. :try_end_2b7} :catchall_2bb
.catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_2b7} :catch_1a2
add-int/lit8 v14, v14, 0x1
goto/16 :goto_1cf
:catchall_2bb
move-exception v14
if-eqz v2, :cond_2c1
invoke-interface {v2}, Landroid/database/Cursor;->close()V
:cond_2c1
if-eqz v3, :cond_2cc
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z
move-result v15
if-eqz v15, :cond_2cc
invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
:cond_2cc
throw v14
.end method