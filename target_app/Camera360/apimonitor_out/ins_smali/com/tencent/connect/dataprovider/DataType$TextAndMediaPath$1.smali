.class final Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath$1;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
.registers 4
new-instance v0, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;-><init>(Landroid/os/Parcel;Lcom/tencent/connect/dataprovider/DataType$1;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
.registers 3
new-array v0, p1, [Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath$1;->newArray(I)[Lcom/tencent/connect/dataprovider/DataType$TextAndMediaPath;
move-result-object v0
return-object v0
.end method