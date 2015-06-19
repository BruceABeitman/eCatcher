.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/d;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/d$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/d;->invalidate()V

    return-void
.end method
