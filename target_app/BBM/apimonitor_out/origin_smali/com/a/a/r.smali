.class public final Lcom/a/a/r;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/a/a/i;


# instance fields
.field public final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/r;->d:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/a/a/r;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/r;->a:[B

    iput-boolean p3, p0, Lcom/a/a/r;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/k;
    .registers 2

    sget-object v0, Lcom/a/a/k;->g:Lcom/a/a/k;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/a/a/r;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/a/a/r;

    iget-object v2, p0, Lcom/a/a/r;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/a/a/r;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/a/a/r;->a:[B

    iget-object v3, p1, Lcom/a/a/r;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Lcom/a/a/r;->c:Z

    iget-boolean v3, p1, Lcom/a/a/r;->c:Z

    if-eq v2, v3, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/r;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/a/a/r;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/a/a/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/a/a/r;->a:[B

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/a/a/r;->a:[B

    array-length v3, v2

    :goto_1f
    if-ge v1, v3, :cond_29

    aget-byte v4, v2, v1

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_27
    move v0, v1

    goto :goto_16

    :cond_29
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/a/a/r;->c:Z

    if-eqz v0, :cond_39

    const/16 v0, 0x4cf

    :goto_31
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/a/a/r;->d:Ljava/lang/Integer;

    goto :goto_b

    :cond_39
    const/16 v0, 0x4d5

    goto :goto_31
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/r;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/a/a/r;->a:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/a/a/r;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
