.class  Lcom/igexin/push/core/a/g;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.field final synthetic a:Lcom/igexin/push/core/a/f;
.method constructor <init>(Lcom/igexin/push/core/a/f;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/core/a/g;->a:Lcom/igexin/push/core/a/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/igexin/push/core/bean/l;Lcom/igexin/push/core/bean/l;)I
.registers 5
invoke-virtual {p1}, Lcom/igexin/push/core/bean/l;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/igexin/push/core/bean/l;->a()Ljava/lang/String;
move-result-object v1
if-eq v0, v1, :cond_17
invoke-virtual {p1}, Lcom/igexin/push/core/bean/l;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/igexin/push/core/bean/l;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/igexin/push/core/bean/l;
check-cast p2, Lcom/igexin/push/core/bean/l;
invoke-virtual {p0, p1, p2}, Lcom/igexin/push/core/a/g;->a(Lcom/igexin/push/core/bean/l;Lcom/igexin/push/core/bean/l;)I
move-result v0
return v0
.end method