.class final Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 4
new-instance v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/Parcel;B)V
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
return-object v0
.end method