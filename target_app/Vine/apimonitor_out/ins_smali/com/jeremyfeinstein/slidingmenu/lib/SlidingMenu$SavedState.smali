.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingMenu.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mItem:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState$1;
invoke-direct {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState$1;-><init>()V
sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcelable;I)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
iput p2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I
return-void
.end method
.method public getItem()I
.registers 2
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->mItem:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method