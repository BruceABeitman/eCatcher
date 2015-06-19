.class final Lcom/squareup/okhttp/internal/spdy/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/squareup/okhttp/internal/spdy/a;
.field final a:Lcom/squareup/okhttp/internal/spdy/f;
.field private final b:Lcom/squareup/okhttp/internal/a/c;
.field private final c:Lcom/squareup/okhttp/internal/spdy/i;
.field private final d:Z
.method constructor <init>(Lcom/squareup/okhttp/internal/a/c;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/j;->d:Z
new-instance v0, Lcom/squareup/okhttp/internal/spdy/i;
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/i;-><init>(Lcom/squareup/okhttp/internal/a/c;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
new-instance v0, Lcom/squareup/okhttp/internal/spdy/f;
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
invoke-direct {v0, p2, v1}, Lcom/squareup/okhttp/internal/spdy/f;-><init>(ZLcom/squareup/okhttp/internal/a/p;)V
iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/f;
return-void
.end method
.method private a(SBI)Ljava/util/List;
.registers 6
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
iput p1, v1, Lcom/squareup/okhttp/internal/spdy/i;->d:I
iput p1, v0, Lcom/squareup/okhttp/internal/spdy/i;->a:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
iput-byte p2, v0, Lcom/squareup/okhttp/internal/spdy/i;->b:B
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->c:Lcom/squareup/okhttp/internal/spdy/i;
iput p3, v0, Lcom/squareup/okhttp/internal/spdy/i;->c:I
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/f;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/f;->a()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/f;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/f;->b()V
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/f;
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/f;->c()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public final a()V
.registers 5
iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->d:Z
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->a()Lcom/squareup/okhttp/internal/a/d;
move-result-object v1
invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/d;->e()I
move-result v1
int-to-long v1, v1
invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->c(J)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->a()Lcom/squareup/okhttp/internal/a/d;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/a/d;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4
const-string v1, "Expected a connection header but was %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v3
invoke-static {v1, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
.end method
.method public final a(Lcom/squareup/okhttp/internal/spdy/b;)Z
.registers 12
const/16 v9, 0x8
const/4 v6, 0x4
const v8, 0x7fffffff
const/4 v7, 0x1
const/4 v1, 0x0
:try_start_8
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v2
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
:try_end_13
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_2f
move-result v3
const/high16 v0, 0x3fff
and-int/2addr v0, v2
shr-int/lit8 v0, v0, 0x10
int-to-short v0, v0
const v4, 0xff00
and-int/2addr v4, v2
shr-int/lit8 v4, v4, 0x8
int-to-byte v4, v4
and-int/lit16 v2, v2, 0xff
int-to-byte v5, v2
and-int/2addr v3, v8
packed-switch v4, :pswitch_data_1f8
:pswitch_28
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
int-to-long v2, v0
invoke-interface {v1, v2, v3}, Lcom/squareup/okhttp/internal/a/c;->b(J)V
:cond_2e
:goto_2e
return v7
:catch_2f
move-exception v0
move v7, v1
goto :goto_2e
:pswitch_32
and-int/lit8 v2, v5, 0x1
if-eqz v2, :cond_37
move v1, v7
:cond_37
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {p1, v1, v3, v2, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILcom/squareup/okhttp/internal/a/c;I)V
goto :goto_2e
:pswitch_3d
if-nez v3, :cond_48
const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_48
and-int/lit8 v2, v5, 0x1
if-eqz v2, :cond_67
move v2, v7
:goto_4d
const/4 v4, -0x1
and-int/lit8 v6, v5, 0x8
if-eqz v6, :cond_5c
iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v4}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v4
and-int/2addr v4, v8
add-int/lit8 v0, v0, -0x4
int-to-short v0, v0
:cond_5c
invoke-direct {p0, v0, v5, v3}, Lcom/squareup/okhttp/internal/spdy/j;->a(SBI)Ljava/util/List;
move-result-object v5
sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->d:Lcom/squareup/okhttp/internal/spdy/HeadersMode;
move-object v0, p1
invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
goto :goto_2e
:cond_67
move v2, v1
goto :goto_4d
:pswitch_69
if-eq v0, v6, :cond_7a
const-string v2, "TYPE_PRIORITY length: %d != 4"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_7a
if-nez v3, :cond_85
const-string v0, "TYPE_PRIORITY streamId == 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_85
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
goto :goto_2e
:pswitch_8b
if-eq v0, v6, :cond_9c
const-string v2, "TYPE_RST_STREAM length: %d != 4"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_9c
if-nez v3, :cond_a7
const-string v0, "TYPE_RST_STREAM streamId == 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_a7
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v0
invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
move-result-object v2
if-nez v2, :cond_c2
const-string v2, "TYPE_RST_STREAM unexpected error code: %d"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_c2
invoke-interface {p1, v3, v2}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
goto/16 :goto_2e
:pswitch_c7
if-eqz v3, :cond_d2
const-string v0, "TYPE_SETTINGS streamId != 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_d2
and-int/lit8 v2, v5, 0x1
if-eqz v2, :cond_e1
if-eqz v0, :cond_2e
const-string v0, "FRAME_SIZE_ERROR ack frame should be empty!"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_e1
rem-int/lit8 v2, v0, 0x8
if-eqz v2, :cond_f4
const-string v2, "TYPE_SETTINGS length %% 8 != 0: %s"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_f4
new-instance v3, Lcom/squareup/okhttp/internal/spdy/q;
invoke-direct {v3}, Lcom/squareup/okhttp/internal/spdy/q;-><init>()V
move v2, v1
:goto_fa
if-ge v2, v0, :cond_112
iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v4}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v4
iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v5}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v5
const v6, 0xffffff
and-int/2addr v4, v6
invoke-virtual {v3, v4, v1, v5}, Lcom/squareup/okhttp/internal/spdy/q;->a(III)Lcom/squareup/okhttp/internal/spdy/q;
add-int/lit8 v2, v2, 0x8
goto :goto_fa
:cond_112
invoke-interface {p1, v1, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZLcom/squareup/okhttp/internal/spdy/q;)V
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/q;->c()I
move-result v0
if-ltz v0, :cond_2e
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->a:Lcom/squareup/okhttp/internal/spdy/f;
invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/q;->c()I
move-result v1
invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/f;->a(I)V
goto/16 :goto_2e
:pswitch_126
if-nez v3, :cond_131
const-string v0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_131
iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v1
and-int/2addr v1, v8
add-int/lit8 v0, v0, -0x4
int-to-short v0, v0
invoke-direct {p0, v0, v5, v3}, Lcom/squareup/okhttp/internal/spdy/j;->a(SBI)Ljava/util/List;
move-result-object v0
invoke-interface {p1, v1, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILjava/util/List;)V
goto/16 :goto_2e
:pswitch_144
if-eq v0, v9, :cond_155
const-string v2, "TYPE_PING length != 8: %s"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_155
if-eqz v3, :cond_160
const-string v0, "TYPE_PING streamId != 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_160
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v0
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v2
and-int/lit8 v3, v5, 0x1
if-eqz v3, :cond_171
move v1, v7
:cond_171
invoke-interface {p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZII)V
goto/16 :goto_2e
:pswitch_176
if-ge v0, v9, :cond_187
const-string v2, "TYPE_GOAWAY length < 8: %s"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_187
if-eqz v3, :cond_192
const-string v0, "TYPE_GOAWAY streamId != 0"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_192
iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v2
iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v3}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v3
add-int/lit8 v4, v0, -0x8
invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
move-result-object v0
if-nez v0, :cond_1b5
const-string v0, "TYPE_GOAWAY unexpected error code: %d"
new-array v2, v7, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_1b5
sget-object v0, Lcom/squareup/okhttp/internal/a/d;->a:Lcom/squareup/okhttp/internal/a/d;
if-lez v4, :cond_1c0
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
int-to-long v3, v4
invoke-interface {v0, v3, v4}, Lcom/squareup/okhttp/internal/a/c;->c(J)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
:cond_1c0
invoke-interface {p1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/a/d;)V
goto/16 :goto_2e
:pswitch_1c5
if-eq v0, v6, :cond_1d6
const-string v2, "TYPE_WINDOW_UPDATE length !=4: %s"
new-array v3, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
aput-object v0, v3, v1
invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_1d6
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
move-result v0
and-int/2addr v0, v8
int-to-long v4, v0
const-wide/16 v8, 0x0
cmp-long v0, v4, v8
if-nez v0, :cond_1f3
const-string v0, "windowSizeIncrement was 0"
new-array v2, v7, [Ljava/lang/Object;
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v1
invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/h;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
move-result-object v0
throw v0
:cond_1f3
invoke-interface {p1, v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(IJ)V
goto/16 :goto_2e
:pswitch_data_1f8
.packed-switch 0x0
:pswitch_32
:pswitch_3d
:pswitch_69
:pswitch_8b
:pswitch_c7
:pswitch_126
:pswitch_144
:pswitch_176
:pswitch_28
:pswitch_1c5
.end packed-switch
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/j;->b:Lcom/squareup/okhttp/internal/a/c;
invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->close()V
return-void
.end method