.class public Lcom/ibm/icu/util/VTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DEF_DSTSAVINGS:I = 0x36ee80

.field private static final DEF_TZSTARTTIME:J = 0x0L

.field private static final EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final ERR:I = 0x3

.field private static final ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final ICAL_DOW_NAMES:[Ljava/lang/String; = null

.field private static final ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final ICAL_END:Ljava/lang/String; = "END"

.field private static final ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static ICU_TZVERSION:Ljava/lang/String; = null

.field private static final INI:I = 0x0

.field private static final MAX_TIME:J = 0x7fffffffffffffffL

.field private static final MIN_TIME:J = -0x8000000000000000L

.field private static final MONTHLENGTH:[I = null

.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TZI:I = 0x2

.field private static final VTZ:I = 0x1

.field private static final serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private lastmod:Ljava/util/Date;

.field private olsonzid:Ljava/lang/String;

.field private tz:Lcom/ibm/icu/util/BasicTimeZone;

.field private tzurl:Ljava/lang/String;

.field private vtzlines:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SU"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MO"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "TU"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "WE"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "TH"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "FR"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SA"

    aput-object v4, v2, v3

    sput-object v2, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_48

    sput-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    :try_start_31
    const-string v2, "com/ibm/icu/impl/data/icudt42b"

    const-string v3, "zoneinfo"

    invoke-static {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "TZVersion"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_41
    .catch Ljava/util/MissingResourceException; {:try_start_31 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x0

    sput-object v2, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    goto :goto_41

    :array_48
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-void
.end method

.method private static appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_14

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "UNTIL"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private static beginRRULE(Ljava/io/Writer;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RRULE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "FREQ"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "YEARLY"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "BYMONTH"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_6d

    const-string v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_11
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "TZOFFSETTO"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/ibm/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "TZOFFSETFROM"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/ibm/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "TZNAME"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long v0, p3

    add-long/2addr v0, p5

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_6d
    const-string v0, "STANDARD"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static create(Ljava/io/Reader;)Lcom/ibm/icu/util/VTimeZone;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/VTimeZone;

    invoke-direct {v0}, Lcom/ibm/icu/util/VTimeZone;-><init>()V

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v0

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static create(Ljava/lang/String;)Lcom/ibm/icu/util/VTimeZone;
    .registers 3

    new-instance v0, Lcom/ibm/icu/util/VTimeZone;

    invoke-direct {v0}, Lcom/ibm/icu/util/VTimeZone;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/ibm/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;I)Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/BasicTimeZone;

    iput-object v1, v0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    iget-object v1, v0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;
    .registers 13

    if-eqz p5, :cond_8

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_19

    :cond_8
    const/4 p5, 0x1

    new-array v4, p5, [J

    const/4 p5, 0x0

    aput-wide p3, v4, p5

    :cond_e
    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v5, 0x2

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object p0, v0

    :goto_18
    return-object p0

    :cond_19
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    new-array v4, p3, [J

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p3, 0x0

    move p4, p3

    :goto_25
    :try_start_25
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_28} :catch_3b

    move-result p3

    if-eqz p3, :cond_e

    add-int/lit8 p3, p4, 0x1

    :try_start_2d
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p6}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v0

    aput-wide v0, v4, p4
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_39} :catch_3f

    move p4, p3

    goto :goto_25

    :catch_3b
    move-exception p0

    move p1, p4

    :goto_3d
    const/4 p0, 0x0

    goto :goto_18

    :catch_3f
    move-exception p0

    move p1, p3

    goto :goto_3d
.end method

.method private static createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;
    .registers 30

    if-eqz p5, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_b

    :cond_8
    const/16 p0, 0x0

    :goto_a
    return-object p0

    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v15, v5, [J

    invoke-static {v13, v15}, Lcom/ibm/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v14

    if-nez v14, :cond_21

    const/16 p0, 0x0

    goto :goto_a

    :cond_21
    const/4 v5, 0x0

    aget v6, v14, v5

    const/4 v5, 0x1

    aget v8, v14, v5

    const/4 v5, 0x2

    aget v7, v14, v5

    const/4 v5, 0x3

    aget v12, v14, v5

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_111

    move-object v0, v14

    array-length v0, v0

    move/from16 p5, v0

    const/4 v5, 0x4

    move/from16 v0, p5

    move v1, v5

    if-le v0, v1, :cond_259

    move-object v0, v14

    array-length v0, v0

    move/from16 p5, v0

    const/16 v5, 0xa

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_52

    const/16 p5, -0x1

    move v0, v6

    move/from16 v1, p5

    if-eq v0, v1, :cond_52

    if-nez v8, :cond_55

    :cond_52
    const/16 p0, 0x0

    goto :goto_a

    :cond_55
    const/16 v5, 0x1f

    const/16 p5, 0x7

    move/from16 v0, p5

    new-array v0, v0, [I

    move-object/from16 p5, v0

    const/4 v9, 0x0

    :goto_60
    const/4 v10, 0x7

    if-ge v9, v10, :cond_84

    add-int/lit8 v10, v9, 0x3

    aget v10, v14, v10

    aput v10, p5, v9

    aget v10, p5, v9

    if-lez v10, :cond_7a

    aget v10, p5, v9

    :goto_6f
    aput v10, p5, v9

    aget v10, p5, v9

    if-ge v10, v5, :cond_77

    aget v5, p5, v9

    :cond_77
    add-int/lit8 v9, v9, 0x1

    goto :goto_60

    :cond_7a
    sget-object v10, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v10, v10, v6

    aget v11, p5, v9

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    :cond_84
    const/4 v9, 0x1

    move v10, v9

    :goto_86
    const/4 v9, 0x7

    if-ge v10, v9, :cond_a2

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_8b
    const/4 v12, 0x7

    if-ge v11, v12, :cond_95

    aget v12, p5, v11

    add-int v14, v5, v10

    if-ne v12, v14, :cond_9b

    const/4 v9, 0x1

    :cond_95
    if-nez v9, :cond_9e

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_9b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    :cond_9e
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_86

    :cond_a2
    move v12, v5

    move-object v5, v15

    move-object/from16 p5, v13

    :goto_a6
    move/from16 v0, p6

    int-to-long v0, v0

    move-wide/from16 p5, v0

    add-long p3, p3, p5

    const/16 p5, 0x0

    invoke-static/range {p3 .. p5}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object p3

    const/16 p4, 0x0

    aget v18, p3, p4

    const/16 p4, -0x1

    move v0, v6

    move/from16 v1, p4

    if-ne v0, v1, :cond_c2

    const/16 p4, 0x1

    aget v6, p3, p4

    :cond_c2
    if-nez v8, :cond_cc

    if-nez v7, :cond_cc

    if-nez v12, :cond_cc

    const/16 p4, 0x2

    aget v12, p3, p4

    :cond_cc
    const/16 p4, 0x5

    aget v9, p3, p4

    const v19, 0x7fffffff

    const/16 p4, 0x0

    aget-wide p4, v5, p4

    const-wide/high16 v10, -0x8000

    cmp-long p4, p4, v10

    if-eqz p4, :cond_ec

    const/16 p4, 0x0

    aget-wide p4, v5, p4

    move-wide/from16 v0, p4

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/16 p4, 0x0

    aget v19, p3, p4

    :cond_ec
    const/4 v5, 0x0

    if-nez v8, :cond_22c

    if-nez v7, :cond_22c

    if-eqz v12, :cond_22c

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/16 p3, 0x0

    move-object v0, v5

    move v1, v6

    move v2, v12

    move v3, v9

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_100
    new-instance v13, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object/from16 v14, p0

    move/from16 v15, p1

    move/from16 v16, p2

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v19}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object/from16 p0, v13

    goto/16 :goto_a

    :cond_111
    const/4 v5, -0x1

    if-eq v6, v5, :cond_118

    if-eqz v8, :cond_118

    if-nez v12, :cond_11c

    :cond_118
    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_11c
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x7

    if-le v5, v9, :cond_127

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_127
    move v11, v6

    array-length v5, v14

    const/4 v9, 0x3

    sub-int v9, v5, v9

    const/16 v5, 0x1f

    const/4 v10, 0x0

    move v12, v10

    move v10, v5

    :goto_131
    if-ge v12, v9, :cond_14b

    add-int/lit8 v5, v12, 0x3

    aget v5, v14, v5

    if-lez v5, :cond_140

    :goto_139
    if-ge v5, v10, :cond_149

    :goto_13b
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move v10, v5

    goto :goto_131

    :cond_140
    sget-object v16, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v16, v16, v6

    add-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_139

    :cond_149
    move v5, v10

    goto :goto_13b

    :cond_14b
    const/4 v5, -0x1

    const/4 v12, 0x1

    move/from16 v22, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move-object v9, v13

    move-object v13, v15

    move/from16 v15, v22

    :goto_156
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v15, v14, :cond_21a

    move-object/from16 v0, p5

    move v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [J

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v14

    const/16 v16, 0x0

    aget-wide v18, v9, v16

    const/16 v16, 0x0

    aget-wide v20, v13, v16

    cmp-long v16, v18, v20

    if-lez v16, :cond_255

    move-object v9, v9

    move-object/from16 v18, v9

    :goto_17e
    const/4 v9, 0x0

    aget v9, v14, v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_18e

    const/4 v9, 0x1

    aget v9, v14, v9

    if-eqz v9, :cond_18e

    const/4 v9, 0x3

    aget v9, v14, v9

    if-nez v9, :cond_192

    :cond_18e
    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_192
    array-length v9, v14

    const/4 v13, 0x3

    sub-int/2addr v9, v13

    add-int v13, v10, v9

    const/16 v16, 0x7

    move v0, v13

    move/from16 v1, v16

    if-le v0, v1, :cond_1a2

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_1a2
    const/4 v13, 0x1

    aget v13, v14, v13

    if-eq v13, v8, :cond_1ab

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_1ab
    const/4 v13, 0x0

    aget v13, v14, v13

    if-eq v13, v6, :cond_252

    const/4 v13, -0x1

    if-ne v5, v13, :cond_1f0

    const/4 v5, 0x0

    aget v5, v14, v5

    sub-int/2addr v5, v6

    const/16 v13, -0xb

    if-eq v5, v13, :cond_1be

    const/4 v13, -0x1

    if-ne v5, v13, :cond_1e1

    :cond_1be
    const/4 v5, 0x0

    aget v5, v14, v5

    move v12, v5

    const/16 v11, 0x1f

    :goto_1c4
    move v13, v12

    :goto_1c5
    const/4 v12, 0x0

    aget v12, v14, v12

    if-ne v12, v13, :cond_20e

    const/4 v12, 0x0

    move/from16 v16, v12

    move v12, v11

    :goto_1ce
    move/from16 v0, v16

    move v1, v9

    if-ge v0, v1, :cond_20d

    add-int/lit8 v11, v16, 0x3

    aget v11, v14, v11

    if-lez v11, :cond_1fe

    :goto_1d9
    if-ge v11, v12, :cond_20b

    :goto_1db
    add-int/lit8 v12, v16, 0x1

    move/from16 v16, v12

    move v12, v11

    goto :goto_1ce

    :cond_1e1
    const/16 v13, 0xb

    if-eq v5, v13, :cond_1e8

    const/4 v13, 0x1

    if-ne v5, v13, :cond_1ec

    :cond_1e8
    const/4 v5, 0x0

    aget v5, v14, v5

    goto :goto_1c4

    :cond_1ec
    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_1f0
    const/4 v13, 0x0

    aget v13, v14, v13

    if-eq v13, v6, :cond_252

    const/4 v13, 0x0

    aget v13, v14, v13

    if-eq v13, v5, :cond_252

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_1fe
    sget-object v19, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    const/16 v20, 0x0

    aget v20, v14, v20

    aget v19, v19, v20

    add-int v11, v11, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_1d9

    :cond_20b
    move v11, v12

    goto :goto_1db

    :cond_20d
    move v11, v12

    :cond_20e
    add-int/2addr v9, v10

    add-int/lit8 v10, v15, 0x1

    move v15, v10

    move v12, v13

    move v10, v9

    move-object/from16 v13, v18

    move-object/from16 v9, v17

    goto/16 :goto_156

    :cond_21a
    const/16 p5, 0x7

    move v0, v10

    move/from16 v1, p5

    if-eq v0, v1, :cond_225

    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_225
    move v6, v12

    move v12, v11

    move-object v5, v13

    move-object/from16 p5, v9

    goto/16 :goto_a6

    :cond_22c
    if-eqz v8, :cond_23a

    if-eqz v7, :cond_23a

    if-nez v12, :cond_23a

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto/16 :goto_100

    :cond_23a
    if-eqz v8, :cond_24e

    if-nez v7, :cond_24e

    if-eqz v12, :cond_24e

    new-instance v5, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object v10, v5

    move v11, v6

    move v13, v8

    move v15, v9

    invoke-direct/range {v10 .. v16}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto/16 :goto_100

    :cond_24e
    const/16 p0, 0x0

    goto/16 :goto_a

    :cond_252
    move v13, v12

    goto/16 :goto_1c5

    :cond_255
    move-object/from16 v18, v13

    goto/16 :goto_17e

    :cond_259
    move-object v5, v15

    move-object/from16 p5, v13

    goto/16 :goto_a6
.end method

.method private static endZoneProps(Ljava/io/Writer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_17

    const-string v0, "DAYLIGHT"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_11
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_17
    const-string v0, "STANDARD"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private static getDateTimeString(J)Ljava/lang/String;
    .registers 13

    const v10, 0x36ee80

    const v9, 0xea60

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-static {p0, p1, v6}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0xf

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    aget v6, v0, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v8}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget v6, v0, v8

    invoke-static {v6, v8}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, 0x54

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v6, 0x5

    aget v5, v0, v6

    div-int v1, v5, v10

    rem-int/2addr v5, v10

    div-int v2, v5, v9

    rem-int/2addr v5, v9

    div-int/lit16 v4, v5, 0x3e8

    invoke-static {v1, v8}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, v8}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4, v8}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(DST)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(STD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static getUTCDateTimeString(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    if-ne p0, v1, :cond_e

    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v1

    if-eq p2, v1, :cond_10

    :cond_e
    move v1, v4

    :goto_f
    return v1

    :cond_10
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    if-eqz v1, :cond_18

    move v1, v4

    goto :goto_f

    :cond_18
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    if-ne v1, v3, :cond_26

    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v1

    if-ne v1, p1, :cond_26

    move v1, v3

    goto :goto_f

    :cond_26
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v0

    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_58

    rem-int/lit8 v1, v0, 0x7

    if-ne v1, v3, :cond_3d

    add-int/lit8 v1, v0, 0x6

    div-int/lit8 v1, v1, 0x7

    if-ne v1, p1, :cond_3d

    move v1, v3

    goto :goto_f

    :cond_3d
    if-eq p0, v3, :cond_58

    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x7

    const/4 v2, 0x6

    if-ne v1, v2, :cond_58

    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_58

    move v1, v3

    goto :goto_f

    :cond_58
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_83

    rem-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_69

    div-int/lit8 v1, v0, 0x7

    if-ne v1, p1, :cond_69

    move v1, v3

    goto :goto_f

    :cond_69
    if-eq p0, v3, :cond_83

    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_83

    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_83

    move v1, v3

    goto :goto_f

    :cond_83
    move v1, v4

    goto :goto_f
.end method

.method private load(Ljava/io/Reader;)Z
    .registers 12

    const/16 v9, 0xa

    const/4 v8, 0x0

    :try_start_3
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :cond_12
    :goto_12
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_35

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "END:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :cond_31
    :goto_31
    if-nez v5, :cond_a3

    move v6, v8

    :goto_34
    return v6

    :cond_35
    const/16 v6, 0xd

    if-eq v0, v6, :cond_12

    if-eqz v1, :cond_60

    const/16 v6, 0x9

    if-eq v0, v6, :cond_5e

    const/16 v6, 0x20

    if-eq v0, v6, :cond_5e

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lez v6, :cond_54

    iget-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    if-eq v0, v9, :cond_5e

    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5e
    const/4 v1, 0x0

    goto :goto_12

    :cond_60
    if-ne v0, v9, :cond_99

    const/4 v1, 0x1

    if-eqz v4, :cond_7c

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "END:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_31

    :cond_7c
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BEGIN:VTIMEZONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, 0x1

    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_99
    int-to-char v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9d} :catch_9f

    goto/16 :goto_12

    :catch_9f
    move-exception v6

    move-object v2, v6

    move v6, v8

    goto :goto_34

    :cond_a3
    invoke-direct {p0}, Lcom/ibm/icu/util/VTimeZone;->parse()Z

    move-result v6

    goto :goto_34
.end method

.method private static millisToOffset(I)Ljava/lang/String;
    .registers 8

    const/4 v6, 0x2

    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v5, 0x7

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    if-ltz p0, :cond_34

    const/16 v5, 0x2b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_e
    div-int/lit16 v4, p0, 0x3e8

    rem-int/lit8 v3, v4, 0x3c

    sub-int v5, v4, v3

    div-int/lit8 v4, v5, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    div-int/lit8 v0, v4, 0x3c

    invoke-static {v0, v6}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1, v6}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3, v6}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_34
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p0, p0

    goto :goto_e
.end method

.method private static numToString(II)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_11

    sub-int v4, v1, p1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_10
    return-object v4

    :cond_11
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    :goto_17
    if-ge v0, p1, :cond_21

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10
.end method

.method private static offsetStrToMillis(Ljava/lang/String;)I
    .registers 13

    const/4 v11, 0x7

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_13

    :cond_9
    :goto_9
    if-nez v1, :cond_50

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Bad offset string"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v9, :cond_1b

    if-ne v2, v11, :cond_9

    :cond_1b
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_47

    const/4 v8, 0x1

    :goto_25
    const/4 v9, 0x1

    const/4 v10, 0x3

    :try_start_27
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v11, :cond_45

    const/4 v9, 0x5

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_44} :catch_4d

    move-result v7

    :cond_45
    const/4 v1, 0x1

    goto :goto_9

    :cond_47
    const/16 v9, 0x2d

    if-ne v6, v9, :cond_9

    const/4 v8, -0x1

    goto :goto_25

    :catch_4d
    move-exception v9

    move-object v5, v9

    goto :goto_9

    :cond_50
    mul-int/lit8 v9, v0, 0x3c

    add-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    mul-int/lit16 v3, v9, 0x3e8

    return v3
.end method

.method private parse()Z
    .registers 55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    move-object v13, v0

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_14

    :cond_12
    const/4 v13, 0x0

    :goto_13
    return v13

    :cond_14
    const/16 v51, 0x0

    const/16 v46, 0x0

    const/16 v21, 0x0

    const/16 v29, 0x0

    const/16 v49, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    const/16 v35, 0x0

    const/4 v9, 0x0

    new-instance v44, Ljava/util/LinkedList;

    invoke-direct/range {v44 .. v44}, Ljava/util/LinkedList;-><init>()V

    const/16 v32, 0x0

    const/16 v31, 0x0

    const-wide v27, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_3b
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_245

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    const-string v13, ":"

    move-object/from16 v0, v38

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v53

    if-ltz v53, :cond_3b

    const/4 v13, 0x0

    move-object/from16 v0, v38

    move v1, v13

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    add-int/lit8 v13, v53, 0x1

    move-object/from16 v0, v38

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v52

    packed-switch v46, :pswitch_data_39c

    :cond_68
    :goto_68
    const/4 v13, 0x3

    move/from16 v0, v46

    move v1, v13

    if-ne v0, v1, :cond_3b

    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v13, 0x0

    goto :goto_13

    :pswitch_76
    const-string v13, "BEGIN"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    const-string v13, "VTIMEZONE"

    move-object/from16 v0, v52

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    const/16 v46, 0x1

    goto :goto_68

    :pswitch_8f
    const-string v13, "TZID"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9d

    move-object/from16 v51, v52

    goto :goto_68

    :cond_9d
    const-string v13, "TZURL"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_af

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    goto :goto_68

    :cond_af
    const-string v13, "LAST-MODIFIED"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cd

    new-instance v13, Ljava/util/Date;

    const/4 v14, 0x0

    move-object/from16 v0, v52

    move v1, v14

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    goto :goto_68

    :cond_cd
    const-string v13, "BEGIN"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_106

    const-string v13, "DAYLIGHT"

    move-object/from16 v0, v52

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    const-string v13, "STANDARD"

    move-object/from16 v0, v52

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ee

    if-eqz v34, :cond_102

    :cond_ee
    if-nez v51, :cond_f4

    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_f4
    const/4 v9, 0x0

    const/16 v35, 0x0

    const/16 v29, 0x0

    const/16 v49, 0x0

    const/4 v4, 0x0

    move/from16 v21, v34

    const/16 v46, 0x2

    goto/16 :goto_68

    :cond_102
    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_106
    const-string v13, "END"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    goto/16 :goto_68

    :pswitch_113
    const-string v13, "DTSTART"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_122

    move-object/from16 v22, v52

    goto/16 :goto_68

    :cond_122
    const-string v13, "TZNAME"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_131

    move-object/from16 v4, v52

    goto/16 :goto_68

    :cond_131
    const-string v13, "TZOFFSETFROM"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_140

    move-object/from16 v29, v52

    goto/16 :goto_68

    :cond_140
    const-string v13, "TZOFFSETTO"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14f

    move-object/from16 v49, v52

    goto/16 :goto_68

    :cond_14f
    const-string v13, "RDATE"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_184

    if-eqz v35, :cond_160

    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_160
    if-nez v9, :cond_167

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    :cond_167
    new-instance v45, Lcom/ibm/icu/util/StringTokenizer;

    const-string v13, ","

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_173
    invoke-virtual/range {v45 .. v45}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_68

    invoke-virtual/range {v45 .. v45}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_173

    :cond_184
    const-string v13, "RRULE"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a8

    if-nez v35, :cond_197

    if-eqz v9, :cond_197

    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_197
    if-nez v9, :cond_19e

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    :cond_19e
    const/16 v35, 0x1

    move-object v0, v9

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_68

    :cond_1a8
    const-string v13, "END"

    move-object/from16 v0, v39

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68

    if-eqz v22, :cond_1b9

    if-eqz v29, :cond_1b9

    if-nez v49, :cond_1bd

    :cond_1b9
    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_1bd
    if-nez v4, :cond_1c7

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    :cond_1c7
    const/16 v43, 0x0

    const/4 v10, 0x0

    const/16 v50, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :try_start_1d0
    invoke-static/range {v29 .. v29}, Lcom/ibm/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v10

    invoke-static/range {v49 .. v49}, Lcom/ibm/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v50

    if-eqz v21, :cond_21c

    sub-int v13, v50, v10

    if-lez v13, :cond_213

    move v5, v10

    sub-int v6, v50, v10

    :goto_1e1
    move-object/from16 v0, v22

    move v1, v10

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v7

    const/16 v19, 0x0

    if-eqz v35, :cond_220

    invoke-static/range {v4 .. v10}, Lcom/ibm/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v43

    :goto_1f0
    if-eqz v43, :cond_20d

    const/4 v13, 0x0

    move-object/from16 v0, v43

    move v1, v10

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    cmp-long v13, v13, v27

    if-gez v13, :cond_20d

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v27

    if-lez v6, :cond_225

    move/from16 v32, v10

    const/16 v31, 0x0

    :cond_20d
    :goto_20d
    if-nez v43, :cond_23a

    const/16 v46, 0x3

    goto/16 :goto_68

    :cond_213
    const v13, 0x36ee80

    sub-int v5, v50, v13

    const v6, 0x36ee80

    goto :goto_1e1

    :cond_21c
    move/from16 v5, v50

    const/4 v6, 0x0

    goto :goto_1e1

    :cond_220
    invoke-static/range {v4 .. v10}, Lcom/ibm/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;
    :try_end_223
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d0 .. :try_end_223} :catch_399

    move-result-object v43

    goto :goto_1f0

    :cond_225
    sub-int v13, v10, v50

    const v14, 0x36ee80

    if-ne v13, v14, :cond_235

    const v13, 0x36ee80

    sub-int v32, v10, v13

    const v31, 0x36ee80

    goto :goto_20d

    :cond_235
    move/from16 v32, v10

    const/16 v31, 0x0

    goto :goto_20d

    :cond_23a
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v46, 0x1

    goto/16 :goto_68

    :cond_245
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_24e

    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_24e
    new-instance v33, Lcom/ibm/icu/util/InitialTimeZoneRule;

    const/4 v13, 0x0

    move-object/from16 v0, v51

    move v1, v13

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v33

    move-object v1, v13

    move/from16 v2, v32

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    new-instance v41, Lcom/ibm/icu/util/RuleBasedTimeZone;

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/16 v25, -0x1

    const/16 v24, 0x0

    const/16 v30, 0x0

    :goto_273
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, v30

    move v1, v13

    if-ge v0, v1, :cond_29f

    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move v13, v0

    if-eqz v13, :cond_29c

    check-cast v40, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v13

    const v14, 0x7fffffff

    if-ne v13, v14, :cond_29c

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v30

    :cond_29c
    add-int/lit8 v30, v30, 0x1

    goto :goto_273

    :cond_29f
    const/4 v13, 0x2

    move/from16 v0, v24

    move v1, v13

    if-le v0, v1, :cond_2a8

    const/4 v13, 0x0

    goto/16 :goto_13

    :cond_2a8
    const/4 v13, 0x1

    move/from16 v0, v24

    move v1, v13

    if-ne v0, v1, :cond_2b8

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2cf

    invoke-interface/range {v44 .. v44}, Ljava/util/List;->clear()V

    :cond_2b8
    :goto_2b8
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_2bc
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_389

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v0, v41

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_2bc

    :cond_2cf
    move-object/from16 v0, v44

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v48

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v47

    move-object v0, v11

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v26

    move-object/from16 v7, v26

    const/16 v30, 0x0

    :goto_2ee
    invoke-interface/range {v44 .. v44}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, v30

    move v1, v13

    if-ge v0, v1, :cond_330

    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_300

    :cond_2fd
    :goto_2fd
    add-int/lit8 v30, v30, 0x1

    goto :goto_2ee

    :cond_300
    move-object/from16 v0, v44

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/ibm/icu/util/TimeZoneRule;

    move-object/from16 v0, v40

    move/from16 v1, v48

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v37

    move-object/from16 v0, v37

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_2fd

    invoke-virtual/range {v37 .. v37}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual/range {v40 .. v40}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    goto :goto_2fd

    :cond_330
    move-object v0, v7

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_362

    new-instance v12, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    aput-wide v18, v16, v17

    const/16 v17, 0x2

    invoke-direct/range {v12 .. v17}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    :goto_358
    move-object/from16 v0, v44

    move/from16 v1, v25

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b8

    :cond_362
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v23

    new-instance v12, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v15

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v16

    invoke-virtual {v11}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v17

    const/16 v18, 0x0

    aget v18, v23, v18

    invoke-direct/range {v12 .. v18}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    goto :goto_358

    :cond_389
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    const/4 v13, 0x1

    goto/16 :goto_13

    :catch_399
    move-exception v13

    goto/16 :goto_20d

    :pswitch_data_39c
    .packed-switch 0x0
        :pswitch_76
        :pswitch_8f
        :pswitch_113
    .end packed-switch
