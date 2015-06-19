.class Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF7StyleCharsetEncoder.java"


# static fields
.field private static final AVG_BYTES_PER_CHAR:F = 1.5f

.field private static final MAX_BYTES_PER_CHAR:F = 5.0f

.field static useUglyHackToForceCallToFlushInJava5:Z


# instance fields
.field private final base64:Lcom/beetstra/jutf7/Base64Util;

.field private base64mode:Z

.field private bitsToOutput:I

.field private final cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

.field private sextet:I

.field private final shift:B

.field private final strict:Z

.field private final unshift:B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v2, "java.specification.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.vm.vendor"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "1.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    sput-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    sget-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    const-string v3, "Sun Microsystems Inc."

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    sput-boolean v2, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    return-void

    :cond_2b
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .registers 6

    const/high16 v0, 0x3fc0

    const/high16 v1, 0x40a0

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->unshift()B

    move-result v0

    iput-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    return-void
.end method

.method private encodeBase64(CLjava/nio/ByteBuffer;)V
    .registers 6

    const/4 v2, 0x6

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v0, :cond_a

    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    :goto_13
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    if-lt v0, v2, :cond_3a

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    shr-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    goto :goto_13

    :cond_3a
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    sub-int v0, v2, v0

    shl-int v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    return-void
.end method

.method private unshift(Ljava/nio/ByteBuffer;C)V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_15
    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    invoke-virtual {v0, p2}, Lcom/beetstra/jutf7/Base64Util;->contains(C)Z

    move-result v0

    if-nez v0, :cond_25

    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    if-eq p2, v0, :cond_25

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    if-eqz v0, :cond_2a

    :cond_25
    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_2a
    iput-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iput v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    goto :goto_5
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 7

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_10

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    invoke-virtual {v1, v0}, Lcom/beetstra/jutf7/UTF7StyleCharset;->canEncodeDirectly(C)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-direct {p0, p2, v0}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift(Ljava/nio/ByteBuffer;C)V

    int-to-byte v1, v0

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_24
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-nez v1, :cond_37

    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    if-ne v0, v1, :cond_37

    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_37
    invoke-direct {p0, v0, p2}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->encodeBase64(CLjava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3b
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-eqz v1, :cond_57

    sget-boolean v1, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    if-eqz v1, :cond_57

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_57

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_f

    :cond_57
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_f
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .registers 4

    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    :goto_d
    return-object v0

    :cond_e
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->getChar(I)B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1d
    iget-byte v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_22
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_d
.end method

.method protected implReset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    return-void
.end method
