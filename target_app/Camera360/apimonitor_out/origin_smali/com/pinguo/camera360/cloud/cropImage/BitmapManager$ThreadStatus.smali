.class Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/cloud/cropImage/BitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadStatus"
.end annotation


# instance fields
.field public mOptions:Landroid/graphics/BitmapFactory$Options;

.field public mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->ALLOW:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->CANCEL:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    if-ne v1, v2, :cond_27

    const-string/jumbo v0, "Cancel"

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "thread state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$ThreadStatus;->mState:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    sget-object v2, Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;->ALLOW:Lcom/pinguo/camera360/cloud/cropImage/BitmapManager$State;

    if-ne v1, v2, :cond_31

    const-string/jumbo v0, "Allow"

    goto :goto_9

    :cond_31
    const-string/jumbo v0, "?"

    goto :goto_9
.end method
