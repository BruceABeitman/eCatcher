.class public abstract Lcom/fasterxml/jackson/a/a/c;
.super Lcom/fasterxml/jackson/a/a/d;
.source "ParserBase.java"


# static fields
.field static final r:Ljava/math/BigInteger;

.field static final s:Ljava/math/BigInteger;

.field static final t:Ljava/math/BigInteger;

.field static final u:Ljava/math/BigInteger;

.field static final v:Ljava/math/BigDecimal;

.field static final w:Ljava/math/BigDecimal;

.field static final x:Ljava/math/BigDecimal;

.field static final y:Ljava/math/BigDecimal;


# instance fields
.field protected A:I

.field protected B:J

.field protected C:D

.field protected D:Ljava/math/BigInteger;

.field protected E:Ljava/math/BigDecimal;

.field protected F:Z

.field protected G:I

.field protected H:I

.field protected I:I

.field protected final a:Lcom/fasterxml/jackson/a/c/d;

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:I

.field protected g:I

.field protected h:J

.field protected i:I

.field protected j:I

.field protected k:Lcom/fasterxml/jackson/a/d/d;

.field protected l:Lcom/fasterxml/jackson/a/r;

.field protected final m:Lcom/fasterxml/jackson/a/g/o;

.field protected n:[C

.field protected o:Z

.field protected p:Lcom/fasterxml/jackson/a/g/d;

.field protected q:[B

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->v:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->w:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->x:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lcom/fasterxml/jackson/a/a/c;->y:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/a/c/d;I)V
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/d;-><init>()V

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->d:I

    iput-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->e:J

    iput v1, p0, Lcom/fasterxml/jackson/a/a/c;->f:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->g:I

    iput-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->h:J

    iput v1, p0, Lcom/fasterxml/jackson/a/a/c;->i:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->j:I

    iput-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->o:Z

    iput-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->_features:I

    iput-object p1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/c/d;->d()Lcom/fasterxml/jackson/a/g/o;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-static {}, Lcom/fasterxml/jackson/a/d/d;->b()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    return-void
.end method

.method protected static a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 6

    const/16 v0, 0x20

    if-gt p1, v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal white space character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    if-eqz p3, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_48
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected padding character (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_74
    invoke-static {p1}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character (code 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29
.end method

.method private a(I)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_66

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->d()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->c()I

    move-result v0

    iget v2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    iget-boolean v3, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v3, :cond_1b

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2d

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/a/c/h;->a([CII)I

    move-result v0

    iget-boolean v1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v1, :cond_28

    neg-int v0, v0

    :cond_28
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    :goto_2c
    return-void

    :cond_2d
    const/16 v3, 0x12

    if-gt v2, v3, :cond_62

    invoke-static {v1, v0, v2}, Lcom/fasterxml/jackson/a/c/h;->b([CII)J

    move-result-wide v0

    iget-boolean v3, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v3, :cond_3a

    neg-long v0, v0

    :cond_3a
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5c

    iget-boolean v2, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    if-eqz v2, :cond_4f

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5c

    long-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_2c

    :cond_4f
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5c

    long-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    iput v4, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_2c

    :cond_5c
    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    goto :goto_2c

    :cond_62
    invoke-direct {p0, v1, v0, v2}, Lcom/fasterxml/jackson/a/a/c;->a([CII)V

    goto :goto_2c

    :cond_66
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_70

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/a/a/c;->b(I)V

    goto :goto_2c

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private a([CII)V
    .registers 8

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    invoke-static {p1, p2, p3, v0}, Lcom/fasterxml/jackson/a/c/h;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_17

    :catch_23
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed numeric value \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/a/c;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method

.method private static b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/a/a/c;->a(Lcom/fasterxml/jackson/a/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 5

    const/16 v0, 0x10

    if-ne p1, v0, :cond_11

    :try_start_4
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->g()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->h()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_10

    :catch_1e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/a/a/c;->_wrapError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private h()Lcom/fasterxml/jackson/a/d/d;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    return-object v0
.end method

.method private i()J
    .registers 3

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->h:J

    return-wide v0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->i:I

    return v0
.end method

.method private k()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->j:I

    if-gez v0, :cond_5

    :goto_4
    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private l()V
    .registers 6

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_35

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    :cond_2c
    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    :goto_2e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    return-void

    :cond_35
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->r:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_4f

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->s:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_52

    :cond_4f
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    :cond_52
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_2e

    :cond_5b
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7d

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_74

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_77

    :cond_74
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    :cond_77
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    double-to-int v0, v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_2e

    :cond_7d
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->x:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_97

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->y:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9a

    :cond_97
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->q()V

    :cond_9a
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    goto :goto_2e

    :cond_a3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_2e
.end method

.method private m()V
    .registers 5

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    :goto_b
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    return-void

    :cond_12
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_38

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->t:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2c

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->u:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2f

    :cond_2c
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    :cond_2f
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_b

    :cond_38
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_57

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4e

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_51

    :cond_4e
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    :cond_51
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_b

    :cond_57
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->v:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_71

    sget-object v0, Lcom/fasterxml/jackson/a/a/c;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_74

    :cond_71
    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->r()V

    :cond_74
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    goto :goto_b

    :cond_7d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_b
.end method

.method private n()V
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    :goto_e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    return-void

    :cond_15
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_e

    :cond_24
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_e

    :cond_34
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_e

    :cond_47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_e
.end method

.method private o()V
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    :goto_e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    return-void

    :cond_15
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_e

    :cond_24
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_30

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_e

    :cond_30
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    goto :goto_e

    :cond_3c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_e
.end method

.method private p()V
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_18

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    :goto_11
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    return-void

    :cond_18
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_28
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_37

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_37
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_11

    :cond_47
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    goto :goto_11
.end method

.method private q()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int (-2147483648 - 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method private r()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long (-9223372036854775808 - 9223372036854775807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected _handleEOF()V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->inRoot()Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method protected final a(Lcom/fasterxml/jackson/a/a;CI)I
    .registers 6

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->g()C

    move-result v1

    const/16 v0, 0x20

    if-gt v1, v0, :cond_15

    if-nez p3, :cond_15

    const/4 v0, -0x1

    :cond_14
    return v0

    :cond_15
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(C)I

    move-result v0

    if-gez v0, :cond_14

    invoke-static {p1, v1, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Lcom/fasterxml/jackson/a/a;II)I
    .registers 6

    const/16 v0, 0x5c

    if-eq p2, v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->g()C

    move-result v1

    const/16 v0, 0x20

    if-gt v1, v0, :cond_15

    if-nez p3, :cond_15

    const/4 v0, -0x1

    :cond_14
    return v0

    :cond_15
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/a/a;->b(I)I

    move-result v0

    if-gez v0, :cond_14

    invoke-static {p1, v1, p3}, Lcom/fasterxml/jackson/a/a/c;->b(Lcom/fasterxml/jackson/a/a;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;D)Lcom/fasterxml/jackson/a/r;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected final a(ZI)Lcom/fasterxml/jackson/a/r;
    .registers 4

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->H:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->I:I

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected final a(ZIII)Lcom/fasterxml/jackson/a/r;
    .registers 6

    if-gtz p3, :cond_9

    if-gtz p4, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/a/a/c;->a(ZI)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/a/a/c;->b(ZIII)Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    goto :goto_8
.end method

.method protected final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_reportInvalidEOF()V

    :cond_9
    return-void
.end method

.method protected final a(IC)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/d/d;->getTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/a/a/c;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->_reportError(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(ZIII)Lcom/fasterxml/jackson/a/r;
    .registers 6

    iput-boolean p1, p0, Lcom/fasterxml/jackson/a/a/c;->F:Z

    iput p2, p0, Lcom/fasterxml/jackson/a/a/c;->G:I

    iput p3, p0, Lcom/fasterxml/jackson/a/a/c;->H:I

    iput p4, p0, Lcom/fasterxml/jackson/a/a/c;->I:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;

    return-object v0
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()V
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    :try_start_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->d()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    :cond_d
    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->e()V

    throw v0
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->m:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->a()V

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->n:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/a/c/d;->c([C)V

    :cond_11
    return-void
.end method

.method public final f()Lcom/fasterxml/jackson/a/g/d;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    if-nez v0, :cond_e

    new-instance v0, Lcom/fasterxml/jackson/a/g/d;

    invoke-direct {v0}, Lcom/fasterxml/jackson/a/g/d;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    :goto_b
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->p:Lcom/fasterxml/jackson/a/g/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/d;->a()V

    goto :goto_b
.end method

.method protected g()C
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_17

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_e

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->n()V

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/a/j;
    .registers 9

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    iget v1, p0, Lcom/fasterxml/jackson/a/a/c;->g:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    new-instance v0, Lcom/fasterxml/jackson/a/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/fasterxml/jackson/a/a/c;->e:J

    iget v4, p0, Lcom/fasterxml/jackson/a/a/c;->c:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lcom/fasterxml/jackson/a/a/c;->f:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_17

    :cond_c
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_18

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_f

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->p()V

    :cond_18
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_f

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_f
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->o()V

    :cond_18
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    return-wide v0
.end method

.method public getEmbeddedObject()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatValue()F
    .registers 3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->getDoubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getIntValue()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->l()V

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    return v0
.end method

.method public getLongValue()J
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_e
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->m()V

    :cond_17
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    return-wide v0
.end method

.method public getNumberType$72641f5()I
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    sget v0, Lcom/fasterxml/jackson/a/o;->a:I

    :goto_16
    return v0

    :cond_17
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    sget v0, Lcom/fasterxml/jackson/a/o;->b:I

    goto :goto_16

    :cond_20
    sget v0, Lcom/fasterxml/jackson/a/o;->c:I

    goto :goto_16

    :cond_23
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    sget v0, Lcom/fasterxml/jackson/a/o;->f:I

    goto :goto_16

    :cond_2c
    sget v0, Lcom/fasterxml/jackson/a/o;->e:I

    goto :goto_16
.end method

.method public getNumberValue()Ljava/lang/Number;
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/a/a/c;->a(I)V

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->B:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1a

    :cond_28
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->D:Ljava/math/BigInteger;

    goto :goto_1a

    :cond_31
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_1a

    :cond_34
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->E:Ljava/math/BigDecimal;

    goto :goto_1a

    :cond_3d
    iget v0, p0, Lcom/fasterxml/jackson/a/a/c;->z:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/a/c;->_throwInternal()V

    :cond_46
    iget-wide v0, p0, Lcom/fasterxml/jackson/a/a/c;->C:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1a
.end method

.method public synthetic getParsingContext()Lcom/fasterxml/jackson/a/q;
    .registers 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->h()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    return-object v0
.end method

.method public getTokenLocation()Lcom/fasterxml/jackson/a/j;
    .registers 7

    new-instance v0, Lcom/fasterxml/jackson/a/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->a:Lcom/fasterxml/jackson/a/c/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/c/d;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->i()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->j()I

    move-result v4

    invoke-direct {p0}, Lcom/fasterxml/jackson/a/a/c;->k()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/a/j;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public hasTextCharacters()Z
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->o:Z

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/a/a/c;->b:Z

    return v0
.end method

.method public overrideCurrentName(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/a/c;->k:Lcom/fasterxml/jackson/a/d/d;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/fasterxml/jackson/a/a/c;->_currToken:Lcom/fasterxml/jackson/a/r;

    sget-object v2, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v1, v2, :cond_12

    :cond_e
    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/d;->c()Lcom/fasterxml/jackson/a/d/d;

    move-result-object v0

    :cond_12
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public version()Lcom/fasterxml/jackson/a/w;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
