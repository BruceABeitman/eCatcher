.class public final Lcom/spotify/mobile/android/util/ui/ScrollPosition;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final a:I
.field public final b:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/util/ui/ScrollPosition$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/ui/ScrollPosition$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I
iput p2, p0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->b:I
return-void
.end method
.method public constructor <init>(Landroid/widget/AdapterView;)V
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I
move-result v2
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z
move-result v0
if-nez v0, :cond_21
const/4 v0, 0x1
:goto_10
const-string v3, "empty list!"
invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
invoke-direct {p0, v2, v0}, Lcom/spotify/mobile/android/util/ui/ScrollPosition;-><init>(II)V
return-void
:cond_21
move v0, v1
goto :goto_10
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget v0, p0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->b:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method