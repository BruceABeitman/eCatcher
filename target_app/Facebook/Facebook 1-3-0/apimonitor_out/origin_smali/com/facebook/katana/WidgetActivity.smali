.class public Lcom/facebook/katana/WidgetActivity;
.super Landroid/app/Activity;
.source "WidgetActivity.java"


# static fields
.field public static final ACTION_WIDGET_PUBLISH_RESULT:Ljava/lang/String; = "com.facebook.katana.widget.publish.result"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "extra_error_code"

.field private static final PROGRESS_DIALOG:I = 0x2

.field private static final SHARE_DIALOG:I = 0x1


# instance fields
.field private mFirstTime:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->mFirstTime:Z

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/WidgetActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/WidgetActivity;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/facebook/katana/WidgetActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/WidgetActivity$1;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    iput-object v1, p0, Lcom/facebook/katana/WidgetActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.katana.widget.publish.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/katana/WidgetActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/WidgetActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_7c

    move-object v5, v7

    :goto_6
    return-object v5

    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/facebook/katana/WidgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f03003e

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f08014b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0b0076

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/katana/WidgetActivity;->mText:Ljava/lang/String;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/facebook/katana/WidgetActivity;->mText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_36
    const v5, 0x7f08014a

    invoke-virtual {p0, v5}, Lcom/facebook/katana/WidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/facebook/katana/WidgetActivity$2;

    invoke-direct {v6, p0, v3}, Lcom/facebook/katana/WidgetActivity$2;-><init>(Lcom/facebook/katana/WidgetActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f080021

    invoke-virtual {p0, v5}, Lcom/facebook/katana/WidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/facebook/katana/WidgetActivity$3;

    invoke-direct {v6, p0}, Lcom/facebook/katana/WidgetActivity$3;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/facebook/katana/WidgetActivity$4;

    invoke-direct {v5, p0}, Lcom/facebook/katana/WidgetActivity$4;-><init>(Lcom/facebook/katana/WidgetActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_6

    :pswitch_61
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const v5, 0x7f080140

    invoke-virtual {p0, v5}, Lcom/facebook/katana/WidgetActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v5, v1

    goto :goto_6

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_61
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/katana/WidgetActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->mFirstTime:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/WidgetActivity;->mFirstTime:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/WidgetActivity;->showDialog(I)V

    :cond_e
    return-void
.end method
