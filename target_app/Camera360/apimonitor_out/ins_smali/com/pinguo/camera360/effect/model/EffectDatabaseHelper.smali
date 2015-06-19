.class public Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EffectDatabaseHelper.java"
.field private static final CREATE_EFFECT_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE effect(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    locale TEXT,\n    name TEXT,\n    description TEXT,\n    version INTEGER,\n    requirementStr TEXT,\n    icon TEXT,\n    realRender INTEGER,\n    preCmdStr TEXT,\n    gpuCmdStr TEXT,\n    cpuCmd TEXT,\n    textureStr TEXT,\n    typeKey TEXT,\n    idxInType INTEGER,\n    packKey TEXT,\n    idxInPack INTEGER,\n    installation INTEGER,\n    installTime Text,\n    isNew INTEGER,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"
.field private static final CREATE_EFFECT_TYPE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE effect_type(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    locale TEXT,\n    name TEXT,\n    tag TEXT,\n    description TEXT,\n    icon TEXT,\n    opTime TEXT,\n    isNew INTEGER,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"
.field public static final DB_NAME:Ljava/lang/String; = "effect.db"
.field private static final TAG:Ljava/lang/String; = null
.field public static final VERSION:I = 0x1
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
return-void
.end method
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Create database effect with tables: effect_type, effect"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "CREATE TABLE effect_type(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    locale TEXT,\n    name TEXT,\n    tag TEXT,\n    description TEXT,\n    icon TEXT,\n    opTime TEXT,\n    isNew INTEGER,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string/jumbo v0, "CREATE TABLE effect(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    locale TEXT,\n    name TEXT,\n    description TEXT,\n    version INTEGER,\n    requirementStr TEXT,\n    icon TEXT,\n    realRender INTEGER,\n    preCmdStr TEXT,\n    gpuCmdStr TEXT,\n    cpuCmd TEXT,\n    textureStr TEXT,\n    typeKey TEXT,\n    idxInType INTEGER,\n    packKey TEXT,\n    idxInPack INTEGER,\n    installation INTEGER,\n    installTime Text,\n    isNew INTEGER,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"
invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.registers 7
sget-object v0, Lcom/pinguo/camera360/effect/model/EffectDatabaseHelper;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Upgrade database from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method