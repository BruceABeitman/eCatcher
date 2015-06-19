.class  Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;
.super Ljava/lang/Object;
.source "ParameterAdvanceSettingFragment.java"
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
.field private final synthetic val$delta:I
.field private final synthetic val$sharpEntries:[Ljava/lang/Object;
.field private final synthetic val$sharpPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;I[Ljava/lang/Object;Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
iput p2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$delta:I
iput-object p3, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$sharpEntries:[Ljava/lang/Object;
iput-object p4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$sharpPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScaleChanged(I)V
.registers 4
iget v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$delta:I
mul-int/2addr p1, v0
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$sharpEntries:[Ljava/lang/Object;
array-length v0, v0
if-le p1, v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$sharpEntries:[Ljava/lang/Object;
array-length p1, v0
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->val$sharpPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;
#calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->updateParameters(ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
invoke-static {v0, p1, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$1(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;
#calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->resetTipLayoutPosition()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$2(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V
return-void
.end method