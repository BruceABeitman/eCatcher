.class public final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# static fields
.field static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

.field private d:I

.field private e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

.field private f:Ljava/lang/String;

.field private g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

.field private final h:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

.field private i:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "network-operator-premium-activation-dialog-shown"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$1;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$1;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->h:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    new-instance v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$2;

    invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$2;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;)V

    iput-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->i:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;

    return-void
.end method

.method private D()Z
    .registers 4

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-eq v0, v1, :cond_16

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;Z)V
    .registers 4

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->d:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->d:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-eqz p1, :cond_35

    const-string v0, "request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->d:I

    invoke-static {}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->values()[Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "activation_payload"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->f:Ljava/lang/String;

    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->D()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    :cond_2b
    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-ne v0, v1, :cond_31

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->c:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    :cond_31
    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V

    return-void

    :cond_35
    sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Y:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    goto :goto_23
.end method

.method protected final a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V
    .registers 10

    const v6, 0x7f0a0185

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-ne p1, v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v2, "State changed %s -> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    sget-object v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$3;->a:[I

    iget-object v3, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {v3}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_aa

    move v1, v0

    move v2, v0

    :goto_2a
    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->u()Landroid/support/v4/app/y;

    move-result-object v3

    if-eqz v2, :cond_82

    invoke-virtual {v3}, Landroid/support/v4/app/y;->a()Landroid/support/v4/content/k;

    move-result-object v2

    if-nez v2, :cond_3e

    new-instance v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/f;

    invoke-direct {v2, p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/f;-><init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;)V

    invoke-virtual {v3, v6, v5, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    :cond_3e
    :goto_3e
    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->h:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;

    new-instance v2, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;)V

    iput-object v2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    invoke-virtual {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a()V

    :cond_59
    :goto_59
    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->i:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;

    new-instance v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;-><init>(Landroid/content/Context;Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/e;)V

    iput-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->a()V

    goto :goto_a

    :pswitch_72
    move v1, v0

    move v2, v0

    goto :goto_2a

    :pswitch_75
    move v1, v0

    move v2, v0

    goto :goto_2a

    :pswitch_78
    move v2, v1

    move v1, v0

    goto :goto_2a

    :pswitch_7b
    move v2, v0

    goto :goto_2a

    :pswitch_7d
    move v2, v0

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_2a

    :cond_82
    invoke-virtual {v3}, Landroid/support/v4/app/y;->a()Landroid/support/v4/content/k;

    move-result-object v2

    if-eqz v2, :cond_3e

    invoke-virtual {v3, v6}, Landroid/support/v4/app/y;->a(I)V

    goto :goto_3e

    :cond_8c
    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    invoke-virtual {v1, v5}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/b;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    invoke-virtual {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;->b()V

    iput-object v5, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->b:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorConnectivityChecker;

    goto :goto_59

    :cond_9d
    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;->b()V

    iput-object v5, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/d;

    goto/16 :goto_a

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_72
        :pswitch_75
        :pswitch_78
        :pswitch_7b
        :pswitch_7d
    .end packed-switch
.end method

.method public final c()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->f:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    if-eq v0, v1, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onShowDialog() called when state is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    invoke-direct {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->D()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "Dialog has already been shown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2a
    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->g:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V

    const-class v0, Lcom/spotify/mobile/android/util/da;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/da;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/da;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Landroid/content/Intent;)V

    goto :goto_1a
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "request_code"

    iget v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "state"

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->e:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "activation_payload"

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->z()V

    sget-object v0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;->h:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;

    invoke-virtual {p0, v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment;->a(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/NetworkOperatorPremiumActivationFragment$State;)V

    return-void
.end method
