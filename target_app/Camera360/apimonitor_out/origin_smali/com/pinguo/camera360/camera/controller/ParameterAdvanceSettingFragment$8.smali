.class Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;
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

.field private final synthetic val$delta:I

.field private final synthetic val$scaleCount:I

.field private final synthetic val$sharpEntries:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;II[Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->this$0:Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;

    iput p2, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$scaleCount:I

    iput p3, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$delta:I

    iput-object p4, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$sharpEntries:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
    .registers 5

    iget v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$delta:I

    mul-int/2addr p1, v0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$sharpEntries:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$sharpEntries:[Ljava/lang/Object;

    array-length p1, v0

    :cond_b
    new-instance v0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$sharpEntries:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$MyScale;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getScaleCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$scaleCount:I

    return v0
.end method

.method public getScaleViewCount()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment$8;->val$scaleCount:I

    return v0
.end method
