.class final Lcom/bbm/ui/n;
.super Ljava/lang/Object;
.source "BBSpinnerAdapter.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/l;
.method constructor <init>(Lcom/bbm/ui/l;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/n;->a:Lcom/bbm/ui/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/lang/String;
invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
return v0
.end method