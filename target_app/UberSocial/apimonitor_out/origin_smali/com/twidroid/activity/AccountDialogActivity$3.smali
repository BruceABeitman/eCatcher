.class Lcom/twidroid/activity/AccountDialogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/AccountDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/AccountDialogActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/AccountDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/AccountDialogActivity$3;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/activity/AccountDialogActivity$3;->a:Lcom/twidroid/activity/AccountDialogActivity;

    invoke-virtual {v0}, Lcom/twidroid/activity/AccountDialogActivity;->finish()V

    return-void
.end method
