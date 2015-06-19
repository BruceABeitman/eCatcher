.class final Lcom/bbm/setup/u;
.super Lcom/bbm/j/k;
.source "SetupBbidErrorActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/setup/SetupBbidErrorActivity;


# direct methods
.method constructor <init>(Lcom/bbm/setup/SetupBbidErrorActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 4

    const v2, 0x7f0e067f

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;

    sget-object v1, Lcom/bbm/setup/ah;->i:Lcom/bbm/setup/ah;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-virtual {v0}, Lcom/bbm/setup/SetupBbidErrorActivity;->b()V

    :goto_17
    return-void

    :cond_18
    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/f/ae;->k:Lcom/bbm/ak;

    sget-object v1, Lcom/bbm/setup/w;->a:[I

    invoke-virtual {v0}, Lcom/bbm/ak;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_88

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const v2, 0x7f0e067e

    invoke-virtual {v0, v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :goto_3c
    iget-object v2, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-static {v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->a(Lcom/bbm/setup/SetupBbidErrorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-static {v1}, Lcom/bbm/setup/SetupBbidErrorActivity;->b(Lcom/bbm/setup/SetupBbidErrorActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :pswitch_4f
    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/bbm/setup/SetupBbidErrorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const v2, 0x7f0e04ce

    invoke-virtual {v0, v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_75
    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const v1, 0x7f0e052b

    invoke-virtual {v0, v1}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/setup/u;->a:Lcom/bbm/setup/SetupBbidErrorActivity;

    const v2, 0x7f0e078f

    invoke-virtual {v0, v2}, Lcom/bbm/setup/SetupBbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_4f
    .end packed-switch
.end method
