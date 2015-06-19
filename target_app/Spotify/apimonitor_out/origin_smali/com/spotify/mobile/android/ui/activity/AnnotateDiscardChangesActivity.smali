.class public Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private n:Lcom/spotify/mobile/android/ui/actions/a;

.field private p:Lcom/spotify/android/paste/widget/DialogLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->n:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f0038

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->p:Lcom/spotify/android/paste/widget/DialogLayout;

    const v1, 0x7f0f0037

    new-instance v2, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity$2;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aP:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->a(Lcom/spotify/mobile/android/util/dw;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/AnnotateDiscardChangesActivity;->setResult(I)V

    return-void
.end method
