.class final Lcom/instagram/creation/video/f/x;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/x;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/x;-><init>(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/x;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->g(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    return-void
.end method
