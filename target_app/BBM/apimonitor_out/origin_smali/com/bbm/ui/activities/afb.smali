.class final Lcom/bbm/ui/activities/afb;
.super Ljava/lang/Object;
.source "SelectGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectGroupActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectGroupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/afb;->a:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "mHeaderActionBar NegativeButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/afb;->a:Lcom/bbm/ui/activities/SelectGroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/SelectGroupActivity;->setResult(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/afb;->a:Lcom/bbm/ui/activities/SelectGroupActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectGroupActivity;->finish()V

    return-void
.end method
