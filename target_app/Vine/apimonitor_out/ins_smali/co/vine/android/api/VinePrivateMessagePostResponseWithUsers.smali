.class public Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
.super Ljava/lang/Object;
.source "VinePrivateMessagePostResponseWithUsers.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final post:Lco/vine/android/api/VinePost;
.field public final recipients:Ljava/util/ArrayList;
.field public final responses:Ljava/util/ArrayList;
.field public final users:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers$1;
invoke-direct {v0}, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers$1;-><init>()V
sput-object v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->responses:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->recipients:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->users:Ljava/util/ArrayList;
const-class v0, Lco/vine/android/api/VinePost;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/api/VinePost;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->post:Lco/vine/android/api/VinePost;
return-void
.end method
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lco/vine/android/api/VinePost;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->responses:Ljava/util/ArrayList;
iput-object p2, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->recipients:Ljava/util/ArrayList;
iput-object p3, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->users:Ljava/util/ArrayList;
iput-object p4, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->post:Lco/vine/android/api/VinePost;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->responses:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->recipients:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->users:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->post:Lco/vine/android/api/VinePost;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method