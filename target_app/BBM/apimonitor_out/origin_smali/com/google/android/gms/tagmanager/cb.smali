.class Lcom/google/android/gms/tagmanager/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/at;


# static fields
.field private static final ua:Ljava/lang/String;


# instance fields
.field private Ty:Lcom/google/android/gms/internal/fl;

.field private final VL:Lcom/google/android/gms/tagmanager/cb$b;

.field private volatile VM:Lcom/google/android/gms/tagmanager/ab;

.field private final VN:Lcom/google/android/gms/tagmanager/au;

.field private final mContext:Landroid/content/Context;

.field private final ud:Ljava/lang/String;

.field private uf:J

.field private final ug:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gtm_hits"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_first_send_time"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/cb;->ua:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;)V
    .registers 5

    const-string v0, "gtm_urls.db"

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/tagmanager/cb;-><init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cb;->ud:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cb;->VN:Lcom/google/android/gms/tagmanager/au;

    invoke-static {}, Lcom/google/android/gms/internal/fn;->eI()Lcom/google/android/gms/internal/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->Ty:Lcom/google/android/gms/internal/fl;

    new-instance v0, Lcom/google/android/gms/tagmanager/cb$b;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cb;->ud:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/tagmanager/cb$b;-><init>(Lcom/google/android/gms/tagmanager/cb;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VL:Lcom/google/android/gms/tagmanager/cb$b;

    new-instance v0, Lcom/google/android/gms/tagmanager/db;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cb;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/gms/tagmanager/cb$a;

    invoke-direct {v3, p0}, Lcom/google/android/gms/tagmanager/cb$a;-><init>(Lcom/google/android/gms/tagmanager/cb;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/db;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/android/gms/tagmanager/db$a;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VM:Lcom/google/android/gms/tagmanager/ab;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/cb;->uf:J

    iput p4, p0, Lcom/google/android/gms/tagmanager/cb;->ug:I

    return-void
.end method

.method private G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VL:Lcom/google/android/gms/tagmanager/cb$b;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cb$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/cb;)Lcom/google/android/gms/internal/fl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->Ty:Lcom/google/android/gms/internal/fl;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/cb;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cb;->u(J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/cb;JJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/cb;->c(JJ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/cb;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->ud:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/cb;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(JJ)V
    .registers 12

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_17
    const-string v2, "gtm_hits"

    const-string v3, "hit_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/cb;->u(J)V

    goto :goto_8
.end method

.method private co()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cb;->cq()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/tagmanager/cb;->ug:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_37

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->s(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Store full, deleting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->a([Ljava/lang/String;)V

    :cond_37
    return-void
.end method

.method private f(JLjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "hit_url"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hit_first_send_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_26
    const-string v2, "gtm_hits"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VN:Lcom/google/android/gms/tagmanager/au;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/au;->p(Z)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_9

    :catch_33
    move-exception v0

    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_9
.end method

.method static synthetic jt()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/cb;->ua:Ljava/lang/String;

    return-object v0
.end method

.method private u(J)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "HIT_ID in (%s)"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, ","

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_27
    const-string v4, "gtm_hits"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cb;->VN:Lcom/google/android/gms/tagmanager/au;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cb;->cq()I

    move-result v3

    if-nez v3, :cond_3f

    :goto_34
    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/au;->p(Z)V
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_37} :catch_38

    goto :goto_7

    :catch_38
    move-exception v0

    const-string v0, "Error deleting hits"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    goto :goto_7

    :cond_3f
    move v0, v1

    goto :goto_34
.end method

.method public bp()V
    .registers 3

    const-string v0, "GTM Dispatch running..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VM:Lcom/google/android/gms/tagmanager/ab;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ab;->bA()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->t(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cb;->VN:Lcom/google/android/gms/tagmanager/au;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/au;->p(Z)V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cb;->VM:Lcom/google/android/gms/tagmanager/ab;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/ab;->e(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cb;->js()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/tagmanager/cy;->kh()Lcom/google/android/gms/tagmanager/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cy;->bp()V

    goto :goto_d
.end method

.method cp()I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cb;->Ty:Lcom/google/android/gms/internal/fl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/cb;->uf:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gtz v4, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/cb;->uf:J

    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cb;->Ty:Lcom/google/android/gms/internal/fl;

    invoke-interface {v3}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    sub-long/2addr v3, v5

    const-string v5, "gtm_hits"

    const-string v6, "HIT_TIME < ?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cb;->VN:Lcom/google/android/gms/tagmanager/au;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cb;->cq()I

    move-result v4

    if-nez v4, :cond_46

    :goto_41
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/au;->p(Z)V

    move v1, v2

    goto :goto_12

    :cond_46
    move v0, v1

    goto :goto_41
.end method

.method cq()I
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from gtm_hits"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_30
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24

    move-result-wide v2

    long-to-int v0, v2

    :cond_1e
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catch_24
    move-exception v2

    :try_start_25
    const-string v2, "Error getting numStoredHits"

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_30

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v0
.end method

.method public e(JLjava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cb;->cp()I

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cb;->co()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/cb;->f(JLjava/lang/String;)V

    return-void
.end method

.method js()I
    .registers 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return v8

    :cond_b
    :try_start_b
    const-string v1, "gtm_hits"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "hit_first_send_time"

    aput-object v4, v2, v3

    const-string v3, "hit_first_send_time=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_23} :catch_2f

    move-result-object v1

    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_27} :catch_4b

    move-result v0

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2d
    :goto_2d
    move v8, v0

    goto :goto_a

    :catch_2f
    move-exception v0

    move-object v0, v9

    :goto_31
    :try_start_31
    const-string v1, "Error getting num untried hits"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_47

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_2d

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0

    :catchall_44
    move-exception v0

    move-object v9, v1

    goto :goto_3e

    :catchall_47
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3e

    :catch_4b
    move-exception v0

    move-object v0, v1

    goto :goto_31

    :cond_4e
    move v0, v8

    goto :goto_2d
.end method

.method s(I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_f

    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    move-object v0, v9

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_19

    move-object v0, v9

    goto :goto_e

    :cond_19
    :try_start_19
    const-string v1, "gtm_hits"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_5c

    move-result-object v1

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_43
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_52} :catch_84

    move-result v0

    if-nez v0, :cond_43

    :cond_55
    if-eqz v1, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    move-object v0, v9

    goto :goto_e

    :catch_5c
    move-exception v0

    move-object v1, v10

    :goto_5e
    :try_start_5e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hitIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_82

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :catchall_7a
    move-exception v0

    move-object v1, v10

    :goto_7c
    if-eqz v1, :cond_81

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v0

    :catchall_82
    move-exception v0

    goto :goto_7c

    :catch_84
    move-exception v0

    goto :goto_5e
.end method

.method public t(I)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/ap;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Error opening database for peekHits"

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/cb;->G(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_f

    move-object v1, v10

    :cond_e
    :goto_e
    return-object v1

    :cond_f
    const/4 v11, 0x0

    :try_start_10
    const-string v2, "gtm_hits"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "hit_first_send_time"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "hit_id"

    aput-object v13, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_e9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_3d} :catch_c8

    move-result-object v12

    :try_start_3e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_162
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_43} :catch_168

    :try_start_43
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_49
    new-instance v2, Lcom/google/android/gms/tagmanager/ap;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/tagmanager/ap;-><init>(JJJ)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_162
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_43 .. :try_end_63} :catch_16e

    move-result v2

    if-nez v2, :cond_49

    :cond_66
    if-eqz v12, :cond_6b

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6b
    const/4 v10, 0x0

    :try_start_6c
    const-string v2, "gtm_hits"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "hit_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "hit_url"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "%s ASC"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "hit_id"

    aput-object v14, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_94
    .catchall {:try_start_6c .. :try_end_94} :catchall_14e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c .. :try_end_94} :catch_160

    move-result-object v2

    :try_start_95
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c0

    move v3, v10

    :goto_9c
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    if-lez v1, :cond_f0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ap;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/tagmanager/ap;->F(Ljava/lang/String;)V

    :goto_b8
    add-int/lit8 v1, v3, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bd
    .catchall {:try_start_95 .. :try_end_bd} :catchall_15d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_95 .. :try_end_bd} :catch_10e

    move-result v3

    if-nez v3, :cond_174

    :cond_c0
    if-eqz v2, :cond_c5

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c5
    move-object v1, v11

    goto/16 :goto_e

    :catch_c8
    move-exception v1

    move-object v2, v1

    move-object v3, v11

    move-object v1, v10

    :goto_cc
    :try_start_cc
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_cc .. :try_end_e2} :catchall_165

    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    :catchall_e9
    move-exception v1

    :goto_ea
    if-eqz v11, :cond_ef

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_ef
    throw v1

    :cond_f0
    :try_start_f0
    const-string v4, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ap;->ci()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_f0 .. :try_end_10d} :catchall_15d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f0 .. :try_end_10d} :catch_10e

    goto :goto_b8

    :catch_10e
    move-exception v1

    move-object v12, v2

    :goto_110
    :try_start_110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in peekHits fetching hit url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_131
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ap;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ap;->jf()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14a

    if-nez v3, :cond_155

    const/4 v3, 0x1

    :cond_14a
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14d
    .catchall {:try_start_110 .. :try_end_14d} :catchall_14e

    goto :goto_131

    :catchall_14e
    move-exception v1

    :goto_14f
    if-eqz v12, :cond_154

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_154
    throw v1

    :cond_155
    if-eqz v12, :cond_15a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_15a
    move-object v1, v2

    goto/16 :goto_e

    :catchall_15d
    move-exception v1

    move-object v12, v2

    goto :goto_14f

    :catch_160
    move-exception v1

    goto :goto_110

    :catchall_162
    move-exception v1

    move-object v11, v12

    goto :goto_ea

    :catchall_165
    move-exception v1

    move-object v11, v3

    goto :goto_ea

    :catch_168
    move-exception v1

    move-object v2, v1

    move-object v3, v12

    move-object v1, v10

    goto/16 :goto_cc

    :catch_16e
    move-exception v1

    move-object v2, v1

    move-object v3, v12

    move-object v1, v11

    goto/16 :goto_cc

    :cond_174
    move v3, v1

    goto/16 :goto_9c
.end method
