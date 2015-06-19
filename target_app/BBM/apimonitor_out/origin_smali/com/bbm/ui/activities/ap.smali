.class final Lcom/bbm/ui/activities/ap;
.super Ljava/lang/Object;
.source "BroadcastActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/BroadcastActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ap;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "mGridOnItemClickListener onItemClick"

    const-class v1, Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ap;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/BroadcastActivity;->c(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/ap;->a:Lcom/bbm/ui/activities/BroadcastActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/BroadcastActivity;->b(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/activities/ay;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bbm/ui/activities/ay;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    return-void
.end method
