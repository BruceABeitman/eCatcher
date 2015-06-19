.class Lcom/facebook/katana/CreateEditAlbumActivity$1;
.super Ljava/lang/Object;
.source "CreateEditAlbumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/CreateEditAlbumActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/CreateEditAlbumActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/CreateEditAlbumActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/CreateEditAlbumActivity$1;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/CreateEditAlbumActivity$1;->this$0:Lcom/facebook/katana/CreateEditAlbumActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/CreateEditAlbumActivity;->finish()V

    return-void
.end method
