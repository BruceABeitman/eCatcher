.class final Lcom/bbm/ui/activities/acx;
.super Ljava/lang/Object;
.source "ReceivedPendingInviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/k;

.field final synthetic b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;Lcom/bbm/ui/b/k;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/acx;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/acx;->a:Lcom/bbm/ui/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "handleInviteAccept Dialog RightButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acx;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->d(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/acx;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->c(Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/d/z;->b(Ljava/lang/String;)Lcom/bbm/d/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acx;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v2}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/bh;->a(Ljava/lang/String;)Lcom/bbm/d/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acx;->b:Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingInviteActivity;->finish()V

    return-void
.end method
