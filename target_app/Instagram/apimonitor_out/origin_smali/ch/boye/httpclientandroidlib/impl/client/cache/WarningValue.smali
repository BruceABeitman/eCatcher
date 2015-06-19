.class Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;
.super Ljava/lang/Object;
.source "WarningValue.java"


# static fields
.field private static final ASCTIME_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}"

.field private static final DATE1:Ljava/lang/String; = "\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}"

.field private static final DATE2:Ljava/lang/String; = "\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}"

.field private static final DATE3:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d"

.field private static final DOMAINLABEL:Ljava/lang/String; = "\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final HOST:Ljava/lang/String; = "((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+)"

.field private static final HOSTNAME:Ljava/lang/String; = "(\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?"

.field private static final HOSTPORT:Ljava/lang/String; = "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

.field private static final HOSTPORT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_DATE:Ljava/lang/String; = "((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4})"

.field private static final IPV4ADDRESS:Ljava/lang/String; = "\\d+\\.\\d+\\.\\d+\\.\\d+"

.field private static final MONTH:Ljava/lang/String; = "Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec"

.field private static final PORT:Ljava/lang/String; = "\\d*"

.field private static final RFC1123_DATE:Ljava/lang/String; = "(Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final RFC850_DATE:Ljava/lang/String; = "(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT"

.field private static final TIME:Ljava/lang/String; = "\\d{2}:\\d{2}:\\d{2}"

.field private static final TOPLABEL:Ljava/lang/String; = "\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?"

.field private static final WARN_DATE:Ljava/lang/String; = "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

.field private static final WARN_DATE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final WEEKDAY:Ljava/lang/String; = "Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday"

.field private static final WKDAY:Ljava/lang/String; = "Mon|Tue|Wed|Thu|Fri|Sat|Sun"


# instance fields
.field private init_offs:I

.field private offs:I

.field private src:Ljava/lang/String;

.field private warnAgent:Ljava/lang/String;

.field private warnCode:I

.field private warnDate:Ljava/util/Date;

.field private warnText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(((\\p{Alnum}([\\p{Alnum}-]*\\p{Alnum})?\\.)*\\p{Alpha}([\\p{Alnum}-]*\\p{Alnum})?\\.?)|(\\d+\\.\\d+\\.\\d+\\.\\d+))(\\:\\d*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"(((Mon|Tue|Wed|Thu|Fri|Sat|Sun), (\\d{2} (Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) \\d{4}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday), (\\d{2}-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-\\d{2}) (\\d{2}:\\d{2}:\\d{2}) GMT)|((Mon|Tue|Wed|Thu|Fri|Sat|Sun) ((Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec) ( |\\d)\\d) (\\d{2}:\\d{2}:\\d{2}) \\d{4}))\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->init_offs:I

    iput p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnValue()V

    return-void
.end method

.method public static getWarningValues(Lch/boye/httpclientandroidlib/Header;)[Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_29

    :try_start_11
    new-instance v4, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    invoke-direct {v4, v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v4, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_b

    :catch_1c
    move-exception v4

    const/16 v4, 0x2c

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_29

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    new-array v0, v1, [Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;

    return-object v0
.end method

.method private isChar(C)Z
    .registers 3

    if-ltz p1, :cond_8

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isControl(C)Z
    .registers 3

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_a

    if-ltz p1, :cond_c

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isSeparator(C)Z
    .registers 3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x29

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x22

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x9

    if-ne p1, v0, :cond_4e

    :cond_4c
    const/4 v0, 0x1

    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method private isTokenChar(C)Z
    .registers 3

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private parseError()V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->init_offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad warn code \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected consumeCharacter(C)V
    .registers 4

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_16

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_19

    :cond_16
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_19
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeHostPort()V
    .registers 4

    sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->HOSTPORT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_20
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeLinearWhitespace()V
    .registers 3

    :goto_0
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_5a

    :cond_15
    return-void

    :sswitch_16
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    :cond_4c
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    :sswitch_52
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_0

    nop

    :sswitch_data_5a
    .sparse-switch
        0x9 -> :sswitch_52
        0xd -> :sswitch_16
        0x20 -> :sswitch_52
    .end sparse-switch
.end method

.method protected consumeQuotedString()V
    .registers 6

    const/16 v4, 0x22

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_f

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_f
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    const/4 v0, 0x0

    :goto_16
    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6e

    if-nez v0, :cond_6e

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_51

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_51

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isChar(C)Z

    move-result v2

    if-eqz v2, :cond_51

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    :cond_51
    if-ne v1, v4, :cond_5b

    const/4 v0, 0x1

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    :cond_5b
    if-eq v1, v4, :cond_6a

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isControl(C)Z

    move-result v1

    if-nez v1, :cond_6a

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_16

    :cond_6a
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    goto :goto_16

    :cond_6e
    if-nez v0, :cond_73

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_73
    return-void
.end method

.method protected consumeToken()V
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_11
    :goto_11
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->isTokenChar(C)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    goto :goto_11

    :cond_30
    return-void
.end method

.method protected consumeWarnAgent()V
    .registers 5

    const/16 v3, 0x20

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    :try_start_4
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeHostPort()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeToken()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    goto :goto_16
.end method

.method protected consumeWarnCode()V
    .registers 4

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_48

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4b

    :cond_48
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_4b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    return-void
.end method

.method protected consumeWarnDate()V
    .registers 5

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->WARN_DATE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->parseError()V

    :cond_19
    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    :try_start_22
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;
    :try_end_34
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_22 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "couldn\'t parse a parseable date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected consumeWarnText()V
    .registers 4

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeQuotedString()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-void
.end method

.method protected consumeWarnValue()V
    .registers 4

    const/16 v2, 0x20

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnCode()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnAgent()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnText()V

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_38

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_38

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_38

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeWarnDate()V

    :cond_38
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeLinearWhitespace()V

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->offs:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4a

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->consumeCharacter(C)V

    :cond_4a
    return-void
.end method

.method public getWarnAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnCode()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    return v0
.end method

.method public getWarnDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    return-object v0
.end method

.method public getWarnText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    if-eqz v0, :cond_2a

    const-string v0, "%d %s %s \"%s\""

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnDate:Ljava/util/Date;

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    const-string v0, "%d %s %s"

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnAgent:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->warnText:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method
