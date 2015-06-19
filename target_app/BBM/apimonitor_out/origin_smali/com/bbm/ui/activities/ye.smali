.class final Lcom/bbm/ui/activities/ye;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ye;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    iget-object v1, p0, Lcom/bbm/ui/activities/ye;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/ye;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_17
    invoke-static {v1, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/NewChannelActivity;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ye;->a:Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a()V

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_17
.end method
