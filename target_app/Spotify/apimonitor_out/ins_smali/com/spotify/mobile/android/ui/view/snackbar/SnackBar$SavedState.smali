.class  Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:[Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
new-array v0, v0, [Z
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z
array-length v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar$SavedState;->a:[Z
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V
return-void
.end method