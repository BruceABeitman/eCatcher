.class public Lco/vine/android/api/VineTag;
.super Ljava/lang/Object;
.source "VineTag.java"
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public tagId:J
.field public tagName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineTag$1;
invoke-direct {v0}, Lco/vine/android/api/VineTag$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineTag;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineTag;->tagId:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;J)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
iput-wide p2, p0, Lco/vine/android/api/VineTag;->tagId:J
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lco/vine/android/api/VineTag;->tagName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/api/VineTag;->tagId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method