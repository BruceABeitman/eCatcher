.class final Lcom/millennialmedia/a/a/b/a/p$12;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/BitSet;
.registers 9
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_f
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
new-instance v4, Ljava/util/BitSet;
invoke-direct {v4}, Ljava/util/BitSet;-><init>()V
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
move v1, v2
:goto_1c
sget-object v5, Lcom/millennialmedia/a/a/d/c;->b:Lcom/millennialmedia/a/a/d/c;
if-eq v0, v5, :cond_86
sget-object v5, Lcom/millennialmedia/a/a/b/a/p$26;->a:[I
invoke-virtual {v0}, Lcom/millennialmedia/a/a/d/c;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_8c
new-instance v1, Lcom/millennialmedia/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid bitset value type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_44
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->m()I
move-result v0
if-eqz v0, :cond_57
move v0, v3
:goto_4b
if-eqz v0, :cond_50
invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V
:cond_50
add-int/lit8 v1, v1, 0x1
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
goto :goto_1c
:cond_57
move v0, v2
goto :goto_4b
:pswitch_59
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z
move-result v0
goto :goto_4b
:pswitch_5e
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
:try_start_62
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_65
.catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_65} :catch_6c
move-result v0
if-eqz v0, :cond_6a
move v0, v3
goto :goto_4b
:cond_6a
move v0, v2
goto :goto_4b
:catch_6c
move-exception v1
new-instance v1, Lcom/millennialmedia/a/a/w;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/String;)V
throw v1
:cond_86
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V
move-object v0, v4
goto :goto_e
nop
:pswitch_data_8c
.packed-switch 0x1
:pswitch_44
:pswitch_59
:pswitch_5e
.end packed-switch
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/BitSet;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$12;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/BitSet;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/util/BitSet;)V
.registers 7
const/4 v1, 0x0
if-nez p2, :cond_7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
:goto_6
return-void
:cond_7
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;
move v0, v1
:goto_b
invoke-virtual {p2}, Ljava/util/BitSet;->length()I
move-result v2
if-ge v0, v2, :cond_21
invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_18
int-to-long v2, v2
invoke-virtual {p1, v2, v3}, Lcom/millennialmedia/a/a/d/d;->a(J)Lcom/millennialmedia/a/a/d/d;
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1f
move v2, v1
goto :goto_18
:cond_21
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;
goto :goto_6
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$12;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/BitSet;
move-result-object v0
return-object v0
.end method