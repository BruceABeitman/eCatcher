.class final Lcom/bbm/d/gv;
.super Ljava/lang/Object;
.source "UserSortUtil.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Ljava/text/Collator;
.method constructor <init>(Ljava/text/Collator;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/gv;->a:Ljava/text/Collator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/d/gv;->a:Ljava/text/Collator;
invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method