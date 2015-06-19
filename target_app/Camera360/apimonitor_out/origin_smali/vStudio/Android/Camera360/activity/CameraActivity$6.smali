.class LvStudio/Android/Camera360/activity/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LvStudio/Android/Camera360/activity/CameraActivity;->initMainFragment(Landroid/support/v4/app/FragmentTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LvStudio/Android/Camera360/activity/CameraActivity;

.field private final synthetic val$event:Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;


# direct methods
.method constructor <init>(LvStudio/Android/Camera360/activity/CameraActivity;Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;)V
    .registers 3

    iput-object p1, p0, LvStudio/Android/Camera360/activity/CameraActivity$6;->this$0:LvStudio/Android/Camera360/activity/CameraActivity;

    iput-object p2, p0, LvStudio/Android/Camera360/activity/CameraActivity$6;->val$event:Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    iget-object v1, p0, LvStudio/Android/Camera360/activity/CameraActivity$6;->val$event:Lcom/pinguo/camera360/camera/event/OnEffectSelectEvent;

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method
