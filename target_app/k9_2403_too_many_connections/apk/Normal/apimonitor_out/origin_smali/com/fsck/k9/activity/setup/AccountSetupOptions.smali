.class public Lcom/fsck/k9/activity/setup/AccountSetupOptions;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDisplayCountView:Landroid/widget/Spinner;

.field private mNotifySyncView:Landroid/widget/CheckBox;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mPushEnable:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    return-void
.end method

.method public static actionOptions(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onDone()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setShowOngoing(Z)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setDisplayCount(I)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)V

    :goto_5a
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_80
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    :cond_89
    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->finish()V

    return-void

    :cond_95
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_5a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    :goto_7
    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->onDone()V

    goto :goto_7

    :pswitch_data_c
    .packed-switch 0x7f0b0005
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f030006

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->setContentView(I)V

    const v7, 0x7f0b0024

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    const v7, 0x7f0b0026

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    const v7, 0x7f0b0027

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    const v7, 0x7f0b0028

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    const v7, 0x7f0b0025

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    const v7, 0x7f0b0005

    invoke-virtual {p0, v7}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v7, 0xc

    new-array v0, v7, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v7, 0x0

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080111

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080112

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x2

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080113

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080114

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x4

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0xf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080115

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x5

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x1e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080116

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x6

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x3c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080117

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/4 v7, 0x7

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x78

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080118

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/16 v7, 0x8

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0xb4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080119

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/16 v7, 0x9

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x168

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f08011a

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/16 v7, 0xa

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x2d0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f08011b

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    const/16 v7, 0xb

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x5a0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f08011c

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v0, v7

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v1, p0, v7, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v7, 0x1090009

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v7, 0x7

    new-array v2, v7, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v7, 0x0

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080123

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x19

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080124

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x2

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080125

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x3

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080126

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x4

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0xfa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080127

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x5

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x1f4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080128

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    const/4 v7, 0x6

    new-instance v8, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v10, 0x7f080129

    invoke-virtual {p0, v10}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v2, v7

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    invoke-direct {v3, p0, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v7, 0x1090009

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "account"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/fsck/k9/Account;

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    const/4 v5, 0x0

    :try_start_24a
    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v7}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_25b} :catch_266

    move-result v5

    :goto_25c
    if-nez v5, :cond_270

    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_265
    return-void

    :catch_266
    move-exception v7

    move-object v4, v7

    const-string v7, "k9"

    const-string v8, "Could not get remote store"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25c

    :cond_270
    iget-object v7, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_265
.end method
