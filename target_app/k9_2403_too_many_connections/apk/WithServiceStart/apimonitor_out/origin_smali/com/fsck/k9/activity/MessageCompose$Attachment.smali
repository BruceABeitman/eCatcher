.class Lcom/fsck/k9/activity/MessageCompose$Attachment;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Attachment"
.end annotation


# instance fields
.field public contentType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public size:J

.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$Attachment;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
