.class public Lcom/igexin/push/core/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static a:Lcom/igexin/push/core/c/c;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    return-void
.end method

.method private a(I)I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    if-ne v0, p1, :cond_1f

    add-int/lit8 v0, v1, 0x1

    :goto_1c
    move v1, v0

    goto :goto_8

    :cond_1e
    return v1

    :cond_1f
    move v0, v1

    goto :goto_1c
.end method

.method public static a()Lcom/igexin/push/core/c/c;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/c/c;->a:Lcom/igexin/push/core/c/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/c/c;

    invoke-direct {v0}, Lcom/igexin/push/core/c/c;-><init>()V

    sput-object v0, Lcom/igexin/push/core/c/c;->a:Lcom/igexin/push/core/c/c;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/c/c;->a:Lcom/igexin/push/core/c/c;

    return-object v0
.end method

.method private static b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "data"

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/a/b/a;->b([B)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    const-string/jumbo v1, "time"

    invoke-virtual {p0}, Lcom/igexin/push/core/bean/i;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private b(J)Lcom/igexin/push/core/bean/i;
    .registers 7

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/bean/i;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/i;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/igexin/push/core/bean/i;)V
    .registers 6

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2f

    if-lt v0, v1, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-virtual {p1}, Lcom/igexin/push/core/bean/i;->c()B

    move-result v0

    packed-switch v0, :pswitch_data_58

    :cond_16
    :pswitch_16
    iget-object v0, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/c/d;

    invoke-static {p1}, Lcom/igexin/push/core/c/c;->b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/igexin/push/core/c/d;-><init>(Lcom/igexin/push/core/c/c;Landroid/content/ContentValues;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    goto :goto_e

    :pswitch_2d
    invoke-direct {p0, v3}, Lcom/igexin/push/core/c/c;->a(I)I

    move-result v0

    if-lt v0, v3, :cond_16

    goto :goto_e

    :pswitch_34
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/igexin/push/core/c/c;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_16

    goto :goto_e

    :pswitch_3c
    invoke-direct {p0, v2}, Lcom/igexin/push/core/c/c;->a(I)I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_16

    goto :goto_e

    :pswitch_45
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/igexin/push/core/c/c;->a(I)I

    move-result v0

    if-lt v0, v2, :cond_16

    goto :goto_e

    :pswitch_4d
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/igexin/push/core/c/c;->a(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_16

    goto :goto_e

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_34
        :pswitch_3c
        :pswitch_16
        :pswitch_45
        :pswitch_4d
    .end packed-switch
.end method

.method public a(J)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/core/c/c;->b(J)Lcom/igexin/push/core/bean/i;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v3, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v3

    new-instance v4, Lcom/igexin/push/core/c/e;

    invoke-static {v2}, Lcom/igexin/push/core/c/c;->b(Lcom/igexin/push/core/bean/i;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/igexin/push/core/c/e;-><init>(Lcom/igexin/push/core/c/c;Landroid/content/ContentValues;J)V

    invoke-virtual {v3, v4, v0, v1}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "select id,data,type,time from ral"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_63

    move-result-object v7

    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v7, :cond_52

    :cond_f
    :goto_f
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/b/a;->c([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v4, v0

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iget-object v10, p0, Lcom/igexin/push/core/c/c;->b:Ljava/util/List;

    new-instance v0, Lcom/igexin/push/core/bean/i;

    invoke-direct/range {v0 .. v6}, Lcom/igexin/push/core/bean/i;-><init>(JLjava/lang/String;BJ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-long v3, v8, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-lez v0, :cond_f

    invoke-virtual {p0, v1, v2}, Lcom/igexin/push/core/c/c;->a(J)Z
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4a

    goto :goto_f

    :catch_4a
    move-exception v0

    move-object v0, v7

    :goto_4c
    if-eqz v0, :cond_51

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_51
    :goto_51
    return-void

    :cond_52
    if-eqz v7, :cond_51

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :catchall_58
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    :goto_5b
    if-eqz v7, :cond_60

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_60
    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5b

    :catch_63
    move-exception v1

    goto :goto_4c
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method
