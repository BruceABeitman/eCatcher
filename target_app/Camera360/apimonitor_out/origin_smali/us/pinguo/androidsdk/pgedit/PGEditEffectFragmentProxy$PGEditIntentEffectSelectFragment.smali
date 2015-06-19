.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;
.super Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;
.source "PGEditEffectFragmentProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PGEditIntentEffectSelectFragment"
.end annotation


# instance fields
.field private mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    return-void
.end method


# virtual methods
.method protected createGridEffectAdapter(Landroid/content/Context;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0, p1, p0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->createGridEffectAdapter(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/EffectSelectFragment;)Lcom/pinguo/camera360/camera/adapter/DndEffectSelectAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->onPause()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->onResume()V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;->mIntentEffectSelectProxy:Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/IntentEffectSelectFragment$IntentEffectSelectProxy;->onResume()V

    return-void
.end method
