.class final Lcom/bbm/ui/activities/acq;
.super Ljava/lang/Object;
.source "ReceivedPendingGroupInviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/k;

.field final synthetic b:Lcom/bbm/ui/activities/acp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/acp;Lcom/bbm/ui/b/k;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/acq;->b:Lcom/bbm/ui/activities/acp;

    iput-object p2, p0, Lcom/bbm/ui/activities/acq;->a:Lcom/bbm/ui/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "mAcceptGroupInviteMonitor Dialog RightButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acq;->b:Lcom/bbm/ui/activities/acp;

    iget-object v0, v0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->a(Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;)Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-static {}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bbm/g/bn;->a:Lcom/bbm/g/bn;

    invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Lcom/bbm/g/bn;)Lcom/bbm/g/bm;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/acq;->a:Lcom/bbm/ui/b/k;

    invoke-virtual {v2}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/g/bm;->a(Ljava/lang/String;)Lcom/bbm/g/bm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/acq;->b:Lcom/bbm/ui/activities/acp;

    iget-object v0, v0, Lcom/bbm/ui/activities/acp;->a:Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ReceivedPendingGroupInviteActivity;->finish()V

    return-void
.end method
