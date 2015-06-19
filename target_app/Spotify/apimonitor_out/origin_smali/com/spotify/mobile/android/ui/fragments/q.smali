.class final Lcom/spotify/mobile/android/ui/fragments/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/p;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/p;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->b:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v7, p0, Lcom/spotify/mobile/android/ui/fragments/q;->b:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->b()I

    move-result v1

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget v0, v0, Lcom/spotify/mobile/android/ui/fragments/p;->c:I

    sub-int v2, v1, v0

    if-lez v2, :cond_7c

    new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ai:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->an:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v3, v0, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    const-string v4, "suggested_track"

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->i(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "true"

    :goto_39
    invoke-virtual {v3, v4, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->w:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v4, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    :cond_4c
    :goto_4c
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->k(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v0

    if-eqz v0, :cond_98

    if-lez v2, :cond_98

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    goto :goto_5

    :cond_79
    const-string v0, "false"

    goto :goto_39

    :cond_7c
    if-gez v2, :cond_4c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->w:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v4, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ai:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v6, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ao:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v4, v5, v6}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto :goto_4c

    :cond_98
    if-gez v2, :cond_ae

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;I)V

    goto/16 :goto_5

    :cond_ae
    if-lez v2, :cond_cb

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/p;->m(Lcom/spotify/mobile/android/ui/fragments/p;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/p;->a(Lcom/spotify/mobile/android/ui/fragments/p;Z)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->l(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/actions/d;->c(Landroid/content/Context;I)V

    goto/16 :goto_5

    :cond_cb
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/q;->a:Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/p;->h(Lcom/spotify/mobile/android/ui/fragments/p;)Lcom/spotify/mobile/android/ui/view/DisableableViewPager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/ui/view/DisableableViewPager;->setEnabled(Z)V

    goto/16 :goto_5
.end method
