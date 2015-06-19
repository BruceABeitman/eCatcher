.class public Lorg/apache/log4j/l;
.super Lorg/apache/log4j/r;
.source "SourceFile"


# static fields
.field static final a:I = -0x1

.field static final i:I = 0x0

.field static final j:I = 0x1

.field static final k:I = 0x2

.field static final l:I = 0x3

.field static final m:I = 0x4

.field static final n:I = 0x5

.field static final s:Ljava/util/TimeZone;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:J

.field o:Ljava/util/Date;

.field p:Ljava/text/SimpleDateFormat;

.field q:Lorg/apache/log4j/ak;

.field r:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/l;->s:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lorg/apache/log4j/r;-><init>()V

    const-string v0, "\'.\'yyyy-MM-dd"

    iput-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/l;->C:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    new-instance v0, Lorg/apache/log4j/ak;

    invoke-direct {v0}, Lorg/apache/log4j/ak;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/l;->q:Lorg/apache/log4j/ak;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/l;->r:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/u;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/r;-><init>(Lorg/apache/log4j/u;Ljava/lang/String;Z)V

    const-string v0, "\'.\'yyyy-MM-dd"

    iput-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/log4j/l;->C:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    new-instance v0, Lorg/apache/log4j/ak;

    invoke-direct {v0}, Lorg/apache/log4j/ak;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/l;->q:Lorg/apache/log4j/ak;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/l;->r:I

    iput-object p3, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/log4j/l;->i()V

    return-void
.end method


# virtual methods
.method a(I)V
    .registers 4

    packed-switch p1, :pswitch_data_de

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown periodicity for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    :goto_21
    return-void

    :pswitch_22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled every minute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled on top of every hour."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at midday and midnight."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_7f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at midnight."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_21

    :pswitch_9e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at start of week."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_be
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] to be rolled at start of every month."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto/16 :goto_21

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_22
        :pswitch_41
        :pswitch_60
        :pswitch_7f
        :pswitch_9e
        :pswitch_be
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Lorg/apache/log4j/k/k;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/log4j/l;->C:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1c

    iget-object v2, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lorg/apache/log4j/l;->q:Lorg/apache/log4j/ak;

    iget-object v1, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/ak;->a(Ljava/util/Date;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/l;->C:J

    :try_start_19
    invoke-virtual {p0}, Lorg/apache/log4j/l;->n()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_20

    :cond_1c
    :goto_1c
    invoke-super {p0, p1}, Lorg/apache/log4j/r;->c(Lorg/apache/log4j/k/k;)V

    return-void

    :catch_20
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2c
    const-string v1, "rollOver() failed."

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public i()V
    .registers 7

    invoke-super {p0}, Lorg/apache/log4j/r;->i()V

    iget-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/l;->p:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lorg/apache/log4j/l;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/l;->a(I)V

    iget-object v1, p0, Lorg/apache/log4j/l;->q:Lorg/apache/log4j/ak;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/ak;->a(I)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/l;->p:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    :goto_54
    return-void

    :cond_55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Either File or DatePattern options are not set for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto :goto_54
.end method

.method l()I
    .registers 9

    new-instance v1, Lorg/apache/log4j/ak;

    sget-object v0, Lorg/apache/log4j/l;->s:Ljava/util/TimeZone;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/log4j/ak;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    :goto_17
    const/4 v3, 0x5

    if-gt v0, v3, :cond_48

    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/apache/log4j/l;->s:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lorg/apache/log4j/ak;->a(I)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1, v2}, Lorg/apache/log4j/ak;->a(Ljava/util/Date;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_45

    if-eqz v3, :cond_45

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    :goto_44
    return v0

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_48
    const/4 v0, -0x1

    goto :goto_44
.end method

.method n()V
    .registers 6

    iget-object v0, p0, Lorg/apache/log4j/l;->A:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/apache/log4j/l;->e:Lorg/apache/log4j/k/e;

    const-string v1, "Missing DatePattern option in rollOver()."

    invoke-interface {v0, v1}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->p:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/apache/log4j/l;->o:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lorg/apache/log4j/l;->q()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_42
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_7a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_6d
    :try_start_6d
    iget-object v1, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lorg/apache/log4j/l;->v:Z

    iget v4, p0, Lorg/apache/log4j/l;->w:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/log4j/l;->a(Ljava/lang/String;ZZI)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_77} :catch_a5

    :goto_77
    iput-object v0, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    goto :goto_b

    :cond_7a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to rename ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/l;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto :goto_6d

    :catch_a5
    move-exception v1

    iget-object v1, p0, Lorg/apache/log4j/l;->e:Lorg/apache/log4j/k/e;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/l;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", true) call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V

    goto :goto_77
.end method
