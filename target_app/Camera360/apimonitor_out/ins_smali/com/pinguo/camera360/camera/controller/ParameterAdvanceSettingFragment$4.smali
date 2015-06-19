.class  Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;
.super Ljava/lang/Object;
.source "ParameterAdvanceSettingFragment.java"
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
.field final isoEntries:[Ljava/lang/Object;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;->isoEntries:[Ljava/lang/Object;
return-void
.end method
.method public getScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
.registers 5
new-instance v0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;->isoEntries:[Ljava/lang/Object;
aget-object v1, v1, p1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
return-object v0
.end method
.method public getScaleCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;->isoEntries:[Ljava/lang/Object;
array-length v0, v0
return v0
.end method
.method public getScaleViewCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$4;->isoEntries:[Ljava/lang/Object;
array-length v0, v0
#calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->caculateViewCount(I)I
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$3(I)I
move-result v0
return v0
.end method