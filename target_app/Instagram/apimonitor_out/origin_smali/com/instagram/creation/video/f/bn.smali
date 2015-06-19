.class final Lcom/instagram/creation/video/f/bn;
.super Ljava/lang/Object;
.source "VideoTrimFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bi;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bi;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/bn;->a:Lcom/instagram/creation/video/f/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/bn;->a:Lcom/instagram/creation/video/f/bi;

    invoke-static {v0}, Lcom/instagram/creation/video/f/bi;->q(Lcom/instagram/creation/video/f/bi;)V

    return-void
.end method
