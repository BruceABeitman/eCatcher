.class final Landroid/support/v4/app/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/t$4;->b:Landroid/support/v4/app/t;

    iput-object p2, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/app/t$4;->b:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/t$4;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->l:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_19
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
