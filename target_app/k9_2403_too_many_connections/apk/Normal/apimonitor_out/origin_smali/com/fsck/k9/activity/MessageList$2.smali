.class Lcom/fsck/k9/activity/MessageList$2;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList;->createMarkAllAsReadDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$2;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$2;->this$0:Lcom/fsck/k9/activity/MessageList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->dismissDialog(I)V

    return-void
.end method
