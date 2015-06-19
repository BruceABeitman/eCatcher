.class public Lcom/twidroid/activity/UberSocialBaseActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/fragments/b/b;
.implements Lcom/twidroid/net/c/a/f;


# static fields
.field protected static final K:I = 0x22

.field public static final L:I = 0xa

.field public static M:I = 0x0

.field public static final O:I = 0x44f4

.field public static final P:I = 0x1

.field public static Y:Lcom/twidroid/model/twitter/Tweet; = null

.field protected static final Z:I = 0x187

.field protected static aa:Z = false

.field private static final b:Ljava/lang/String; = "UberSocialBaseActivity"


# instance fields
.field protected J:Lcom/twidroid/UberSocialApplication;

.field protected N:Lcom/twidroid/b/a/b;

.field protected Q:Landroid/widget/ProgressBar;

.field protected R:Landroid/widget/TextView;

.field public S:Z

.field protected T:Z

.field protected U:Ljava/lang/String;

.field V:Ljava/lang/String;

.field W:Landroid/app/ProgressDialog;

.field protected X:Landroid/os/Handler;

.field protected ab:Ljava/lang/String;

.field public ac:I

.field protected ad:Landroid/view/MenuItem;

.field protected ae:Z

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x32

    sput v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/twidroid/activity/UberSocialBaseActivity;->aa:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    const-string v0, "Connection failed."

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->U:Ljava/lang/String;

    const-string v0, "UberSocial"

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->V:Ljava/lang/String;

    iput v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->ae:Z

    new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$16;

    invoke-direct {v0, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$16;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .registers 5

    if-nez p3, :cond_6

    invoke-virtual {p0, p2}, Lcom/twidroid/activity/UberSocialBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_6
    new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$1;

    invoke-direct {v0, p0, p3}, Lcom/twidroid/activity/UberSocialBaseActivity$1;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    :cond_14
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    if-nez p2, :cond_23

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_23
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/User;)V
    .registers 5

    const-string v0, ""

    iget v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->ac:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    :cond_c
    const v0, 0x7f0c01cc

    invoke-static {p0, v0}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$8;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Lcom/twidroid/model/twitter/User;)V

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/twidroid/c/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_21
    const v0, 0x7f0c01c6

    invoke-static {p0, v0}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/twidroid/activity/aa;)V
    .registers 13

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c01fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c01f9

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c01f8

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0c002c

    new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$18;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twidroid/activity/UberSocialBaseActivity$18;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;ILjava/lang/String;Lcom/twidroid/activity/aa;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    :cond_14
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .registers 7

    const/high16 v2, 0x3f80

    const-string v0, "UberSocialBaseActivity"

    const-string v1, "Show error."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_13

    const-string v0, "UberSocialBaseActivity"

    const-string v1, "Error no error view component found"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "Could not authenticate with OAuth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$14;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$14;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$15;

    invoke-direct {v1, p0, p2}, Lcom/twidroid/activity/UberSocialBaseActivity$15;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12
.end method

