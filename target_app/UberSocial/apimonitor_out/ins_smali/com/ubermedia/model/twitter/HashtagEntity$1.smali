.class final Lcom/ubermedia/model/twitter/HashtagEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/ubermedia/model/twitter/HashtagEntity;
.registers 3
new-instance v0, Lcom/ubermedia/model/twitter/HashtagEntity;
invoke-direct {v0, p1}, Lcom/ubermedia/model/twitter/HashtagEntity;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public a(I)[Lcom/ubermedia/model/twitter/HashtagEntity;
.registers 3
new-array v0, p1, [Lcom/ubermedia/model/twitter/HashtagEntity;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/ubermedia/model/twitter/HashtagEntity$1;->a(Landroid/os/Parcel;)Lcom/ubermedia/model/twitter/HashtagEntity;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/ubermedia/model/twitter/HashtagEntity$1;->a(I)[Lcom/ubermedia/model/twitter/HashtagEntity;
move-result-object v0
return-object v0
.end method