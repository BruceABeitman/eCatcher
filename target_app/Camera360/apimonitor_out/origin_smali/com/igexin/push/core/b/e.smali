.class public Lcom/igexin/push/core/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/c/a;


# static fields
.field private static a:Lcom/igexin/push/core/b/e;


# instance fields
.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/b/e;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/igexin/push/core/b/h;)Landroid/content/ContentValues;
    .registers 6

    if-eqz p1, :cond_74

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgname"

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "signature"

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "permissions"

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igexin/push/core/b/e;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sget-object v2, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/igexin/a/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "accesstoken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5b
    const-string/jumbo v1, "expire"

    invoke-virtual {p1}, Lcom/igexin/push/core/b/h;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_69
    return-object v0

    :cond_6a
    const-string/jumbo v1, "accesstoken"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_74
    const/4 v0, 0x0

    goto :goto_69
.end method

.method public static a()Lcom/igexin/push/core/b/e;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/b/e;->a:Lcom/igexin/push/core/b/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/b/e;

    invoke-direct {v0}, Lcom/igexin/push/core/b/e;-><init>()V

    sput-object v0, Lcom/igexin/push/core/b/e;->a:Lcom/igexin/push/core/b/e;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/b/e;->a:Lcom/igexin/push/core/b/e;

    return-object v0
.end method

