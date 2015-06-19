.class public abstract Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/ui/actions/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method


# virtual methods
.method protected abstract a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->setContentView(I)V

    const v0, 0x7f0a02e5

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02e6

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    return-void
.end method
