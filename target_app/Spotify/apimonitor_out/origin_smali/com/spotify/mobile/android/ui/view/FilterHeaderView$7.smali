.class final Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/View;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;->b:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/FilterHeaderView$7;->b:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method
