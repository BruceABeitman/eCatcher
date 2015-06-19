.class public final Lcom/spotify/mobile/android/ui/fragments/v;
.super Landroid/support/v4/app/n;
.source "SourceFile"


# instance fields
.field Y:Lcom/spotify/mobile/android/util/dw;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Landroid/app/Dialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/v;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/spotify/mobile/android/ui/fragments/v$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/v$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/v;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/v;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->aF:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/v;->Y:Lcom/spotify/mobile/android/util/dw;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/v;->Y:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/dw;->a()V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