.method public a(Ljava/lang/String;Lcom/twidroid/model/twitter/c;)V
    .registers 9

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twidroid/ui/themes/r;->d(Landroid/content/Context;)V

    new-instance v0, Lcom/twidroid/net/c/x;

    invoke-direct {v0}, Lcom/twidroid/net/c/x;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->l()Lcom/twidroid/net/c/a/f;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/twidroid/net/c/a/b;

    const/4 v3, 0x0

    new-instance v4, Lcom/twidroid/net/c/a/d;

    iget-object v5, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-direct {v4, v5, p1, p2}, Lcom/twidroid/net/c/a/d;-><init>(Lcom/twidroid/UberSocialApplication;Ljava/lang/String;Lcom/twidroid/model/twitter/c;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/net/c/x;->a(Lcom/twidroid/net/c/a/f;[Lcom/twidroid/net/c/a/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UberSocialBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopUp Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->U:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
    .registers 15

    const/4 v7, -0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_2c
    const v0, 0x7f0c01f5

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f060008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060009

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/widget/ArrayAdapter;

    const v7, 0x7f03008d

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, p0, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v0, 0x1090009

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f020067

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    if-eqz v2, :cond_d0

    const v0, 0x7f0c01f7

    :goto_76
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0c01f6

    invoke-virtual {p0, v7}, Lcom/twidroid/activity/UberSocialBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0029

    new-instance v5, Lcom/twidroid/activity/UberSocialBaseActivity$20;

    invoke-direct {v5, p0, p3}, Lcom/twidroid/activity/UberSocialBaseActivity$20;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Lcom/twidroid/activity/aa;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0c002c

    new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$19;

    move-object v1, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/twidroid/activity/UberSocialBaseActivity$19;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Z[Ljava/lang/String;Landroid/widget/Spinner;Ljava/lang/String;Landroid/widget/CheckBox;Lcom/twidroid/activity/aa;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_c6
    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2c

    :cond_d0
    const v0, 0x7f0c01f1

    goto :goto_76
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twidroid/ui/themes/r;->c(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$9;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method protected a(Lcom/ubermedia/net/a/a/a;I)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Incorrect signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not authenticate with OAuth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_21
    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$21;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$21;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    :goto_2f
    return v0

    :cond_30
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0112

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0113

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$22;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$22;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto :goto_2f

    :cond_85
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status is a duplicate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ae

    const v1, 0x7f0c002f

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$23;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$23;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto :goto_2f

    :cond_ae
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "There was an error creating your search"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d8

    const v1, 0x7f0c0023

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$24;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$24;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto/16 :goto_2f

    :cond_d8
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_129

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c017c

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->ab:Ljava/lang/String;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/ubermedia/b/a/j;->b(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c017d

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$2;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto/16 :goto_2f

    :cond_129
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not authenticate you"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_153

    const v1, 0x7f0c0022

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$3;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto/16 :goto_2f

    :cond_153
    sget-boolean v2, Lcom/twidroid/activity/UberSocialBaseActivity;->aa:Z

    if-eqz v2, :cond_16e

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v2

    if-ne v2, v1, :cond_16e

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$4;

    invoke-direct {v2, p0, p2}, Lcom/twidroid/activity/UberSocialBaseActivity$4;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    move v0, v1

    goto/16 :goto_2f

    :cond_16e
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_198

    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$5;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$5;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    goto/16 :goto_2f

    :cond_198
    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Twitter is over capacity."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c3

    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/twidroid/activity/UberSocialBaseActivity$6;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    move v0, v1

    goto/16 :goto_2f

    :cond_1c3
    const/4 v0, 0x0

    :try_start_1c4
    iput-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;

    if-eqz p1, :cond_1dc

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1dc

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V

    :cond_1dc
    sget-wide v2, Lcom/twidroid/net/a/c/c;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1f9

    invoke-static {p0}, Lcom/twidroid/c/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$7;

    invoke-direct {v2, p0, p2}, Lcom/twidroid/activity/UberSocialBaseActivity$7;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1f9} :catch_1fe

    :cond_1f9
    :goto_1f9
    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->S:Z

    move v0, v1

    goto/16 :goto_2f

    :catch_1fe
    move-exception v0

    const-string v2, "UberSocialBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f9
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/twidroid/activity/UberSocialBaseActivity$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$12;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(I)V
    .registers 5

    const-string v0, "UberSocialBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(ILjava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->V:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1, p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method protected d(Z)V
    .registers 2

    return-void
.end method

.method public e(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twidroid/ui/themes/r;->e(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$10;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method protected e(Z)V
    .registers 2

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    iput-boolean v1, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->T:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$11;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f0c0178

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/twidroid/activity/UberSocialBaseActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity$13;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected l()Lcom/twidroid/net/c/a/f;
    .registers 1

    return-object p0
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->c:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->X:Landroid/os/Handler;

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->J:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->N:Lcom/twidroid/b/a/b;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    packed-switch p1, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->U:Ljava/lang/String;

    const-string v1, "Error"

    invoke-static {p0, v0, v1}, Lcom/twidroid/c/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_f

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-nez v0, :cond_14

    :cond_f
    invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->finish()V

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_13
.end method

.method protected onStart()V
    .registers 5

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->d:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.ubersocial.networkerror"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.ubersocial.info"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.ubermedia.wax.action.chime_posted"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.ubermedia.wax.action.chime_hidden"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/twidroid/net/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialBaseActivity;->d:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/twidroid/net/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public p()V
    .registers 1

    return-void
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialBaseActivity;->e(Z)V

    return-void
.end method

.method public r_()V
    .registers 1

    return-void
.end method

.method protected s()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0150

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Twitter has just turned off API v1."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0151

    new-instance v2, Lcom/twidroid/activity/UberSocialBaseActivity$17;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialBaseActivity$17;-><init>(Lcom/twidroid/activity/UberSocialBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
