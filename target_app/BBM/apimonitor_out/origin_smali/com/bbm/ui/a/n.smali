.class final Lcom/bbm/ui/a/n;
.super Ljava/lang/Object;
.source "ChannelPostCommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

.field final synthetic b:Lcom/bbm/ui/a/k;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/k;Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/a/n;->b:Lcom/bbm/ui/a/k;

    iput-object p2, p0, Lcom/bbm/ui/a/n;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "hideKeyboardListener Clicked"

    const-class v1, Lcom/bbm/ui/a/k;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/a/n;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Z)V

    return-void
.end method
