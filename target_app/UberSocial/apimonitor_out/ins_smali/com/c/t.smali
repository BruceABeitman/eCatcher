.class public Lcom/c/t;
.super Lcom/c/o;
.implements Ljava/lang/Comparable;
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/c/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public static a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/c/t;
.registers 3
new-instance v0, Lcom/c/t;
invoke-direct {v0, p0, p1}, Lcom/c/t;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
return-object v0
.end method
.method private static b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
.registers 3
if-ne p0, p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
if-nez p0, :cond_8
const/4 v0, -0x1
goto :goto_3
:cond_8
if-nez p1, :cond_c
const/4 v0, 0x1
goto :goto_3
:cond_c
invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
goto :goto_3
.end method
.method public b(Lcom/c/o;)I
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x0
:cond_3
:goto_3
return v0
:cond_4
iget-object v0, p0, Lcom/c/t;->a:Ljava/lang/Object;
check-cast v0, Ljava/lang/Comparable;
iget-object v1, p1, Lcom/c/o;->a:Ljava/lang/Object;
check-cast v1, Ljava/lang/Comparable;
invoke-static {v0, v1}, Lcom/c/t;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
move-result v0
if-nez v0, :cond_3
iget-object v0, p0, Lcom/c/t;->b:Ljava/lang/Object;
check-cast v0, Ljava/lang/Comparable;
iget-object v1, p1, Lcom/c/o;->b:Ljava/lang/Object;
check-cast v1, Ljava/lang/Comparable;
invoke-static {v0, v1}, Lcom/c/t;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
move-result v0
goto :goto_3
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/o;
invoke-virtual {p0, p1}, Lcom/c/t;->b(Lcom/c/o;)I
move-result v0
return v0
.end method