.class final Lcom/bbm/i/c;
.super Ljava/lang/Object;
.source "SuggestedFriendsComputedList.java"
.implements Ljava/util/Comparator;
.field final synthetic a:[Ljava/text/CollationKey;
.method constructor <init>([Ljava/text/CollationKey;)V
.registers 2
iput-object p1, p0, Lcom/bbm/i/c;->a:[Ljava/text/CollationKey;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 6
check-cast p1, Ljava/lang/Integer;
check-cast p2, Ljava/lang/Integer;
iget-object v0, p0, Lcom/bbm/i/c;->a:[Ljava/text/CollationKey;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
aget-object v0, v0, v1
iget-object v1, p0, Lcom/bbm/i/c;->a:[Ljava/text/CollationKey;
invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
move-result v2
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/text/CollationKey;->compareTo(Ljava/text/CollationKey;)I
move-result v0
return v0
.end method