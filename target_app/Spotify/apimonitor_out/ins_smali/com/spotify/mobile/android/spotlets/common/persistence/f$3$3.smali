.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:[Ljava/lang/Runnable;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;[Ljava/lang/Runnable;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;->a:[Ljava/lang/Runnable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->c:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;->b:Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3;->c:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->o()Z
move-result v0
if-eqz v0, :cond_18
:cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$3$3;->a:[Ljava/lang/Runnable;
const/4 v1, 0x0
aget-object v0, v0, v1
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_18
return-void
.end method