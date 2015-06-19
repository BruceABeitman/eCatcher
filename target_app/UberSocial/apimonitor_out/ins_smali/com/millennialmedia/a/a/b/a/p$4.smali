.class final Lcom/millennialmedia/a/a/b/a/p$4;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Character;
.registers 6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
const/4 v2, 0x1
if-eq v1, v2, :cond_31
new-instance v1, Lcom/millennialmedia/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Expecting character, got: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v1
:cond_31
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object v0
goto :goto_c
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Character;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
return-void
:cond_7
invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Character;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$4;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Character;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$4;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Character;
move-result-object v0
return-object v0
.end method