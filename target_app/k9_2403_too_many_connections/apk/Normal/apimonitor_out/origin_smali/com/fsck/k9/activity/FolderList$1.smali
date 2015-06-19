.class Lcom/fsck/k9/activity/FolderList$1;
.super Lcom/fsck/k9/MessagingListener;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList;->checkMail(Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    iput-object p2, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_c
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_c
.end method
