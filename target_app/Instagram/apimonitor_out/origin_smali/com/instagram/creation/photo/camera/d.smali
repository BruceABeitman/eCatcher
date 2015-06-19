.class final Lcom/instagram/creation/photo/camera/d;
.super Ljava/lang/Object;
.source "CameraFragment.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/camera/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/camera/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/camera/d;->a:Lcom/instagram/creation/photo/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 2

    invoke-static {}, Lcom/instagram/creation/photo/b/g;->b()V

    const/4 v0, 0x0

    return v0
.end method
