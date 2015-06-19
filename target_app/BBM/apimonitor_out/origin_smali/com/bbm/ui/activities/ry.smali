.class final Lcom/bbm/ui/activities/ry;
.super Ljava/lang/Object;
.source "GroupPictureCommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ry;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_22

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/ry;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    const-class v2, Lcom/bbm/ui/activities/ImageViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_image_path"

    iget-object v2, p0, Lcom/bbm/ui/activities/ry;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->d(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Lcom/bbm/g/af;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/g/af;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/ui/activities/ry;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_22
    return v3
.end method
