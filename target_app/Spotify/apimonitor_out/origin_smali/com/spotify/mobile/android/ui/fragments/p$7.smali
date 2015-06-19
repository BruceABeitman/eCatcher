.class final Lcom/spotify/mobile/android/ui/fragments/p$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Context;I)V

    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->m(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$7;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Z)V

    goto :goto_1c
.end method
