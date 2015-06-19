.class final Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->b(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Lcom/spotify/mobile/android/ui/activity/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/m;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->e(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->f(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->e(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;->g(Lcom/spotify/mobile/android/ui/activity/ShowcaseActivity;)V

    goto :goto_1f
.end method

.method public final a(IFI)V
    .registers 4

    return-void
.end method

.method public final b(I)V
    .registers 2

    return-void
.end method
