.class public Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ShopDatabaseHelper.java"


# static fields
.field private static final CREATE_PRODUCT_INSTALLATION_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE product_installation(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    name TEXT,\n    type TEXT,\n    categoryKey TEXT,\n    installation INTEGER,\n    installTime TEXT,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"

.field public static final DB_NAME:Ljava/lang/String; = "shop.db"

.field public static final DB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Create database shop with tables: product_installation"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CREATE TABLE product_installation(\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    key TEXT,\n    name TEXT,\n    type TEXT,\n    categoryKey TEXT,\n    installation INTEGER,\n    installTime TEXT,\n    resInt1 INTEGER,\n    resInt2 INTEGER,\n    resText1 TEXT,\n    resText2 TEXT\n)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    sget-object v0, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->TAG:Ljava/lang/String;

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
