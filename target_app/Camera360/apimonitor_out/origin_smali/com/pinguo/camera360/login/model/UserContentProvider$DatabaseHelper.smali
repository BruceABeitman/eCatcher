.class Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UserContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/login/model/UserContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "pgUser.db"

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createPicturesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v2, "DROP TABLE IF EXISTS pgUserTable"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v1, "CREATE TABLE pgUserTable(_id INTEGER PRIMARY KEY AUTOINCREMENT,userInfo text);"

    const-string/jumbo v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sql="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    throw v0
.end method

.method private upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 6

    packed-switch p2, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Don\'t know how to upgrade to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->createPicturesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :pswitch_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x64
        :pswitch_19
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    const/16 v1, 0x1f

    if-ne p2, v1, :cond_b

    const/16 p2, 0x64

    :cond_6
    :goto_6
    add-int/lit8 v0, p2, 0x1

    :goto_8
    if-le v0, p3, :cond_17

    return-void

    :cond_b
    const/16 v1, 0x64

    if-ge p2, v1, :cond_12

    const/16 p2, 0x63

    goto :goto_6

    :cond_12
    if-le p2, p3, :cond_6

    const/16 p2, 0x63

    goto :goto_6

    :cond_17
    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/login/model/UserContentProvider$DatabaseHelper;->upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method
