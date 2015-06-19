.class  Lcom/twitter/android/widget/RefreshableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "RefreshableListView.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public mode:I
.field public refreshable:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/twitter/android/widget/RefreshableListView$SavedState$1;
invoke-direct {v0}, Lcom/twitter/android/widget/RefreshableListView$SavedState$1;-><init>()V
sput-object v0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v1
if-ne v1, v0, :cond_13
:goto_a
iput-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method
.method public constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-boolean v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->refreshable:Z
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_8
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/twitter/android/widget/RefreshableListView$SavedState;->mode:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_8
.end method