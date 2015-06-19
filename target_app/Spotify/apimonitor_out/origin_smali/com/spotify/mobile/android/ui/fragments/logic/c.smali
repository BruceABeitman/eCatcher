.class public final Lcom/spotify/mobile/android/ui/fragments/logic/c;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/j;


# instance fields
.field private a:Lcom/spotify/mobile/android/service/connections/b;

.field private b:Z

.field private d:Z

.field private e:I

.field private f:Landroid/content/Intent;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/spotify/mobile/android/util/cx;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->e:I

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Lcom/spotify/mobile/android/util/cx;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->h:Lcom/spotify/mobile/android/util/cx;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/logic/c;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->m:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_30

    move v0, v2

    :goto_11
    if-nez v0, :cond_32

    move v0, v1

    :goto_14
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->f:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->d:Z

    if-nez v0, :cond_2f

    iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->d:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_2f
    return-void

    :cond_30
    move v0, v1

    goto :goto_11

    :cond_32
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->j:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    goto :goto_14

    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_14

    :cond_44
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->h:Lcom/spotify/mobile/android/util/cx;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/y;->b(Lcom/spotify/mobile/android/util/cx;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v1

    goto :goto_14

    :cond_4e
    move v0, v2

    goto :goto_14
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->g:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->e:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->h:Lcom/spotify/mobile/android/util/cx;

    if-eqz p1, :cond_21

    const-string v0, "dialog_queued"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->d:Z

    const-string v0, "dialog_request_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->e:I

    :cond_21
    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->f:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "dialog_queued"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dialog_request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final r_()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->r_()V

    new-instance v0, Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->s_()V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V

    :cond_11
    return-void
.end method

.method public final u_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b:Z

    return-void
.end method

.method public final v_()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a:Lcom/spotify/mobile/android/service/connections/b;

    new-instance v1, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/c;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z

    return-void
.end method
