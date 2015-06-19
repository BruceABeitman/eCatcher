.class public Lcom/twidroid/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/twidroid/b/a/a;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private c:Lcom/twidroid/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twidroid/b/a/a;

    invoke-direct {v0}, Lcom/twidroid/b/a/a;-><init>()V

    sput-object v0, Lcom/twidroid/b/a/a;->a:Lcom/twidroid/b/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/twidroid/b/a/a;
    .registers 2

    const-class v1, Lcom/twidroid/b/a/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/twidroid/b/a/a;->a:Lcom/twidroid/b/a/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/twidroid/b/a/a;

    invoke-direct {v0}, Lcom/twidroid/b/a/a;-><init>()V

    sput-object v0, Lcom/twidroid/b/a/a;->a:Lcom/twidroid/b/a/a;

    :cond_e
    sget-object v0, Lcom/twidroid/b/a/a;->a:Lcom/twidroid/b/a/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/twidroid/b/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_13

    new-instance v0, Lcom/twidroid/b/a/c;

    invoke-direct {v0, p1}, Lcom/twidroid/b/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/b/a/a;->c:Lcom/twidroid/b/a/c;

    iget-object v0, p0, Lcom/twidroid/b/a/a;->c:Lcom/twidroid/b/a/c;

    invoke-virtual {v0}, Lcom/twidroid/b/a/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/twidroid/b/a/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_13
    return-void
.end method
