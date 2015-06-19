.class public Lco/vine/android/api/VineActivityCounts;
.super Ljava/lang/Object;
.source "VineActivityCounts.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public messages:I
.field public notifications:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineActivityCounts$1;
invoke-direct {v0}, Lco/vine/android/api/VineActivityCounts$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineActivityCounts;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lco/vine/android/api/VineActivityCounts;->messages:I
iput p2, p0, Lco/vine/android/api/VineActivityCounts;->notifications:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineActivityCounts;->messages:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineActivityCounts;->notifications:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget v0, p0, Lco/vine/android/api/VineActivityCounts;->messages:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineActivityCounts;->notifications:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method