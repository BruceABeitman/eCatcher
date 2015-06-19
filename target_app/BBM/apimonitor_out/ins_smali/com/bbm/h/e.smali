.class final Lcom/bbm/h/e;
.super Ljava/lang/Object;
.source "AddContactsAdapter.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/iceberg/j;
.field final synthetic b:Lcom/bbm/h/a;
.method constructor <init>(Lcom/bbm/h/a;Lcom/bbm/iceberg/j;)V
.registers 3
iput-object p1, p0, Lcom/bbm/h/e;->b:Lcom/bbm/h/a;
iput-object p2, p0, Lcom/bbm/h/e;->a:Lcom/bbm/iceberg/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/bbm/h/e;->a:Lcom/bbm/iceberg/j;
iget-object v1, v1, Lcom/bbm/iceberg/j;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/bbm/h/e;->b:Lcom/bbm/h/a;
invoke-static {v1}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v1
invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v1
iget-object v2, p0, Lcom/bbm/h/e;->b:Lcom/bbm/h/a;
invoke-static {v2}, Lcom/bbm/h/a;->a(Lcom/bbm/h/a;)Landroid/app/Activity;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;Ljava/util/List;)V
return-void
.end method