.class final Lcom/bbm/ui/activities/cz;
.super Ljava/lang/Object;
.source "ChannelOwnerProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->a(Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/cz;->a:Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;->finish()V

    return-void
.end method