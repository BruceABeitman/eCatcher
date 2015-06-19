.class final Lcom/millennialmedia/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/l;
.implements Lcom/millennialmedia/a/a/u;


# instance fields
.field private final a:Ljava/text/DateFormat;

.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/a;-><init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    return-void
.end method

.method constructor <init>(Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/a/a/a;->a:Ljava/text/DateFormat;

    iput-object p2, p0, Lcom/millennialmedia/a/a/a;->b:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/a;->c:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/millennialmedia/a/a/a;->c:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/m;)Ljava/util/Date;
    .registers 6

    iget-object v1, p0, Lcom/millennialmedia/a/a/a;->b:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/millennialmedia/a/a/a;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_c} :catch_f

    move-result-object v0

    :try_start_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_1c

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    :try_start_10
    iget-object v0, p0, Lcom/millennialmedia/a/a/a;->a:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1c
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_19} :catch_1f

    move-result-object v0

    :try_start_1a
    monitor-exit v1

    goto :goto_e

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    iget-object v0, p0, Lcom/millennialmedia/a/a/a;->c:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_1c
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_29} :catch_2c

    move-result-object v0

    :try_start_2a
    monitor-exit v1

    goto :goto_e

    :catch_2c
    move-exception v0

    new-instance v2, Lcom/millennialmedia/a/a/w;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_1c
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/t;)Lcom/millennialmedia/a/a/m;
    .registers 5

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/a/a/a;->a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/t;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Date;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/t;)Lcom/millennialmedia/a/a/m;
    .registers 7

    iget-object v1, p0, Lcom/millennialmedia/a/a/a;->b:Ljava/text/DateFormat;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/millennialmedia/a/a/a;->a:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/millennialmedia/a/a/s;

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/k;)Ljava/util/Date;
    .registers 8

    instance-of v0, p1, Lcom/millennialmedia/a/a/s;

    if-nez v0, :cond_c

    new-instance v0, Lcom/millennialmedia/a/a/q;

    const-string v1, "The date should be a string value"

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/a;->a(Lcom/millennialmedia/a/a/m;)Ljava/util/Date;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne p2, v1, :cond_15

    :goto_14
    return-object v0

    :cond_15
    const-class v1, Ljava/sql/Timestamp;

    if-ne p2, v1, :cond_24

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_14

    :cond_24
    const-class v1, Ljava/sql/Date;

    if-ne p2, v1, :cond_33

    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_14

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot deserialize to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/k;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/millennialmedia/a/a/a;->a(Lcom/millennialmedia/a/a/m;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/k;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/millennialmedia/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/a;->b:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
