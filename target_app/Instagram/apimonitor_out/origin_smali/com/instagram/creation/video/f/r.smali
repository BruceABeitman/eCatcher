.class final Lcom/instagram/creation/video/f/r;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/a;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/r;->a:Lcom/instagram/creation/video/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    sget-object v0, Lcom/instagram/o/a;->n:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->c()V

    iget-object v0, p0, Lcom/instagram/creation/video/f/r;->a:Lcom/instagram/creation/video/f/a;

    invoke-static {v0}, Lcom/instagram/creation/video/f/a;->o(Lcom/instagram/creation/video/f/a;)V

    return-void
.end method
