.class final Lcom/bbm/ui/activities/tx;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ImageViewerActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "mOnClickListener Clicked"

    const-class v1, Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->b(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->b(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->c(Lcom/bbm/ui/activities/ImageViewerActivity;)V

    goto :goto_27
.end method
