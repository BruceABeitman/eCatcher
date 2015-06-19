.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

.field private final synthetic val$nowTopView:Landroid/view/View;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;->this$1:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;->val$nowTopView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;->val$nowTopView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
