.class Lcom/fsck/k9/service/MailService$4;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/MailService;->setupPushers(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/MailService;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-static {v5}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_43

    aget-object v0, v1, v2

    sget-boolean v5, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v5, :cond_31

    const-string v5, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting up pushers for account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v5, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-virtual {v5}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/fsck/k9/MessagingController;->setupPushing(Lcom/fsck/k9/Account;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_43
    if-eqz v4, :cond_4a

    iget-object v5, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-static {v5}, Lcom/fsck/k9/service/PushService;->startService(Landroid/content/Context;)V

    :cond_4a
    return-void
.end method
