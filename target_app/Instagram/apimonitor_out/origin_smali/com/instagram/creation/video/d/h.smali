.class final Lcom/instagram/creation/video/d/h;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/d/f;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/d/f;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/d/h;->a:Lcom/instagram/creation/video/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/d/h;->a:Lcom/instagram/creation/video/d/f;

    iget-object v0, v0, Lcom/instagram/creation/video/d/f;->b:Lcom/instagram/creation/video/d/e;

    invoke-virtual {v0}, Lcom/instagram/creation/video/d/e;->c()V

    return-void
.end method
