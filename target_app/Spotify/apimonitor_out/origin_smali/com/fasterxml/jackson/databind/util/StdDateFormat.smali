.class public Lcom/fasterxml/jackson/databind/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "SourceFile"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field public static final instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;


# instance fields
.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;

.field protected transient _timezone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 2

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    return-void
.end method

.method private final _cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final _cloneFormat(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 3

    invoke-virtual {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    if-eqz p1, :cond_b

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_b
    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/util/TimeZone;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .registers 6

    const/16 v4, 0x2d

    const/16 v3, 0x2b

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2b

    add-int/lit8 v2, v1, -0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_16

    if-ne v2, v4, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    add-int/lit8 v2, v1, -0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_16

    if-eq v2, v4, :cond_16

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_16

    if-eq v1, v4, :cond_16

    :cond_2b
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_c

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_27

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 12

    const/16 v9, 0x22

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    array-length v6, v5

    move v0, v1

    :goto_1c
    if-ge v0, v6, :cond_35

    aget-object v7, v5, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_31

    const-string v8, "\", \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_31
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_35
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/ParseException;

    const-string v5, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x39

    if-le v1, v2, :cond_f

    :cond_1f
    if-gez v0, :cond_32

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_a

    :cond_32
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    goto :goto_a
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 8

    const/16 v4, 0x5a

    const/16 v3, 0x3a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    if-nez v0, :cond_24

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    :cond_24
    :goto_24
    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_29
    if-ne v0, v4, :cond_50

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez v0, :cond_37

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    :cond_37
    add-int/lit8 v2, v1, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    const-string v3, ".000"

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24

    :cond_50
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b9

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v1, -0x3

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_8e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x5

    const-string v2, ".000"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v1, :cond_24

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    goto :goto_24

    :cond_9d
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_a5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_6e

    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6e

    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x54

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_d0

    const-string v1, ".000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    if-nez v0, :cond_24

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    goto/16 :goto_24
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_c

    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eq p1, v0, :cond_f

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    :cond_f
    return-void
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .registers 3

    if-nez p1, :cond_4

    sget-object p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
