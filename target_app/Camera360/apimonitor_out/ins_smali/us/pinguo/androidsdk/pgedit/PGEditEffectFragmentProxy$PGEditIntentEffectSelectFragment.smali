.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;
.super Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;
.source "PGEditEffectFragmentProxy.java"
.field private mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;-><init>()V
new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
return-void
.end method
.method protected createGridEffectAdapter(Landroid/content/Context;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
invoke-virtual {v0, p1, p0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->createGridEffectAdapter(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
move-result-object v0
return-object v0
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->onPause()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onPause()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->onResume()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onResume()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method