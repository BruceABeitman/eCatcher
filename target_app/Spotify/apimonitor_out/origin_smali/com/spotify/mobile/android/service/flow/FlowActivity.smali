.class public abstract Lcom/spotify/mobile/android/service/flow/FlowActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field private p:Lcom/spotify/mobile/android/ui/actions/a;

.field private q:Lcom/spotify/mobile/android/service/flow/logic/d;

.field private r:Lcom/spotify/mobile/android/service/flow/a;

.field private s:Z

.field private t:Lcom/spotify/mobile/android/service/flow/a;

.field private u:Z

.field private v:Lcom/spotify/mobile/android/service/flow/a;

.field private w:Landroid/support/v4/app/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->p:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity$1;-><init>(Lcom/spotify/mobile/android/service/flow/FlowActivity;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->w:Landroid/support/v4/app/s;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/FlowActivity;Lcom/spotify/mobile/android/service/flow/a;)Lcom/spotify/mobile/android/service/flow/a;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    return-object p1
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/a;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/a;Z)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/a;Z)V
    .registers 6

    const/4 v0, 0x1

    const-string v1, "Fragment container for the flow activity has not been set"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->s:Z

    if-nez v0, :cond_f

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->t:Lcom/spotify/mobile/android/service/flow/a;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->u:Z

    :goto_e
    return-void

    :cond_f
    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    if-eqz p2, :cond_1e

    invoke-virtual {v0}, Landroid/support/v4/app/w;->a()Landroid/support/v4/app/w;

    :cond_1e
    const v1, 0x7f0a021d

    const-string v2, "flow_fragment"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    goto :goto_e
.end method

.method protected final a(Lcom/spotify/mobile/android/service/flow/logic/d;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->q:Lcom/spotify/mobile/android/service/flow/logic/d;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->q:Lcom/spotify/mobile/android/service/flow/logic/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    :cond_11
    const-string v1, "FlowLogicFragmentTag"

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->q:Lcom/spotify/mobile/android/service/flow/logic/d;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
    .registers 7

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->n:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Already finishing."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->p:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->startActivity(Landroid/content/Intent;)V

    :cond_22
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->finish()V

    goto :goto_13
.end method

.method public final b(Lcom/spotify/mobile/android/service/flow/a;)V
    .registers 4

    const/4 v1, 0x1

    const-string v0, "Fragment container for the flow activity has not been set"

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->s:Z

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->v:Lcom/spotify/mobile/android/service/flow/a;

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/r;->c()V

    invoke-virtual {p0, p1, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/a;Z)V

    goto :goto_c
.end method

.method public final f()Lcom/spotify/mobile/android/service/flow/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/service/flow/a;->a(IILandroid/content/Intent;)V

    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->r:Lcom/spotify/mobile/android/service/flow/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/a;->a()Z

    move-result v0

    :cond_b
    if-nez v0, :cond_10

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V

    :cond_10
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->w:Landroid/support/v4/app/s;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Landroid/support/v4/app/s;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->setResult(I)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->s:Z

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->s:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->t:Lcom/spotify/mobile/android/service/flow/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->t:Lcom/spotify/mobile/android/service/flow/a;

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->u:Z

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->a(Lcom/spotify/mobile/android/service/flow/a;Z)V

    iput-object v2, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->t:Lcom/spotify/mobile/android/service/flow/a;

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->v:Lcom/spotify/mobile/android/service/flow/a;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->v:Lcom/spotify/mobile/android/service/flow/a;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/flow/FlowActivity;->b(Lcom/spotify/mobile/android/service/flow/a;)V

    iput-object v2, p0, Lcom/spotify/mobile/android/service/flow/FlowActivity;->v:Lcom/spotify/mobile/android/service/flow/a;

    :cond_1f
    return-void
.end method
