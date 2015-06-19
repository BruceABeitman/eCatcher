.class final Landroid/support/v4/widget/DrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/DrawerLayout$SavedState;
.registers 3
new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState;
invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcel;)V
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/widget/DrawerLayout$SavedState;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v4/widget/DrawerLayout$SavedState;
.registers 3
new-array v0, p1, [Landroid/support/v4/widget/DrawerLayout$SavedState;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;->newArray(I)[Landroid/support/v4/widget/DrawerLayout$SavedState;
move-result-object v0
return-object v0
.end method