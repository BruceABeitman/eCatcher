.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

.field final synthetic val$chain:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;[Ljava/security/cert/X509Certificate;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->val$chain:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z
    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v2

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".incoming"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_29
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z
    invoke-static {v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".outgoing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_46
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->val$chain:[Ljava/security/cert/X509Certificate;

    invoke-static {v0, v2}, Lcom/fsck/k9/mail/store/TrustManagerFactory;->addCertificateChain(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    :try_end_4b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4b} :catch_6b

    :goto_4b
    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    iget-object v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v3, v3, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v3}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Lcom/fsck/k9/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v4, v4, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckIncoming:Z
    invoke-static {v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$200(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v4

    iget-object v5, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v5, v5, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    #getter for: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->mCheckOutgoing:Z
    invoke-static {v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;)Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->actionCheckSettings(Landroid/app/Activity;Lcom/fsck/k9/Account;ZZ)V

    return-void

    :catch_6b
    move-exception v2

    move-object v1, v2

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;

    iget-object v2, v2, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const v3, 0x7f08012d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_86

    const-string v6, ""

    :goto_80
    aput-object v6, v4, v5

    #calls: Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$600(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_86
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_80
.end method
