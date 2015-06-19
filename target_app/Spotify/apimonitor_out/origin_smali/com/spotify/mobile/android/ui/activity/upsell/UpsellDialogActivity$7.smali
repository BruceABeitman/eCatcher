.class final Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->e(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->f(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->f(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->e(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->a(I)Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->b(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$7;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->ah:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v2, v3, v0, v1}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_42
    return-void
.end method

.method public final a(IFI)V
    .registers 4

    return-void
.end method

.method public final b(I)V
    .registers 2

    return-void
.end method
