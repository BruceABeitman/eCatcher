.class final Lcom/bbm/h/b;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/iceberg/j;

.field final synthetic b:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/b;->b:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/b;->a:Lcom/bbm/iceberg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/h/b;->b:Lcom/bbm/h/a;

    iget-object v1, p0, Lcom/bbm/h/b;->a:Lcom/bbm/iceberg/j;

    invoke-static {v0, v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V

    return-void
.end method
