.class  Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"
.implements Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditRendererMethod:Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$4; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method