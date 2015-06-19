.class  Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState$1;
invoke-direct {v0}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState$1;-><init>()V
sput-object v0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->a:I
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;-><init>(Landroid/os/Parcel;)V
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
iget v0, p0, Lcom/viewpagerindicator/TitlePageIndicatorWithMarks$SavedState;->a:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method