.class public Lcom/twidroid/fragments/base/TimelineState;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final a:Ljava/lang/String; = "timeline"
.field public static final b:Ljava/lang/String; = "account_id"
.field public static final c:Ljava/lang/String; = "message_id"
.field public static final d:Ljava/lang/String; = "timestamp"
.field public static final e:Ljava/lang/String; = "yPos"
.field public static final f:[Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:J
.field private i:J
.field private j:J
.field private k:I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "timeline"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "account_id"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "message_id"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "timestamp"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "yPos"
aput-object v2, v0, v1
sput-object v0, Lcom/twidroid/fragments/base/TimelineState;->f:[Ljava/lang/String;
new-instance v0, Lcom/twidroid/fragments/base/TimelineState$1;
invoke-direct {v0}, Lcom/twidroid/fragments/base/TimelineState$1;-><init>()V
sput-object v0, Lcom/twidroid/fragments/base/TimelineState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/TimelineState;->g:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->h:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->i:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->j:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/twidroid/fragments/base/TimelineState;->k:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;JJJI)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/fragments/base/TimelineState;->g:Ljava/lang/String;
iput-wide p2, p0, Lcom/twidroid/fragments/base/TimelineState;->h:J
iput-wide p4, p0, Lcom/twidroid/fragments/base/TimelineState;->i:J
iput-wide p6, p0, Lcom/twidroid/fragments/base/TimelineState;->j:J
iput p8, p0, Lcom/twidroid/fragments/base/TimelineState;->k:I
return-void
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->h:J
return-wide v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/fragments/base/TimelineState;->k:I
return-void
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/base/TimelineState;->h:J
return-void
.end method
.method public b()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->i:J
return-wide v0
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/base/TimelineState;->i:J
return-void
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->j:J
return-wide v0
.end method
.method public c(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/base/TimelineState;->j:J
return-void
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/twidroid/fragments/base/TimelineState;->k:I
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/base/TimelineState;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->h:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->i:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lcom/twidroid/fragments/base/TimelineState;->j:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lcom/twidroid/fragments/base/TimelineState;->k:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method