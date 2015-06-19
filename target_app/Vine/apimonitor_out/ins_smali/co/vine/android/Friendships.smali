.class public Lco/vine/android/Friendships;
.super Ljava/lang/Object;
.source "Friendships.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final FRIEND_FOLLOWING:I = 0x1
.field public static final FRIEND_NONE:I = 0x0
.field public static final FRIEND_UNDEFINED:I = -0x1
.field private mCache:Ljava/util/HashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/Friendships$1;
invoke-direct {v0}, Lco/vine/android/Friendships$1;-><init>()V
sput-object v0, Lco/vine/android/Friendships;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
iput-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
return-void
.end method
.method public static setFriendship(II)I
.registers 2
or-int/2addr p0, p1
return p0
.end method
.method public static unsetFriendship(II)I
.registers 3
xor-int/lit8 v0, p1, -0x1
and-int/2addr v0, p0
return v0
.end method
.method public addFollowing(J)V
.registers 8
const/4 v4, 0x1
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_22
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
const/4 v3, 0x0
invoke-static {v3, v4}, Lco/vine/android/Friendships;->setFriendship(II)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_21
return-void
:cond_22
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-static {v3, v4}, Lco/vine/android/Friendships;->setFriendship(II)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_21
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public contains(J)Z
.registers 5
iget-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public contains(JI)Z
.registers 7
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_16
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v1, p3, :cond_16
const/4 v1, 0x1
:goto_15
return v1
:cond_16
const/4 v1, 0x0
goto :goto_15
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
move-result v0
return v0
.end method
.method public isFollowing(J)Z
.registers 6
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_18
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_18
const/4 v1, 0x1
:goto_17
return v1
:cond_18
const/4 v1, 0x0
goto :goto_17
.end method
.method public removeFollowing(J)V
.registers 8
const/4 v4, 0x1
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_22
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
const/4 v3, 0x0
invoke-static {v3, v4}, Lco/vine/android/Friendships;->unsetFriendship(II)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_21
return-void
:cond_22
iget-object v1, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-static {v3, v4}, Lco/vine/android/Friendships;->unsetFriendship(II)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_21
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/Friendships;->mCache:Ljava/util/HashMap;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
return-void
.end method