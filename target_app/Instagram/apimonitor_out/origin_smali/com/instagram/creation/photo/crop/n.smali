.class final Lcom/instagram/creation/photo/crop/n;
.super Ljava/lang/Object;
.source "CropUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/photo/crop/m;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/m;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/n;->a:Lcom/instagram/creation/photo/crop/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/n;->a:Lcom/instagram/creation/photo/crop/m;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/m;->a(Lcom/instagram/creation/photo/crop/m;)Lcom/instagram/creation/photo/crop/w;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/n;->a:Lcom/instagram/creation/photo/crop/m;

    invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/w;->b(Lcom/instagram/creation/photo/crop/y;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/n;->a:Lcom/instagram/creation/photo/crop/m;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/m;->b(Lcom/instagram/creation/photo/crop/m;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/n;->a:Lcom/instagram/creation/photo/crop/m;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/m;->b(Lcom/instagram/creation/photo/crop/m;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_20
    return-void
.end method