.method private a(Landroid/content/ContentValues;)V
    .registers 6

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/b/f;

    invoke-direct {v1, p0, p1}, Lcom/igexin/push/core/b/f;-><init>(Lcom/igexin/push/core/b/e;Landroid/content/ContentValues;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    :cond_10
    return-void
.end method

.method private b()V
    .registers 5

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/core/b/g;

    invoke-direct {v1, p0}, Lcom/igexin/push/core/b/g;-><init>(Lcom/igexin/push/core/b/e;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/a/b/d;->a(Lcom/igexin/a/a/d/d;ZZ)Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c()Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/igexin/push/core/b/h;

    invoke-direct {v1}, Lcom/igexin/push/core/b/h;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/igexin/push/core/b/i;->a:Lcom/igexin/push/core/b/i;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/push/core/b/i;->b:Lcom/igexin/push/core/b/i;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/push/core/b/i;->c:Lcom/igexin/push/core/b/i;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/igexin/push/core/b/i;->d:Lcom/igexin/push/core/b/i;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "com.igexin.pushmanager"

    invoke-virtual {v1, v3}, Lcom/igexin/push/core/b/h;->a(Ljava/lang/String;)V

    const-string/jumbo v3, "308202133082017ca00302010202045080e7f1300d06092a864886f70d0101050500304e310b300906035504061302636e310b300906035504081302636e310b300906035504071302636e310b3009060355040a1302636e310b3009060355040b1302636e310b300906035504031302636e301e170d3132313031393035343130355a170d3232313031373035343130355a304e310b300906035504061302636e310b300906035504081302636e310b300906035504071302636e310b3009060355040a1302636e310b3009060355040b1302636e310b300906035504031302636e30819f300d06092a864886f70d010101050003818d0030818902818100805aee69ca3415ca32130b233fc07ad6eb666dcfe119efad8e5d0e4d51e175c6468a3869a5c131c342e5261a93f3bc30303ae0f23a3824d28df692092f8cf72ba7f2251f005ebfb1c1b210dc377aacf2168809f07e8d6756e6214c0288314388a2ead4a4453d358aa8cb1e2f02d1604c63cd0d075a558c718c43e3922f5198b50203010001300d06092a864886f70d0101050500038181004a4dc5634909f61710cf35229a63d7b8d2bfd89891d6ada1704b6c614d694cce35383cfb1fd8fed192dea23552413e74a9e1ff6e280246a6e30178a9b221b2dfee032cfc6acf660d62b514df92bbcf23e992a0543003705c679ba2fbae5acad0d89c6e44ee1cb05085d300ae60b7318472579007bde0e09ad75675a26a2f1c85"

    invoke-virtual {v1, v3}, Lcom/igexin/push/core/b/h;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/b/h;->a(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/igexin/push/core/b/h;
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/b/h;

    return-object v0
.end method

.method public a(Ljava/util/List;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/b/i;->a:Lcom/igexin/push/core/b/i;

    if-ne v2, v3, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_48
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/b/i;->b:Lcom/igexin/push/core/b/i;

    if-ne v2, v3, :cond_65

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/b/i;->c:Lcom/igexin/push/core/b/i;

    if-ne v2, v3, :cond_82

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/core/b/i;->d:Lcom/igexin/push/core/b/i;

    if-ne v2, v3, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_9f
    return-object v0
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 6

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/b/h;

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_26
    return-object p2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/igexin/push/core/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/igexin/push/core/b/e;->a(Lcom/igexin/push/core/b/h;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/igexin/push/core/b/e;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Lcom/igexin/push/core/b/e;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/igexin/push/core/b/e;->b()V

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/b/h;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/push/core/b/h;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/igexin/push/core/b/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/igexin/push/core/b/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/igexin/push/core/b/h;->c()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/igexin/push/core/b/h;->a(J)V

    :cond_50
    invoke-virtual {p0, v4, v0}, Lcom/igexin/push/core/b/e;->a(Ljava/lang/String;Lcom/igexin/push/core/b/h;)V

    goto :goto_20

    :cond_54
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/b/e;->a(Ljava/lang/String;)Lcom/igexin/push/core/b/h;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/igexin/push/core/b/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/b/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "select * from ca order by pkgname"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_bb

    move-result-object v1

    if-eqz v1, :cond_a9

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8c

    :goto_11
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a9

    new-instance v3, Lcom/igexin/push/core/b/h;

    invoke-direct {v3}, Lcom/igexin/push/core/b/h;-><init>()V

    const-string/jumbo v2, "pkgname"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/igexin/push/core/b/h;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "signature"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/igexin/push/core/b/h;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "permissions"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igexin/push/core/b/e;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/igexin/push/core/b/h;->a(Ljava/util/List;)V

    const-string/jumbo v2, "accesstoken"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_bd

    new-instance v2, Ljava/lang/String;

    sget-object v5, Lcom/igexin/push/core/g;->D:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/igexin/a/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Lcom/igexin/push/core/b/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/igexin/push/core/b/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_69
    invoke-virtual {v3, v2}, Lcom/igexin/push/core/b/h;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "expire"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/igexin/push/core/b/h;->a(J)V

    iget-object v2, p0, Lcom/igexin/push/core/b/e;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/igexin/push/core/b/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_83} :catch_84

    goto :goto_11

    :catch_84
    move-exception v0

    move-object v0, v1

    :goto_86
    if-eqz v0, :cond_8b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/igexin/push/core/b/e;->c()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_92
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a9

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/b/h;

    invoke-virtual {v0}, Lcom/igexin/push/core/b/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/igexin/push/core/b/e;->a(Ljava/lang/String;Lcom/igexin/push/core/b/h;)V
    :try_end_a5
    .catchall {:try_start_8c .. :try_end_a5} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a5} :catch_84

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_92

    :cond_a9
    if-eqz v1, :cond_8b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8b

    :catchall_af
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_b3
    if-eqz v1, :cond_b8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b8
    throw v0

    :catchall_b9
    move-exception v0

    goto :goto_b3

    :catch_bb
    move-exception v1

    goto :goto_86

    :cond_bd
    move-object v2, v0

    goto :goto_69
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_56

    aget-object v3, v2, v0

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    sget-object v3, Lcom/igexin/push/core/b/i;->a:Lcom/igexin/push/core/b/i;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_23
    aget-object v3, v2, v0

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    sget-object v3, Lcom/igexin/push/core/b/i;->b:Lcom/igexin/push/core/b/i;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    aget-object v3, v2, v0

    const-string/jumbo v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    sget-object v3, Lcom/igexin/push/core/b/i;->c:Lcom/igexin/push/core/b/i;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_45
    aget-object v3, v2, v0

    const-string/jumbo v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v3, Lcom/igexin/push/core/b/i;->d:Lcom/igexin/push/core/b/i;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_56
    return-object v1
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    return-void
.end method