.end method

.method private static parseDateTimeString(Ljava/lang/String;I)J
    .registers 14

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1c

    move p0, v0

    move v4, v6

    move v0, v1

    move v6, v8

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, v7

    :goto_12
    if-nez v2, :cond_e8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid date time string format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0xf

    if-eq v4, v9, :cond_31

    const/16 v9, 0x10

    if-eq v4, v9, :cond_31

    move p0, v0

    move v4, v6

    move v0, v1

    move v6, v8

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, v7

    goto :goto_12

    :cond_31
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x54

    if-eq v9, v10, :cond_44

    move p0, v0

    move v4, v6

    move v0, v1

    move v6, v8

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, v7

    goto :goto_12

    :cond_44
    const/16 v9, 0x10

    if-ne v4, v9, :cond_5c

    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x5a

    if-eq v4, v9, :cond_5b

    move p0, v0

    move v4, v6

    move v0, v1

    move v6, v8

    move v1, v2

    move v2, v3

    move v3, v5

    move v5, v7

    goto :goto_12

    :cond_5b
    const/4 v2, 0x1

    :cond_5c
    const/4 v4, 0x0

    const/4 v9, 0x4

    :try_start_5e
    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v4, 0x4

    const/4 v9, 0x6

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x1

    sub-int v6, v4, v6

    const/4 v4, 0x6

    const/16 v9, 0x8

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x9

    const/16 v9, 0xb

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0xb

    const/16 v9, 0xd

    invoke-virtual {p0, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_95} :catch_ce

    move-result v4

    const/16 v5, 0xd

    const/16 v9, 0xf

    :try_start_9a
    invoke-virtual {p0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_a1} :catch_104

    move-result v5

    invoke-static {v8, v6}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result p0

    if-ltz v8, :cond_10e

    if-ltz v6, :cond_10e

    const/16 v7, 0xb

    if-gt v6, v7, :cond_10e

    const/4 v7, 0x1

    if-lt v0, v7, :cond_10e

    if-gt v0, p0, :cond_10e

    if-ltz v1, :cond_10e

    const/16 p0, 0x18

    if-ge v1, p0, :cond_10e

    if-ltz v4, :cond_10e

    const/16 p0, 0x3c

    if-ge v4, p0, :cond_10e

    if-ltz v5, :cond_10e

    const/16 p0, 0x3c

    if-lt v5, p0, :cond_dd

    move p0, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    goto/16 :goto_12

    :catch_ce
    move-exception p0

    move v4, v6

    move v6, v8

    move v11, v1

    move v1, v5

    move-object v5, p0

    move p0, v0

    move v0, v11

    :goto_d6
    move v5, v7

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    goto/16 :goto_12

    :cond_dd
    const/4 p0, 0x1

    move v3, v4

    move v4, v6

    move v6, v8

    move v11, v1

    move v1, v2

    move v2, p0

    move p0, v0

    move v0, v11

    goto/16 :goto_12

    :cond_e8
    invoke-static {v6, v4, p0}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    const p0, 0x36ee80

    mul-int/2addr p0, v0

    const v0, 0xea60

    mul-int/2addr v0, v3

    add-int/2addr p0, v0

    mul-int/lit16 v0, v5, 0x3e8

    add-int/2addr p0, v0

    int-to-long v2, p0

    add-long/2addr v2, v6

    if-nez v1, :cond_10c

    int-to-long p0, p1

    sub-long p0, v2, p0

    :goto_103
    return-wide p0

    :catch_104
    move-exception p0

    move-object v5, p0

    move p0, v0

    move v0, v1

    move v1, v4

    move v4, v6

    move v6, v8

    goto :goto_d6

    :cond_10c
    move-wide p0, v2

    goto :goto_103

    :cond_10e
    move p0, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    goto/16 :goto_12
