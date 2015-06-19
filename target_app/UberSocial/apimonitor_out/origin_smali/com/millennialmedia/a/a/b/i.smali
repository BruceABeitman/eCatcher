.class public final Lcom/millennialmedia/a/a/b/i;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    :goto_6
    return v0

    :catch_7
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_10

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_6

    :catch_10
    move-exception v0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_6
.end method

.method public longValue()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    :goto_6
    return-wide v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/i;->a:Ljava/lang/String;

    return-object v0
.end method
