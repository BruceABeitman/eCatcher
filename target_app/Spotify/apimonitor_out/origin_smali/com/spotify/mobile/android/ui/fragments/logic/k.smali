.class public final Lcom/spotify/mobile/android/ui/fragments/logic/k;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Landroid/content/Intent;

.field private f:I

.field private g:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Lcom/spotify/mobile/android/ui/fragments/logic/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "requires_marketing_opt_in"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "marketing_opt_in_contact_us_url"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->b:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/k$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/k$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/k;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->g:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/k;Lcom/spotify/mobile/android/ui/fragments/logic/l;)V
    .registers 4

    iget-boolean v0, p1, Lcom/spotify/mobile/android/ui/fragments/logic/l;->a:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/k;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/spotify/mobile/android/ui/fragments/logic/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/MarketingOptInActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->e:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_20
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->f:I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const-string v0, "request_code_key"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->f:I

    const-string v0, "dialog_queued"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    :cond_16
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/k;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0184

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->g:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/k;->m()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/DialogPresenter;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Lcom/spotify/mobile/android/util/DialogPresenter;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_c
    return-void
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->e:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/k;->a(Landroid/content/Intent;I)V

    :goto_19
    return-void

    :cond_1a
    const-string v0, "Unexpected onShow(). Did not expect to show a dialog when nothing queued"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "request_code_key"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "dialog_queued"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/k;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
