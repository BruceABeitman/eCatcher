.class  Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;
.super Ljava/lang/Object;
.source "DndEffectSelectAdapter.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.field private final synthetic val$type:Lcom/pinguo/camera360/effect/model/entity/EffectType;
.method constructor <init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;Lcom/pinguo/camera360/effect/model/entity/EffectType;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
iput-object p2, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->val$type:Lcom/pinguo/camera360/effect/model/entity/EffectType;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 13
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/view/View;->isSelected()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Landroid/content/Context;
move-result-object v0
const v1, 0x7f080238
const v2, 0x7f0800a7
const/16 v3, -0x3e7
move-object v5, v4
invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
:goto_19
const-string v1, " - Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Landroid/content/Context;
move-result-object v5
iget-object v0, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->this$0:Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
#getter for: Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;->access$1(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;)Landroid/content/Context;
move-result-object v0
const v1, 0x7f08025e
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v6, p0, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;->val$type:Lcom/pinguo/camera360/effect/model/entity/EffectType;
iget-object v6, v6, Lcom/pinguo/camera360/effect/model/entity/EffectType;->name:Ljava/lang/String;
aput-object v6, v2, v3
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
const v7, 0x7f080300
const v8, 0x7f080002
new-instance v9, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;
invoke-direct {v9, p0, p1}, Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4$1;-><init>(Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter$4;Landroid/view/View;)V
move-object v10, v4
invoke-static/range {v5 .. v10}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_19
.end method