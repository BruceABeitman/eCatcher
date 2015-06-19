.class final Lcom/bbm/h/k;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/b/a;

.field final synthetic b:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/b/a;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/k;->b:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/k;->a:Lcom/bbm/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 4

    iget-object v1, p0, Lcom/bbm/h/k;->a:Lcom/bbm/b/a;

    iget-object v0, p0, Lcom/bbm/h/k;->b:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v1, v0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;Lcom/bbm/ui/activities/MainActivity;)V

    const/4 v0, 0x1

    return v0
.end method
