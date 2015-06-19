.class final Lcom/bbm/ui/activities/aim;
.super Lcom/bbm/ui/cj;
.source "ViewChannelActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ail;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ail;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ail;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ail;->a(I)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    iget-object v0, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    iget-object v1, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ail;->b(Lcom/bbm/ui/c/fm;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aim;->a:Lcom/bbm/ui/activities/ail;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ail;->o()V

    return-void
.end method
