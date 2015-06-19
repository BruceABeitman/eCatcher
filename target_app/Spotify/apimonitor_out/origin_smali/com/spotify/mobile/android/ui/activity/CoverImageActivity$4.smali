.class final Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;->b:Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$4;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
