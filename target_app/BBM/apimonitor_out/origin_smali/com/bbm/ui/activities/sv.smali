.class final Lcom/bbm/ui/activities/sv;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/st;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/st;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/sv;->a:Lcom/bbm/ui/activities/st;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/sv;->a:Lcom/bbm/ui/activities/st;

    iget-object v0, v0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->e(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Lcom/bbm/ui/HeaderButtonActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/sv;->a:Lcom/bbm/ui/activities/st;

    iget-object v0, v0, Lcom/bbm/ui/activities/st;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->d(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
