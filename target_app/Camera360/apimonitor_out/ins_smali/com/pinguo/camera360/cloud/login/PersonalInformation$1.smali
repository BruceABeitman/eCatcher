.class  Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;
.super Ljava/lang/Object;
.source "PersonalInformation.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
.field private final synthetic val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;
.method constructor <init>(Lcom/pinguo/camera360/cloud/login/PersonalInformation;Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->this$0:Lcom/pinguo/camera360/cloud/login/PersonalInformation;
iput-object p2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/cloud/login/PersonalInformation$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
iget-object v2, p0, Lcom/pinguo/camera360/cloud/login/PersonalInformation$1;->val$snsBindGVAdapter:Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;
invoke-virtual {v2, p3}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;
if-eqz v1, :cond_13
invoke-virtual {v1}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->getIsBind()Z
move-result v2
if-nez v2, :cond_13
invoke-virtual {v1, p2}, Lcom/pinguo/camera360/cloud/login/PersonInfoSnsBindGVAdapter$AdapterItem;->onClick(Landroid/view/View;)V
:cond_13
:try_end_13
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
const-string v1, " - Lcom/pinguo/camera360/cloud/login/PersonalInformation$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_14
move-exception v0
invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
goto :goto_13
.end method