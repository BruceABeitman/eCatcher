.class final Lcom/instagram/creation/photo/crop/c;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/c;->a:Lcom/instagram/creation/photo/crop/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/c;->a:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/c;->a:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/creation/photo/crop/k;->g()V

    :cond_11
    return-void
.end method
