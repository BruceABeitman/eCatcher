.class final Lcom/instagram/cliffjumper/edit/photo/resize/e;
.super Ljava/lang/Object;
.source "UnsharpSharpenFilter.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
.registers 2
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
.registers 2
new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/e;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/resize/e;->a(I)[Lcom/instagram/cliffjumper/edit/photo/resize/UnsharpSharpenFilter;
move-result-object v0
return-object v0
.end method