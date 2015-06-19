.class public Lcom/twidroid/activity/GalleryVideoPicker;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    invoke-virtual {p0, v0, p3}, Lcom/twidroid/activity/GalleryVideoPicker;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-virtual {p0}, Lcom/twidroid/activity/GalleryVideoPicker;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/GalleryVideoPicker;->setResult(I)V

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/activity/GalleryVideoPicker;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/GalleryVideoPicker;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0c0146

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/GalleryVideoPicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/GalleryVideoPicker;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
