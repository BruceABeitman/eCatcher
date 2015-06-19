.class public Lcom/tencent/open/a/d;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/tencent/open/a/d$a;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/open/a/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/tencent/open/a/d$a;

    const-string/jumbo v3, "sdk_cgi_report.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/open/a/d$a;-><init>(Lcom/tencent/open/a/d;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {p0}, Lcom/tencent/open/a/d;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/open/a/d;->d:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/open/a/a;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "cgi_report_debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReportDataModal backupOldItems count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/a/a;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "apn"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "frequency"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "commandid"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "resultcode"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "tmcost"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "reqsize"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "rspsize"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "deviceinfo"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "detail"

    invoke-virtual {v0}, Lcom/tencent/open/a/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_b0

    :try_start_90
    iget-object v0, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v0}, Lcom/tencent/open/a/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "olddata"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a6
    .catchall {:try_start_90 .. :try_end_a6} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a6} :catch_ab

    :goto_a6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_25

    :catch_ab
    move-exception v0

    :try_start_ac
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_a6

    :catchall_b0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b3
    :try_start_b3
    const-string/jumbo v0, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReportDataModal backupOldItems succ_count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_b3 .. :try_end_cd} :catchall_b0

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized a()Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v1, "cgi_report_debug"

    const-string/jumbo v2, "ReportDataModal deleteOldItems start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_31

    :try_start_b
    iget-object v1, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v1}, Lcom/tencent/open/a/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_2c

    :try_start_13
    const-string/jumbo v1, "delete from olddata;"
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_31

    :try_start_16
    iget-object v2, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_34

    :try_start_1b
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportDataModal deleteOldItems success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_31

    const/4 v0, 0x1

    :goto_2a
    monitor-exit p0

    return v0

    :catch_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_2a

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_34
    move-exception v1

    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_31

    goto :goto_2a
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJJLjava/lang/String;)Z
    .registers 19

    monitor-enter p0

    :try_start_1
    const-string/jumbo v2, "?"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "\\?"

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object p3, v2, v3

    :cond_14
    const-string/jumbo v2, "cgi_report_debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReportDataModal addNewItem apn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",frequency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",commandid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",costTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",reqSzie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rspSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "apn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "frequency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "commandid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "resultcode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "tmcost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "reqsize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "rspsize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sdcard="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    const/4 v2, 0x1

    :goto_159
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x26

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wifi="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/open/a/d;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/tencent/open/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "deviceinfo"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "detail"

    move-object/from16 v0, p11

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catchall {:try_start_1 .. :try_end_184} :catchall_1bd

    :try_start_184
    iget-object v2, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v2}, Lcom/tencent/open/a/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "newdata"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v2, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string/jumbo v2, "cgi_report_debug"

    const-string/jumbo v3, "ReportDataModal addNewItem success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_184 .. :try_end_1a3} :catchall_1bd
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1a3} :catch_1ae

    :try_start_1a3
    iget v2, p0, Lcom/tencent/open/a/d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/open/a/d;->d:I
    :try_end_1a9
    .catchall {:try_start_1a3 .. :try_end_1a9} :catchall_1bd

    const/4 v2, 0x1

    :goto_1aa
    monitor-exit p0

    return v2

    :cond_1ac
    const/4 v2, 0x0

    goto :goto_159

    :catch_1ae
    move-exception v2

    :try_start_1af
    const-string/jumbo v3, "cgi_report_debug"

    const-string/jumbo v4, "ReportDataModal addNewItem failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bb
    .catchall {:try_start_1af .. :try_end_1bb} :catchall_1bd

    const/4 v2, 0x0

    goto :goto_1aa

    :catchall_1bd
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized b()Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v1, "cgi_report_debug"

    const-string/jumbo v2, "ReportDataModal deleteNewItems start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_34

    :try_start_b
    iget-object v1, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v1}, Lcom/tencent/open/a/d$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_2f

    :try_start_13
    const-string/jumbo v1, "delete from newdata;"
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_34

    :try_start_16
    iget-object v2, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_37

    const/4 v0, 0x0

    :try_start_1c
    iput v0, p0, Lcom/tencent/open/a/d;->d:I

    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportDataModal deleteNewItems start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_34

    const/4 v0, 0x1

    :goto_2d
    monitor-exit p0

    return v0

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_2d

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_37
    move-exception v1

    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_34

    goto :goto_2d
.end method

.method public declared-synchronized c()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/open/a/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportDataModal getNewItems start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_9b

    :try_start_f
    iget-object v0, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v0}, Lcom/tencent/open/a/d$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_9e

    :try_start_17
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "select * from newdata"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_26
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a5

    const-string/jumbo v0, "apn"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "frequency"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "commandid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "resultcode"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "tmcost"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "reqsize"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "rspsize"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "detail"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "deviceinfo"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/tencent/open/a/a;

    invoke-direct/range {v0 .. v9}, Lcom/tencent/open/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9a
    .catchall {:try_start_17 .. :try_end_9a} :catchall_9b

    goto :goto_26

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9b

    move-object v0, v10

    :goto_a3
    monitor-exit p0

    return-object v0

    :cond_a5
    :try_start_a5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string/jumbo v0, "cgi_report_debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReportDataModal getNewItems success, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a5 .. :try_end_cb} :catchall_9b

    move-object v0, v10

    goto :goto_a3
.end method

.method public declared-synchronized d()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/open/a/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportDataModal getOldItems start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_9b

    :try_start_f
    iget-object v0, p0, Lcom/tencent/open/a/d;->c:Lcom/tencent/open/a/d$a;

    invoke-virtual {v0}, Lcom/tencent/open/a/d$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_9b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_9e

    :try_start_17
    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "select * from olddata"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_26
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a5

    const-string/jumbo v0, "apn"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "frequency"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "commandid"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "resultcode"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "tmcost"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "reqsize"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "rspsize"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "detail"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "deviceinfo"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/tencent/open/a/a;

    invoke-direct/range {v0 .. v9}, Lcom/tencent/open/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9a
    .catchall {:try_start_17 .. :try_end_9a} :catchall_9b

    goto :goto_26

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_9b

    move-object v0, v10

    :goto_a3
    monitor-exit p0

    return-object v0

    :cond_a5
    :try_start_a5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/tencent/open/a/d;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string/jumbo v0, "cgi_report_debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReportDataModal getOldItems success, count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a5 .. :try_end_cb} :catchall_9b

    move-object v0, v10

    goto :goto_a3
.end method

.method public e()I
    .registers 4

    const-string/jumbo v0, "cgi_report_debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReportDataModal getTotalCount count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/open/a/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/tencent/open/a/d;->d:I

    return v0
.end method
