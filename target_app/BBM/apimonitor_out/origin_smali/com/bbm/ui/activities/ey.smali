.class final Lcom/bbm/ui/activities/ey;
.super Lcom/bbm/j/k;
.source "ChildActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ev;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ev;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/ey;->a:Lcom/bbm/ui/activities/ev;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ey;->a:Lcom/bbm/ui/activities/ev;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ev;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/ey;->a:Lcom/bbm/ui/activities/ev;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ev;->d()V

    :cond_d
    return-void
.end method
