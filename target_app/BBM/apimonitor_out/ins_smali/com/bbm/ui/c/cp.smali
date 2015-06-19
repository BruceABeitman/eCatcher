.class final Lcom/bbm/ui/c/cp;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/c/co;
.method constructor <init>(Lcom/bbm/ui/c/co;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/cp;->a:Lcom/bbm/ui/c/co;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/ui/c/cx;
check-cast p2, Lcom/bbm/ui/c/cx;
iget-object v0, p1, Lcom/bbm/ui/c/cx;->b:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/ui/c/cx;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
return v0
.end method