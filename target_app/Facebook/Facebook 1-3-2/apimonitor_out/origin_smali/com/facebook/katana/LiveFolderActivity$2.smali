.class Lcom/facebook/katana/LiveFolderActivity$2;
.super Ljava/lang/Object;
.source "LiveFolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/LiveFolderActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/LiveFolderActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/LiveFolderActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/LiveFolderActivity$2;->this$0:Lcom/facebook/katana/LiveFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/LiveFolderActivity$2;->this$0:Lcom/facebook/katana/LiveFolderActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/LiveFolderActivity;->finish()V

    return-void
.end method
