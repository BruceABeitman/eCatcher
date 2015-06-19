.class Lcom/fsck/k9/service/MailService$2;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/MailService;->stopPushers(Ljava/lang/Integer;)V
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

    iput-object p1, p0, Lcom/fsck/k9/service/MailService$2;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/service/MailService$2;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-virtual {v0}, Lcom/fsck/k9/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->stopAllPushing()V

    iget-object v0, p0, Lcom/fsck/k9/service/MailService$2;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-static {v0}, Lcom/fsck/k9/service/PushService;->stopService(Landroid/content/Context;)V

    return-void
.end method
