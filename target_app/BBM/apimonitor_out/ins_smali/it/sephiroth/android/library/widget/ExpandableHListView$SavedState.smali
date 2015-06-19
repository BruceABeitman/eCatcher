.class  Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ExpandableHListView.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lit/sephiroth/android/library/widget/aj;
invoke-direct {v0}, Lit/sephiroth/android/library/widget/aj;-><init>()V
sput-object v0, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;
const-class v1, Lit/sephiroth/android/library/widget/ExpandableHListConnector;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method constructor <init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
iput-object p2, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/ExpandableHListView$SavedState;->a:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
return-void
.end method