.class final Lcom/spotify/android/paste/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# instance fields
.field final synthetic a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/android/paste/widget/i;-><init>(Lcom/spotify/android/paste/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget v0, p0, Lcom/spotify/android/paste/widget/i;->b:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/spotify/android/paste/widget/l;->a(IF)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;II)V

    :cond_14
    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->a(I)V

    :cond_25
    return-void
.end method

.method public final a(IFI)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/l;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_10

    if-ltz p1, :cond_10

    if-lt p1, v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/spotify/android/paste/widget/l;->a(IF)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Lcom/spotify/android/paste/widget/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    :goto_2d
    iget-object v1, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Lcom/spotify/android/paste/widget/SlidingTabLayout;II)V

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/br;->a(IFI)V

    goto :goto_10

    :cond_44
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public final b(I)V
    .registers 3

    iput p1, p0, Lcom/spotify/android/paste/widget/i;->b:I

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/android/paste/widget/i;->a:Lcom/spotify/android/paste/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->b(Lcom/spotify/android/paste/widget/SlidingTabLayout;)Landroid/support/v4/view/br;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/br;->b(I)V

    :cond_13
    return-void
.end method
