.class final Lcom/bbm/ui/c/bh;
.super Ljava/lang/Object;
.source "ChatsFragment.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/bbm/ui/c/bg;
.method constructor <init>(Lcom/bbm/ui/c/bg;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/bh;->b:Lcom/bbm/ui/c/bg;
iput-object p2, p0, Lcom/bbm/ui/c/bh;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 8
check-cast p1, Ljava/lang/Integer;
check-cast p2, Ljava/lang/Integer;
iget-object v0, p0, Lcom/bbm/ui/c/bh;->a:Ljava/util/ArrayList;
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v1
iget-object v0, p0, Lcom/bbm/ui/c/bh;->a:Ljava/util/ArrayList;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v3
cmp-long v0, v1, v3
if-lez v0, :cond_2a
const/4 v0, 0x1
:goto_29
return v0
:cond_2a
cmp-long v0, v3, v1
if-lez v0, :cond_30
const/4 v0, -0x1
goto :goto_29
:cond_30
const/4 v0, 0x0
goto :goto_29
.end method