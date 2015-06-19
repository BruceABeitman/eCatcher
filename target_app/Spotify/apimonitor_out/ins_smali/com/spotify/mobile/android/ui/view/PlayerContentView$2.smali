.class final Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/view/PlayerContentView$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->f(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->b(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/PlayerContentView$2;->a:Lcom/spotify/mobile/android/ui/view/PlayerContentView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/PlayerContentView;->j(Lcom/spotify/mobile/android/ui/view/PlayerContentView;)V
:cond_15
const-string v1, " - Lcom/spotify/mobile/android/ui/view/PlayerContentView$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method