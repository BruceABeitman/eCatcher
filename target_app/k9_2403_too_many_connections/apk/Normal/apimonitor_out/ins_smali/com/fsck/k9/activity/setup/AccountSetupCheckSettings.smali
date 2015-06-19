.class public Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
.super Lcom/fsck/k9/K9Activity;
.source "AccountSetupCheckSettings.java"
.implements Landroid/view/View$OnClickListener;
.field public static final ACTIVITY_REQUEST_CODE:I = 0x1
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"
.field private static final EXTRA_CHECK_INCOMING:Ljava/lang/String; = "checkIncoming"
.field private static final EXTRA_CHECK_OUTGOING:Ljava/lang/String; = "checkOutgoing"
.field private mAccount:Lcom/fsck/k9/Account;
.field private mCanceled:Z
.field private mCheckIncoming:Z
.field private mCheckOutgoing:Z
.field private mDestroyed:Z
.field private mHandler:Landroid/os/Handler;
.field private mMessageView:Landroid/widget/TextView;
.field private mProgressBar:Landroid/widget/ProgressBar;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;
return-void
.end method
.method private varargs acceptKeyDialog(I[Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;
invoke-direct {v1, p0, p2, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;[Ljava/lang/Object;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method static synthetic access$000(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
return v0
.end method
.method static synthetic access$100(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
return v0
.end method
.method static synthetic access$102(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
return p1
.end method
.method static synthetic access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z
return v0
.end method
.method static synthetic access$300(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
return-void
.end method
.method static synthetic access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
return-object v0
.end method
.method static synthetic access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z
.registers 2
iget-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z
return v0
.end method
.method static synthetic access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$700(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->acceptKeyDialog(I[Ljava/lang/Object;)V
return-void
.end method
.method static synthetic access$800(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic access$900(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;
return-object v0
.end method
.method public static actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V
.registers 6
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "account"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
const-string v1, "checkIncoming"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "checkOutgoing"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method private onCancel()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
const v0, 0x7f0800cb
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
return-void
.end method
.method private setMessage(I)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;
invoke-direct {v1, p0, p1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;
invoke-direct {v1, p0, p1, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$3;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 4
invoke-virtual {p0, p2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setResult(I)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_c
:goto_7
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->onCancel()V
goto :goto_7
:pswitch_data_c
.packed-switch 0x7f0b006e
:pswitch_8
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/fsck/k9/K9Activity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030002
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setContentView(I)V
const v0, 0x7f0b0008
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mMessageView:Landroid/widget/TextView;
const v0, 0x7f0b0009
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;
const v0, 0x7f0b006e
invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0800c7
invoke-direct {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->setMessage(I)V
iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mProgressBar:Landroid/widget/ProgressBar;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "account"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
iput-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "checkIncoming"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z
invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "checkOutgoing"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z
new-instance v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;
invoke-direct {v0, p0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;-><init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)V
invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->start()V
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-super {p0}, Lcom/fsck/k9/K9Activity;->onDestroy()V
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mDestroyed:Z
iput-boolean v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCanceled:Z
const-string v1, " - Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method