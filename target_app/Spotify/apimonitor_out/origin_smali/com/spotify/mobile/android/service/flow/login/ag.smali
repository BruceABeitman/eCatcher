.class public Lcom/spotify/mobile/android/service/flow/login/ag;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Lcom/spotify/mobile/android/service/v;

.field private h:Lcom/spotify/mobile/android/util/dw;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V

    return-void
.end method

.method private D()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->d:Z

    if-nez v0, :cond_24

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->e:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->a:Landroid/widget/Button;

    const v1, 0x7f0f0258

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->w()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ah;->b()V

    goto :goto_23
.end method

.method private E()Lcom/spotify/mobile/android/service/flow/login/ah;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/ah;

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/service/v;)Lcom/spotify/mobile/android/service/flow/login/ag;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/spotify/mobile/android/service/v;->a(Landroid/os/Bundle;)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/ag;

    invoke-direct {v1}, Lcom/spotify/mobile/android/service/flow/login/ag;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/ag;->c_(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V

    return-object v1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/ag;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->D()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->g:Lcom/spotify/mobile/android/service/v;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/v;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->g:Lcom/spotify/mobile/android/service/v;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/v;->a()Z

    move-result v0

    if-nez v0, :cond_25

    const v0, 0x7f03007d

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_19
    const v0, 0x7f0a0124

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->a:Landroid/widget/Button;

    return-object v1

    :cond_25
    const v0, 0x7f03006c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a02b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->g:Lcom/spotify/mobile/android/service/v;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/service/v;->a()Z

    move-result v3

    if-eqz v3, :cond_42

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    goto :goto_19

    :cond_42
    const/16 v1, 0x8

    goto :goto_3d
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x1

    if-eq v0, p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    if-nez p2, :cond_10

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/ah;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    const/4 v0, -0x1

    if-ne p2, v0, :cond_41

    const-class v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->h:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/dw;->c()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Z)V

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    goto :goto_3

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled resultCode from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/spotify/mobile/android/service/flow/login/ag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->h()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/service/v;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/service/v;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->g:Lcom/spotify/mobile/android/service/v;

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->T:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->h:Lcom/spotify/mobile/android/util/dw;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->a:Landroid/widget/Button;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/ag$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/ag$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/ag;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/login/p;)V
    .registers 10

    const/4 v3, 0x0

    const/16 v7, 0x30

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->d:Z

    if-nez v0, :cond_50

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v0, Lcom/spotify/mobile/android/util/cu;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/cu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/spotify/mobile/android/util/cu;->a(I)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "should_show_trial_start_notice"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->d:Z

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ah;->b()V

    :goto_45
    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->e:Z

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ah;->b()V

    :cond_50
    return-void

    :cond_51
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v0, 0x7f0a02b1

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/login/p;->a()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->g:Lcom/spotify/mobile/android/service/v;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/v;->b()Z

    move-result v1

    if-eqz v1, :cond_ce

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v3

    long-to-int v1, v3

    div-int/lit8 v3, v1, 0x1e

    if-lez v3, :cond_a4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0023

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8a
    move-object v1, v0

    :goto_8b
    const v0, 0x7f0a0259

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02b0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_45

    :cond_a4
    if-lt v0, v7, :cond_ba

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0021

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    :cond_ba
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0e0022

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    :cond_ce
    if-gt v0, v7, :cond_e1

    const v1, 0x7f0f0261

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/spotify/mobile/android/service/flow/login/ag;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8b

    :cond_e1
    const v1, 0x7f0f0260

    new-array v3, v5, [Ljava/lang/Object;

    div-int/lit8 v0, v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p0, v1, v3}, Lcom/spotify/mobile/android/service/flow/login/ag;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8b
.end method

.method protected final a(Lcom/spotify/mobile/android/util/SpotifyError;)V
    .registers 6

    const/4 v3, 0x1

    sget-object v0, Lcom/spotify/mobile/android/util/SpotifyError;->H:Lcom/spotify/mobile/android/util/SpotifyError;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/spotify/mobile/android/ui/activity/DisableOfflineModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/spotify/mobile/android/service/flow/login/ag;->a(Landroid/content/Intent;I)V

    :goto_17
    return-void

    :cond_18
    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_30

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->f:I

    goto :goto_17

    :cond_30
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/spotify/mobile/android/util/SpotifyError;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->E()Lcom/spotify/mobile/android/service/flow/login/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ah;->a()V

    goto :goto_17
.end method

.method public final a()Z
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/ag;->D()V

    const/4 v0, 0x1

    return v0
.end method

.method public final e_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->h:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/ag;->h:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method
