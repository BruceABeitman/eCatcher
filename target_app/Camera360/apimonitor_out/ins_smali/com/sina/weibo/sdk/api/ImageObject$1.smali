.class  Lcom/sina/weibo/sdk/api/ImageObject$1;
.super Ljava/lang/Object;
.source "ImageObject.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/ImageObject;
.registers 3
new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;
invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/ImageObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/ImageObject;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/sina/weibo/sdk/api/ImageObject;
.registers 3
new-array v0, p1, [Lcom/sina/weibo/sdk/api/ImageObject;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/ImageObject$1;->newArray(I)[Lcom/sina/weibo/sdk/api/ImageObject;
move-result-object v0
return-object v0
.end method