.class Lcom/pinguo/share/ShareManager$3;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/share/ShareManager;->websiteShare(Landroid/app/Activity;Lcom/pinguo/share/CloudShareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$getPhotoWallUrlTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/share/ShareManager$3;->val$getPhotoWallUrlTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_a
    return-void
.end method
