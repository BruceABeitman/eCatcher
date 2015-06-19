.class public Lorg/codehaus/jackson/map/util/StdDateFormat;
.super Ljava/text/DateFormat;


# static fields
.field static final ALL_FORMATS:[Ljava/lang/String; = null

.field static final DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat; = null

.field static final DATE_FORMAT_ISO8601_Z:Ljava/text/SimpleDateFormat; = null

.field static final DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat; = null

.field static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field static final DATE_FORMAT_STR_ISO8601_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field public static final instance:Lorg/codehaus/jackson/map/util/StdDateFormat;


# instance fields
.field transient _formatISO8601:Ljava/text/SimpleDateFormat;

.field transient _formatISO8601_z:Ljava/text/SimpleDateFormat;

.field transient _formatRFC1123:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v5, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v3, v0, v1

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->instance:Lorg/codehaus/jackson/map/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    return-void
.end method

.method public static getBlueprintISO8601Format()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getBlueprintRFC1123Format()Ljava/text/DateFormat;
    .registers 1

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 2

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .registers 2

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/StdDateFormat;->clone()Lorg/codehaus/jackson/map/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/codehaus/jackson/map/util/StdDateFormat;
    .registers 2

    new-instance v0, Lorg/codehaus/jackson/map/util/StdDateFormat;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/util/StdDateFormat;-><init>()V

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_e

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_28

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    move v0, v2

    goto :goto_27
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v9, 0x22

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v8}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v2

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/codehaus/jackson/map/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    array-length v4, v3

    move v5, v8

    :goto_1c
    if-ge v5, v4, :cond_35

    aget-object v6, v3, v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_31

    const-string v7, "\", \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_31
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_35
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/ParseException;

    const-string v4, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    invoke-direct {v3, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    goto :goto_a
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 7

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_24

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_6f

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601_z:Ljava/text/SimpleDateFormat;

    move-object v1, p1

    :cond_1f
    :goto_1f
    invoke-virtual {v0, v1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    :cond_24
    sub-int v1, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v2, v0, v3

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3f
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_1f

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatISO8601:Ljava/text/SimpleDateFormat;

    goto :goto_1f

    :cond_50
    const/16 v0, 0x2b

    if-eq v1, v0, :cond_58

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_6d

    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3f

    :cond_6d
    move-object v1, p1

    goto :goto_3f

    :cond_6f
    move-object v1, p1

    goto :goto_1f
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_e

    sget-object v0, Lorg/codehaus/jackson/map/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/SimpleDateFormat;

    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/StdDateFormat;->_formatRFC1123:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
