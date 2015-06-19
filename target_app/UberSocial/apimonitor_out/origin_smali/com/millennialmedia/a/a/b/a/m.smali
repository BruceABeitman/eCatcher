.class public final Lcom/millennialmedia/a/a/b/a/m;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# static fields
.field public static final a:Lcom/millennialmedia/a/a/ab;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/millennialmedia/a/a/b/a/m$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/m$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/m;->a:Lcom/millennialmedia/a/a/ab;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Date;
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2a

    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_2a
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_d

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/m;->a(Lcom/millennialmedia/a/a/d/d;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/d;Ljava/sql/Date;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/m;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method
