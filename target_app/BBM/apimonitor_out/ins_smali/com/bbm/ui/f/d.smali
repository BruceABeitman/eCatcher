.class public final Lcom/bbm/ui/f/d;
.super Ljava/lang/Object;
.source "BBMNotificationManager.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/ui/f/a;
.method public constructor <init>(Lcom/bbm/ui/f/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/f/d;->a:Lcom/bbm/ui/f/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/bbm/ui/f/e;
check-cast p2, Lcom/bbm/ui/f/e;
invoke-interface {p1}, Lcom/bbm/ui/f/e;->g()Ljava/lang/Long;
move-result-object v0
invoke-interface {p2}, Lcom/bbm/ui/f/e;->g()Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
move-result v0
return v0
.end method