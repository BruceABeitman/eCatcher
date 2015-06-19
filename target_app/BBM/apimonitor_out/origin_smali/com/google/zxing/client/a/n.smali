.class public final Lcom/google/zxing/client/a/n;
.super Lcom/google/zxing/client/a/u;
.source "GeoResultParser.java"


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/a/n;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/a/u;-><init>()V

    return-void
.end method

.method private static d(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/m;
    .registers 12

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/zxing/client/a/n;->b(Lcom/google/zxing/m;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/client/a/n;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    const/4 v1, 0x4

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    :try_start_1a
    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_13

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_13

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v9, 0x4066800000000000L

    cmpl-double v9, v3, v9

    if-gtz v9, :cond_13

    const-wide v9, -0x3f99800000000000L

    cmpg-double v9, v3, v9

    if-ltz v9, :cond_13

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_53} :catch_6b

    move-result-object v9

    if-nez v9, :cond_5c

    :goto_56
    new-instance v0, Lcom/google/zxing/client/a/m;

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/client/a/m;-><init>(DDDLjava/lang/String;)V

    goto :goto_13

    :cond_5c
    const/4 v9, 0x3

    :try_start_5d
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_64} :catch_6b

    move-result-wide v8

    cmpg-double v5, v8, v5

    if-ltz v5, :cond_13

    move-wide v5, v8

    goto :goto_56

    :catch_6b
    move-exception v1

    goto :goto_13
.end method


# virtual methods
.method public final synthetic a(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/q;
    .registers 3

    invoke-static {p1}, Lcom/google/zxing/client/a/n;->d(Lcom/google/zxing/m;)Lcom/google/zxing/client/a/m;

    move-result-object v0

    return-object v0
.end method
