.class final Lcom/instagram/cliffjumper/edit/photo/lux/f;
.super Ljava/lang/Object;
.source "LuxFilter.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
.registers 2
new-instance v0, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
invoke-direct {v0, p0}, Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method private static a(I)[Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
.registers 2
new-array v0, p0, [Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
return-object v0
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/lux/f;->a(Landroid/os/Parcel;)Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
move-result-object v0
return-object v0
.end method
.method public final synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/cliffjumper/edit/photo/lux/f;->a(I)[Lcom/instagram/cliffjumper/edit/photo/lux/LuxFilter;
move-result-object v0
return-object v0
.end method