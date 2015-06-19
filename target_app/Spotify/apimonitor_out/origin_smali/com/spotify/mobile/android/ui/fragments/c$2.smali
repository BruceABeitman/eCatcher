.class final Lcom/spotify/mobile/android/ui/fragments/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/c$2;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/c$2;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$2;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->a(Lcom/spotify/mobile/android/ui/fragments/c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/c$2;->a:Lcom/spotify/mobile/android/ui/fragments/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
