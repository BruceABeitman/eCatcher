.class final Lcom/bbm/ui/activities/rq;
.super Ljava/util/TimerTask;
.source "GroupPictureCommentsActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/rq;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/rq;->a:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->v(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/activities/rr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/rr;-><init>(Lcom/bbm/ui/activities/rq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
