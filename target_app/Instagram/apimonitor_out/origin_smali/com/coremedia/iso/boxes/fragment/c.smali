.class public final Lcom/coremedia/iso/boxes/fragment/c;
.super Ljava/lang/Object;
.source "TrackRunBox.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/coremedia/iso/boxes/fragment/a;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/c;I)I
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/c;->d:I

    return p1
.end method

.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/c;J)J
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/c;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/coremedia/iso/boxes/fragment/c;Lcom/coremedia/iso/boxes/fragment/a;)Lcom/coremedia/iso/boxes/fragment/a;
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/c;->c:Lcom/coremedia/iso/boxes/fragment/a;

    return-object p1
.end method

.method static synthetic b(Lcom/coremedia/iso/boxes/fragment/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/coremedia/iso/boxes/fragment/c;J)J
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/c;->b:J

    return-wide p1
.end method

.method static synthetic c(Lcom/coremedia/iso/boxes/fragment/c;)Lcom/coremedia/iso/boxes/fragment/a;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->c:Lcom/coremedia/iso/boxes/fragment/a;

    return-object v0
.end method

.method static synthetic d(Lcom/coremedia/iso/boxes/fragment/c;)I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->d:I

    return v0
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->a:J

    return-wide v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->b:J

    return-wide v0
.end method

.method public final c()Lcom/coremedia/iso/boxes/fragment/a;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->c:Lcom/coremedia/iso/boxes/fragment/a;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/c;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry{sampleDuration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/c;->c:Lcom/coremedia/iso/boxes/fragment/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleCompositionTimeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
