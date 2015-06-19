.class Lcom/umeng/newxp/view/ay;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/au;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/au;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/au;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/au;->dismiss()V

    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/au;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/au;->a(Lcom/umeng/newxp/view/au;Z)V

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
