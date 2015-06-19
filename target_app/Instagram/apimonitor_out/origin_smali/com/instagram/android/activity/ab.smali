.class public abstract Lcom/instagram/android/activity/ab;
.super Lcom/instagram/base/activity/d;
.source "XAuthActivity.java"


# instance fields
.field protected p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/activity/ab;->p:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/activity/ab;->p:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/activity/ae;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/activity/ae;-><init>(Lcom/instagram/android/activity/ab;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1c
    sget v0, Lcom/facebook/aw;->activity_xauth:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->setContentView(I)V

    sget v0, Lcom/facebook/av;->action_bar_textview_title:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/facebook/av;->action_bar_button_back:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/ac;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/ac;-><init>(Lcom/instagram/android/activity/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/instagram/a/c;

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/facebook/av;->follow_instagram_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/activity/ad;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/ad;-><init>(Lcom/instagram/android/activity/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/ab;->g()V

    return-void
.end method
