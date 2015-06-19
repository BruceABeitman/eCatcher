.class final Lcom/c/a/dr;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private static final d:Ljava/lang/String;
.field private final b:I
.field private final c:Ljava/util/LinkedList;
.method static constructor <clinit>()V
.registers 10
const/4 v1, 0x0
const/4 v0, 0x1
const-string v2, ")f"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_4c
move v4, v1
:cond_c
move-object v5, v2
move v6, v4
move v9, v3
move-object v3, v2
move v2, v9
:goto_11
aget-char v8, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_4e
const/16 v7, 0x6b
:goto_1a
xor-int/2addr v7, v8
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_26
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_11
:cond_26
move v3, v2
move-object v2, v5
:goto_28
if-gt v3, v4, :cond_c
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/c/a/dr;->d:Ljava/lang/String;
const-class v2, Lcom/c/a/dr;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_40
:goto_3d
sput-boolean v0, Lcom/c/a/dr;->a:Z
return-void
:cond_40
move v0, v1
goto :goto_3d
:pswitch_42
const/4 v7, 0x5
goto :goto_1a
:pswitch_44
const/16 v7, 0x46
goto :goto_1a
:pswitch_47
const/16 v7, 0x73
goto :goto_1a
:pswitch_4a
move v7, v0
goto :goto_1a
:cond_4c
move v4, v1
goto :goto_28
:pswitch_data_4e
.packed-switch 0x0
:pswitch_42
:pswitch_44
:pswitch_47
:pswitch_4a
.end packed-switch
.end method
.method constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-boolean v0, Lcom/c/a/dr;->a:Z
if-nez v0, :cond_f
if-gtz p1, :cond_f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_f
iput p1, p0, Lcom/c/a/dr;->b:I
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
return-void
.end method
.method  a(Lcom/c/a/ac;)V
.registers 4
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
iget v1, p0, Lcom/c/a/dr;->b:I
if-le v0, v1, :cond_14
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
:cond_14
return-void
.end method
.method  a()Z
.registers 2
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
return v0
.end method
.method  b(Lcom/c/a/ac;)Z
.registers 5
sget v1, Lcom/c/a/bs;->b:I
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/ac;
invoke-virtual {v0, p1}, Lcom/c/a/ac;->a(Lcom/c/a/ac;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
if-eqz v1, :cond_8
:cond_1e
const/4 v0, 0x0
goto :goto_1b
.end method
.method  c(Lcom/c/a/ac;)V
.registers 5
sget v1, Lcom/c/a/bs;->b:I
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/ac;
invoke-virtual {v0, p1}, Lcom/c/a/ac;->a(Lcom/c/a/ac;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
:cond_1d
if-eqz v1, :cond_8
:cond_1f
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 6
sget v1, Lcom/c/a/bs;->b:I
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/c/a/dr;->c:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/ac;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-lez v4, :cond_24
sget-object v4, Lcom/c/a/dr;->d:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_24
invoke-virtual {v0}, Lcom/c/a/ac;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v1, :cond_d
:cond_2d
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method