.class public final Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
.super Ljava/lang/Object;
.field public OX:Landroid/os/IBinder;
.field public OY:I
.field public bottom:I
.field public gravity:I
.field public left:I
.field public right:I
.field public top:I
.method private constructor <init>(ILandroid/os/IBinder;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->OY:I
iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I
iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I
iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I
iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I
iput p1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I
iput-object p2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->OX:Landroid/os/IBinder;
return-void
.end method
.method synthetic constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;)V
return-void
.end method
.method public hJ()Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "popupLocationInfo.gravity"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "popupLocationInfo.displayId"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->OY:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "popupLocationInfo.left"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "popupLocationInfo.top"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "popupLocationInfo.right"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v1, "popupLocationInfo.bottom"
iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-object v0
.end method