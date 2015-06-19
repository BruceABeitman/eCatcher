.class public Lco/vine/android/PendingRequest;
.super Ljava/lang/Object;
.source "PendingRequest.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final fetchType:I
.field public final id:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/PendingRequest$1;
invoke-direct {v0}, Lco/vine/android/PendingRequest$1;-><init>()V
sput-object v0, Lco/vine/android/PendingRequest;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/PendingRequest;->fetchType:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/PendingRequest;->fetchType:I
return-void
.end method
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
iput p2, p0, Lco/vine/android/PendingRequest;->fetchType:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Lco/vine/android/PendingRequest;
iget-object v3, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
if-eqz v3, :cond_26
iget-object v3, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:cond_24
move v1, v2
goto :goto_4
:cond_26
iget-object v3, v0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
if-nez v3, :cond_24
goto :goto_4
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/PendingRequest;->id:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method