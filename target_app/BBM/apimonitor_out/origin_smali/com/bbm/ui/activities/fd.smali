.class final Lcom/bbm/ui/activities/fd;
.super Lcom/bbm/ui/activities/ff;
.source "ChildActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ev;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ev;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/fd;->a:Lcom/bbm/ui/activities/ev;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/activities/ff;-><init>(Lcom/bbm/ui/activities/ev;B)V

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/fd;->a:Lcom/bbm/ui/activities/ev;

    invoke-static {v0}, Lcom/bbm/ui/activities/ev;->c(Lcom/bbm/ui/activities/ev;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/fd;->a:Lcom/bbm/ui/activities/ev;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ev;->e()V

    :cond_d
    return-void
.end method
