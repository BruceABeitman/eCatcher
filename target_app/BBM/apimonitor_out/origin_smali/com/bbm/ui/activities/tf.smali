.class final Lcom/bbm/ui/activities/tf;
.super Ljava/lang/Object;
.source "GroupSelectNewAdminActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "mHeaderActionBar PositiveButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    iget-object v2, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/g/am;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/g/am;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/g/o;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/bbm/g/an;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cb;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_11

    :cond_3d
    iget-object v0, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->d(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/g/am;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/g/an;->c(Ljava/lang/String;)Lcom/bbm/g/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/tf;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->finish()V

    return-void
.end method
