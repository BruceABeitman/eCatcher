.class final Lcom/spotify/mobile/android/ui/view/PlayButton$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayButton;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayButton;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayButton$2;->a:Lcom/spotify/mobile/android/ui/view/PlayButton;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/view/PlayButton$2; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton$2;->a:Lcom/spotify/mobile/android/ui/view/PlayButton;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Lcom/spotify/mobile/android/ui/view/PlayButton;)Lcom/spotify/mobile/android/ui/view/o;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayButton$2;->a:Lcom/spotify/mobile/android/ui/view/PlayButton;
const/4 v0, 0x0
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/view/PlayButton$2; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method