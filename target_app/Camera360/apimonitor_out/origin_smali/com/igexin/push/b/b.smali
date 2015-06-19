.class public Lcom/igexin/push/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "pushsdk.db"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v1, " "

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_43

    move v1, v0

    :goto_e
    if-ge v1, p3, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, p3, -0x1

    if-ge v1, v3, :cond_40

    const-string/jumbo v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_43
    :goto_43
    if-ge v0, p3, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_75

    const-string/jumbo v1, " and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_78
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/igexin/push/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p2, :cond_27

    :try_start_f
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_75

    move-result-object v0

    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_84

    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_26
    return-object v0

    :cond_27
    :try_start_27
    array-length v0, p2

    if-ne v0, v1, :cond_63

    array-length v0, p3

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v4, p3

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1c

    :cond_51
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    array-length v1, p3

    invoke-direct {p0, p2, p3, v1}, Lcom/igexin/push/b/b;->a([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1c

    :cond_63
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    array-length v1, p2

    invoke-direct {p0, p2, p3, v1}, Lcom/igexin/push/b/b;->a([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_73
    .catchall {:try_start_27 .. :try_end_73} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_73} :catch_75

    move-result-object v0

    goto :goto_1c

    :catch_75
    move-exception v0

    move-object v0, v8

    :goto_77
    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_26

    :catchall_7d
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_84
    move-exception v1

    goto :goto_77
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 5

    invoke-virtual {p0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_b
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_1c

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1b

    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-nez p3, :cond_20

    :try_start_e
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_15
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_52

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1f
    return-void

    :cond_20
    :try_start_20
    array-length v0, p3

    if-ne v0, v1, :cond_6c

    array-length v0, p4

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_51} :catch_52

    goto :goto_15

    :catch_52
    move-exception v0

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1f

    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    array-length v1, p4

    invoke-direct {p0, p3, p4, v1}, Lcom/igexin/push/b/b;->a([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_52

    goto :goto_15

    :catchall_65
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    array-length v1, p3

    invoke-direct {p0, p3, p4, v1}, Lcom/igexin/push/b/b;->a([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_77} :catch_52

    goto :goto_15
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/igexin/push/b/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string/jumbo v0, "create table if not exists config (id integer primary key,value text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table if not exists runtime (id integer primary key,value text)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table if not exists message (id integer primary key autoincrement,messageid text,taskid text,appid text,info text,msgextra blob,key text,status integer,createtime integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table if not exists ral (id integer primary key,data text,type integer,time integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table if not exists ca (pkgname text primary key,signature text,permissions text, accesstoken blob, expire integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "create table if not exists bi(id integer primary key autoincrement, start_service_count integer, login_count integer, loginerror_nonetwork_count integer, loginerror_timeout_count integer, loginerror_connecterror_count integer, loginerror_other_count integer, online_time long, network_time long, running_time long, create_time text, type integer)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2e

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2d
    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2d

    :catchall_33
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string/jumbo v0, "drop table if exists config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table if exists runtime"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table if exists message"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table if exists ral"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table if exists ca"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo v0, "drop table if exists bi"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/igexin/push/b/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
