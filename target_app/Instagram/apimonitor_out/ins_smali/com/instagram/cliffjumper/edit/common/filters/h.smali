.class final Lcom/instagram/cliffjumper/edit/common/filters/h;
.super Ljava/lang/Object;
.source "GaussianBlurFilter.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.registers 2
new-instance v0, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
.registers 2
new-array v0, p0, [Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/filters/h;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/common/filters/h;->a(I)[Lcom/instagram/cliffjumper/edit/common/filters/GaussianBlurFilter;
move-result-object v0
return-object v0
.end method