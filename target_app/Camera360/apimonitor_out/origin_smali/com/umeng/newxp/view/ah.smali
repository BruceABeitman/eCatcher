.class Lcom/umeng/newxp/view/aH;
.super Ljava/lang/Object;
.source "ProgressWheel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aG;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aG;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aH;->a:Lcom/umeng/newxp/view/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/aH;->a:Lcom/umeng/newxp/view/aG;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aG;->b()V

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
