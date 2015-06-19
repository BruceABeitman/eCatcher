.class public Lorg/apache/log4j/c/a;
.super Ljava/text/DateFormat;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "ABSOLUTE"

.field public static final b:Ljava/lang/String; = "DATE"

.field public static final c:Ljava/lang/String; = "ISO8601"

.field private static final d:J = -0x5657ec95299578eL

.field private static e:J

.field private static f:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/c/a;->f:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/a;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/c/a;->setCalendar(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 15

    const/16 v10, 0x3a

    const/4 v9, 0x0

    const/16 v8, 0xa

    const/16 v7, 0x30

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long v3, v0, v3

    sget-wide v5, Lorg/apache/log4j/c/a;->e:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    sget-object v3, Lorg/apache/log4j/c/a;->f:[C

    aget-char v3, v3, v9

    if-nez v3, :cond_80

    :cond_1f
    iget-object v3, p0, Lorg/apache/log4j/c/a;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v4, p0, Lorg/apache/log4j/c/a;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v8, :cond_35

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_35
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/c/a;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v8, :cond_48

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_48
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/apache/log4j/c/a;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v8, :cond_5b

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5b
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x2c

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sget-object v5, Lorg/apache/log4j/c/a;->f:[C

    invoke-virtual {p2, v3, v4, v5, v9}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    int-to-long v3, v2

    sub-long/2addr v0, v3

    sput-wide v0, Lorg/apache/log4j/c/a;->e:J

    :goto_70
    const/16 v0, 0x64

    if-ge v2, v0, :cond_77

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_77
    if-ge v2, v8, :cond_7c

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7c
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p2

    :cond_80
    sget-object v0, Lorg/apache/log4j/c/a;->f:[C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_70
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
