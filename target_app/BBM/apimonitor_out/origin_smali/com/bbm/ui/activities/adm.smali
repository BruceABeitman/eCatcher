.class final Lcom/bbm/ui/activities/adm;
.super Ljava/lang/Object;
.source "ReportProblemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Lcom/bbm/ui/activities/adl;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/adl;Lcom/bbm/ui/b/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/adm;->b:Lcom/bbm/ui/activities/adl;

    iput-object p2, p0, Lcom/bbm/ui/activities/adm;->a:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "errorDialog LeftButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/adm;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    iget-object v0, p0, Lcom/bbm/ui/activities/adm;->b:Lcom/bbm/ui/activities/adl;

    iget-object v0, v0, Lcom/bbm/ui/activities/adl;->a:Lcom/bbm/ui/activities/ReportProblemActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->finish()V

    return-void
.end method
