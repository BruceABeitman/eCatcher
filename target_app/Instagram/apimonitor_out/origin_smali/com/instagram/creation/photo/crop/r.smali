.class final Lcom/instagram/creation/photo/crop/r;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/b/f;

.field final synthetic b:Z

.field final synthetic c:Lcom/instagram/creation/photo/crop/q;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/q;Lcom/instagram/creation/photo/b/f;Z)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/r;->c:Lcom/instagram/creation/photo/crop/q;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/r;->a:Lcom/instagram/creation/photo/b/f;

    iput-boolean p3, p0, Lcom/instagram/creation/photo/crop/r;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/r;->c:Lcom/instagram/creation/photo/crop/q;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/r;->a:Lcom/instagram/creation/photo/b/f;

    iget-boolean v2, p0, Lcom/instagram/creation/photo/crop/r;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/photo/crop/q;->a(Lcom/instagram/creation/photo/b/f;Z)V

    return-void
.end method
