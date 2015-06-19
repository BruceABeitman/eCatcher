.class public Lcom/ibm/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final FRACTION:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final INTEGER:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final PERCENT:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field public static final SIGN:Lcom/ibm/icu/text/NumberFormat$Field; = null

.field static final serialVersionUID:J = -0x3ead070c1cf65f72L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "integer"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "fraction"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "exponent symbol"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "decimal separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "grouping separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "percent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "per mille"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string v1, "currency"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_26
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_39
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_4c
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_5f
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_72
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_12

    :cond_85
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_12

    :cond_99
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_12

    :cond_ad
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_12

    :cond_c1
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_12

    :cond_d5
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
