.class final Lit/sephiroth/android/library/widget/r;
.super Ljava/lang/Object;
.source "AbsHListView.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 4
new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcel;B)V
return-object v0
.end method
.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
new-array v0, p1, [Lit/sephiroth/android/library/widget/AbsHListView$SavedState;
return-object v0
.end method