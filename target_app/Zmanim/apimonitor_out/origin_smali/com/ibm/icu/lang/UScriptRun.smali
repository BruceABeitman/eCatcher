.class public final Lcom/ibm/icu/lang/UScriptRun;
.super Ljava/lang/Object;
.source "UScriptRun.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;
    }
.end annotation


# static fields
.field private static PAREN_STACK_DEPTH:I

.field private static pairedCharExtra:I

.field private static pairedCharPower:I

.field private static pairedChars:[I

.field private static parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;


# instance fields
.field private emptyCharArray:[C

.field private fixupCount:I

.field private parenSP:I

.field private pushCount:I

.field private scriptCode:I

.field private scriptLimit:I

.field private scriptStart:I

.field private text:[C

.field private textIndex:I

.field private textLimit:I

.field private textStart:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x20

    sput v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    new-array v0, v0, [Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    sput-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    const/4 v0, 0x1

    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    array-length v1, v1

    invoke-static {v1}, Lcom/ibm/icu/lang/UScriptRun;->highBit(I)B

    move-result v1

    shl-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/lang/UScriptRun;->pairedCharPower:I

    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    array-length v0, v0

    sget v1, Lcom/ibm/icu/lang/UScriptRun;->pairedCharPower:I

    sub-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/lang/UScriptRun;->pairedCharExtra:I

    return-void

    nop

    :array_28
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x18t 0x20t 0x0t 0x0t
        0x19t 0x20t 0x0t 0x0t
        0x1ct 0x20t 0x0t 0x0t
        0x1dt 0x20t 0x0t 0x0t
        0x39t 0x20t 0x0t 0x0t
        0x3at 0x20t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xat 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0xct 0x30t 0x0t 0x0t
        0xdt 0x30t 0x0t 0x0t
        0xet 0x30t 0x0t 0x0t
        0xft 0x30t 0x0t 0x0t
        0x10t 0x30t 0x0t 0x0t
        0x11t 0x30t 0x0t 0x0t
        0x14t 0x30t 0x0t 0x0t
        0x15t 0x30t 0x0t 0x0t
        0x16t 0x30t 0x0t 0x0t
        0x17t 0x30t 0x0t 0x0t
        0x18t 0x30t 0x0t 0x0t
        0x19t 0x30t 0x0t 0x0t
        0x1at 0x30t 0x0t 0x0t
        0x1bt 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v1, -0x1

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>([C)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/lang/UScriptRun;->reset([C)V

    return-void
.end method

.method public constructor <init>([CII)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method private static final dec(I)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    return v0
.end method

.method private static final dec(II)I
    .registers 3

    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    add-int/2addr v0, p0

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private final fixup(I)V
    .registers 5

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iget v2, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v1, v2}, Lcom/ibm/icu/lang/UScriptRun;->dec(II)I

    move-result v0

    :goto_8
    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    if-lez v1, :cond_1c

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    sget-object v1, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_8

    :cond_1c
    return-void
.end method

.method private static getPairIndex(I)I
    .registers 5

    sget v1, Lcom/ibm/icu/lang/UScriptRun;->pairedCharPower:I

    const/4 v0, 0x0

    sget-object v2, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    sget v3, Lcom/ibm/icu/lang/UScriptRun;->pairedCharExtra:I

    aget v2, v2, v3

    if-lt p0, v2, :cond_d

    sget v0, Lcom/ibm/icu/lang/UScriptRun;->pairedCharExtra:I

    :cond_d
    :goto_d
    const/4 v2, 0x1

    if-le v1, v2, :cond_1c

    shr-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    add-int v3, v0, v1

    aget v2, v2, v3

    if-lt p0, v2, :cond_d

    add-int/2addr v0, v1

    goto :goto_d

    :cond_1c
    sget-object v2, Lcom/ibm/icu/lang/UScriptRun;->pairedChars:[I

    aget v2, v2, v0

    if-eq v2, p0, :cond_23

    const/4 v0, -0x1

    :cond_23
    return v0
.end method

.method private static final highBit(I)B
    .registers 3

    if-gtz p0, :cond_5

    const/16 v1, -0x20

    :goto_4
    return v1

    :cond_5
    const/4 v0, 0x0

    const/high16 v1, 0x1

    if-lt p0, v1, :cond_f

    shr-int/lit8 p0, p0, 0x10

    add-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_f
    const/16 v1, 0x100

    if-lt p0, v1, :cond_18

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_18
    const/16 v1, 0x10

    if-lt p0, v1, :cond_21

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_21
    const/4 v1, 0x4

    if-lt p0, v1, :cond_29

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_29
    const/4 v1, 0x2

    if-lt p0, v1, :cond_31

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_31
    move v1, v0

    goto :goto_4
.end method

.method private static final inc(I)I
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(II)I

    move-result v0

    return v0
.end method

.method private static final inc(II)I
    .registers 3

    add-int v0, p0, p1

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->mod(I)I

    move-result v0

    return v0
.end method

.method private static final limitInc(I)I
    .registers 2

    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    if-ge p0, v0, :cond_6

    add-int/lit8 p0, p0, 0x1

    :cond_6
    return p0
.end method

.method private static final mod(I)I
    .registers 2

    sget v0, Lcom/ibm/icu/lang/UScriptRun;->PAREN_STACK_DEPTH:I

    rem-int v0, p0, v0

    return v0
.end method

.method private final pop()V
    .registers 5

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    if-lez v0, :cond_18

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    :cond_18
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->dec(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x1

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    goto :goto_7
.end method

.method private final push(II)V
    .registers 6

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->limitInc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->inc(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    new-instance v2, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    invoke-direct {v2, p1, p2}, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;-><init>(II)V

    aput-object v2, v0, v1

    return-void
.end method

.method private static sameScript(II)Z
    .registers 3

    const/4 v0, 0x1

    if-le p0, v0, :cond_7

    if-le p1, v0, :cond_7

    if-ne p0, p1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final stackIsEmpty()Z
    .registers 2

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private final stackIsNotEmpty()Z
    .registers 2

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final syncFixup()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    return-void
.end method

.method private final top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;
    .registers 3

    sget-object v0, Lcom/ibm/icu/lang/UScriptRun;->parenStack:[Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    iget v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public final getScriptCode()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    return v0
.end method

.method public final getScriptLimit()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    return v0
.end method

.method public final getScriptStart()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    return v0
.end method

.method public final next()Z
    .registers 12

    const/4 v7, 0x0

    const/4 v10, 0x1

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    iget v6, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    if-lt v5, v6, :cond_a

    move v5, v7

    :goto_9
    return v5

    :cond_a
    iput v7, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    iput v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->syncFixup()V

    :cond_13
    :goto_13
    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    iget v6, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    if-ge v5, v6, :cond_89

    iget-object v5, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    iget v6, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    iget v7, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    iget v8, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    iget v9, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    sub-int/2addr v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ibm/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    invoke-static {v0}, Lcom/ibm/icu/lang/UScript;->getScript(I)I

    move-result v4

    invoke-static {v0}, Lcom/ibm/icu/lang/UScriptRun;->getPairIndex(I)I

    move-result v2

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    if-ltz v2, :cond_44

    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_63

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v2, v5}, Lcom/ibm/icu/lang/UScriptRun;->push(II)V

    :cond_44
    :goto_44
    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    invoke-static {v5, v4}, Lcom/ibm/icu/lang/UScriptRun;->sameScript(II)Z

    move-result v5

    if-eqz v5, :cond_84

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    if-gt v5, v10, :cond_59

    if-le v4, v10, :cond_59

    iput v4, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    invoke-direct {p0, v5}, Lcom/ibm/icu/lang/UScriptRun;->fixup(I)V

    :cond_59
    if-ltz v2, :cond_13

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_13

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_13

    :cond_63
    and-int/lit8 v3, v2, -0x2

    :goto_65
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v5, v5, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->pairIndex:I

    if-eq v5, v3, :cond_77

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_65

    :cond_77
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->top()Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;

    move-result-object v5

    iget v4, v5, Lcom/ibm/icu/lang/UScriptRun$ParenStackEntry;->scriptCode:I

    goto :goto_44

    :cond_84
    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    :cond_89
    iget v5, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    iput v5, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    move v5, v10

    goto/16 :goto_9
.end method

.method public final reset()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    :goto_2
    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->stackIsNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/ibm/icu/lang/UScriptRun;->pop()V

    goto :goto_2

    :cond_c
    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptStart:I

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptLimit:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->scriptCode:I

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->parenSP:I

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->pushCount:I

    iput v2, p0, Lcom/ibm/icu/lang/UScriptRun;->fixupCount:I

    iget v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    iput v0, p0, Lcom/ibm/icu/lang/UScriptRun;->textIndex:I

    return-void
.end method

.method public final reset(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    array-length v0, v1

    :cond_8
    if-ltz p1, :cond_10

    if-ltz p2, :cond_10

    sub-int v1, v0, p2

    if-le p1, v1, :cond_16

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_16
    iput p1, p0, Lcom/ibm/icu/lang/UScriptRun;->textStart:I

    add-int v1, p1, p2

    iput v1, p0, Lcom/ibm/icu/lang/UScriptRun;->textLimit:I

    invoke-virtual {p0}, Lcom/ibm/icu/lang/UScriptRun;->reset()V

    return-void
.end method

.method public final reset(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/lang/UScriptRun;->reset(Ljava/lang/String;II)V

    return-void
.end method

.method public final reset(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([C)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/lang/UScriptRun;->reset([CII)V

    return-void
.end method

.method public final reset([CII)V
    .registers 4

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/ibm/icu/lang/UScriptRun;->emptyCharArray:[C

    :cond_4
    iput-object p1, p0, Lcom/ibm/icu/lang/UScriptRun;->text:[C

    invoke-virtual {p0, p2, p3}, Lcom/ibm/icu/lang/UScriptRun;->reset(II)V

    return-void
.end method
