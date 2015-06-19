.class public Lco/vine/android/api/VineMilestone;
.super Ljava/lang/Object;
.source "VineMilestone.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public backgroundImageUrl:Ljava/lang/String;
.field public backgroundVideoUrl:Ljava/lang/String;
.field public blurRadius:I
.field public description:Ljava/lang/String;
.field public iconUrl:Ljava/lang/String;
.field public milestoneUrl:Ljava/lang/String;
.field public overlayAlpha:F
.field public overlayColor:I
.field public title:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineMilestone$1;
invoke-direct {v0}, Lco/vine/android/api/VineMilestone$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineMilestone;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->backgroundImageUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->backgroundVideoUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->iconUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->title:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->description:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineMilestone;->milestoneUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineMilestone;->overlayColor:I
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v0
iput v0, p0, Lco/vine/android/api/VineMilestone;->overlayAlpha:F
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineMilestone;->blurRadius:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFI)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VineMilestone;->backgroundImageUrl:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/VineMilestone;->backgroundVideoUrl:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineMilestone;->iconUrl:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/api/VineMilestone;->title:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/api/VineMilestone;->description:Ljava/lang/String;
iput-object p6, p0, Lco/vine/android/api/VineMilestone;->milestoneUrl:Ljava/lang/String;
iput p7, p0, Lco/vine/android/api/VineMilestone;->overlayColor:I
iput p8, p0, Lco/vine/android/api/VineMilestone;->overlayAlpha:F
iput p9, p0, Lco/vine/android/api/VineMilestone;->blurRadius:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->backgroundImageUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->backgroundVideoUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->iconUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->description:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineMilestone;->milestoneUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/api/VineMilestone;->overlayColor:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineMilestone;->overlayAlpha:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
iget v0, p0, Lco/vine/android/api/VineMilestone;->blurRadius:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method