.end method

.method private static parseRRULE(Ljava/lang/String;[J)[I
    .registers 20

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/high16 v8, -0x8000

    const/4 v11, 0x0

    const/4 v7, 0x0

    new-instance v10, Lcom/ibm/icu/util/StringTokenizer;

    const-string v12, ";"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v11

    move-wide v11, v8

    move v9, v7

    move v8, v6

    move v7, v5

    :goto_18
    invoke-virtual {v10}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_23f

    invoke-virtual {v10}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string p0, "="

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 p0, -0x1

    move v0, v6

    move/from16 v1, p0

    if-eq v0, v1, :cond_70

    const/16 p0, 0x0

    move-object v0, v5

    move/from16 v1, p0

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v5, "FREQ"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string p0, "YEARLY"

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    const/16 p0, 0x1

    move v6, v9

    move v5, v8

    move-object v9, v13

    move-wide/from16 v16, v11

    move/from16 v11, p0

    move-object/from16 p0, v3

    move v3, v4

    move v4, v7

    move-wide/from16 v7, v16

    :goto_67
    move v9, v6

    move v14, v11

    move-wide v11, v7

    move v8, v5

    move v7, v4

    move v4, v3

    move-object/from16 v3, p0

    goto :goto_18

    :cond_70
    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    :goto_74
    if-eqz p0, :cond_1dd

    const/16 p0, 0x0

    :goto_78
    return-object p0

    :cond_79
    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto :goto_74

    :cond_7e
    const-string v5, "UNTIL"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    const/16 p0, 0x0

    :try_start_8b
    move-object v0, v13

    move/from16 v1, p0

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_91} :catch_a2

    move-result-wide v5

    move v11, v14

    move-object/from16 p0, v3

    move v3, v4

    move v4, v7

    move/from16 v16, v9

    move-object v9, v13

    move/from16 v17, v8

    move-wide v7, v5

    move/from16 v6, v16

    move/from16 v5, v17

    goto :goto_67

    :catch_a2
    move-exception p0

    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto :goto_74

    :cond_a8
    const-string v5, "BYMONTH"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v5, 0x2

    move/from16 v0, p0

    move v1, v5

    if-le v0, v1, :cond_c2

    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto :goto_74

    :cond_c2
    :try_start_c2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_c5} :catch_e8

    move-result p0

    const/4 v5, 0x1

    sub-int p0, p0, v5

    if-ltz p0, :cond_d2

    const/16 v5, 0xc

    move/from16 v0, p0

    move v1, v5

    if-lt v0, v1, :cond_db

    :cond_d2
    const/4 v5, 0x1

    move v6, v8

    move/from16 v16, v5

    move/from16 v5, p0

    move/from16 p0, v16

    goto :goto_74

    :cond_db
    move v6, v9

    move v5, v8

    move-wide v7, v11

    move-object v9, v13

    move v11, v14

    move-object/from16 v16, v3

    move v3, v4

    move/from16 v4, p0

    move-object/from16 p0, v16

    goto :goto_67

    :catch_e8
    move-exception p0

    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto :goto_74

    :cond_ee
    const-string v5, "BYDAY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19d

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v5, 0x2

    move/from16 v0, p0

    move v1, v5

    if-lt v0, v1, :cond_109

    const/4 v5, 0x4

    move/from16 v0, p0

    move v1, v5

    if-le v0, v1, :cond_10f

    :cond_109
    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto/16 :goto_74

    :cond_10f
    const/4 v5, 0x2

    move/from16 v0, p0

    move v1, v5

    if-le v0, v1, :cond_23b

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v15, 0x2b

    if-ne v6, v15, :cond_13a

    const/4 v5, 0x1

    move v6, v5

    :goto_121
    const/4 v5, 0x3

    sub-int v5, p0, v5

    const/4 v15, 0x2

    sub-int v15, p0, v15

    :try_start_127
    invoke-virtual {v13, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/NumberFormatException; {:try_start_127 .. :try_end_12e} :catch_18d

    move-result v5

    if-eqz v5, :cond_134

    const/4 v15, 0x4

    if-le v5, v15, :cond_152

    :cond_134
    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto/16 :goto_74

    :cond_13a
    const/4 v6, 0x0

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v15, 0x2d

    if-ne v6, v15, :cond_146

    const/4 v5, -0x1

    move v6, v5

    goto :goto_121

    :cond_146
    const/4 v6, 0x4

    move/from16 v0, p0

    move v1, v6

    if-ne v0, v1, :cond_238

    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto/16 :goto_74

    :cond_152
    mul-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int p0, p0, v6

    move-object v0, v13

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object/from16 v6, p0

    :goto_15f
    const/16 p0, 0x0

    :goto_161
    sget-object v8, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v8, v8

    move/from16 v0, p0

    move v1, v8

    if-ge v0, v1, :cond_173

    sget-object v8, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    aget-object v8, v8, p0

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_194

    :cond_173
    sget-object v8, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v8, v8

    move/from16 v0, p0

    move v1, v8

    if-ge v0, v1, :cond_197

    add-int/lit8 p0, p0, 0x1

    move v4, v7

    move-wide v7, v11

    move v11, v14

    move/from16 v16, v9

    move-object v9, v6

    move/from16 v6, v16

    move/from16 v17, p0

    move-object/from16 p0, v3

    move/from16 v3, v17

    goto/16 :goto_67

    :catch_18d
    move-exception p0

    const/16 p0, 0x1

    move v6, v8

    move v5, v7

    goto/16 :goto_74

    :cond_194
    add-int/lit8 p0, p0, 0x1

    goto :goto_161

    :cond_197
    const/16 p0, 0x1

    move v6, v5

    move v5, v7

    goto/16 :goto_74

    :cond_19d
    const-string v5, "BYMONTHDAY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22d

    new-instance v3, Lcom/ibm/icu/util/StringTokenizer;

    const-string p0, ","

    move-object v0, v3

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/ibm/icu/util/StringTokenizer;->countTokens()I

    move-result p0

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object/from16 p0, v0

    const/4 v5, 0x0

    :goto_1be
    invoke-virtual {v3}, Lcom/ibm/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_224

    add-int/lit8 v6, v5, 0x1

    :try_start_1c6
    invoke-virtual {v3}, Lcom/ibm/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aput v15, p0, v5
    :try_end_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_1c6 .. :try_end_1d0} :catch_1d2

    move v5, v6

    goto :goto_1be

    :catch_1d2
    move-exception v3

    const/4 v3, 0x1

    move-object v9, v13

    move v6, v3

    move v5, v8

    move v3, v4

    move v4, v7

    move-wide v7, v11

    move v11, v14

    goto/16 :goto_67

    :cond_1dd
    if-nez v14, :cond_1e3

    const/16 p0, 0x0

    goto/16 :goto_78

    :cond_1e3
    const/16 p0, 0x0

    aput-wide v11, p1, p0

    if-nez v3, :cond_204

    const/16 p0, 0x4

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object/from16 p0, v0

    const/16 p1, 0x3

    const/4 v3, 0x0

    aput v3, p0, p1

    :goto_1f6
    const/16 p1, 0x0

    aput v5, p0, p1

    const/16 p1, 0x1

    aput v4, p0, p1

    const/16 p1, 0x2

    aput v6, p0, p1

    goto/16 :goto_78

    :cond_204
    move-object v0, v3

    array-length v0, v0

    move/from16 p0, v0

    add-int/lit8 p0, p0, 0x3

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object/from16 p1, v0

    const/16 p0, 0x0

    :goto_212
    array-length v7, v3

    move/from16 v0, p0

    move v1, v7

    if-ge v0, v1, :cond_221

    add-int/lit8 v7, p0, 0x3

    aget v8, v3, p0

    aput v8, p1, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_212

    :cond_221
    move-object/from16 p0, p1

    goto :goto_1f6

    :cond_224
    move v6, v9

    move v5, v8

    move v3, v4

    move-object v9, v13

    move v4, v7

    move-wide v7, v11

    move v11, v14

    goto/16 :goto_67

    :cond_22d
    move v6, v9

    move-object/from16 p0, v3

    move v5, v8

    move-object v9, v13

    move v3, v4

    move v4, v7

    move-wide v7, v11

    move v11, v14

    goto/16 :goto_67

    :cond_238
    move v6, v5

    goto/16 :goto_121

    :cond_23b
    move-object v6, v13

    move v5, v8

    goto/16 :goto_15f

    :cond_23f
    move/from16 p0, v9

    move v6, v8

    move v5, v7

    goto/16 :goto_74
