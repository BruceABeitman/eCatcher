.class final Lcom/instagram/creation/video/f/h;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/h;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/f/h;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->p(Lcom/instagram/creation/video/f/a;)Z

    return-void
.end method
