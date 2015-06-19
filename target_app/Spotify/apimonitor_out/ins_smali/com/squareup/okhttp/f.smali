.class public final Lcom/squareup/okhttp/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Z
.field private final b:Z
.field private final c:I
.field private final d:I
.field private final e:Z
.field private final f:Z
.field private final g:I
.field private final h:I
.field private final i:Z
.method private constructor <init>(ZZIIZZIIZ)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Lcom/squareup/okhttp/f;->a:Z
iput-boolean p2, p0, Lcom/squareup/okhttp/f;->b:Z
iput p3, p0, Lcom/squareup/okhttp/f;->c:I
iput p4, p0, Lcom/squareup/okhttp/f;->d:I
iput-boolean p5, p0, Lcom/squareup/okhttp/f;->e:Z
iput-boolean p6, p0, Lcom/squareup/okhttp/f;->f:Z
iput p7, p0, Lcom/squareup/okhttp/f;->g:I
iput p8, p0, Lcom/squareup/okhttp/f;->h:I
iput-boolean p9, p0, Lcom/squareup/okhttp/f;->i:Z
return-void
.end method
.method public static a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/f;
.registers 18
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, -0x1
const/4 v5, -0x1
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, -0x1
const/4 v9, -0x1
const/4 v10, 0x0
const/4 v1, 0x0
:goto_a
invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/internal/http/e;->a()I
move-result v11
if-ge v1, v11, :cond_119
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v11
const-string v12, "Cache-Control"
invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-nez v11, :cond_2c
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;
move-result-object v11
const-string v12, "Pragma"
invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_115
:cond_2c
move-object/from16 v0, p0
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;
move-result-object v13
const/4 v11, 0x0
move/from16 v16, v11
move v11, v2
move/from16 v2, v16
:cond_38
:goto_38
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v12
if-ge v2, v12, :cond_114
const-string v12, "=,;"
invoke-static {v13, v2, v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I
move-result v12
invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v2
if-eq v12, v2, :cond_62
invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v15, 0x2c
if-eq v2, v15, :cond_62
invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C
move-result v2
const/16 v15, 0x3b
if-ne v2, v15, :cond_74
:cond_62
add-int/lit8 v12, v12, 0x1
const/4 v2, 0x0
move-object/from16 v16, v2
move v2, v12
move-object/from16 v12, v16
:goto_6a
const-string v15, "no-cache"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_b0
const/4 v11, 0x1
goto :goto_38
:cond_74
add-int/lit8 v2, v12, 0x1
invoke-static {v13, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;I)I
move-result v2
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v12
if-ge v2, v12, :cond_9c
invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C
move-result v12
const/16 v15, 0x22
if-ne v12, v15, :cond_9c
add-int/lit8 v2, v2, 0x1
const-string v12, "\""
invoke-static {v13, v2, v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I
move-result v12
invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
add-int/lit8 v12, v12, 0x1
move-object/from16 v16, v2
move v2, v12
move-object/from16 v12, v16
goto :goto_6a
:cond_9c
const-string v12, ",;"
invoke-static {v13, v2, v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I
move-result v12
invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
move-object/from16 v16, v2
move v2, v12
move-object/from16 v12, v16
goto :goto_6a
:cond_b0
const-string v15, "no-store"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_bb
const/4 v3, 0x1
goto/16 :goto_38
:cond_bb
const-string v15, "max-age"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_c9
invoke-static {v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;)I
move-result v4
goto/16 :goto_38
:cond_c9
const-string v15, "s-maxage"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_d7
invoke-static {v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;)I
move-result v5
goto/16 :goto_38
:cond_d7
const-string v15, "public"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_e2
const/4 v6, 0x1
goto/16 :goto_38
:cond_e2
const-string v15, "must-revalidate"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_ed
const/4 v7, 0x1
goto/16 :goto_38
:cond_ed
const-string v15, "max-stale"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_fb
invoke-static {v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;)I
move-result v8
goto/16 :goto_38
:cond_fb
const-string v15, "min-fresh"
invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-eqz v15, :cond_109
invoke-static {v12}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;)I
move-result v9
goto/16 :goto_38
:cond_109
const-string v12, "only-if-cached"
invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_38
const/4 v10, 0x1
goto/16 :goto_38
:cond_114
move v2, v11
:cond_115
add-int/lit8 v1, v1, 0x1
goto/16 :goto_a
:cond_119
new-instance v1, Lcom/squareup/okhttp/f;
invoke-direct/range {v1 .. v10}, Lcom/squareup/okhttp/f;-><init>(ZZIIZZIIZ)V
return-object v1
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/f;->a:Z
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/f;->b:Z
return v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/f;->c:I
return v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/f;->d:I
return v0
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/f;->e:Z
return v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/f;->f:Z
return v0
.end method
.method public final g()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/f;->g:I
return v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/squareup/okhttp/f;->h:I
return v0
.end method
.method public final i()Z
.registers 2
iget-boolean v0, p0, Lcom/squareup/okhttp/f;->i:Z
return v0
.end method