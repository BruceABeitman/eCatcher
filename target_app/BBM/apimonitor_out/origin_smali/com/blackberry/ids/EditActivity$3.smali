.class Lcom/blackberry/ids/EditActivity$3;
.super Ljava/lang/Object;
.source "EditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/blackberry/ids/EditActivity;


# direct methods
.method constructor <init>(Lcom/blackberry/ids/EditActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/blackberry/ids/EditActivity$3;->a:Lcom/blackberry/ids/EditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/blackberry/ids/EditActivity$3;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v1}, Lcom/blackberry/ids/EditActivity;->a(Lcom/blackberry/ids/EditActivity;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/blackberry/ids/EditActivity$3;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v1}, Lcom/blackberry/ids/EditActivity;->a(Lcom/blackberry/ids/EditActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$3;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->b(Lcom/blackberry/ids/EditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/blackberry/ids/EditActivity$3;->a:Lcom/blackberry/ids/EditActivity;

    invoke-static {v0}, Lcom/blackberry/ids/EditActivity;->b(Lcom/blackberry/ids/EditActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3b
    return-void
.end method
