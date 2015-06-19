.class final Lcom/bbm/ui/c/dg;
.super Ljava/lang/Object;
.source "GroupsFragment.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/c/df;
.method constructor <init>(Lcom/bbm/ui/c/df;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/dg;->a:Lcom/bbm/ui/c/df;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/ui/c/ds;
check-cast p2, Lcom/bbm/ui/c/ds;
iget-object v0, p1, Lcom/bbm/ui/c/ds;->b:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/ui/c/ds;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
return v0
.end method