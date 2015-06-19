.class public Lcom/igexin/push/c/c/d;
.super Lcom/igexin/push/c/c/e;
.field public a:I
.field public b:I
.field public c:J
.field public d:Ljava/lang/String;
.field public e:Ljava/lang/Object;
.field public f:Ljava/lang/Object;
.field public g:Ljava/lang/String;
.field public h:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/igexin/push/c/c/e;-><init>()V
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;
const-string/jumbo v0, "UTF-8"
iput-object v0, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
const/16 v0, 0x19
iput v0, p0, Lcom/igexin/push/c/c/d;->i:I
const/16 v0, 0x34
iput-byte v0, p0, Lcom/igexin/push/c/c/d;->j:B
return-void
.end method
.method public a([B)V
.registers 7
const/4 v1, 0x0
invoke-static {p1, v1}, Lcom/igexin/a/a/b/g;->b([BI)I
move-result v0
iput v0, p0, Lcom/igexin/push/c/c/d;->a:I
const/4 v0, 0x2
aget-byte v2, p1, v0
and-int/lit16 v2, v2, 0xc0
iput v2, p0, Lcom/igexin/push/c/c/d;->b:I
aget-byte v0, p1, v0
invoke-virtual {p0, v0}, Lcom/igexin/push/c/c/d;->a(B)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
const/4 v0, 0x3
invoke-static {p1, v0}, Lcom/igexin/a/a/b/g;->d([BI)J
move-result-wide v2
iput-wide v2, p0, Lcom/igexin/push/c/c/d;->c:J
const/16 v0, 0xb
const/16 v2, 0xc
aget-byte v0, p1, v0
and-int/lit16 v0, v0, 0xff
:try_start_25
new-instance v3, Ljava/lang/String;
iget-object v4, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-direct {v3, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
iput-object v3, p0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_98
:goto_2e
add-int/lit8 v0, v0, 0xc
move v2, v0
move v0, v1
:goto_32
aget-byte v3, p1, v2
and-int/lit8 v3, v3, 0x7f
or-int/2addr v0, v3
aget-byte v3, p1, v2
and-int/lit16 v3, v3, 0x80
if-eqz v3, :cond_42
shl-int/lit8 v0, v0, 0x7
add-int/lit8 v2, v2, 0x1
goto :goto_32
:cond_42
add-int/lit8 v2, v2, 0x1
if-lez v0, :cond_55
iget v3, p0, Lcom/igexin/push/c/c/d;->b:I
const/16 v4, 0xc0
if-ne v3, v4, :cond_68
new-array v3, v0, [B
iput-object v3, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_55
:cond_55
add-int/2addr v0, v2
move v2, v0
move v0, v1
:goto_58
aget-byte v3, p1, v2
and-int/lit8 v3, v3, 0x7f
or-int/2addr v0, v3
aget-byte v3, p1, v2
and-int/lit16 v3, v3, 0x80
if-eqz v3, :cond_74
shl-int/lit8 v0, v0, 0x7
add-int/lit8 v2, v2, 0x1
goto :goto_58
:cond_68
:try_start_68
new-instance v3, Ljava/lang/String;
iget-object v4, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-direct {v3, p1, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
iput-object v3, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
:try_end_71
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_72
goto :goto_55
:catch_72
move-exception v3
goto :goto_55
:cond_74
add-int/lit8 v2, v2, 0x1
if-lez v0, :cond_81
new-array v3, v0, [B
iput-object v3, p0, Lcom/igexin/push/c/c/d;->f:Ljava/lang/Object;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->f:Ljava/lang/Object;
invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_81
add-int/2addr v0, v2
array-length v1, p1
if-le v1, v0, :cond_95
add-int/lit8 v1, v0, 0x1
aget-byte v0, p1, v0
and-int/lit16 v0, v0, 0xff
:try_start_8b
new-instance v2, Ljava/lang/String;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
iput-object v2, p0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;
:try_end_94
.catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_96
:goto_94
add-int/2addr v0, v1
:cond_95
return-void
:catch_96
move-exception v2
goto :goto_94
:catch_98
move-exception v2
goto :goto_2e
.end method
.method public final b()V
.registers 2
const/16 v0, 0x80
iput v0, p0, Lcom/igexin/push/c/c/d;->b:I
return-void
.end method
.method public d()[B
.registers 14
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_2
iget-object v0, p0, Lcom/igexin/push/c/c/d;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v6
const-string/jumbo v0, ""
iget-object v3, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c0
iget v0, p0, Lcom/igexin/push/c/c/d;->b:I
const/16 v3, 0xc0
if-ne v0, v3, :cond_b3
iget-object v0, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
check-cast v0, [B
check-cast v0, [B
move-object v5, v0
:goto_22
iget-object v0, p0, Lcom/igexin/push/c/c/d;->f:Ljava/lang/Object;
if-eqz v0, :cond_c3
iget-object v0, p0, Lcom/igexin/push/c/c/d;->f:Ljava/lang/Object;
check-cast v0, [B
check-cast v0, [B
move-object v4, v0
:goto_2d
iget-object v0, p0, Lcom/igexin/push/c/c/d;->g:Ljava/lang/String;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v7
const/16 v8, 0xd
if-nez v5, :cond_c6
move v3, v2
:goto_3a
if-nez v4, :cond_ca
:goto_3c
invoke-static {v3}, Lcom/igexin/a/a/b/g;->a(I)[B
move-result-object v9
invoke-static {v2}, Lcom/igexin/a/a/b/g;->a(I)[B
move-result-object v10
array-length v0, v6
add-int/2addr v0, v8
array-length v8, v9
add-int/2addr v0, v8
add-int/2addr v0, v3
array-length v8, v10
add-int/2addr v0, v8
add-int/2addr v0, v2
array-length v8, v7
add-int/2addr v0, v8
new-array v0, v0, [B
:try_start_50
:try_end_50
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_ce
iget v1, p0, Lcom/igexin/push/c/c/d;->a:I
const/4 v8, 0x0
invoke-static {v1, v0, v8}, Lcom/igexin/a/a/b/g;->b(I[BI)I
move-result v1
iget v8, p0, Lcom/igexin/push/c/c/d;->b:I
iget-object v11, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-virtual {p0, v11}, Lcom/igexin/push/c/c/d;->a(Ljava/lang/String;)I
move-result v11
or-int/2addr v8, v11
invoke-static {v8, v0, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v8
add-int/2addr v1, v8
iget-wide v11, p0, Lcom/igexin/push/c/c/d;->c:J
invoke-static {v11, v12, v0, v1}, Lcom/igexin/a/a/b/g;->a(J[BI)I
move-result v8
add-int/2addr v1, v8
array-length v8, v6
invoke-static {v8, v0, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v8
add-int/2addr v1, v8
const/4 v8, 0x0
array-length v11, v6
invoke-static {v6, v8, v0, v1, v11}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v6
add-int/2addr v1, v6
const/4 v6, 0x0
array-length v8, v9
invoke-static {v9, v6, v0, v1, v8}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v6
add-int/2addr v1, v6
if-lez v3, :cond_88
const/4 v6, 0x0
invoke-static {v5, v6, v0, v1, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v3
add-int/2addr v1, v3
:cond_88
const/4 v3, 0x0
array-length v5, v10
invoke-static {v10, v3, v0, v1, v5}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v3
add-int/2addr v1, v3
if-lez v2, :cond_97
const/4 v3, 0x0
invoke-static {v4, v3, v0, v1, v2}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
move-result v2
add-int/2addr v1, v2
:cond_97
array-length v2, v7
invoke-static {v2, v0, v1}, Lcom/igexin/a/a/b/g;->c(I[BI)I
move-result v2
add-int/2addr v1, v2
const/4 v2, 0x0
array-length v3, v7
invoke-static {v7, v2, v0, v1, v3}, Lcom/igexin/a/a/b/g;->a([BI[BII)I
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a2} :catch_d1
move-result v2
add-int/2addr v1, v2
:goto_a4
if-eqz v0, :cond_b2
array-length v1, v0
const/16 v2, 0x200
if-lt v1, v2, :cond_b2
iget-byte v1, p0, Lcom/igexin/push/c/c/d;->j:B
or-int/lit16 v1, v1, 0x80
int-to-byte v1, v1
iput-byte v1, p0, Lcom/igexin/push/c/c/d;->j:B
:cond_b2
return-object v0
:try_start_b3
:cond_b3
iget-object v0, p0, Lcom/igexin/push/c/c/d;->e:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/igexin/push/c/c/d;->h:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
move-object v5, v0
goto/16 :goto_22
:cond_c0
move-object v5, v1
goto/16 :goto_22
:cond_c3
move-object v4, v1
goto/16 :goto_2d
:cond_c6
array-length v0, v5
move v3, v0
goto/16 :goto_3a
:cond_ca
array-length v0, v4
:try_end_cb
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_cb} :catch_ce
move v2, v0
goto/16 :goto_3c
:catch_ce
move-exception v0
move-object v0, v1
goto :goto_a4
:catch_d1
move-exception v1
goto :goto_a4
.end method