.class final Lcom/instagram/creation/photo/gallery/m;
.super Ljava/lang/Object;
.source "ImageManager.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
.registers 3
new-instance v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;-><init>(Landroid/os/Parcel;B)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
.registers 2
new-array v0, p0, [Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/creation/photo/gallery/m;->a(Landroid/os/Parcel;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/creation/photo/gallery/m;->a(I)[Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
move-result-object v0
return-object v0
.end method