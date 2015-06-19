.class public final Lcom/millennialmedia/a/a/b/a/d;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# static fields
.field public static final a:Lcom/millennialmedia/a/a/ab;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;

.field private final d:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/millennialmedia/a/a/b/a/d$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/d$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/d;->a:Lcom/millennialmedia/a/a/ab;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->c:Ljava/text/DateFormat;

    invoke-static {}, Lcom/millennialmedia/a/a/b/a/d;->b()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->d:Ljava/text/DateFormat;

    return-void
.end method

.method private static b()Ljava/text/DateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_6} :catch_9

    move-result-object v0

    :goto_7
    monitor-exit p0

    return-object v0

    :catch_9
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_20
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v0

    :try_start_12
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->d:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_20
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_7

    :catch_19
    move-exception v0

    :try_start_1a
    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, p1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Date;
    .registers 4

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/d;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/d;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Date;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_8

    :try_start_3
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_6

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/d;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
