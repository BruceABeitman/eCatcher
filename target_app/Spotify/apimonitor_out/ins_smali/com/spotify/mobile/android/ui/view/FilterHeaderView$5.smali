.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v0, 0x42
if-eq p2, v0, :cond_8
const/16 v0, 0x10
if-ne p2, v0, :cond_f
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5;->a:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
const/4 v0, 0x1
:goto_e
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/view/FilterHeaderView$5; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method