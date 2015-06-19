.class final Lcom/bbm/ui/c/dv;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/c/du;
.method constructor <init>(Lcom/bbm/ui/c/du;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/dv;->a:Lcom/bbm/ui/c/du;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/d/ec;
check-cast p2, Lcom/bbm/d/ec;
iget-object v0, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;
iget-object v1, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method