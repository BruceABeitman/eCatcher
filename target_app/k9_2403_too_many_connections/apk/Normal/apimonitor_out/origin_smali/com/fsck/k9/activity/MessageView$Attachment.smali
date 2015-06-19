.class Lcom/fsck/k9/activity/MessageView$Attachment;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attachment"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public downloadButton:Landroid/widget/Button;

.field public iconView:Landroid/widget/ImageView;

.field public name:Ljava/lang/String;

.field public part:Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;

.field public size:J

.field final synthetic this$0:Lcom/fsck/k9/activity/MessageView;

.field public viewButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$Attachment;->this$0:Lcom/fsck/k9/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
