.class final Lcom/bbm/d/b/p;
.super Ljava/lang/Object;
.source "SortedList.java"
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/bbm/d/b/o;
.method constructor <init>(Lcom/bbm/d/b/o;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/b/p;->a:Lcom/bbm/d/b/o;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
:try_start_0
iget-object v0, p0, Lcom/bbm/d/b/p;->a:Lcom/bbm/d/b/o;
invoke-virtual {v0, p1, p2}, Lcom/bbm/d/b/o;->a(Ljava/lang/Object;Ljava/lang/Object;)I
:try_end_5
.catch Lcom/bbm/j/z; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
:goto_6
return v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method