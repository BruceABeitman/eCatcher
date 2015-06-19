.class final Lcom/instagram/creation/photo/camera/f;
.super Landroid/content/BroadcastReceiver;
.source "CameraFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/f;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_1c
    iget-object v0, p0, Lcom/instagram/creation/photo/camera/f;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->h(Lcom/instagram/creation/photo/camera/c;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/instagram/creation/photo/camera/f;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-static {v0}, Lcom/instagram/creation/photo/camera/c;->h(Lcom/instagram/creation/photo/camera/c;)V

    goto :goto_21
.end method
