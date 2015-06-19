.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
.super Ljava/lang/Object;
.source "PGEditEffectFragmentProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;,
        Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;,
        Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

.field private mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->saveSelectedEffect(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    return-object v0
.end method

.method private getSelectedEffect()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getSelectedEffect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static saveSelectedEffect(Ljava/lang/String;Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->saveSelectedEffect(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method


# virtual methods
.method public getEffectFragmentActionListener()Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    return-object v0
.end method

.method public hideEffectFragment(Z)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;-><init>(ZZ)V

    const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/HideEffectSelectEvent;->setFromTag(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    invoke-interface {v1, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->onHide(Z)V

    return-void
.end method

.method public register(Landroid/support/v4/app/FragmentTransaction;Landroid/content/Context;Z)V
    .registers 9

    const/4 v1, 0x0

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    if-eqz p3, :cond_53

    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;-><init>()V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    :goto_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "arguments_name_from_activity"

    const-class v2, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$1;

    invoke-direct {v2, p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)V

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->setCancelListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/pinguo/camera360/effect/model/EffectModel$Filter;

    const/4 v3, 0x0

    sget-object v4, Lcom/pinguo/camera360/effect/model/EffectModel$Filter;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/EffectModel$Filter;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->setFilterArray([Lcom/pinguo/camera360/effect/model/EffectModel$Filter;)V

    const-string/jumbo v1, "pg_sdk_edit_effect_select_container"

    invoke-static {p2, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    return-void

    :cond_53
    new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;

    invoke-direct {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditIntentEffectSelectFragment;-><init>()V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    goto :goto_c
.end method

.method public setEffectFragmentActionListener(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->setPGEditEffectFragmentActionListener(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;)V

    return-void
.end method

.method public showEffectFragment()V
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;

    const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->getSelectedEffect()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-class v4, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    const-class v1, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->setFromTag(Ljava/lang/String;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;->showEffectFragment(Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;)V

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectFragmentActionListener:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;

    invoke-interface {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;->onShow()V

    return-void
.end method

.method public unRegister(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->mEffectSelectFragment:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectSelectFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    return-void
.end method
