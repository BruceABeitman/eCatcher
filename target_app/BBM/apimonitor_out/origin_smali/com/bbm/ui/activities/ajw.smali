.class final Lcom/bbm/ui/activities/ajw;
.super Ljava/lang/Object;
.source "ViewSubscribedChannelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ajw;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Menu bottomItem Clicked"

    const-class v1, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ajw;->a:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->a(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;)V

    return-void
.end method
