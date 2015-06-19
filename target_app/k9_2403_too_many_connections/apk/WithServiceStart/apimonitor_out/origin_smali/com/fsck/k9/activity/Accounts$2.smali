.class Lcom/fsck/k9/activity/Accounts$2;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts;->createRemoveAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$2;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$2;->this$0:Lcom/fsck/k9/activity/Accounts;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts;->dismissDialog(I)V

    return-void
.end method
