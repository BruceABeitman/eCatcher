.class public final Landroid/support/v4/a/d;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"
.implements Landroid/os/Parcelable$ClassLoaderCreator;
.field private final a:Landroid/support/v4/a/c;
.method public constructor <init>(Landroid/support/v4/a/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/a/d;->a:Landroid/support/v4/a/c;
return-void
.end method
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/a/d;->a:Landroid/support/v4/a/c;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Landroid/support/v4/a/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/a/d;->a:Landroid/support/v4/a/c;
invoke-interface {v0, p1, p2}, Landroid/support/v4/a/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final newArray(I)[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/a/d;->a:Landroid/support/v4/a/c;
invoke-interface {v0, p1}, Landroid/support/v4/a/c;->a(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method