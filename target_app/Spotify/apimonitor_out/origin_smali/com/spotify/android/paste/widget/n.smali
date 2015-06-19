.class final Lcom/spotify/android/paste/widget/n;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/android/paste/widget/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/android/paste/widget/n;->a:Z

    return-void
.end method

.method public final getInterpolation(F)F
    .registers 4

    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/spotify/android/paste/widget/n;->a:Z

    if-eqz v1, :cond_c

    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    :cond_c
    return v0
.end method
