.class public Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;
.super Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;
.source "IntentEffectSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;
    }
.end annotation


# instance fields
.field private mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    return-void
.end method


# virtual methods
.method protected createGridEffectAdapter(Landroid/content/Context;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0, p1, p0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->createGridEffectAdapter(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->onPause()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;->onResume()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onResume()V

    return-void
.end method
