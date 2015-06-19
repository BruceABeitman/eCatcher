.class final Lcom/bbm/f/al;
.super Ljava/lang/Thread;
.source "ShuntBroker.java"
.field  a:Z
.field final synthetic b:Lcom/bbm/f/ai;
.field private final c:Ljava/net/Socket;
.method public constructor <init>(Lcom/bbm/f/ai;Ljava/net/Socket;)V
.registers 4
iput-object p1, p0, Lcom/bbm/f/al;->b:Lcom/bbm/f/ai;
const-string v0, "ShuntProtocolConnection ReadingThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/f/al;->a:Z
iput-object p2, p0, Lcom/bbm/f/al;->c:Ljava/net/Socket;
return-void
.end method
.method private a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 8
const/4 v0, 0x0
new-instance v2, Ljava/lang/StringBuilder;
const/4 v1, 0x5
invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V
move v1, v0
:goto_8
if-nez v1, :cond_4f
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_17
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_17
int-to-char v4, v3
const/16 v5, 0xa
if-ne v4, v5, :cond_29
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
goto :goto_8
:cond_29
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v4
const/16 v5, 0x14
if-ge v4, v5, :cond_36
int-to-char v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_8
:cond_36
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Size prefix too long: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4f
const-string v3, "Expecting %d (%s) bytes..."
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
const/4 v5, 0x1
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v4, v5
invoke-static {v3, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
new-array v2, v1, [B
:goto_66
if-ge v0, v1, :cond_78
sub-int v3, v1, v0
invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
move-result v3
if-gtz v3, :cond_76
new-instance v0, Ljava/io/IOException;
invoke-direct {v0}, Ljava/io/IOException;-><init>()V
throw v0
:cond_76
add-int/2addr v0, v3
goto :goto_66
:cond_78
iget-object v0, p0, Lcom/bbm/f/al;->b:Lcom/bbm/f/ai;
iget-object v0, v0, Lcom/bbm/f/ai;->i:Lcom/bbm/util/fa;
invoke-virtual {v0, v2}, Lcom/bbm/util/fa;->a([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final run()V
.registers 5
:try_start_0
new-instance v1, Ljava/io/BufferedInputStream;
iget-object v0, p0, Lcom/bbm/f/al;->c:Ljava/net/Socket;
invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:goto_b
iget-boolean v0, p0, Lcom/bbm/f/al;->a:Z
:try_end_d
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_2a
if-nez v0, :cond_40
:try_start_f
invoke-direct {p0, v1}, Lcom/bbm/f/al;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/f/al;->b:Lcom/bbm/f/ai;
iget-object v0, v0, Lcom/bbm/f/ai;->h:Lcom/bbm/util/dc;
new-instance v3, Lcom/bbm/f/am;
invoke-direct {v3, p0, v2}, Lcom/bbm/f/am;-><init>(Lcom/bbm/f/al;Lorg/json/JSONObject;)V
invoke-interface {v0, v3}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
:try_end_24
.catch Lorg/json/JSONException; {:try_start_f .. :try_end_24} :catch_25
.catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_24} :catch_3b
.catch Ljava/io/IOException; {:try_start_f .. :try_end_24} :catch_2a
goto :goto_b
:catch_25
move-exception v0
:try_start_26
invoke-static {v0}, Lcom/bbm/x;->b(Ljava/lang/Throwable;)V
:try_end_29
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
goto :goto_b
:catch_2a
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/bbm/f/al;->b:Lcom/bbm/f/ai;
iget-object v0, v0, Lcom/bbm/f/ai;->h:Lcom/bbm/util/dc;
new-instance v1, Lcom/bbm/f/an;
invoke-direct {v1, p0}, Lcom/bbm/f/an;-><init>(Lcom/bbm/f/al;)V
invoke-interface {v0, v1}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
:goto_3a
return-void
:catch_3b
move-exception v0
:try_start_3c
invoke-static {v0}, Lcom/bbm/x;->b(Ljava/lang/Throwable;)V
goto :goto_b
:cond_40
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
:try_end_43
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_43} :catch_2a
goto :goto_3a
.end method