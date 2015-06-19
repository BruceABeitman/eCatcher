.class public Lcom/twidroid/model/TimelineGap;
.super Lcom/twidroid/model/twitter/CommunicationEntity;
.source "SourceFile"


# instance fields
.field private K:J

.field private L:Z

.field private M:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;JJ)V
    .registers 14

    new-instance v5, Lcom/twidroid/ui/StringUrlSpan;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(JJLcom/twidroid/ui/StringUrlSpan;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/model/TimelineGap;->L:Z

    iput-wide p6, p0, Lcom/twidroid/model/TimelineGap;->K:J

    iput-object p3, p0, Lcom/twidroid/model/TimelineGap;->M:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/model/TimelineGap;->L:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twidroid/model/TimelineGap;->K:J

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/model/TimelineGap;->K:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/model/TimelineGap;->K:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/model/TimelineGap;->M:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/model/TimelineGap;->L:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/model/TimelineGap;->L:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/model/TimelineGap;->M:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/twidroid/model/TimelineGap;->K:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
