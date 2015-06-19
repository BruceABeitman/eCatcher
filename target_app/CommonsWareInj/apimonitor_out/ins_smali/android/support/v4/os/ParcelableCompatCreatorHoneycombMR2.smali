.class  Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"
.implements Landroid/os/Parcelable$ClassLoaderCreator;
.field private final mCallbacks:Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
.method public constructor <init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
const/4 v1, 0x0
invoke-interface {v0, p1, v1}, Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
invoke-interface {v0, p1, p2}, Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
invoke-interface {v0, p1}, Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method