.class final Lcom/bbm/ui/activities/sn;
.super Ljava/lang/Object;
.source "GroupPictureUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar NegativeButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->b(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->c(Lcom/bbm/ui/activities/GroupPictureUploadActivity;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bbm/ui/activities/sn;->a:Lcom/bbm/ui/activities/GroupPictureUploadActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureUploadActivity;->finish()V

    return-void
.end method
