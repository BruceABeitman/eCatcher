.class final Lcom/bbm/ui/activities/ada;
.super Ljava/lang/Object;
.source "ReportProblemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ReportProblemActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar NegativeButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/adj;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/adj;->a()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/adl;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/adl;->a()Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;

    :cond_4f
    iget-object v0, p0, Lcom/bbm/ui/activities/ada;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->finish()V

    return-void
.end method
