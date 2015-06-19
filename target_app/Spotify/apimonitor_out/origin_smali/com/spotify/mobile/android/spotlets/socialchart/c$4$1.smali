.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/socialchart/c$4;->a(Lcom/spotify/android/paste/widget/EmptyView;Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/c$4;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c$4;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c$4;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->b(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c$4;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/socialchart/c$4;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f039d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spotify:follow"

    invoke-static {v0, v2, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
