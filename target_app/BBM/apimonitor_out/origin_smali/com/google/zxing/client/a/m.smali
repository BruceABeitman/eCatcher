.class public final Lcom/google/zxing/client/a/m;
.super Lcom/google/zxing/client/a/q;
.source "GeoParsedResult.java"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:Ljava/lang/String;


# direct methods
.method constructor <init>(DDDLjava/lang/String;)V
    .registers 9

    sget-object v0, Lcom/google/zxing/client/a/r;->f:Lcom/google/zxing/client/a/r;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/a/q;-><init>(Lcom/google/zxing/client/a/r;)V

    iput-wide p1, p0, Lcom/google/zxing/client/a/m;->a:D

    iput-wide p3, p0, Lcom/google/zxing/client/a/m;->b:D

    iput-wide p5, p0, Lcom/google/zxing/client/a/m;->c:D

    iput-object p7, p0, Lcom/google/zxing/client/a/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-wide v1, p0, Lcom/google/zxing/client/a/m;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/zxing/client/a/m;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/zxing/client/a/m;->c:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2d

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/zxing/client/a/m;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    iget-object v1, p0, Lcom/google/zxing/client/a/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_40

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/client/a/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
