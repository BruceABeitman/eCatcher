.class public Lcom/fsck/k9/activity/EditIdentity;
.super Lcom/fsck/k9/K9Activity;
.source "EditIdentity.java"
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.EditIdentity_account"
.field public static final EXTRA_IDENTITY:Ljava/lang/String; = "com.fsck.k9.EditIdentity_identity"
.field public static final EXTRA_IDENTITY_INDEX:Ljava/lang/String; = "com.fsck.k9.EditIdentity_identity_index"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mDescriptionView:Landroid/widget/EditText;
.field private mEmailView:Landroid/widget/EditText;
.field private mIdentity:Lcom/fsck/k9/Account$Identity;
.field private mIdentityIndex:I
.field private mNameView:Landroid/widget/EditText;
.field private mSignatureView:Landroid/widget/EditText;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
return-void
.end method
.method private saveIdentity()V
.registers 4
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account$Identity;->setDescription(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account$Identity;->setEmail(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account$Identity;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account$Identity;->setSignature(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;
move-result-object v0
iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I
const/4 v2, -0x1
if-ne v1, v2, :cond_61
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_4c
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getApplication()Landroid/app/Application;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->finish()V
return-void
:cond_61
iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I
iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto :goto_4c
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/fsck/k9/activity/EditIdentity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, -0x1
const-string v2, "com.fsck.k9.EditIdentity_identity"
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.fsck.k9.EditIdentity_identity"
invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account$Identity;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.fsck.k9.EditIdentity_identity_index"
invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I
invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.fsck.k9.EditIdentity_account"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;
iget v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I
if-ne v0, v3, :cond_3e
new-instance v0, Lcom/fsck/k9/Account$Identity;
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v0, v1}, Lcom/fsck/k9/Account$Identity;-><init>(Lcom/fsck/k9/Account;)V
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
:cond_3e
const v0, 0x7f03000a
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/EditIdentity;->setContentView(I)V
if-eqz p1, :cond_58
const-string v0, "com.fsck.k9.EditIdentity_identity"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "com.fsck.k9.EditIdentity_identity"
invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account$Identity;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
:cond_58
const v0, 0x7f0b002d
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;
iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getDescription()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0b0030
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;
iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0b002e
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;
iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getEmail()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0b0031
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;
iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {v1}, Lcom/fsck/k9/Account$Identity;->getSignature()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const-string v1, " - Lcom/fsck/k9/activity/EditIdentity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_8
invoke-direct {p0}, Lcom/fsck/k9/activity/EditIdentity;->saveIdentity()V
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-super {p0, p1, p2}, Lcom/fsck/k9/K9Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_7
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/EditIdentity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onResume()V
const-string v1, " - Lcom/fsck/k9/activity/EditIdentity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/activity/EditIdentity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "com.fsck.k9.EditIdentity_identity"
iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Account$Identity;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const-string v1, " - Lcom/fsck/k9/activity/EditIdentity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method