.class final Lcom/instagram/creation/video/f/bm;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Lcom/instagram/creation/video/f/bi;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/creation/video/f/bm;->c:Lcom/instagram/creation/video/f/bi;

    iput-object p2, p0, Lcom/instagram/creation/video/f/bm;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/instagram/creation/video/f/bm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/video/f/bm;->c:Lcom/instagram/creation/video/f/bi;

    iget-object v1, p0, Lcom/instagram/creation/video/f/bm;->a:Landroid/widget/ImageView;

    iget v2, p0, Lcom/instagram/creation/video/f/bm;->b:I

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/f/bi;->a(Lcom/instagram/creation/video/f/bi;Landroid/widget/ImageView;I)V

    return-void
.end method
