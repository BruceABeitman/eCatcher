.class Lcom/twidroid/activity/LoginDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/LoginDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/LoginDialog;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/LoginDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0, v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V

    goto :goto_12

    :cond_27
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog$1;->a:Lcom/twidroid/activity/LoginDialog;

    invoke-static {v0, v2}, Lcom/twidroid/activity/LoginDialog;->a(Lcom/twidroid/activity/LoginDialog;Z)V

    goto :goto_12
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
