.class final Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$4;
.super Lcom/spotify/mobile/android/util/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->e(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
