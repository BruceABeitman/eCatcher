.class public final Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/ViewGroup;

.field private c:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->h:I

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b:Landroid/view/ViewGroup;

    invoke-static {p2, p1, p3}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->a:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V

    return-void
.end method

.method private b()V
    .registers 8

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->e:Z

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$1;->a:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a0

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c()V

    goto :goto_14

    :pswitch_19
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b:Landroid/view/ViewGroup;

    new-instance v2, Lcom/spotify/android/paste/widget/EmptyView;

    invoke-direct {v2, v0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cm:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0f01ff

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f01fe

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    :cond_51
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14

    :pswitch_60
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    goto :goto_14

    :pswitch_69
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c()V

    goto :goto_14

    :cond_6d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    if-nez v0, :cond_8f

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->h:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_82

    const v0, 0x7f0f020a

    :cond_82
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/stuff/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    :cond_8f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_14

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_60
        :pswitch_69
    .end packed-switch
.end method

.method private c()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->c:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V

    return-void
.end method

.method private d()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;->b:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    if-ne v0, v1, :cond_12

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->h:I

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->d:Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager$DataState;

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b()V

    :cond_9
    return-void
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->e:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->e:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/follow/NotAvailableViewManager;->b()V

    :cond_9
    return-void
.end method
