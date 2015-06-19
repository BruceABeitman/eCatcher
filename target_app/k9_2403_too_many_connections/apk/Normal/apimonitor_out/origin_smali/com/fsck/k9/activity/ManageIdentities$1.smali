.class Lcom/fsck/k9/activity/ManageIdentities$1;
.super Ljava/lang/Object;
.source "ManageIdentities.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ManageIdentities;->setupClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ManageIdentities;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ManageIdentities;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;

    #calls: Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V
    invoke-static {v0, p3}, Lcom/fsck/k9/activity/ManageIdentities;->access$000(Lcom/fsck/k9/activity/ManageIdentities;I)V

    return-void
.end method
