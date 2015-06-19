.class public Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/ui/actions/a;

.field private p:Lcom/spotify/mobile/android/util/ClientInfo;

.field private q:Lcom/spotify/mobile/android/util/ViewUri$Verified;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->p:Lcom/spotify/mobile/android/util/ClientInfo;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->ba:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->q:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->q:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/util/ClientInfo;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->p:Lcom/spotify/mobile/android/util/ClientInfo;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Y:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->ba:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->setContentView(Landroid/view/View;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->setResult(I)V

    const v1, 0x7f0f031e

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V

    const v1, 0x7f0f031c

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    const v1, 0x7f0f031d

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$2;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->q:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
