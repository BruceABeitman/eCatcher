.class public Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;
.super Ljava/lang/Object;
.source "PersonInfoSnsBindGVAdapter.java"
.field public mIconId:I
.field public mIsBind:Z
.field public mListener:Landroid/view/View$OnClickListener;
.field public mTitle:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;
iput p2, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIconId:I
iput-object p3, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public getIsBind()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIsBind:Z
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mListener:Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_9
const-string v1, " - Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setIsBind(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mIsBind:Z
return-void
.end method
.method public setTitle(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->mTitle:Ljava/lang/String;
return-void
.end method