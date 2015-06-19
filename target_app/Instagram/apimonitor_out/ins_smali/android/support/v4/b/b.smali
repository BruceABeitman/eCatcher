.class final Landroid/support/v4/b/b;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"
.implements Landroid/os/Parcelable$Creator;
.field final a:Landroid/support/v4/b/c;
.method public constructor <init>(Landroid/support/v4/b/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;
return-void
.end method
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Landroid/support/v4/b/c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final newArray(I)[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;
invoke-interface {v0, p1}, Landroid/support/v4/b/c;->a(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method