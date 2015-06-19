.class Lcom/fsck/k9/activity/MessageCompose$4;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageCompose;->loadAttachments(Lcom/fsck/k9/mail/Part;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageCompose$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$4;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageCompose$4;->val$uri:Landroid/net/Uri;

    #calls: Lcom/fsck/k9/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->access$300(Lcom/fsck/k9/activity/MessageCompose;Landroid/net/Uri;)V

    return-void
.end method
