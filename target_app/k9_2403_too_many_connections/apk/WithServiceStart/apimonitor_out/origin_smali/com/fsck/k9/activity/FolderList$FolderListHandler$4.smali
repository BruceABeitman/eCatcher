.class Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;
.super Ljava/lang/Object;
.source "FolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/FolderList$FolderListHandler;->accountSizeChanged(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

.field final synthetic val$newSize:J

.field final synthetic val$oldSize:J


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList$FolderListHandler;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iput-wide p2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->val$oldSize:J

    iput-wide p4, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->val$newSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    const v3, 0x7f080064

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v6, v6, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    #getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v6}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v5, v5, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v5

    iget-wide v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->val$oldSize:J

    invoke-static {v5, v6, v7}, Lcom/fsck/k9/activity/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v6, v6, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v6}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v6

    iget-wide v7, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->val$newSize:J

    invoke-static {v6, v7, v8}, Lcom/fsck/k9/activity/SizeFormatter;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/FolderList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderListHandler$4;->this$1:Lcom/fsck/k9/activity/FolderList$FolderListHandler;

    iget-object v2, v2, Lcom/fsck/k9/activity/FolderList$FolderListHandler;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-virtual {v2}, Lcom/fsck/k9/activity/FolderList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
