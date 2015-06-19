.class abstract Lcom/google/zxing/e/a/a/a/h;
.super Lcom/google/zxing/e/a/a/a/j;
.source "AI01decoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/b/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/zxing/e/a/a/a/j;-><init>(Lcom/google/zxing/b/a;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/StringBuilder;II)V
    .registers 10

    const/16 v4, 0x30

    const/16 v5, 0xa

    const/4 v1, 0x0

    move v0, v1

    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_26

    iget-object v2, p0, Lcom/google/zxing/e/a/a/a/j;->b:Lcom/google/zxing/e/a/a/a/t;

    mul-int/lit8 v3, v0, 0xa

    add-int/2addr v3, p2

    invoke-virtual {v2, v3, v5}, Lcom/google/zxing/e/a/a/a/t;->a(II)I

    move-result v2

    div-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_19

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_26
    move v2, v1

    move v3, v1

    :goto_28
    const/16 v0, 0xd

    if-ge v2, v0, :cond_3f

    add-int v0, v2, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_3a

    mul-int/lit8 v0, v0, 0x3

    :cond_3a
    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    :cond_3f
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    if-ne v0, v5, :cond_46

    move v0, v1

    :cond_46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final b(Ljava/lang/StringBuilder;I)V
    .registers 5

    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/e/a/a/a/h;->a(Ljava/lang/StringBuilder;II)V

    return-void
.end method
