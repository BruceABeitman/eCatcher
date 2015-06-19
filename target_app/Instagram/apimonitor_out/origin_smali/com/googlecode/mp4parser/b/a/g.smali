.class public final Lcom/googlecode/mp4parser/b/a/g;
.super Ljava/lang/Object;
.source "ScalingList.java"


# instance fields
.field public a:[I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/googlecode/mp4parser/b/b/b;I)Lcom/googlecode/mp4parser/b/a/g;
    .registers 9

    const/16 v0, 0x8

    const/4 v1, 0x0

    new-instance v5, Lcom/googlecode/mp4parser/b/a/g;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/b/a/g;-><init>()V

    new-array v2, p1, [I

    iput-object v2, v5, Lcom/googlecode/mp4parser/b/a/g;->a:[I

    move v4, v1

    move v3, v0

    :goto_e
    if-ge v4, p1, :cond_38

    if-eqz v0, :cond_25

    const-string v0, "deltaScale"

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/b;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v2, v0, 0x100

    if-nez v4, :cond_34

    if-nez v2, :cond_34

    const/4 v0, 0x1

    :goto_22
    iput-boolean v0, v5, Lcom/googlecode/mp4parser/b/a/g;->b:Z

    move v0, v2

    :cond_25
    iget-object v6, v5, Lcom/googlecode/mp4parser/b/a/g;->a:[I

    if-nez v0, :cond_36

    move v2, v3

    :goto_2a
    aput v2, v6, v4

    iget-object v2, v5, Lcom/googlecode/mp4parser/b/a/g;->a:[I

    aget v3, v2, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e

    :cond_34
    move v0, v1

    goto :goto_22

    :cond_36
    move v2, v0

    goto :goto_2a

    :cond_38
    return-object v5
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScalingList{scalingList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/g;->a:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useDefaultScalingMatrixFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/googlecode/mp4parser/b/a/g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
