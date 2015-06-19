.class final Lcom/bbm/h/d;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"

# interfaces
.implements Lcom/bbm/ui/b/ab;


# instance fields
.field final synthetic a:Lcom/bbm/iceberg/j;

.field final synthetic b:Lcom/bbm/h/a;


# direct methods
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/h/d;->b:Lcom/bbm/h/a;

    iput-object p2, p0, Lcom/bbm/h/d;->a:Lcom/bbm/iceberg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/h/d;->b:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/h/d;->b:Lcom/bbm/h/a;

    invoke-static {v0}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/bbm/h/d;->a:Lcom/bbm/iceberg/j;

    iget-object v0, v0, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/bbm/h/d;->a:Lcom/bbm/iceberg/j;

    iget-object v2, v2, Lcom/bbm/iceberg/j;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a([Ljava/lang/String;)V

    return-void
.end method
