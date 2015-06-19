.class public final Lcom/google/common/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    :goto_b
    if-ge v3, v4, :cond_28

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_26

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_26

    const/4 v1, 0x1

    :goto_1a
    if-eqz v1, :cond_1f

    xor-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_26
    move v1, v2

    goto :goto_1a

    :cond_28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
