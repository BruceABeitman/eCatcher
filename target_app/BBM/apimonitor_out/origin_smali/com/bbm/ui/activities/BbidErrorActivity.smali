.class public Lcom/bbm/ui/activities/BbidErrorActivity;
.super Landroid/app/Activity;
.source "BbidErrorActivity.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:I


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.bbm.ui.activities.BbidErrorActivity"

    sput-object v0, Lcom/bbm/ui/activities/BbidErrorActivity;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/bbm/ui/activities/BbidErrorActivity;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/bbm/ui/activities/BbidErrorActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/BbidErrorActivity;)Landroid/app/AlertDialog;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 12

    const v8, 0x7f0e078f

    const v7, 0x7f0e0719

    const v6, 0x7f0e0134

    const/4 v5, 0x0

    const v4, 0x7f0e00df

    const v0, 0x7f0e067e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0e067f

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IDS_ACTIVTY_RESULT"

    const v3, 0xc34f

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sparse-switch v2, :sswitch_data_108

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2e
    iget-object v2, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :sswitch_39
    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2e

    :sswitch_41
    const-string v0, "IDS_ACTIVTY_INFO"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "IDS_ACTIVTY_INFO"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6f

    const-string v2, "CA trust cannot be established"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    const v0, 0x7f0e047b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e058e

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_6c
    const-string v0, ""

    goto :goto_4f

    :cond_6f
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_c8

    :cond_83
    const v0, 0x7f0e052b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/aa;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/aa;-><init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V

    new-instance v3, Lcom/bbm/ui/activities/ab;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ab;-><init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0f0009

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0553

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0665

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->g:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->g:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2e

    :cond_c8
    const v0, 0x7f0e04ce

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2e

    :sswitch_d4
    const-string v0, "IDS error callback was invoked with the deprecated code \'IDS_DEFAULT_ERROR\', which isn\'t supposed to be used anymore"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2e

    :sswitch_e4
    const-string v0, "IDS error callback was invoked with the code \'USER_CASCELLED_AUTHORIZATION\', which isn\'t an error"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2e

    :sswitch_f4
    invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    :sswitch_fe
    invoke-virtual {p0, v7}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2e

    :sswitch_data_108
    .sparse-switch
        0xc34f -> :sswitch_d4
        0xc354 -> :sswitch_f4
        0xc35c -> :sswitch_41
        0xc3e6 -> :sswitch_39
        0xc3e8 -> :sswitch_e4
        0xc3ec -> :sswitch_fe
    .end sparse-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->setContentView(I)V

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f0e067e

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/BbidErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BbidErrorActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/activities/z;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/z;-><init>(Lcom/bbm/ui/activities/BbidErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BbidErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/BbidErrorActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "IDS_ACTIVTY_RESULT"

    const v1, 0xc34f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/c/c;->a(I)V

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/BbidErrorActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    return-void
.end method
