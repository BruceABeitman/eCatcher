.class final Lcom/instagram/base/activity/tabactivity/f;
.super Ljava/lang/Object;
.source "IgTabHost.java"

# interfaces
.implements Lcom/instagram/base/activity/tabactivity/d;


# instance fields
.field final synthetic a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Intent;

.field private d:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/base/activity/tabactivity/f;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/instagram/base/activity/tabactivity/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/base/activity/tabactivity/f;->c:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;Landroid/content/Intent;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/base/activity/tabactivity/f;-><init>(Lcom/instagram/base/activity/tabactivity/IgTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iget-object v0, v0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b:Landroid/app/LocalActivityManager;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iget-object v0, v0, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/f;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    :goto_20
    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    if-eq v1, v0, :cond_3b

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/f;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-static {v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Lcom/instagram/base/activity/tabactivity/IgTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3b
    iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->a(Landroid/view/View;)V

    :cond_5b
    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/f;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->b(Landroid/view/View;)V

    :cond_10
    return-void
.end method
