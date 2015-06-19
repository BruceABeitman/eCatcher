.class final Lcom/bbm/util/u;
.super Lcom/bbm/ui/d/e;
.source "ChannelJoinUtil.java"


# instance fields
.field final synthetic a:Lcom/bbm/d/ec;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bbm/d/ec;Landroid/widget/ImageView;Landroid/app/Activity;)V
    .registers 5

    iput-object p2, p0, Lcom/bbm/util/u;->a:Lcom/bbm/d/ec;

    iput-object p3, p0, Lcom/bbm/util/u;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/bbm/util/u;->d:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/bbm/ui/d/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/util/u;->a:Lcom/bbm/d/ec;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bbm/d/ec;->w:Z

    invoke-static {}, Lcom/bbm/util/s;->a()Z

    iget-object v0, p0, Lcom/bbm/util/u;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bbm/util/u;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/util/v;

    invoke-direct {v1, p0}, Lcom/bbm/util/v;-><init>(Lcom/bbm/util/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/util/u;->a:Lcom/bbm/d/ec;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bbm/d/ec;->w:Z

    invoke-static {}, Lcom/bbm/util/s;->a()Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/util/x;

    invoke-direct {v1, p0, p1}, Lcom/bbm/util/x;-><init>(Lcom/bbm/util/u;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
