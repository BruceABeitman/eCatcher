.class final Lcom/millennialmedia/a/a/b/a/p$17;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Locale;
.registers 7
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v2, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v2, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
:goto_c
return-object v1
:cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/util/StringTokenizer;
const-string v2, "_"
invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_53
invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v0
:goto_22
invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z
move-result v2
if-eqz v2, :cond_51
invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v2
:goto_2c
invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z
move-result v4
if-eqz v4, :cond_4f
invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
move-result-object v1
move-object v3, v1
:goto_37
if-nez v2, :cond_41
if-nez v3, :cond_41
new-instance v1, Ljava/util/Locale;
invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
goto :goto_c
:cond_41
if-nez v3, :cond_49
new-instance v1, Ljava/util/Locale;
invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_49
new-instance v1, Ljava/util/Locale;
invoke-direct {v1, v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_4f
move-object v3, v1
goto :goto_37
:cond_51
move-object v2, v1
goto :goto_2c
:cond_53
move-object v0, v1
goto :goto_22
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Locale;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$17;->a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Locale;)V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/util/Locale;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;
return-void
:cond_7
invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$17;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Locale;
move-result-object v0
return-object v0
.end method