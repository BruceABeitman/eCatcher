.class public Lorg/apache/log4j/c/j;
.super Lorg/apache/log4j/c/a;
.source "SourceFile"


# static fields
.field private static final d:J = -0xa8b7f21cd667ee0L

.field private static e:J

.field private static f:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/c/j;->f:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/log4j/c/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/log4j/c/a;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 16

    const/16 v11, 0x3a

    const/4 v10, 0x0

    const/16 v9, 0xa

    const/16 v8, 0x30

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long v3, v1, v3

    long-to-int v3, v3

    int-to-long v4, v3

    sub-long v4, v1, v4

    sget-wide v6, Lorg/apache/log4j/c/j;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1f

    sget-object v0, Lorg/apache/log4j/c/j;->f:[C

    aget-char v0, v0, v10

    if-nez v0, :cond_d9

    :cond_1f
    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_e0

    const-string v0, "-NA-"

    :goto_3e
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v9, :cond_4d

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v9, :cond_62

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_62
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v9, :cond_75

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/c/j;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v9, :cond_88

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_88
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sget-object v5, Lorg/apache/log4j/c/j;->f:[C

    invoke-virtual {p2, v4, v0, v5, v10}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    int-to-long v4, v3

    sub-long v0, v1, v4

    sput-wide v0, Lorg/apache/log4j/c/j;->e:J

    :goto_9e
    const/16 v0, 0x64

    if-ge v3, v0, :cond_a5

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a5
    if-ge v3, v9, :cond_aa

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_aa
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p2

    :pswitch_ae
    const-string v0, "-01-"

    goto :goto_3e

    :pswitch_b1
    const-string v0, "-02-"

    goto :goto_3e

    :pswitch_b4
    const-string v0, "-03-"

    goto :goto_3e

    :pswitch_b7
    const-string v0, "-04-"

    goto :goto_3e

    :pswitch_ba
    const-string v0, "-05-"

    goto :goto_3e

    :pswitch_bd
    const-string v0, "-06-"

    goto/16 :goto_3e

    :pswitch_c1
    const-string v0, "-07-"

    goto/16 :goto_3e

    :pswitch_c5
    const-string v0, "-08-"

    goto/16 :goto_3e

    :pswitch_c9
    const-string v0, "-09-"

    goto/16 :goto_3e

    :pswitch_cd
    const-string v0, "-10-"

    goto/16 :goto_3e

    :pswitch_d1
    const-string v0, "-11-"

    goto/16 :goto_3e

    :pswitch_d5
    const-string v0, "-12-"

    goto/16 :goto_3e

    :cond_d9
    sget-object v0, Lorg/apache/log4j/c/j;->f:[C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_9e

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_b1
        :pswitch_b4
        :pswitch_b7
        :pswitch_ba
        :pswitch_bd
        :pswitch_c1
        :pswitch_c5
        :pswitch_c9
        :pswitch_cd
        :pswitch_d1
        :pswitch_d5
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
