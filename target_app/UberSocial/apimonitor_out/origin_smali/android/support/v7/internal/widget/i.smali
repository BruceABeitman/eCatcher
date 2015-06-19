.class public final Landroid/support/v7/internal/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public final b:J

.field public final c:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    iput-wide p2, p0, Landroid/support/v7/internal/widget/i;->b:J

    iput p4, p0, Landroid/support/v7/internal/widget/i;->c:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .registers 6

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/content/ComponentName;JF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Landroid/support/v7/internal/widget/i;

    iget-object v2, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    if-nez v2, :cond_21

    iget-object v2, p1, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-wide v2, p0, Landroid/support/v7/internal/widget/i;->b:J

    iget-wide v4, p1, Landroid/support/v7/internal/widget/i;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget v2, p0, Landroid/support/v7/internal/widget/i;->c:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Landroid/support/v7/internal/widget/i;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/support/v7/internal/widget/i;->b:J

    iget-wide v3, p0, Landroid/support/v7/internal/widget/i;->b:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/internal/widget/i;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/internal/widget/i;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Landroid/support/v7/internal/widget/i;->c:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
