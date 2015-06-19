.class final Lcom/bbm/f/v;
.super Ljava/lang/Object;
.source "NativeServiceLayer.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/f/j;
.method constructor <init>(Lcom/bbm/f/j;)V
.registers 2
iput-object p1, p0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 14
const/4 v6, 0x1
const/4 v5, 0x0
new-instance v8, Lcom/bbm/util/fa;
invoke-direct {v8}, Lcom/bbm/util/fa;-><init>()V
:goto_7
:cond_7
iget-object v0, p0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;
invoke-static {v0}, Lcom/bbm/f/j;->d(Lcom/bbm/f/j;)Z
move-result v0
if-nez v0, :cond_59
:try_start_f
iget-object v0, p0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;
invoke-static {v0}, Lcom/bbm/f/j;->h(Lcom/bbm/f/j;)Ljava/util/concurrent/LinkedBlockingQueue;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/y;
const/4 v4, 0x0
iget-object v1, v0, Lcom/bbm/f/y;->b:[B
invoke-static {v1}, Lcom/bbm/f/as;->a([B)Z
move-result v1
if-eqz v1, :cond_1be
iget-object v1, p0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;
invoke-static {v1}, Lcom/bbm/f/j;->l(Lcom/bbm/f/j;)Ljava/util/EnumMap;
move-result-object v1
iget-object v2, v0, Lcom/bbm/f/y;->a:Lcom/rim/bbm/BbmCoreService$MessageType;
invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/f/as;
if-eqz v1, :cond_1e5
iget-object v7, v0, Lcom/bbm/f/y;->b:[B
iget v2, v1, Lcom/bbm/f/as;->b:I
add-int/lit8 v2, v2, 0x1
iput v2, v1, Lcom/bbm/f/as;->b:I
:goto_3c
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
iget v3, v1, Lcom/bbm/f/as;->b:I
if-ge v2, v3, :cond_5a
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
new-instance v3, Lcom/bbm/f/at;
invoke-direct {v3}, Lcom/bbm/f/at;-><init>()V
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_50
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_50} :catch_51
goto :goto_3c
:catch_51
move-exception v0
const-string v0, "JSON Decoder interrupted"
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->f(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_59
return-void
:cond_5a
:try_start_5a
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
iget v3, v1, Lcom/bbm/f/as;->b:I
add-int/lit8 v3, v3, -0x1
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/f/at;
iput-object v7, v2, Lcom/bbm/f/at;->a:[B
move v3, v5
:goto_69
:cond_69
array-length v9, v7
if-ge v3, v9, :cond_d3
aget-byte v9, v7, v3
const/16 v10, 0x22
if-ne v9, v10, :cond_d0
add-int/lit8 v3, v3, 0x1
array-length v9, v7
if-ge v3, v9, :cond_69
aget-byte v9, v7, v3
sparse-switch v9, :sswitch_data_1e8
goto :goto_69
:sswitch_7d
add-int/lit8 v3, v3, 0x3
invoke-static {v7, v3}, Lcom/bbm/f/as;->b([BI)I
move-result v3
iput v3, v2, Lcom/bbm/f/at;->b:I
invoke-static {v7, v3}, Lcom/bbm/f/as;->b([BI)I
move-result v3
add-int/lit8 v9, v3, -0x1
iput v9, v2, Lcom/bbm/f/at;->c:I
goto :goto_69
:sswitch_8e
add-int/lit8 v3, v3, 0x8
goto :goto_69
:sswitch_91
add-int/lit8 v3, v3, 0x5
invoke-static {v7, v3}, Lcom/bbm/f/as;->a([BI)I
move-result v3
:goto_97
aget-byte v9, v7, v3
const/16 v10, 0x3a
if-ne v9, v10, :cond_a3
array-length v9, v7
if-ge v3, v9, :cond_a3
add-int/lit8 v3, v3, 0x1
goto :goto_97
:cond_a3
invoke-static {v7, v3}, Lcom/bbm/f/as;->a([BI)I
move-result v3
aget-byte v9, v7, v3
const/16 v10, 0x74
if-ne v9, v10, :cond_b3
const/4 v9, 0x1
iput-boolean v9, v2, Lcom/bbm/f/at;->f:Z
add-int/lit8 v3, v3, 0x4
goto :goto_69
:cond_b3
aget-byte v9, v7, v3
const/16 v10, 0x66
if-ne v9, v10, :cond_69
const/4 v9, 0x0
iput-boolean v9, v2, Lcom/bbm/f/at;->f:Z
add-int/lit8 v3, v3, 0x5
goto :goto_69
:sswitch_bf
add-int/lit8 v3, v3, 0x6
invoke-static {v7, v3}, Lcom/bbm/f/as;->b([BI)I
move-result v3
iput v3, v2, Lcom/bbm/f/at;->d:I
invoke-static {v7, v3}, Lcom/bbm/f/as;->b([BI)I
move-result v3
add-int/lit8 v9, v3, -0x1
iput v9, v2, Lcom/bbm/f/at;->e:I
goto :goto_69
:cond_d0
add-int/lit8 v3, v3, 0x1
goto :goto_69
:cond_d3
iget-boolean v3, v2, Lcom/bbm/f/at;->f:Z
iput-boolean v3, v1, Lcom/bbm/f/as;->c:Z
iget-object v3, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
const/4 v7, 0x0
invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/bbm/f/at;
iget v7, v1, Lcom/bbm/f/as;->b:I
if-le v7, v6, :cond_134
iget v7, v2, Lcom/bbm/f/at;->c:I
iget v9, v2, Lcom/bbm/f/at;->b:I
sub-int v9, v7, v9
iget v7, v3, Lcom/bbm/f/at;->c:I
iget v10, v3, Lcom/bbm/f/at;->b:I
sub-int/2addr v7, v10
if-eq v7, v9, :cond_117
move v7, v5
:goto_f2
if-nez v7, :cond_134
iget-object v7, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
const/4 v9, 0x0
invoke-interface {v7, v9, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
iget v7, v1, Lcom/bbm/f/as;->b:I
add-int/lit8 v7, v7, -0x1
invoke-interface {v2, v7, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
move v3, v6
:goto_104
iget v2, v1, Lcom/bbm/f/as;->b:I
if-ge v3, v2, :cond_131
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/f/at;
invoke-virtual {v2}, Lcom/bbm/f/at;->a()V
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_104
:cond_117
move v7, v5
:goto_118
if-ge v7, v9, :cond_12f
iget-object v10, v2, Lcom/bbm/f/at;->a:[B
iget v11, v2, Lcom/bbm/f/at;->b:I
add-int/2addr v11, v7
aget-byte v10, v10, v11
iget-object v11, v3, Lcom/bbm/f/at;->a:[B
iget v12, v3, Lcom/bbm/f/at;->b:I
add-int/2addr v12, v7
aget-byte v11, v11, v12
if-eq v10, v11, :cond_12c
move v7, v5
goto :goto_f2
:cond_12c
add-int/lit8 v7, v7, 0x1
goto :goto_118
:cond_12f
move v7, v6
goto :goto_f2
:cond_131
const/4 v2, 0x1
iput v2, v1, Lcom/bbm/f/as;->b:I
:cond_134
iget-boolean v2, v1, Lcom/bbm/f/as;->c:Z
if-eqz v2, :cond_1e5
iget v2, v1, Lcom/bbm/f/as;->b:I
new-array v7, v2, [[B
move v3, v5
move v4, v5
:goto_13e
iget v2, v1, Lcom/bbm/f/as;->b:I
if-ge v3, v2, :cond_163
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/f/at;
iget-object v9, v2, Lcom/bbm/f/at;->a:[B
iget v10, v2, Lcom/bbm/f/at;->d:I
iget v11, v2, Lcom/bbm/f/at;->e:I
iget v2, v2, Lcom/bbm/f/at;->d:I
sub-int v2, v11, v2
const/4 v11, 0x0
invoke-static {v9, v10, v2, v11}, Landroid/util/Base64;->decode([BIII)[B
move-result-object v2
aput-object v2, v7, v3
aget-object v2, v7, v3
array-length v2, v2
add-int/2addr v4, v2
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_13e
:cond_163
array-length v2, v7
if-ne v2, v6, :cond_190
const/4 v2, 0x0
aget-object v2, v7, v2
move-object v4, v2
:goto_16a
iget v2, v1, Lcom/bbm/f/as;->b:I
if-nez v2, :cond_1a4
const-string v2, ""
:goto_170
invoke-virtual {v1}, Lcom/bbm/f/as;->a()V
const/4 v1, 0x1
const-string v3, "Stream Assembled"
invoke-static {v1, v3}, Lcom/bbm/x;->a(ZLjava/lang/String;)V
new-instance v1, Lcom/bbm/f/ab;
invoke-direct {v1, v2, v4}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;[B)V
:goto_17e
if-eqz v1, :cond_7
iget-object v2, p0, Lcom/bbm/f/v;->a:Lcom/bbm/f/j;
invoke-static {v2}, Lcom/bbm/f/j;->f(Lcom/bbm/f/j;)Lcom/bbm/util/dc;
move-result-object v2
new-instance v3, Lcom/bbm/f/w;
invoke-direct {v3, p0, v0, v1}, Lcom/bbm/f/w;-><init>(Lcom/bbm/f/v;Lcom/bbm/f/y;Lcom/bbm/f/ab;)V
invoke-interface {v2, v3}, Lcom/bbm/util/dc;->a(Ljava/lang/Runnable;)V
goto/16 :goto_7
:cond_190
new-array v2, v4, [B
array-length v9, v7
move v3, v5
move v4, v5
:goto_195
if-ge v3, v9, :cond_1a2
aget-object v10, v7, v3
array-length v11, v10
const/4 v12, 0x0
invoke-static {v10, v12, v2, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/2addr v4, v11
add-int/lit8 v3, v3, 0x1
goto :goto_195
:cond_1a2
move-object v4, v2
goto :goto_16a
:cond_1a4
iget-object v2, v1, Lcom/bbm/f/as;->a:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/bbm/f/at;
new-instance v3, Ljava/lang/String;
iget-object v7, v2, Lcom/bbm/f/at;->a:[B
iget v9, v2, Lcom/bbm/f/at;->b:I
iget v10, v2, Lcom/bbm/f/at;->c:I
iget v2, v2, Lcom/bbm/f/at;->b:I
sub-int v2, v10, v2
invoke-direct {v3, v7, v9, v2}, Ljava/lang/String;-><init>([BII)V
move-object v2, v3
goto :goto_170
:cond_1be
iget-object v1, v0, Lcom/bbm/f/y;->b:[B
invoke-virtual {v8, v1}, Lcom/bbm/util/fa;->a([B)Ljava/lang/String;
:try_end_1c3
.catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_1c3} :catch_51
move-result-object v2
:try_start_1c4
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const/4 v1, 0x1
invoke-static {v3}, Lcom/bbm/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v7
invoke-static {v1, v7}, Lcom/bbm/x;->a(ZLjava/lang/String;)V
new-instance v1, Lcom/bbm/f/ab;
invoke-direct {v1, v3}, Lcom/bbm/f/ab;-><init>(Lorg/json/JSONObject;)V
:try_end_1d6
.catch Lorg/json/JSONException; {:try_start_1c4 .. :try_end_1d6} :catch_1d7
.catch Ljava/lang/InterruptedException; {:try_start_1c4 .. :try_end_1d6} :catch_51
goto :goto_17e
:catch_1d7
move-exception v1
:try_start_1d8
const-string v1, "Invalid JSON message returned from bbmcore: %1$s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object v2, v3, v7
invoke-static {v1, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:try_end_1e3
.catch Ljava/lang/InterruptedException; {:try_start_1d8 .. :try_end_1e3} :catch_51
move-object v1, v4
goto :goto_17e
:cond_1e5
move-object v1, v4
goto :goto_17e
nop
:sswitch_data_1e8
.sparse-switch
0x69 -> :sswitch_7d
0x6c -> :sswitch_91
0x73 -> :sswitch_8e
0x76 -> :sswitch_bf
.end sparse-switch
.end method