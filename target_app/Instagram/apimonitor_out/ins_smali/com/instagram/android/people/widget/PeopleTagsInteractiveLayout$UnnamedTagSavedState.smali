.class public Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;
.super Landroid/view/View$BaseSavedState;
.source "PeopleTagsInteractiveLayout.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Landroid/graphics/PointF;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/android/people/widget/h;
invoke-direct {v0}, Lcom/instagram/android/people/widget/h;-><init>()V
sput-object v0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
new-instance v0, Landroid/graphics/PointF;
invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
iput-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->x:F
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;
invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F
move-result v1
iput v1, v0, Landroid/graphics/PointF;->y:F
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
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->x:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagsInteractiveLayout$UnnamedTagSavedState;->a:Landroid/graphics/PointF;
iget v0, v0, Landroid/graphics/PointF;->y:F
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V
return-void
.end method