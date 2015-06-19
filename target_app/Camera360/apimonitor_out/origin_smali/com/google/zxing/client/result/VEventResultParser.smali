.class public final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1

    :cond_f
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_e
.end method

.method private static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 9

    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_d
    const/4 v1, 0x0

    :cond_e
    return-object v1

    :cond_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_e

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method private static stripMailto(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const-string/jumbo v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_19
    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .registers 24

    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/VEventResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "BEGIN:VEVENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_11

    const/4 v2, 0x0

    :goto_10
    return-object v2

    :cond_11
    const-string/jumbo v2, "SUMMARY"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "DTSTART"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    const/4 v2, 0x0

    goto :goto_10

    :cond_2f
    const-string/jumbo v2, "DTEND"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "DURATION"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "LOCATION"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "ORGANIZER"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "ATTENDEE"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_88

    const/16 v16, 0x0

    :goto_78
    array-length v2, v9

    move/from16 v0, v16

    if-ge v0, v2, :cond_88

    aget-object v2, v9, v16

    invoke-static {v2}, Lcom/google/zxing/client/result/VEventResultParser;->stripMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_78

    :cond_88
    const-string/jumbo v2, "DESCRIPTION"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "GEO"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Lcom/google/zxing/client/result/VEventResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_b3

    const-wide/high16 v11, 0x7ff8

    const-wide/high16 v13, 0x7ff8

    :goto_a8
    :try_start_a8
    new-instance v2, Lcom/google/zxing/client/result/CalendarParsedResult;

    invoke-direct/range {v2 .. v14}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_ad} :catch_af

    goto/16 :goto_10

    :catch_af
    move-exception v17

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_b3
    const/16 v2, 0x3b

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    if-gez v19, :cond_be

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_be
    const/4 v2, 0x0

    :try_start_bf
    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_bf .. :try_end_d2} :catch_d4

    move-result-wide v13

    goto :goto_a8

    :catch_d4
    move-exception v17

    const/4 v2, 0x0

    goto/16 :goto_10
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VEventResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;

    move-result-object v0

    return-object v0
.end method
