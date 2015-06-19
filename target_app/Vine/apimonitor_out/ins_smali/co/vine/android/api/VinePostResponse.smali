.class public Lco/vine/android/api/VinePostResponse;
.super Ljava/lang/Object;
.source "VinePostResponse.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final createdAt:J
.field public final postId:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VinePostResponse$1;
invoke-direct {v0}, Lco/vine/android/api/VinePostResponse$1;-><init>()V
sput-object v0, Lco/vine/android/api/VinePostResponse;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(JJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/api/VinePostResponse;->postId:J
iput-wide p3, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePostResponse;->postId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lco/vine/android/api/VinePostResponse;->postId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VinePostResponse;->createdAt:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method