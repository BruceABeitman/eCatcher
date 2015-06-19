.class final Lcom/bbm/ui/activities/su;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/bbm/ui/activities/st;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/st;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/su;->b:Lcom/bbm/ui/activities/st;

    iput-object p2, p0, Lcom/bbm/ui/activities/su;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/su;->b:Lcom/bbm/ui/activities/st;

    iget-object v0, v0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->f(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/su;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
