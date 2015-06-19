.class Lcom/fsck/k9/activity/MessageList$FooterViewHolder;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterViewHolder"
.end annotation


# instance fields
.field public main:Landroid/widget/TextView;

.field public progress:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$FooterViewHolder;->this$0:Lcom/fsck/k9/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
