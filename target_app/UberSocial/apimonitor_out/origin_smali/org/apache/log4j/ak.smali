.class Lorg/apache/log4j/ak;
.super Ljava/util/GregorianCalendar;
.source "SourceFile"


# static fields
.field private static final b:J = -0x3168d6e1c54238a1L


# instance fields
.field a:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/ak;->a:I

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/ak;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)J
    .registers 4

    invoke-virtual {p0, p1}, Lorg/apache/log4j/ak;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/ak;->a:I

    return-void
.end method

.method public b(Ljava/util/Date;)Ljava/util/Date;
    .registers 9

    const/16 v6, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/16 v3, 0xc

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/log4j/ak;->setTime(Ljava/util/Date;)V

    iget v0, p0, Lorg/apache/log4j/ak;->a:I

    packed-switch v0, :pswitch_data_9a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown periodicity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v3, v4}, Lorg/apache/log4j/ak;->add(II)V

    :goto_23
    invoke-virtual {p0}, Lorg/apache/log4j/ak;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :pswitch_28
    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/ak;->add(II)V

    goto :goto_23

    :pswitch_37
    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v5}, Lorg/apache/log4j/ak;->get(I)I

    move-result v0

    if-ge v0, v3, :cond_4c

    invoke-virtual {p0, v5, v3}, Lorg/apache/log4j/ak;->set(II)V

    goto :goto_23

    :cond_4c
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/ak;->add(II)V

    goto :goto_23

    :pswitch_54
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/ak;->add(II)V

    goto :goto_23

    :pswitch_67
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/apache/log4j/ak;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/ak;->add(II)V

    goto :goto_23

    :pswitch_82
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v3, v2}, Lorg/apache/log4j/ak;->set(II)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, v2}, Lorg/apache/log4j/ak;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/ak;->add(II)V

    goto :goto_23

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_28
        :pswitch_37
        :pswitch_54
        :pswitch_67
        :pswitch_82
    .end packed-switch
.end method
