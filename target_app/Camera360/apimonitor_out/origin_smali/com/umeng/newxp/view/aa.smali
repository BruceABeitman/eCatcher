.class public Lcom/umeng/newxp/view/aA;
.super Ljava/lang/Object;
.source "MoreBanner.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    iput p2, p0, Lcom/umeng/newxp/view/aA;->b:I

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    :try_start_12
    iget v1, p0, Lcom/umeng/newxp/view/aA;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to inflate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/newxp/view/aA;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    throw v0

    :cond_39
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :cond_24
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/umeng/newxp/view/aB;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aB;-><init>(Lcom/umeng/newxp/view/aA;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_10
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/aA;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10
.end method
