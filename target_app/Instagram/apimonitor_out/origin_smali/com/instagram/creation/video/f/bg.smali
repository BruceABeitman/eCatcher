.class final Lcom/instagram/creation/video/f/bg;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/bf;


# direct methods
.method constructor <init>(Lcom/instagram/creation/video/f/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/f/bg;->a:Lcom/instagram/creation/video/f/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/f/bg;->a:Lcom/instagram/creation/video/f/bf;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/f/bf;->a(Landroid/view/View;)V

    return-void
.end method