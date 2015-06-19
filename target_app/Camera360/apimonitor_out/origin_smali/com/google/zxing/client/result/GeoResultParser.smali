.class public final Lcom/google/zxing/client/result/GeoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "GeoResultParser.java"


# static fields
.field private static final GEO_URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;
    .registers 15

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/google/zxing/client/result/GeoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/zxing/client/result/GeoResultParser;->GEO_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    :try_start_18
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v11, 0x4056800000000000L

    cmpl-double v11, v1, v11

    if-gtz v11, :cond_11

    const-wide v11, -0x3fa9800000000000L

    cmpg-double v11, v1, v11

    if-ltz v11, :cond_11

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v11, 0x4066800000000000L

    cmpl-double v11, v3, v11

    if-gtz v11, :cond_11

    const-wide v11, -0x3f99800000000000L

    cmpg-double v11, v3, v11

    if-ltz v11, :cond_11

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_51} :catch_6c

    move-result-object v11

    if-nez v11, :cond_5c

    const-wide/16 v5, 0x0

    :cond_56
    new-instance v0, Lcom/google/zxing/client/result/GeoParsedResult;

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/client/result/GeoParsedResult;-><init>(DDDLjava/lang/String;)V

    goto :goto_11

    :cond_5c
    const/4 v11, 0x3

    :try_start_5d
    invoke-virtual {v9, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_64} :catch_6c

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmpg-double v11, v5, v11

    if-gez v11, :cond_56

    goto :goto_11

    :catch_6c
    move-exception v8

    goto :goto_11
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/GeoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/GeoParsedResult;

    move-result-object v0

    return-object v0
.end method
