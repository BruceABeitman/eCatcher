.class public Lco/vine/android/api/VineClientFlags;
.super Ljava/lang/Object;
.source "VineClientFlags.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public apiHost:Ljava/lang/String;
.field public exploreHost:Ljava/lang/String;
.field public mediaHost:Ljava/lang/String;
.field public messageText:Ljava/lang/String;
.field public messageTitle:Ljava/lang/String;
.field public rtcHost:Ljava/lang/String;
.field public ttlSeconds:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineClientFlags$1;
invoke-direct {v0}, Lco/vine/android/api/VineClientFlags$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineClientFlags;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 11
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
iput-object p1, p0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
iput-object p6, p0, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
iput-wide p7, p0, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageTitle:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->messageText:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->apiHost:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->rtcHost:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->mediaHost:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineClientFlags;->exploreHost:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/api/VineClientFlags;->ttlSeconds:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method