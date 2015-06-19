.class  Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StickyGridHeadersGridView.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  a:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tonicartos/widget/stickygridheaders/m;
invoke-direct {v0}, Lcom/tonicartos/widget/stickygridheaders/m;-><init>()V
sput-object v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_d
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->a:Z
return-void
:cond_d
const/4 v0, 0x0
goto :goto_a
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "StickyGridHeadersGridView.SavedState{"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " areHeadersSticky="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->a:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->a:Z
if-eqz v0, :cond_d
const/4 v0, 0x1
:goto_8
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
return-void
:cond_d
const/4 v0, 0x0
goto :goto_8
.end method