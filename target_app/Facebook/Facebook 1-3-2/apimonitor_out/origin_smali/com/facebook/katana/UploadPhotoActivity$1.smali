.class Lcom/facebook/katana/UploadPhotoActivity$1;
.super Ljava/lang/Object;
.source "UploadPhotoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UploadPhotoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UploadPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UploadPhotoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$1;->this$0:Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$1;->this$0:Lcom/facebook/katana/UploadPhotoActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/UploadPhotoActivity;->finish()V

    return-void
.end method
