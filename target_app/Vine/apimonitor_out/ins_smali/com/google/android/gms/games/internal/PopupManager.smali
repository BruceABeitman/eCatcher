.class public Lcom/google/android/gms/games/internal/PopupManager;
.super Ljava/lang/Object;
.field protected OV:Lcom/google/android/gms/games/internal/GamesClientImpl;
.field protected OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
.method private constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/games/internal/PopupManager;->OV:Lcom/google/android/gms/games/internal/GamesClientImpl;
invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/PopupManager;->cl(I)V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
return-void
.end method
.method public static a(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;
.registers 3
invoke-static {}, Lcom/google/android/gms/internal/iq;->fY()Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/google/android/gms/games/internal/PopupManager;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
goto :goto_b
.end method
.method protected cl(I)V
.registers 5
new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
new-instance v1, Landroid/os/Binder;
invoke-direct {v1}, Landroid/os/Binder;-><init>()V
const/4 v2, 0x0
invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V
iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
return-void
.end method
.method public g(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public hG()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OV:Lcom/google/android/gms/games/internal/GamesClientImpl;
iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
iget-object v1, v1, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->OX:Landroid/os/IBinder;
iget-object v2, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->hJ()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public hH()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->hJ()Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public hI()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->OX:Landroid/os/IBinder;
return-object v0
.end method
.method public setGravity(I)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OW:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
iput p1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I
return-void
.end method