.class public Lcom/fsck/k9/activity/setup/AccountSetupComposition;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupComposition.java"


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mAccountAlwaysBcc:Landroid/widget/EditText;

.field private mAccountEmail:Landroid/widget/EditText;

.field private mAccountName:Landroid/widget/EditText;

.field private mAccountSignature:Landroid/widget/EditText;

.field private mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

.field private mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V

    return-void
.end method

.method public static actionEditCompositionSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private saveSettings()V
    .registers 4

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setAlwaysBcc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->setSignature(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setSignatureBeforeQuotedText(Z)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const-string v3, "account"

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Account;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->setContentView(I)V

    if-eqz p1, :cond_2d

    const-string v1, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "account"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Account;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    :cond_2d
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0003

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountEmail:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountAlwaysBcc:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getAlwaysBcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignature:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    const v1, 0x7f0b000f

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->isSignatureBeforeQuotedText()Z

    move-result v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureBeforeLocation:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccountSignatureAfterLocation:Landroid/widget/RadioButton;

    if-nez v0, :cond_af

    const/4 v2, 0x1

    :goto_ab
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void

    :cond_af
    const/4 v2, 0x0

    goto :goto_ab
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->saveSettings()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->refresh(Lcom/fsck/k9/Preferences;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
