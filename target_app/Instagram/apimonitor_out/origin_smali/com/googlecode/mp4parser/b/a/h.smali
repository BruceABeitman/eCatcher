.class public final Lcom/googlecode/mp4parser/b/a/h;
.super Ljava/lang/Object;
.source "ScalingMatrix.java"


# instance fields
.field public a:[Lcom/googlecode/mp4parser/b/a/g;

.field public b:[Lcom/googlecode/mp4parser/b/a/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "ScalingMatrix{ScalingList4x4="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/a/h;->a:[Lcom/googlecode/mp4parser/b/a/g;

    if-nez v0, :cond_2a

    move-object v0, v1

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n, ScalingList8x8="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/googlecode/mp4parser/b/a/h;->b:[Lcom/googlecode/mp4parser/b/a/g;

    if-nez v2, :cond_31

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/a/h;->a:[Lcom/googlecode/mp4parser/b/a/g;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_31
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/a/h;->b:[Lcom/googlecode/mp4parser/b/a/g;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_1b
.end method
