.class Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;
.super Ljava/lang/Object;
.source "PGEditMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideTopSecondMenuAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->mSecondTopMenu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditMenu$3;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditMenu;

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->hideTopSecondMenuAnimationFinish()V

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
