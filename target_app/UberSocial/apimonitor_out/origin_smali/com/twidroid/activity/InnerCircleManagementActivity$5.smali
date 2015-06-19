.class Lcom/twidroid/activity/InnerCircleManagementActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/InnerCircleManagementActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$5;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$5;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->d(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_14
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$5;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;I)I

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$5;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-static {v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->d(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_14
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
