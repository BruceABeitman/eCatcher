.class final Lcom/instagram/creation/video/h/f;
.super Ljava/lang/Object;
.source "MediaRecorderProxy.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/h/b;

.field final synthetic b:Lcom/instagram/creation/video/h/e;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/h/e;Lcom/instagram/creation/video/h/b;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/video/h/f;->b:Lcom/instagram/creation/video/h/e;

    iput-object p2, p0, Lcom/instagram/creation/video/h/f;->a:Lcom/instagram/creation/video/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaRecorder;II)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/h/f;->a:Lcom/instagram/creation/video/h/b;

    iget-object v0, p0, Lcom/instagram/creation/video/h/f;->b:Lcom/instagram/creation/video/h/e;

    return-void
.end method
