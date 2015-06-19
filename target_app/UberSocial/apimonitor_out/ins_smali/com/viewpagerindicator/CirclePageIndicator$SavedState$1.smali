.class final Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
.registers 4
new-instance v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/CirclePageIndicator$1;)V
return-object v0
.end method
.method public a(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
.registers 3
new-array v0, p1, [Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;->a(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
move-result-object v0
return-object v0
.end method