.end method

.method private static toWallTimeRule(Lcom/ibm/icu/util/DateTimeRule;II)Lcom/ibm/icu/util/DateTimeRule;
    .registers 10

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v5

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    add-int/2addr p1, p2

    add-int/2addr v5, p1

    :cond_14
    :goto_14
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 p1, -0x1

    const/4 p1, 0x0

    if-gez v5, :cond_6a

    const/4 p1, -0x1

    const p2, 0x5265c00

    add-int/2addr v5, p2

    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v3

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result p2

    if-eqz p1, :cond_a7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a5

    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result p2

    if-lez p2, :cond_75

    const/4 p0, 0x2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x7

    add-int/lit8 v2, p2, 0x1

    :goto_42
    add-int/2addr v2, p1

    if-nez v2, :cond_81

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4c

    const/16 p2, 0xb

    move v1, p2

    :cond_4c
    sget-object p2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, p2, v1

    :cond_50
    :goto_50
    if-eqz p0, :cond_57

    add-int/2addr v3, p1

    const/4 p1, 0x1

    if-ge v3, p1, :cond_91

    const/4 v3, 0x7

    :cond_57
    :goto_57
    if-nez p0, :cond_96

    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, v5, p0}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_5f
    move-object p0, v0

    goto :goto_6

    :cond_61
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    add-int/2addr v5, p2

    goto :goto_14

    :cond_6a
    const p2, 0x5265c00

    if-lt v5, p2, :cond_20

    const/4 p1, 0x1

    const p2, 0x5265c00

    sub-int/2addr v5, p2

    goto :goto_20

    :cond_75
    const/4 p0, 0x3

    sget-object v0, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v0, v0, v1

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x7

    add-int v2, v0, p2

    goto :goto_42

    :cond_81
    sget-object p2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget p2, p2, v1

    if-le v2, p2, :cond_50

    add-int/lit8 v1, v1, 0x1

    const/16 p2, 0xb

    if-le v1, p2, :cond_8f

    const/4 p2, 0x0

    move v1, p2

    :cond_8f
    const/4 v2, 0x1

    goto :goto_50

    :cond_91
    const/4 p1, 0x7

    if-le v3, p1, :cond_57

    const/4 v3, 0x1

    goto :goto_57

    :cond_96
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    const/4 p1, 0x2

    if-ne p0, p1, :cond_a2

    const/4 p0, 0x1

    move v4, p0

    :goto_9d
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_5f

    :cond_a2
    const/4 p0, 0x0

    move v4, p0

    goto :goto_9d

    :cond_a5
    move p0, p2

    goto :goto_42

    :cond_a7
    move p0, p2

    goto :goto_57
