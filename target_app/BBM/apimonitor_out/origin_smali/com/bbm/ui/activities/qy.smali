.class final Lcom/bbm/ui/activities/qy;
.super Ljava/lang/Object;
.source "GroupPictureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/qy;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "addPicture Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/qy;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->h(Lcom/bbm/ui/activities/GroupPictureActivity;)V

    return-void
.end method
