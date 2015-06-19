.class final Lcom/millennialmedia/a/a/d/a$1;
.super Lcom/millennialmedia/a/a/b/h;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/b/h;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)V
.registers 5
instance-of v0, p1, Lcom/millennialmedia/a/a/b/a/e;
if-eqz v0, :cond_a
check-cast p1, Lcom/millennialmedia/a/a/b/a/e;
invoke-virtual {p1}, Lcom/millennialmedia/a/a/b/a/e;->o()V
:goto_9
return-void
:cond_a
invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;)I
move-result v0
if-nez v0, :cond_14
invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->b(Lcom/millennialmedia/a/a/d/a;)I
move-result v0
:cond_14
const/16 v1, 0xd
if-ne v0, v1, :cond_1e
const/16 v0, 0x9
invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I
goto :goto_9
:cond_1e
const/16 v1, 0xc
if-ne v0, v1, :cond_28
const/16 v0, 0x8
invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I
goto :goto_9
:cond_28
const/16 v1, 0xe
if-ne v0, v1, :cond_32
const/16 v0, 0xa
invoke-static {p1, v0}, Lcom/millennialmedia/a/a/d/a;->a(Lcom/millennialmedia/a/a/d/a;I)I
goto :goto_9
:cond_32
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Expected a name but was "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " at line "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->c(Lcom/millennialmedia/a/a/d/a;)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " column "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {p1}, Lcom/millennialmedia/a/a/d/a;->d(Lcom/millennialmedia/a/a/d/a;)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method