.class final Lcom/ubermedia/ui/b$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/ubermedia/ui/a;Lcom/ubermedia/ui/a;)I
.registers 7
const/4 v1, 0x1
const/4 v0, -0x1
iget v2, p1, Lcom/ubermedia/ui/a;->b:I
iget v3, p2, Lcom/ubermedia/ui/a;->b:I
if-ge v2, v3, :cond_9
:goto_8
:cond_8
return v0
:cond_9
iget v2, p1, Lcom/ubermedia/ui/a;->b:I
iget v3, p2, Lcom/ubermedia/ui/a;->b:I
if-le v2, v3, :cond_11
move v0, v1
goto :goto_8
:cond_11
iget v2, p1, Lcom/ubermedia/ui/a;->c:I
iget v3, p2, Lcom/ubermedia/ui/a;->c:I
if-ge v2, v3, :cond_19
move v0, v1
goto :goto_8
:cond_19
iget v1, p1, Lcom/ubermedia/ui/a;->c:I
iget v2, p2, Lcom/ubermedia/ui/a;->c:I
if-gt v1, v2, :cond_8
const/4 v0, 0x0
goto :goto_8
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/ubermedia/ui/a;
check-cast p2, Lcom/ubermedia/ui/a;
invoke-virtual {p0, p1, p2}, Lcom/ubermedia/ui/b$1;->a(Lcom/ubermedia/ui/a;Lcom/ubermedia/ui/a;)I
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method