.class final Lcom/spotify/mobile/android/ui/fragments/p$6;
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

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->u:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v4, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v6, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ac:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v2, v3, v4}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v3

    if-nez v3, :cond_4b

    :goto_32
    const-string v1, "repeat_state"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_4b
    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/p$6;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/p;->F(Lcom/spotify/mobile/android/ui/fragments/p;)I

    move-result v3

    if-ne v3, v0, :cond_55

    const/4 v0, 0x2

    goto :goto_32

    :cond_55
    move v0, v1

    goto :goto_32
.end method
