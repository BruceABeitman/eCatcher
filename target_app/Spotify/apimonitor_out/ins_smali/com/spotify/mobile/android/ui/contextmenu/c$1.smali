.class final Lcom/spotify/mobile/android/ui/contextmenu/c$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/c;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/c;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/c;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/c;->b(Lcom/spotify/mobile/android/ui/contextmenu/c;)Landroid/widget/ProgressBar;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method