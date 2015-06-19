.class final Lcom/bbm/ui/activities/cm;
.super Ljava/lang/Object;
.source "ChannelChatListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/cl;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/cl;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cm;->a:Lcom/bbm/ui/activities/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/cm;->a:Lcom/bbm/ui/activities/cl;

    iget-object v0, v0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/cm;->a:Lcom/bbm/ui/activities/cl;

    iget-object v0, v0, Lcom/bbm/ui/activities/cl;->c:Lcom/bbm/ui/activities/ChannelChatListActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/cm;->a:Lcom/bbm/ui/activities/cl;

    iget-object v1, v1, Lcom/bbm/ui/activities/cl;->b:Lcom/bbm/ui/activities/eu;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ChannelChatListActivity;->b(Lcom/bbm/ui/activities/ChannelChatListActivity;Lcom/bbm/ui/activities/eu;)V

    return-void
.end method
