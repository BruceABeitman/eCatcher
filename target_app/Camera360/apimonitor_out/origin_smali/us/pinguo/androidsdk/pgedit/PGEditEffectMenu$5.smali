.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;
.super Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;
.source "PGEditEffectMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideAndShowChildEffectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

.field private final synthetic val$showLinearLayout:Landroid/view/ViewGroup;

.field private final synthetic val$showView:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;)V
    .registers 4

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->val$showView:Landroid/widget/HorizontalScrollView;

    iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->val$showLinearLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditMenuAnimation$BaseAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public actionFinish()V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->val$showView:Landroid/widget/HorizontalScrollView;

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCurrentHSV:Landroid/widget/HorizontalScrollView;
    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/widget/HorizontalScrollView;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->val$showLinearLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getChildList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-static {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditMenuLayout;->addViewsTagListener(Landroid/view/ViewGroup;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$5;->val$showLinearLayout:Landroid/view/ViewGroup;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->addExtraView(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Landroid/view/ViewGroup;)V

    return-void
.end method
