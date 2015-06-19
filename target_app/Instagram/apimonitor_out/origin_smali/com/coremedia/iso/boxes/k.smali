.class public final Lcom/coremedia/iso/boxes/k;
.super Ljava/lang/Object;
.source "TimeToSampleBox.java"


# instance fields
.field a:J

.field b:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/k;->a:J

    iput-wide p3, p0, Lcom/coremedia/iso/boxes/k;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/k;->a:J

    return-wide v0
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/k;->a:J

    return-void
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/k;->b:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/k;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/k;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
