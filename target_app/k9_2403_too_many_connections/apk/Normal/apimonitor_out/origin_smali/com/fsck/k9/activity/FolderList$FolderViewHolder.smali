.class Lcom/fsck/k9/activity/FolderList$FolderViewHolder;
.super Ljava/lang/Object;
.source "FolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/FolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderViewHolder"
.end annotation


# instance fields
.field public chip:Landroid/view/View;

.field public folderName:Landroid/widget/TextView;

.field public folderStatus:Landroid/widget/TextView;

.field public newMessageCount:Landroid/widget/TextView;

.field public rawFolderName:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderViewHolder;->this$0:Lcom/fsck/k9/activity/FolderList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
