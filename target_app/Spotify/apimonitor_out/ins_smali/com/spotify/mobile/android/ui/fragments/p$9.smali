.class final Lcom/spotify/mobile/android/ui/fragments/p$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/b;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$9;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/widget/SeekBar;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$9;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->G(Lcom/spotify/mobile/android/ui/fragments/p;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$9;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I
move-result v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$9;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;I)V
return-void
.end method
.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
.registers 2
return-void
.end method
.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$9;->a:Lcom/spotify/mobile/android/ui/fragments/p;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Landroid/widget/SeekBar;)V
return-void
.end method