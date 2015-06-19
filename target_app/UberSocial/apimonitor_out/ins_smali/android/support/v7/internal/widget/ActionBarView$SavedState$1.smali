.class final Landroid/support/v7/internal/widget/ActionBarView$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/ActionBarView$SavedState;
.registers 4
new-instance v0, Landroid/support/v7/internal/widget/ActionBarView$SavedState;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v7/internal/widget/ActionBarView$1;)V
return-object v0
.end method
.method public a(I)[Landroid/support/v7/internal/widget/ActionBarView$SavedState;
.registers 3
new-array v0, p1, [Landroid/support/v7/internal/widget/ActionBarView$SavedState;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState$1;->a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/ActionBarView$SavedState;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState$1;->a(I)[Landroid/support/v7/internal/widget/ActionBarView$SavedState;
move-result-object v0
return-object v0
.end method