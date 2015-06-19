.class LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;
.super Ljava/lang/Thread;
.source "GuideViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LvStudio/Android/Camera360/activity/GuideViewFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LvStudio/Android/Camera360/activity/GuideViewFragment$3;


# direct methods
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment$3;)V
    .registers 2

    iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;->this$1:LvStudio/Android/Camera360/activity/GuideViewFragment$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$3$1;->this$1:LvStudio/Android/Camera360/activity/GuideViewFragment$3;

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment$3;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment$3;->access$0(LvStudio/Android/Camera360/activity/GuideViewFragment$3;)LvStudio/Android/Camera360/activity/GuideViewFragment;

    move-result-object v0

    #getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$9(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/login/CompatibleUser;->adapter(Landroid/content/Context;)V

    return-void
.end method
