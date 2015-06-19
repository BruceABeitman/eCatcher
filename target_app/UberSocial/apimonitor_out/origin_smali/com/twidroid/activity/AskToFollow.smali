.class public Lcom/twidroid/activity/AskToFollow;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# static fields
.field static final e:Ljava/lang/String; = "LoginDialog"

.field static final g:I = 0x1


# instance fields
.field b:Lcom/twidroid/d/v;

.field c:Lcom/twidroid/UberSocialApplication;

.field d:Landroid/os/Handler;

.field f:Ljava/lang/String;

.field private h:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/activity/AskToFollow;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->h:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/activity/AskToFollow;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/twidroid/TwidroidClient;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;

    sget-object v0, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f0c0213

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/AskToFollow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->e:Ljava/util/ArrayList;

    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/AskToFollow;->setContentView(I)V

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;

    invoke-static {p0, v0}, Lcom/twidroid/d/l;->a(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;

    const v1, 0x7f0c007b

    invoke-virtual {p0}, Lcom/twidroid/activity/AskToFollow;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/AskToFollow;->b:Lcom/twidroid/d/v;

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->b:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->br()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/AskToFollow;->d:Landroid/os/Handler;

    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/AskToFollow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twidroid/activity/AskToFollow;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/twidroid/activity/AskToFollow;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/twidroid/activity/AskToFollow;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/net/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/AskToFollow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/activity/AskToFollow$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/AskToFollow$1;-><init>(Lcom/twidroid/activity/AskToFollow;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    packed-switch p1, :pswitch_data_3a

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/AskToFollow;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0109

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/AskToFollow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002c

    new-instance v2, Lcom/twidroid/activity/AskToFollow$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/AskToFollow$2;-><init>(Lcom/twidroid/activity/AskToFollow;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
