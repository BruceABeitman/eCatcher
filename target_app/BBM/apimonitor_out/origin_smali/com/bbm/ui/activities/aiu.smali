.class final Lcom/bbm/ui/activities/aiu;
.super Lcom/bbm/ui/cj;
.source "ViewChannelPostActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    iget-object v1, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/c/fm;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aiu;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o()V

    return-void
.end method