.end method

.method private static writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/util/VTimeZone;->toWallTimeRule(Lcom/ibm/icu/util/DateTimeRule;II)Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int v7, v4, v5

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v4

    packed-switch v4, :pswitch_data_9c

    :goto_1e
    return-void

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    add-int v6, p3, p4

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v9

    const-wide v12, 0x7fffffffffffffffL

    move-object v3, p0

    move/from16 v4, p1

    move-wide/from16 v10, p5

    invoke-static/range {v3 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    goto :goto_1e

    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    add-int v6, p3, p4

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v9

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v10

    const-wide v13, 0x7fffffffffffffffL

    move-object v3, p0

    move/from16 v4, p1

    move-wide/from16 v11, p5

    invoke-static/range {v3 .. v14}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1e

    :pswitch_5b
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    add-int v6, p3, p4

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v9

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v10

    const-wide v13, 0x7fffffffffffffffL

    move-object v3, p0

    move/from16 v4, p1

    move-wide/from16 v11, p5

    invoke-static/range {v3 .. v14}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1e

    :pswitch_7b
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    add-int v6, p3, p4

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v9

    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v10

    const-wide v13, 0x7fffffffffffffffL

    move-object v3, p0

    move/from16 v4, p1

    move-wide/from16 v11, p5

    invoke-static/range {v3 .. v14}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1e

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_3b
        :pswitch_5b
        :pswitch_7b
    .end packed-switch
.end method

.method private static writeFooter(Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "VTIMEZONE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeHeader(Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "VTIMEZONE"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "TZID"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v0, "TZURL"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v0, :cond_64

    const-string v0, "LAST-MODIFIED"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_64
    return-void
.end method

.method private writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .registers 88
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    if-eqz p3, :cond_2d

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    if-lez v4, :cond_2d

    const/16 v71, 0x0

    :goto_d
    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    move/from16 v0, v71

    move v1, v4

    if-ge v0, v1, :cond_2d

    aget-object v4, p3, v71

    if-eqz v4, :cond_2a

    aget-object v4, p3, v71

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v4, "\r\n"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2a
    add-int/lit8 v71, v71, 0x1

    goto :goto_d

    :cond_2d
    const-wide/high16 v78, -0x8000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v50, 0x0

    const/4 v8, 0x0

    const/16 v65, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v64, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v21, 0x0

    const/16 v63, 0x0

    const/16 v48, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v75, 0x0

    const/16 v27, 0x0

    const/16 v77, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v36, 0x0

    const/16 v76, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v40, 0x0

    const/16 v74, 0x0

    const/16 v67, 0x0

    const/4 v4, 0x6

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v66, v0

    const/16 v70, 0x0

    :cond_68
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v78

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v81

    if-nez v81, :cond_ab

    :goto_74
    if-nez v70, :cond_262

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(J)I

    move-result v45

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v4

    move/from16 v0, v45

    move v1, v4

    if-eq v0, v1, :cond_25d

    const/4 v4, 0x1

    move/from16 v43, v4

    :goto_8b
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v44

    const-wide/16 v4, 0x0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide v6, v0

    sub-long v47, v4, v6

    const/16 v49, 0x0

    move-object/from16 v42, p1

    move/from16 v46, v45

    invoke-static/range {v42 .. v49}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_a7
    :goto_a7
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    return-void

    :cond_ab
    const/16 v70, 0x1

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v78

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_1a6

    const/4 v4, 0x1

    move/from16 v43, v4

    :goto_c6
    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int v69, v4, v5

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v68

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int v80, v4, v5

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    move/from16 v0, v69

    int-to-long v0, v0

    move-wide v11, v0

    add-long/2addr v4, v11

    move-wide v0, v4

    move-object/from16 v2, v66

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/4 v4, 0x0

    aget v4, v66, v4

    const/4 v5, 0x1

    aget v5, v66, v5

    const/4 v11, 0x2

    aget v11, v66, v11

    invoke-static {v4, v5, v11}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v82

    const/4 v4, 0x0

    aget v83, v66, v4

    const/16 v73, 0x0

    if-eqz v43, :cond_1b7

    if-nez v48, :cond_134

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    instance-of v4, v4, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_134

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_134

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v48

    check-cast v48, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_134
    if-lez v63, :cond_183

    add-int v4, v65, v63

    move/from16 v0, v83

    move v1, v4

    if-ne v0, v1, :cond_174

    move-object/from16 v0, v72

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    move v0, v7

    move/from16 v1, v69

    if-ne v0, v1, :cond_174

    move v0, v8

    move/from16 v1, v80

    if-ne v0, v1, :cond_174

    const/4 v4, 0x1

    aget v4, v66, v4

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_174

    const/4 v4, 0x3

    aget v4, v66, v4

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_174

    move/from16 v0, v17

    move/from16 v1, v82

    if-ne v0, v1, :cond_174

    const/4 v4, 0x5

    aget v4, v66, v4

    move/from16 v0, v64

    move v1, v4

    if-ne v0, v1, :cond_174

    move-wide/from16 v21, v78

    add-int/lit8 v63, v63, 0x1

    const/16 v73, 0x1

    :cond_174
    if-nez v73, :cond_183

    const/4 v4, 0x1

    move/from16 v0, v63

    move v1, v4

    if-ne v0, v1, :cond_1ab

    const/4 v5, 0x1

    const/4 v11, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_183
    :goto_183
    if-nez v73, :cond_1a0

    move-object/from16 v6, v72

    move/from16 v7, v69

    move/from16 v50, v68

    move/from16 v8, v80

    move/from16 v65, v83

    const/4 v4, 0x1

    aget v16, v66, v4

    const/4 v4, 0x3

    aget v18, v66, v4

    move/from16 v17, v82

    const/4 v4, 0x5

    aget v64, v66, v4

    move-wide/from16 v21, v78

    move-wide/from16 v9, v78

    const/16 v63, 0x1

    :cond_1a0
    if-eqz v67, :cond_68

    if-eqz v48, :cond_68

    goto/16 :goto_74

    :cond_1a6
    const/4 v4, 0x0

    move/from16 v43, v4

    goto/16 :goto_c6

    :cond_1ab
    const/4 v12, 0x1

    move-object/from16 v11, p1

    move-object v13, v6

    move v14, v7

    move v15, v8

    move-wide/from16 v19, v9

    invoke-static/range {v11 .. v22}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_183

    :cond_1b7
    if-nez v67, :cond_1d6

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v4

    instance-of v4, v4, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v4, :cond_1d6

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1d6

    invoke-virtual/range {v81 .. v81}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v67

    check-cast v67, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_1d6
    if-lez v74, :cond_22a

    add-int v4, v77, v74

    move/from16 v0, v83

    move v1, v4

    if-ne v0, v1, :cond_219

    move-object/from16 v0, v72

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_219

    move/from16 v0, v26

    move/from16 v1, v69

    if-ne v0, v1, :cond_219

    move/from16 v0, v27

    move/from16 v1, v80

    if-ne v0, v1, :cond_219

    const/4 v4, 0x1

    aget v4, v66, v4

    move/from16 v0, v35

    move v1, v4

    if-ne v0, v1, :cond_219

    const/4 v4, 0x3

    aget v4, v66, v4

    move/from16 v0, v37

    move v1, v4

    if-ne v0, v1, :cond_219

    move/from16 v0, v36

    move/from16 v1, v82

    if-ne v0, v1, :cond_219

    const/4 v4, 0x5

    aget v4, v66, v4

    move/from16 v0, v76

    move v1, v4

    if-ne v0, v1, :cond_219

    move-wide/from16 v40, v78

    add-int/lit8 v74, v74, 0x1

    const/16 v73, 0x1

    :cond_219
    if-nez v73, :cond_22a

    const/4 v4, 0x1

    move/from16 v0, v74

    move v1, v4

    if-ne v0, v1, :cond_24d

    const/16 v24, 0x0

    const/16 v30, 0x1

    move-object/from16 v23, p1

    invoke-static/range {v23 .. v30}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_22a
    :goto_22a
    if-nez v73, :cond_247

    move-object/from16 v25, v72

    move/from16 v26, v69

    move/from16 v75, v68

    move/from16 v27, v80

    move/from16 v77, v83

    const/4 v4, 0x1

    aget v35, v66, v4

    const/4 v4, 0x3

    aget v37, v66, v4

    move/from16 v36, v82

    const/4 v4, 0x5

    aget v76, v66, v4

    move-wide/from16 v40, v78

    move-wide/from16 v28, v78

    const/16 v74, 0x1

    :cond_247
    if-eqz v67, :cond_68

    if-eqz v48, :cond_68

    goto/16 :goto_74

    :cond_24d
    const/16 v31, 0x0

    move-object/from16 v30, p1

    move-object/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v27

    move-wide/from16 v38, v28

    invoke-static/range {v30 .. v41}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_22a

    :cond_25d
    const/4 v4, 0x0

    move/from16 v43, v4

    goto/16 :goto_8b

    :cond_262
    if-lez v63, :cond_273

    if-nez v48, :cond_294

    const/4 v4, 0x1

    move/from16 v0, v63

    move v1, v4

    if-ne v0, v1, :cond_288

    const/4 v5, 0x1

    const/4 v11, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    :cond_273
    :goto_273
    if-lez v74, :cond_a7

    if-nez v67, :cond_2fa

    const/4 v4, 0x1

    move/from16 v0, v74

    move v1, v4

    if-ne v0, v1, :cond_2e9

    const/16 v24, 0x0

    const/16 v30, 0x1

    move-object/from16 v23, p1

    invoke-static/range {v23 .. v30}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_a7

    :cond_288
    const/4 v12, 0x1

    move-object/from16 v11, p1

    move-object v13, v6

    move v14, v7

    move v15, v8

    move-wide/from16 v19, v9

    invoke-static/range {v11 .. v22}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_273

    :cond_294
    const/4 v4, 0x1

    move/from16 v0, v63

    move v1, v4

    if-ne v0, v1, :cond_2a6

    const/16 v47, 0x1

    sub-int v49, v7, v50

    move-object/from16 v46, p1

    move-wide/from16 v51, v9

    invoke-static/range {v46 .. v52}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_273

    :cond_2a6
    invoke-virtual/range {v48 .. v48}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v4

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VTimeZone;->isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z

    move-result v4

    if-eqz v4, :cond_2d2

    const/16 v52, 0x1

    const-wide v61, 0x7fffffffffffffffL

    move-object/from16 v51, p1

    move-object/from16 v53, v6

    move/from16 v54, v7

    move/from16 v55, v8

    move/from16 v56, v16

    move/from16 v57, v17

    move/from16 v58, v18

    move-wide/from16 v59, v9

    invoke-static/range {v51 .. v62}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_273

    :cond_2d2
    const/4 v12, 0x1

    move-object/from16 v11, p1

    move-object v13, v6

    move v14, v7

    move v15, v8

    move-wide/from16 v19, v9

    invoke-static/range {v11 .. v22}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    const/16 v47, 0x1

    sub-int v49, v7, v50

    move-object/from16 v46, p1

    move-wide/from16 v51, v9

    invoke-static/range {v46 .. v52}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_273

    :cond_2e9
    const/16 v31, 0x0

    move-object/from16 v30, p1

    move-object/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v27

    move-wide/from16 v38, v28

    invoke-static/range {v30 .. v41}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_a7

    :cond_2fa
    const/4 v4, 0x1

    move/from16 v0, v74

    move v1, v4

    if-ne v0, v1, :cond_311

    const/16 v52, 0x0

    sub-int v54, v26, v75

    move-object/from16 v51, p1

    move-object/from16 v53, v67

    move/from16 v55, v75

    move-wide/from16 v56, v28

    invoke-static/range {v51 .. v57}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto/16 :goto_a7

    :cond_311
    invoke-virtual/range {v67 .. v67}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v4

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VTimeZone;->isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z

    move-result v4

    if-eqz v4, :cond_33e

    const/16 v52, 0x0

    const-wide v61, 0x7fffffffffffffffL

    move-object/from16 v51, p1

    move-object/from16 v53, v25

    move/from16 v54, v26

    move/from16 v55, v27

    move/from16 v56, v35

    move/from16 v57, v36

    move/from16 v58, v37

    move-wide/from16 v59, v28

    invoke-static/range {v51 .. v62}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_a7

    :cond_33e
    const/16 v31, 0x0

    move-object/from16 v30, p1

    move-object/from16 v32, v25

    move/from16 v33, v26

    move/from16 v34, v27

    move-wide/from16 v38, v28

    invoke-static/range {v30 .. v41}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    const/16 v52, 0x0

    sub-int v54, v26, v75

    move-object/from16 v51, p1

    move-object/from16 v53, v67

    move/from16 v55, v75

    move-wide/from16 v56, v28

    invoke-static/range {v51 .. v57}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto/16 :goto_a7
.end method

.method private static writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p7

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    invoke-static {p0, p5}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string p2, "BYMONTHDAY"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "="

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide p4, 0x7fffffffffffffffL

    cmp-long p2, p9, p4

    if-eqz p2, :cond_30

    int-to-long p2, p3

    add-long p2, p2, p9

    invoke-static {p2, p3}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_30
    const-string p2, "\r\n"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p8

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    invoke-static {p0, p5}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string p2, "BYDAY"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "="

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object p2, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    const/4 p4, 0x1

    sub-int p4, p7, p4

    aget-object p2, p2, p4

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide p4, 0x7fffffffffffffffL

    cmp-long p2, p10, p4

    if-eqz p2, :cond_3a

    int-to-long p2, p3

    add-long p2, p2, p10

    invoke-static {p2, p3}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_3a
    const-string p2, "\r\n"

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v2, p6, 0x7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    add-int/lit8 p6, p6, 0x6

    div-int/lit8 v8, p6, 0x7

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_1e
    return-void

    :cond_1f
    const/4 v2, 0x1

    move/from16 v0, p5

    move v1, v2

    if-eq v0, v1, :cond_52

    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_52

    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int p6, v2, p6

    add-int/lit8 p6, p6, 0x1

    div-int/lit8 p6, p6, 0x7

    mul-int/lit8 v8, p6, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1e

    :cond_52
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p8

    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move/from16 p2, p6

    const/16 v16, 0x7

    if-gtz p6, :cond_9f

    const/16 p2, 0x1

    sub-int v6, p2, p6

    sub-int v16, v16, v6

    const/16 p2, 0x1

    sub-int p2, p5, p2

    if-gez p2, :cond_98

    const/16 p2, 0xb

    move/from16 v3, p2

    :goto_77
    neg-int v4, v6

    const-wide v7, 0x7fffffffffffffffL

    move-object/from16 v2, p0

    move/from16 v5, p7

    move/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    const/4 v14, 0x1

    :goto_87
    move-object/from16 v12, p0

    move/from16 v13, p5

    move/from16 v15, p7

    move-wide/from16 v17, p10

    move/from16 v19, p3

    invoke-static/range {v12 .. v19}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    invoke-static/range {p0 .. p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    goto :goto_1e

    :cond_98
    const/16 p2, 0x1

    sub-int p2, p5, p2

    move/from16 v3, p2

    goto :goto_77

    :cond_9f
    add-int/lit8 p4, p6, 0x6

    sget-object p8, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget p8, p8, p5

    move/from16 v0, p4

    move/from16 v1, p8

    if-le v0, v1, :cond_d2

    add-int/lit8 p4, p6, 0x6

    sget-object p6, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget p6, p6, p5

    sub-int v11, p4, p6

    sub-int v16, v16, v11

    add-int/lit8 p4, p5, 0x1

    const/16 p6, 0xb

    move/from16 v0, p4

    move/from16 v1, p6

    if-le v0, v1, :cond_d5

    const/16 p4, 0x0

    move/from16 v8, p4

    :goto_c3
    const/4 v9, 0x1

    const-wide v12, 0x7fffffffffffffffL

    move-object/from16 v7, p0

    move/from16 v10, p7

    move/from16 v14, p3

    invoke-static/range {v7 .. v14}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    :cond_d2
    move/from16 v14, p2

    goto :goto_87

    :cond_d5
    add-int/lit8 p4, p5, 0x1

    move/from16 v8, p4

    goto :goto_c3
.end method

.method private static writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    move v2, p2

    if-ne p1, v4, :cond_50

    move v1, v4

    :goto_5
    if-gez p2, :cond_10

    if-nez v1, :cond_10

    sget-object v3, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v3, p1

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    :cond_10
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string v3, "BYDAY"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v3, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    sub-int v4, p3, v4

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "BYMONTHDAY"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_3d
    if-ge v0, p4, :cond_53

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_50
    const/4 v3, 0x0

    move v1, v3

    goto :goto_5

    :cond_53
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, p5, v3

    if-eqz v3, :cond_65

    int-to-long v3, p7

    add-long/2addr v3, p5

    invoke-static {v3, v4}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_65
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    rem-int/lit8 v2, p6, 0x7

    if-nez v2, :cond_1a

    div-int/lit8 v8, p6, 0x7

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_19
    return-void

    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, p5

    move v1, v2

    if-eq v0, v1, :cond_4a

    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int v2, v2, p6

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_4a

    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, v2, p5

    sub-int p6, v2, p6

    div-int/lit8 p6, p6, 0x7

    add-int/lit8 p6, p6, 0x1

    mul-int/lit8 v8, p6, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_19

    :cond_4a
    const/4 v2, 0x1

    move/from16 v0, p5

    move v1, v2

    if-ne v0, v1, :cond_6b

    const/16 v2, 0x1d

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_6b

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_19

    :cond_6b
    const/4 v2, 0x6

    sub-int v8, p6, v2

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_19
.end method

.method private static writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    if-eqz p7, :cond_1d

    const-string v0, "RDATE"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long v0, p3

    add-long/2addr v0, p5

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1d
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/VTimeZone;

    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/BasicTimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/BasicTimeZone;

    iput-object p0, v0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-object v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .registers 14

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(IIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(JZ[I)V
    .registers 6

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .registers 12

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .registers 5

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    return-object v0
.end method

.method public getRawOffset()I
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public getTZURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .registers 4

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z
    .registers 12

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/BasicTimeZone;->hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z

    move-result v0

    return v0
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result v0

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-void
.end method

.method public setRawOffset(I)V
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setRawOffset(I)V

    return-void
.end method

.method public setTZURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-void
.end method

.method public useDaylightTime()Z
    .registers 2

    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/Writer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "TZURL:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v4, :cond_f

    const-string v4, "TZURL"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_f

    :cond_3c
    const-string v4, "LAST-MODIFIED:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v4, :cond_f

    const-string v4, "LAST-MODIFIED"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/ibm/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_f

    :cond_65
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_f

    :cond_6e
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    :goto_71
    return-void

    :cond_72
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_a8

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_a8

    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X-TZINFO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    :cond_a8
    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-direct {p0, p1, v4, v1}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    goto :goto_71
.end method

.method public write(Ljava/io/Writer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v4, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    new-instance v2, Lcom/ibm/icu/util/RuleBasedTimeZone;

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v4}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-direct {v2, v5, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/4 v1, 0x1

    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_22

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_61

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Partial@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    :cond_61
    invoke-direct {p0, p1, v2, v0}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method

.method public writeSimple(Ljava/io/Writer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v4, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v3

    new-instance v2, Lcom/ibm/icu/util/RuleBasedTimeZone;

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v4}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    aget-object v4, v3, v6

    check-cast v4, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-direct {v2, v5, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/4 v1, 0x1

    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_22

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_22
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_61

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_61

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X-TZINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Simple@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    :cond_61
    invoke-direct {p0, p1, v2, v0}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method
