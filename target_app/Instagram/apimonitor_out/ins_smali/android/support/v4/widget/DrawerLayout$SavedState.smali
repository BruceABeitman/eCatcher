.class public Landroid/support/v4/widget/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DrawerLayout.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:I
.field  b:I
.field  c:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/widget/c;
invoke-direct {v0}, Landroid/support/v4/widget/c;-><init>()V
sput-object v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcelable;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->b:I
iput v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->c:I
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Landroid/support/v4/widget/DrawerLayout$SavedState;->a:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method