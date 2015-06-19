.class Lcom/facebook/katana/LiveFolderActivity$1;
.super Ljava/lang/Object;
.source "LiveFolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$numbers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/katana/LiveFolderActivity;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;

    iput-object p2, p0, Lcom/facebook/katana/LiveFolderActivity$1;->val$numbers:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/facebook/katana/LiveFolderActivity$1;->val$numbers:[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/LiveFolderActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/facebook/katana/LiveFolderActivity$1;->this$0:Lcom/facebook/katana/LiveFolderActivity;

    invoke-virtual {v1}, Lcom/facebook/katana/LiveFolderActivity;->finish()V

    return-void
.end method
