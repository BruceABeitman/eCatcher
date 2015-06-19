.class  Lcom/instagram/creation/base/ui/FilterPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "FilterPicker.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public a:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/creation/base/ui/f;
invoke-direct {v0}, Lcom/instagram/creation/base/ui/f;-><init>()V
sput-object v0, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Lcom/instagram/creation/base/ui/FilterPicker$SavedState;->a:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method