.class final Lcom/spotify/mobile/android/ui/fragments/p$16;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$16;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$16;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$16;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$16;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p1, Lcom/spotify/mobile/android/ui/view/ConnectIconView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/p$16;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->f(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v1

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/view/ConnectIconView;ILcom/spotify/mobile/android/util/ClientEvent$Event;)V

    return-void
.end method
