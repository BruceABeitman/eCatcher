.class  Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
move-result-object v0
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->getEffectFragmentActionListener()Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
move-result-object v0
invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->dialogCancel()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method