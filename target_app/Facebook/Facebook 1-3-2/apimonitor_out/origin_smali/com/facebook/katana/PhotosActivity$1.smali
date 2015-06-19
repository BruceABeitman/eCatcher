.class Lcom/facebook/katana/PhotosActivity$1;
.super Landroid/database/DataSetObserver;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/PhotosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/PhotosActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/PhotosActivity$1;->this$0:Lcom/facebook/katana/PhotosActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/PhotosActivity$1;->this$0:Lcom/facebook/katana/PhotosActivity;

    #calls: Lcom/facebook/katana/PhotosActivity;->updateContentViews()V
    invoke-static {v0}, Lcom/facebook/katana/PhotosActivity;->access$16(Lcom/facebook/katana/PhotosActivity;)V

    return-void
.end method
