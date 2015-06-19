.class Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideButtomSecondMenuAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideButtomSecondMenuAnimation()V
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$6;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mReplaceEffect:Landroid/view/View;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;

    move-result-object v0

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
