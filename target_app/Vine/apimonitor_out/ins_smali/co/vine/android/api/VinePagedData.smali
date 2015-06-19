.class public Lco/vine/android/api/VinePagedData;
.super Ljava/lang/Object;
.source "VinePagedData.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public anchor:J
.field public count:I
.field public items:Ljava/util/ArrayList;
.field public nextPage:I
.field public previousPage:I
.field public size:I
.field public stringAnchor:Ljava/lang/String;
.field public title:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VinePagedData$1;
invoke-direct {v0}, Lco/vine/android/api/VinePagedData$1;-><init>()V
sput-object v0, Lco/vine/android/api/VinePagedData;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v5, -0x1
iput v5, p0, Lco/vine/android/api/VinePagedData;->previousPage:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v5
iput-wide v5, p0, Lco/vine/android/api/VinePagedData;->anchor:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
iput v5, p0, Lco/vine/android/api/VinePagedData;->count:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
iput v5, p0, Lco/vine/android/api/VinePagedData;->nextPage:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
iput v5, p0, Lco/vine/android/api/VinePagedData;->previousPage:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v5
iput v5, p0, Lco/vine/android/api/VinePagedData;->size:I
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iput-object v5, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
const-class v5, Lco/vine/android/api/VinePagedData;
invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v5
invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
move-result-object v1
move-object v0, v1
array-length v3, v0
const/4 v2, 0x0
:goto_38
if-ge v2, v3, :cond_44
aget-object v4, v0, v2
iget-object v5, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_38
:cond_44
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v5
iput-object v5, p0, Lco/vine/android/api/VinePagedData;->title:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v0, :cond_e
iget-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lco/vine/android/api/VinePagedData;->anchor:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lco/vine/android/api/VinePagedData;->count:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePagedData;->nextPage:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePagedData;->previousPage:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePagedData;->size:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-nez v0, :cond_34
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
new-array v1, v1, [Landroid/os/Parcelable;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/os/Parcelable;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
:goto_2e
iget-object v0, p0, Lco/vine/android/api/VinePagedData;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
:cond_34
iget-object v0, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
iget-object v1, p0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
new-array v1, v1, [Landroid/os/Parcelable;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/os/Parcelable;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
goto :goto_2e
.end method