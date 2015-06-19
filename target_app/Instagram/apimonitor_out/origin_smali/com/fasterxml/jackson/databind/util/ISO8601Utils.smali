.class public Lcom/fasterxml/jackson/databind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final GMT_ID:Ljava/lang/String; = "GMT"

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)V
    .registers 7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p2, :cond_2b

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' character but found \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/16 v7, 0x3a

    const/16 v3, 0x2d

    const/4 v6, 0x2

    new-instance v4, Ljava/util/GregorianCalendar;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, p2, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v4, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p1, :cond_ac

    move v0, v1

    :goto_14
    add-int/lit8 v5, v0, 0x13

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-nez v0, :cond_af

    move v0, v2

    :goto_1d
    add-int/2addr v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v5, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    const/16 v0, 0x54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    if-eqz p1, :cond_78

    const/16 v0, 0x2e

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v5, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :cond_78
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    if-eqz v0, :cond_b5

    const v1, 0xea60

    div-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xea60

    div-int v2, v0, v2

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gez v0, :cond_b2

    move v0, v3

    :goto_9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v1, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v2, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    :goto_a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_ac
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_af
    const/4 v0, 0x6

    goto/16 :goto_1d

    :cond_b2
    const/16 v0, 0x2b

    goto :goto_9b

    :cond_b5
    const/16 v0, 0x5a

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a7
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    :goto_a
    if-lez v0, :cond_14

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 13

    const/16 v10, 0x2d

    const/4 v0, 0x0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_7
    invoke-static {p0, v2, v3}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0x2d

    invoke-static {p0, v3, v4}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/4 v3, 0x5

    const/4 v4, 0x7

    invoke-static {p0, v3, v4}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x7

    const/16 v5, 0x2d

    invoke-static {p0, v4, v5}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-static {p0, v4, v5}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x54

    invoke-static {p0, v5, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v5, 0xb

    const/16 v6, 0xd

    invoke-static {p0, v5, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v5

    const/16 v6, 0xd

    const/16 v7, 0x3a

    invoke-static {p0, v6, v7}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v6, 0xe

    const/16 v7, 0x10

    invoke-static {p0, v6, v7}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v6

    const/16 v7, 0x10

    const/16 v8, 0x3a

    invoke-static {p0, v7, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v7, 0x11

    const/16 v8, 0x13

    invoke-static {p0, v7, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    const/16 v8, 0x13

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_12f

    const/16 v0, 0x13

    const/16 v1, 0x2e

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)V

    const/16 v0, 0x14

    const/16 v1, 0x17

    const/16 v8, 0x17

    invoke-static {p0, v0, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v0

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_70
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_7a

    if-ne v8, v10, :cond_b7

    :cond_7a
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GMT"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8d
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_a1} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a1} :catch_d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a1} :catch_119

    :catch_a1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse date "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b7
    const/16 v0, 0x5a

    if-ne v8, v0, :cond_be

    :try_start_bb
    const-string v0, "GMT"

    goto :goto_8d

    :cond_be
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid time zone indicator "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_bb .. :try_end_d3} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_bb .. :try_end_d3} :catch_d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb .. :try_end_d3} :catch_119

    :catch_d3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse date "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_e9
    :try_start_e9
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_117
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e9 .. :try_end_117} :catch_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_117} :catch_d3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e9 .. :try_end_117} :catch_119

    move-result-object v0

    return-object v0

    :catch_119
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse date "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_12f
    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_70
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 7

    const/16 v3, 0xa

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_c

    if-le p1, p2, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    if-ge p1, p2, :cond_38

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_36

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    neg-int v0, v0

    move p1, v1

    :cond_38
    :goto_38
    if-ge p1, p2, :cond_60

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_5b

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v0, v2

    move p1, v1

    goto :goto_38

    :cond_60
    neg-int v0, v0

    return v0
.end method

.method public static timeZoneGMT()Ljava/util/TimeZone;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-object v0
.end method
