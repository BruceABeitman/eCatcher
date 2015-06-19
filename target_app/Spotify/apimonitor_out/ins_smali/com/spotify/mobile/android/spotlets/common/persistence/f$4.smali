.class final Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/b;
.field final synthetic b:Landroid/support/v4/app/Fragment;
.field final synthetic c:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f;Lcom/spotify/mobile/android/spotlets/common/persistence/b;Landroid/support/v4/app/Fragment;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->c:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/b;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->b:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const/4 v4, 0x0
const/4 v0, 0x1
new-array v1, v0, [Ljava/lang/Runnable;
:try_start_4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->c:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->a()Landroid/os/Bundle;
move-result-object v0
const/4 v2, 0x0
new-instance v3, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$1;
invoke-direct {v3, p0, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$1;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;Landroid/os/Bundle;)V
aput-object v3, v1, v2
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_21
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;->c:Lcom/spotify/mobile/android/spotlets/common/persistence/f;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f;->c(Lcom/spotify/mobile/android/spotlets/common/persistence/f;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$3;
invoke-direct {v2, p0, v1}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$3;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;[Ljava/lang/Runnable;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catch_21
move-exception v0
new-instance v2, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;
invoke-direct {v2, p0, v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/f$4$2;-><init>(Lcom/spotify/mobile/android/spotlets/common/persistence/f$4;Ljava/lang/Exception;)V
aput-object v2, v1, v4
goto :goto_12
.end method