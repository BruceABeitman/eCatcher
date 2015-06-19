.class public Lcom/igexin/push/b/a;
.super Lcom/igexin/a/a/d/d;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;

.field protected b:Landroid/database/Cursor;

.field c:Ljava/util/List;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/push/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/igexin/a/a/d/d;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/push/core/c/a;)V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a_()I
    .registers 2

    const v0, -0x7ffffff7

    return v0
.end method

.method public b()V
    .registers 4

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->b()V

    invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/f;->i()Lcom/igexin/push/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/c/a;

    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lcom/igexin/push/core/c/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1d

    :cond_2f
    iget-object v0, p0, Lcom/igexin/push/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/push/core/c/a;

    iget-boolean v2, p0, Lcom/igexin/push/b/a;->d:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lcom/igexin/push/core/c/a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_35

    :cond_4b
    iget-object v2, p0, Lcom/igexin/push/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {v0, v2}, Lcom/igexin/push/core/c/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_35

    :cond_51
    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/b/c;

    const v2, -0xef7d4

    invoke-direct {v1, v2}, Lcom/igexin/push/b/c;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/a/a/b/d;->c()Lcom/igexin/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/b/d;->d()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->c()V

    iget-object v0, p0, Lcom/igexin/push/b/a;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/igexin/push/b/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/igexin/a/a/d/d;->d()V

    iput-boolean v0, p0, Lcom/igexin/push/b/a;->z:Z

    iput-boolean v0, p0, Lcom/igexin/push/b/a;->U:Z

    return-void
.end method

.method protected e()V
    .registers 1

    return-void
.end method
