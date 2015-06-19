.class Lcom/pinguo/camera360/camera/controller/SceneCamera$5;
.super Ljava/lang/Object;
.source "SceneCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/SceneCamera;->initDefaultScene(Landroid/content/Context;Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$installTask:Lcom/pinguo/lib/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/pinguo/lib/os/AsyncTask;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$5;->val$installTask:Lcom/pinguo/lib/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$5;->val$installTask:Lcom/pinguo/lib/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
