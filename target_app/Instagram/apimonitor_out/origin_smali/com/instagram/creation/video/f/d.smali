.class final Lcom/instagram/creation/video/f/d;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    iput-object p2, p0, Lcom/instagram/creation/video/f/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->b(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/video/f/d;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/video/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->x(Lcom/instagram/creation/video/f/a;)Lcom/instagram/creation/video/ui/CamcorderBlinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/CamcorderBlinker;->a()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    iget-object v0, p0, Lcom/instagram/creation/video/f/d;->b:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->r(Lcom/instagram/creation/video/f/a;)V

    goto :goto_14
.end method
