.class Lcom/facebook/katana/ViewPhotoActivity$5;
.super Ljava/lang/Object;
.source "ViewPhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/ViewPhotoActivity;->showOnScreenControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$5;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$5;->this$0:Lcom/facebook/katana/ViewPhotoActivity;

    #calls: Lcom/facebook/katana/ViewPhotoActivity;->showOnScreenControls()V
    invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$34(Lcom/facebook/katana/ViewPhotoActivity;)V

    return-void
.end method
