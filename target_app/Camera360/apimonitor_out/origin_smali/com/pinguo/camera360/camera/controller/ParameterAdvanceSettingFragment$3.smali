.class Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;
.super Ljava/lang/Object;
.source "ParameterAdvanceSettingFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->initSeekBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

.field private final synthetic val$wbPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;->val$wbPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;->val$wbPref:Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    #calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->updateParameters(ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V
    invoke-static {v0, p1, v1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$1(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;ILcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$3;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    #calls: Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->resetTipLayoutPosition()V
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->access$2(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;)V

    return-void
.end method
