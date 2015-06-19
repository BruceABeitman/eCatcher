.class Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;
.super Ljava/lang/Object;
.source "EffectShopModel.java"

# interfaces
.implements Lcom/pinguo/camera360/base/BaseModel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallProgressCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;->this$1:Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;)V

    return-void
.end method


# virtual methods
.method public varargs onExecute([Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x0

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask$InstallProgressCallback;->this$1:Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    #calls: Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->access$3(Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onPostExecute([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public varargs onPreExecute([Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
