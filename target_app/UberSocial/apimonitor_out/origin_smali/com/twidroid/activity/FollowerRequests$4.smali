.class Lcom/twidroid/activity/FollowerRequests$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/FollowerRequests;->a(Lcom/ubermedia/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/a/a;

.field final synthetic b:Lcom/twidroid/activity/FollowerRequests;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/FollowerRequests;Lcom/ubermedia/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/FollowerRequests$4;->b:Lcom/twidroid/activity/FollowerRequests;

    iput-object p2, p0, Lcom/twidroid/activity/FollowerRequests$4;->a:Lcom/ubermedia/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x2ee0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests$4;->a:Lcom/ubermedia/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ubermedia/a/a;->b(Z)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b
.end method
