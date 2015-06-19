.class final Lcom/spotify/mobile/android/ui/fragments/p$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/p;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$1;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->getProgress()I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;I)V
return-void
.end method