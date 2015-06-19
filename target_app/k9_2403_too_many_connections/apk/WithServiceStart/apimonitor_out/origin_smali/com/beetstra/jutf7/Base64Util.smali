.class Lcom/beetstra/jutf7/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static final ALPHABET_LENGTH:I = 0x40


# instance fields
.field private final alphabet:[C

.field private final inverseAlphabet:[I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_36

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alphabet has incorrect length (should be 64, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_36
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    :goto_41
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    array-length v2, v2

    if-ge v1, v2, :cond_6c

    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v2, v1

    if-lt v0, v4, :cond_65

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character in alphabet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aput v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_6c
    return-void
.end method


# virtual methods
.method contains(C)Z
    .registers 4

    const/4 v1, 0x0

    const/16 v0, 0x80

    if-lt p1, v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v0, v0, p1

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method getChar(I)B
    .registers 3

    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method getSextet(B)I
    .registers 3

    const/16 v0, 0x80

    if-lt p1, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v0, v0, p1

    goto :goto_5
.end method
