.class public final Lcom/bbm/iceberg/n;
.super Ljava/lang/Object;
.source "LocalContactList.java"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field final a:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/content/ContentResolver;

.field private final j:Lcom/bbm/iceberg/r;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/iceberg/n;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bbm/iceberg/o;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/iceberg/o;-><init>(Lcom/bbm/iceberg/n;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bbm/iceberg/n;->b:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/util/cr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/iceberg/n;->a:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/iceberg/p;

    invoke-direct {v0, p0}, Lcom/bbm/iceberg/p;-><init>(Lcom/bbm/iceberg/n;)V

    iput-object v0, p0, Lcom/bbm/iceberg/n;->h:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/bbm/iceberg/n;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/bbm/iceberg/n;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/iceberg/n;->i:Landroid/content/ContentResolver;

    new-instance v0, Lcom/bbm/iceberg/r;

    iget-object v1, p0, Lcom/bbm/iceberg/n;->i:Landroid/content/ContentResolver;

    invoke-direct {v0, p3, p0, v1}, Lcom/bbm/iceberg/r;-><init>(Landroid/os/Handler;Lcom/bbm/iceberg/n;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/bbm/iceberg/n;->j:Lcom/bbm/iceberg/r;

    iget-object v0, p0, Lcom/bbm/iceberg/n;->i:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/iceberg/n;->j:Lcom/bbm/iceberg/r;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/iceberg/n;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/n;->i:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;"
        }
    .end annotation

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/bbm/iceberg/n;->g:[Ljava/lang/String;

    const-string v3, "display_name<>\'\' AND in_visible_group=1  AND ((data1<>\'\' AND mimetype = \'vnd.android.cursor.item/email_v2\') OR (data1<>\'\' AND mimetype = \'vnd.android.cursor.item/phone_v2\'))"

    const/4 v4, 0x0

    const-string v5, "display_name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_d9

    const-string v0, "lookup"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "mimetype"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "data1"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "photo_thumb_uri"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "photo_uri"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    :cond_39
    :goto_39
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/j;

    if-nez v0, :cond_53

    new-instance v0, Lcom/bbm/iceberg/j;

    invoke-direct {v0, v1}, Lcom/bbm/iceberg/j;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    iget-object v1, v0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_68
    :goto_68
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_74

    iput-object v1, v0, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    :cond_74
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_82

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_86

    :cond_82
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_86
    if-eqz v1, :cond_39

    iput-object v1, v0, Lcom/bbm/iceberg/j;->c:Ljava/lang/String;

    goto :goto_39

    :cond_8b
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    const-string v1, "#"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "*"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_68

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v11, 0x3

    if-le v1, v11, :cond_68

    iput-object v10, v0, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;

    goto :goto_68

    :cond_ad
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LCE: Loaded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " email addresses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_d8
    return-object v0

    :cond_d9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d8
.end method

.method static synthetic b(Lcom/bbm/iceberg/n;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/iceberg/n;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/bbm/iceberg/n;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/n;->b:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/iceberg/n;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/n;->a:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/iceberg/n;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/bbm/iceberg/n;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/bbm/j/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/iceberg/j;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bbm/iceberg/n;->f:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/iceberg/n;->f:Z

    invoke-virtual {p0}, Lcom/bbm/iceberg/n;->b()V

    :cond_a
    iget-object v0, p0, Lcom/bbm/iceberg/n;->b:Lcom/bbm/util/cr;

    return-object v0
.end method

.method public final b()V
    .registers 3

    iget-boolean v0, p0, Lcom/bbm/iceberg/n;->e:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/iceberg/n;->e:Z

    iget-object v0, p0, Lcom/bbm/iceberg/n;->c:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/bbm/iceberg/n;->h:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method protected final finalize()V
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, Lcom/bbm/iceberg/n;->j:Lcom/bbm/iceberg/r;

    invoke-virtual {v0}, Lcom/bbm/iceberg/r;->a()V

    return-void
.end method
