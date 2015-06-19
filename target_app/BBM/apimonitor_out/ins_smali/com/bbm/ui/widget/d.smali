.class final Lcom/bbm/ui/widget/d;
.super Ljava/lang/Object;
.source "ChatsRemoteViewsFactory.java"
.implements Ljava/util/Comparator;
.field final synthetic a:[J
.field final synthetic b:Lcom/bbm/ui/widget/c;
.method constructor <init>(Lcom/bbm/ui/widget/c;[J)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/widget/d;->b:Lcom/bbm/ui/widget/c;
iput-object p2, p0, Lcom/bbm/ui/widget/d;->a:[J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 8
check-cast p1, Ljava/lang/Integer;
check-cast p2, Ljava/lang/Integer;
iget-object v0, p0, Lcom/bbm/ui/widget/d;->a:[J
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v1
aget-wide v0, v0, v1
iget-object v2, p0, Lcom/bbm/ui/widget/d;->a:[J
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v3
aget-wide v2, v2, v3
cmp-long v4, v0, v2
if-lez v4, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
cmp-long v0, v2, v0
if-lez v0, :cond_20
const/4 v0, -0x1
goto :goto_19
:cond_20
const/4 v0, 0x0
goto :goto_19
.end method