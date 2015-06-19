.class public final Lcom/ford/syncV4/protocol/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:Z
.field protected b:Z
.field protected c:Ljava/io/ByteArrayOutputStream;
.field protected d:I
.field protected e:I
.field final synthetic f:Lcom/ford/syncV4/protocol/f;
.method protected constructor <init>(Lcom/ford/syncV4/protocol/f;)V
.registers 4
const/4 v1, 0x0
iput-object p1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/ford/syncV4/protocol/g;->a:Z
iput-boolean v1, p0, Lcom/ford/syncV4/protocol/g;->b:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
iput v1, p0, Lcom/ford/syncV4/protocol/g;->d:I
iput v1, p0, Lcom/ford/syncV4/protocol/g;->e:I
return-void
.end method
.method private b(Lcom/ford/syncV4/protocol/d;[B)V
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;
if-ne v0, v1, :cond_28
iput-boolean v2, p0, Lcom/ford/syncV4/protocol/g;->a:Z
invoke-static {p2, v3}, Lcom/ford/syncV4/util/a;->a([BI)I
move-result v0
invoke-static {}, Lcom/ford/syncV4/protocol/f;->a()I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/ford/syncV4/protocol/g;->d:I
const/4 v0, 0x4
invoke-static {p2, v0}, Lcom/ford/syncV4/util/a;->a([BI)I
move-result v0
iput v0, p0, Lcom/ford/syncV4/protocol/g;->e:I
new-instance v0, Ljava/io/ByteArrayOutputStream;
iget v1, p0, Lcom/ford/syncV4/protocol/g;->d:I
invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
iput-object v0, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
:goto_27
:cond_27
return-void
:cond_28
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->f()I
move-result v1
invoke-virtual {v0, p2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;
if-ne v0, v1, :cond_27
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B
move-result v0
if-nez v0, :cond_27
new-instance v0, Lcom/ford/syncV4/protocol/e;
invoke-direct {v0}, Lcom/ford/syncV4/protocol/e;-><init>()V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->a(Lcom/ford/syncV4/protocol/enums/d;)V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->b(B)V
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v1, v1, Lcom/ford/syncV4/protocol/f;->a:B
if-le v1, v2, :cond_b5
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-static {v1}, Lcom/ford/syncV4/protocol/b;->a([B)Lcom/ford/syncV4/protocol/b;
move-result-object v1
iget-object v2, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v2, v2, Lcom/ford/syncV4/protocol/f;->a:B
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a(B)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->b()B
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->c(B)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->c()I
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a(I)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->d()I
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->b(I)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->e()I
move-result v2
if-lez v2, :cond_8b
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->f()[B
move-result-object v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a([B)V
:cond_8b
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->g()[B
move-result-object v2
if-eqz v2, :cond_98
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->g()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->b([B)V
:cond_98
:goto_98
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-object v1, v1, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->g()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_start_a7
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/f;->b(Lcom/ford/syncV4/protocol/e;)V
:goto_ac
:try_end_ac
.catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_bf
iput-boolean v3, p0, Lcom/ford/syncV4/protocol/g;->a:Z
iput-boolean v3, p0, Lcom/ford/syncV4/protocol/g;->b:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
goto/16 :goto_27
:cond_b5
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->c:Ljava/io/ByteArrayOutputStream;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->a([B)V
goto :goto_98
:catch_bf
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failure propagating onProtocolMessageReceived: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_ac
.end method
.method protected final a(Lcom/ford/syncV4/protocol/d;[B)V
.registers 8
const/4 v3, 0x1
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/enums/b;->a(Lcom/ford/syncV4/util/b;)Z
move-result v0
if-eqz v0, :cond_ce
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B
move-result v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->a:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/enums/a;->a()B
move-result v1
if-ne v0, v1, :cond_27
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v2
invoke-static {v0, v1, v2}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/f;Lcom/ford/syncV4/protocol/enums/d;B)V
:goto_26
:cond_26
return-void
:cond_27
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B
move-result v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->b:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/enums/a;->a()B
move-result v1
if-ne v0, v1, :cond_7b
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-object v0, v0, Lcom/ford/syncV4/protocol/f;->l:Ljava/util/Hashtable;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v1
invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_59
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-object v1, v1, Lcom/ford/syncV4/protocol/f;->l:Ljava/util/Hashtable;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v2
invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v2
invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_59
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v0, v0, Lcom/ford/syncV4/protocol/f;->a:B
if-le v0, v3, :cond_67
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->g()I
move-result v1
iput v1, v0, Lcom/ford/syncV4/protocol/f;->h:I
:cond_67
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v2
iget-object v3, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v3, v3, Lcom/ford/syncV4/protocol/f;->a:B
const-string v4, ""
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/enums/d;BBLjava/lang/String;)V
goto :goto_26
:cond_7b
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B
move-result v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->c:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/enums/a;->a()B
move-result v1
if-ne v0, v1, :cond_a1
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Got StartSessionNACK for protocol sessionID="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/ford/syncV4/protocol/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_26
:cond_a1
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->d()B
move-result v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->d:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/enums/a;->a()B
move-result v1
if-ne v0, v1, :cond_26
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v0, v0, Lcom/ford/syncV4/protocol/f;->a:B
if-le v0, v3, :cond_bd
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget v0, v0, Lcom/ford/syncV4/protocol/f;->h:I
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->g()I
move-result v1
if-ne v0, v1, :cond_26
:cond_bd
iget-object v0, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v2
const-string v3, ""
invoke-virtual {v0, v1, v2, v3}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/enums/d;BLjava/lang/String;)V
goto/16 :goto_26
:cond_ce
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;
if-eq v0, v1, :cond_de
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->h()Lcom/ford/syncV4/protocol/enums/b;
move-result-object v0
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;
if-ne v0, v1, :cond_e3
:cond_de
invoke-direct {p0, p1, p2}, Lcom/ford/syncV4/protocol/g;->b(Lcom/ford/syncV4/protocol/d;[B)V
goto/16 :goto_26
:cond_e3
new-instance v0, Lcom/ford/syncV4/protocol/e;
invoke-direct {v0}, Lcom/ford/syncV4/protocol/e;-><init>()V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
sget-object v2, Lcom/ford/syncV4/protocol/enums/d;->b:Lcom/ford/syncV4/protocol/enums/d;
if-ne v1, v2, :cond_179
sget-object v1, Lcom/ford/syncV4/protocol/enums/MessageType;->c:Lcom/ford/syncV4/protocol/enums/MessageType;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->a(Lcom/ford/syncV4/protocol/enums/MessageType;)V
:goto_f5
:cond_f5
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->a(Lcom/ford/syncV4/protocol/enums/d;)V
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->e()B
move-result v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->b(B)V
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v1, v1, Lcom/ford/syncV4/protocol/f;->a:B
if-le v1, v3, :cond_188
invoke-static {p2}, Lcom/ford/syncV4/protocol/b;->a([B)Lcom/ford/syncV4/protocol/b;
move-result-object v1
iget-object v2, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-byte v2, v2, Lcom/ford/syncV4/protocol/f;->a:B
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a(B)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->b()B
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->c(B)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->c()I
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a(I)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->d()I
move-result v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->b(I)V
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->e()I
move-result v2
if-lez v2, :cond_136
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->f()[B
move-result-object v2
invoke-virtual {v0, v2}, Lcom/ford/syncV4/protocol/e;->a([B)V
:cond_136
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->g()[B
move-result-object v2
if-eqz v2, :cond_143
invoke-virtual {v1}, Lcom/ford/syncV4/protocol/b;->g()[B
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->b([B)V
:goto_143
:cond_143
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
iget-object v1, v1, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->g()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_start_152
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/f;->b(Lcom/ford/syncV4/protocol/e;)V
:try_end_157
.catch Ljava/lang/Exception; {:try_start_152 .. :try_end_157} :catch_159
goto/16 :goto_26
:catch_159
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failure propagating onProtocolMessageReceived: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
iget-object v1, p0, Lcom/ford/syncV4/protocol/g;->f:Lcom/ford/syncV4/protocol/f;
const-string v2, "Failure propagating onProtocolMessageReceived: "
invoke-virtual {v1, v2, v0}, Lcom/ford/syncV4/protocol/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V
goto/16 :goto_26
:cond_179
invoke-virtual {p1}, Lcom/ford/syncV4/protocol/d;->i()Lcom/ford/syncV4/protocol/enums/d;
move-result-object v1
sget-object v2, Lcom/ford/syncV4/protocol/enums/d;->c:Lcom/ford/syncV4/protocol/enums/d;
if-ne v1, v2, :cond_f5
sget-object v1, Lcom/ford/syncV4/protocol/enums/MessageType;->b:Lcom/ford/syncV4/protocol/enums/MessageType;
invoke-virtual {v0, v1}, Lcom/ford/syncV4/protocol/e;->a(Lcom/ford/syncV4/protocol/enums/MessageType;)V
goto/16 :goto_f5
:cond_188
invoke-virtual {v0, p2}, Lcom/ford/syncV4/protocol/e;->a([B)V
goto :goto_143
.end method