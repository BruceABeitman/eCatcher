.class Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;
.super Ljava/lang/Object;
.source "ParameterAdvanceSettingFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;


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

.field final wbIcons:[I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getIconIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->wbIcons:[I

    return-void
.end method


# virtual methods
.method public getScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->wbIcons:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getScaleCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->wbIcons:[I

    array-length v0, v0

    return v0
.end method

.method public getScaleViewCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$2;->wbIcons:[I

    array-length v0, v0

    return v0
.end method
