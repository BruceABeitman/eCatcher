.class final Lcom/bbm/ui/activities/po;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"

# interfaces
.implements Lcom/slidingmenu/lib/a/b;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "onHardwareMenuButtonClicked"

    const-class v1, Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/po;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->o()V

    goto :goto_1d
.end method
