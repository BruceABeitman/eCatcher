.class public Lcom/umeng/newxp/common/e;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/common/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "key"

.field public static final b:Ljava/lang/String; = "value"

.field public static final c:Ljava/lang/String; = "_id"

.field private static final d:Ljava/lang/String; = "Preferences"

.field private static final e:Ljava/lang/String; = "create table settings (_id integer primary key autoincrement, key text not null, value text not null);"

.field private static final f:Ljava/lang/String; = "data"

.field private static final g:Ljava/lang/String; = "settings"

.field private static final h:I = 0x1

.field private static l:Lcom/umeng/newxp/common/e;


# instance fields
.field private i:Landroid/content/Context;

.field private j:Lcom/umeng/newxp/common/e$a;

.field private k:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/newxp/common/e;->i:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/newxp/common/e;
    .registers 3

    sget-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    if-nez v0, :cond_f

    new-instance v0, Lcom/umeng/newxp/common/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/common/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    :cond_f
    sget-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/newxp/common/e;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    new-instance v0, Lcom/umeng/newxp/common/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/e;->i:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/common/e$a;-><init>(Lcom/umeng/newxp/common/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    iget-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/common/e$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->a()Lcom/umeng/newxp/common/e;

    iget-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    aput-object v3, v2, v6

    const-string/jumbo v3, "value"

    aput-object v3, v2, v8

    const-string/jumbo v3, "key=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_37

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_37
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->b()V

    return-object v5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_14
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 p2, 0x1

    goto :goto_6

    :cond_12
    const/4 p2, 0x0

    goto :goto_6
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/common/e$a;->close()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->a()Lcom/umeng/newxp/common/e;

    iget-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "key"

    aput-object v3, v2, v9

    const-string/jumbo v3, "value"

    aput-object v3, v2, v8

    const-string/jumbo v3, "key=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "settings"

    const-string/jumbo v3, "key= ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_58

    move v0, v8

    :goto_54
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->b()V

    return v0

    :cond_58
    move v0, v9

    goto :goto_54

    :cond_5a
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_81

    :goto_7f
    move v0, v8

    goto :goto_54

    :cond_81
    move v8, v9

    goto :goto_7f
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p2, :cond_a

    const-string/jumbo v0, "true"

    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/umeng/newxp/common/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_a
    const-string/jumbo v0, "false"

    goto :goto_5
.end method
