.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Landroid/view/Menu;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "spotify:follow"

    invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$2;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->b(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Z

    const/4 v0, 0x1

    return v0
.end method
