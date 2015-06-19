.class final Lcom/instagram/creation/video/f/ab;
.super Ljava/lang/Object;
.source "ThumbnailVideoPreviewFragment.java"

# interfaces
.implements Lcom/instagram/creation/video/d/c;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/y;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/y;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/ab;->a:Lcom/instagram/creation/video/f/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A_()V
    .registers 1

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/ab;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v0}, Lcom/instagram/creation/video/f/y;->b(Lcom/instagram/creation/video/f/y;)Lcom/instagram/creation/video/l/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/l/h;->k()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/ab;->a:Lcom/instagram/creation/video/f/y;

    invoke-static {v0}, Lcom/instagram/creation/video/f/y;->a(Lcom/instagram/creation/video/f/y;)V

    return-void
.end method
