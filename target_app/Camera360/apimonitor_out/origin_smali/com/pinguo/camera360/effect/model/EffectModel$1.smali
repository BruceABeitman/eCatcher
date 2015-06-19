.class Lcom/pinguo/camera360/effect/model/EffectModel$1;
.super Landroid/os/AsyncTask;
.source "EffectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/effect/model/EffectModel;->clearEffectTypeNewFlag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/effect/model/EffectModel;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/effect/model/EffectModel;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/effect/model/EffectModel$1;->this$0:Lcom/pinguo/camera360/effect/model/EffectModel;

    iput-object p2, p0, Lcom/pinguo/camera360/effect/model/EffectModel$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/effect/model/EffectModel$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/effect/model/EffectModel$1;->this$0:Lcom/pinguo/camera360/effect/model/EffectModel;

    #getter for: Lcom/pinguo/camera360/effect/model/EffectModel;->mEffectResourceManager:Lcom/pinguo/camera360/effect/model/EffectResourceManager;
    invoke-static {v0}, Lcom/pinguo/camera360/effect/model/EffectModel;->access$1(Lcom/pinguo/camera360/effect/model/EffectModel;)Lcom/pinguo/camera360/effect/model/EffectResourceManager;

    move-result-object v0

    const-string/jumbo v1, "effect_type"

    iget-object v2, p0, Lcom/pinguo/camera360/effect/model/EffectModel$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/effect/model/EffectResourceManager;->clearNewFlagInDB(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return-object v0
.end method
