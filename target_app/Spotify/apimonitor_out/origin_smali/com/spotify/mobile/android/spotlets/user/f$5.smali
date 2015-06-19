.class final Lcom/spotify/mobile/android/spotlets/user/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/f$5;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$5;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f$5;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->b(Lcom/spotify/mobile/android/spotlets/user/f;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/f$5;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/f$5;->a:Lcom/spotify/mobile/android/spotlets/user/f;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Landroid/content/Intent;)V

    return-void
.end method
