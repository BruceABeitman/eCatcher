.class final Lcom/spotify/music/MainActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/MainActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/MainActivity;


# direct methods
.method constructor <init>(Lcom/spotify/music/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->m(Lcom/spotify/music/MainActivity;)Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->n(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/ActionBarManager;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(F)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->E()V

    :cond_25
    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->c(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->m(Lcom/spotify/music/MainActivity;)Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/a;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->n(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(F)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->m(Lcom/spotify/music/MainActivity;)Landroid/support/v4/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->n(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/ActionBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/ActionBarManager;->a(F)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->i(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/fragments/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/g;->F()V

    :cond_24
    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->c(Lcom/spotify/music/MainActivity;)Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/MainActivityIntentQueue;->b(Z)V

    iget-object v0, p0, Lcom/spotify/music/MainActivity$8;->a:Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/music/MainActivity;->d(Lcom/spotify/music/MainActivity;)V

    return-void
.end method
