.class final Lcom/squareup/picasso/aa;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"
.method constructor <init>()V
.registers 9
const/4 v1, 0x3
const-wide/16 v3, 0x0
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
new-instance v7, Lcom/squareup/picasso/ao;
invoke-direct {v7}, Lcom/squareup/picasso/ao;-><init>()V
move-object v0, p0
move v2, v1
invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
return-void
.end method
.method private a(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/squareup/picasso/aa;->setCorePoolSize(I)V
invoke-virtual {p0, p1}, Lcom/squareup/picasso/aa;->setMaximumPoolSize(I)V
return-void
.end method
.method final a(Landroid/net/NetworkInfo;)V
.registers 4
const/4 v1, 0x3
if-eqz p1, :cond_9
invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v0
if-nez v0, :cond_d
:cond_9
invoke-direct {p0, v1}, Lcom/squareup/picasso/aa;->a(I)V
:goto_c
return-void
:cond_d
invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
move-result v0
sparse-switch v0, :sswitch_data_36
invoke-direct {p0, v1}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:sswitch_18
const/4 v0, 0x4
invoke-direct {p0, v0}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:sswitch_1d
invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I
move-result v0
packed-switch v0, :pswitch_data_48
:pswitch_24
invoke-direct {p0, v1}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:pswitch_28
invoke-direct {p0, v1}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:pswitch_2c
const/4 v0, 0x2
invoke-direct {p0, v0}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:pswitch_31
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/squareup/picasso/aa;->a(I)V
goto :goto_c
:sswitch_data_36
.sparse-switch
0x0 -> :sswitch_1d
0x1 -> :sswitch_18
0x6 -> :sswitch_18
0x9 -> :sswitch_18
.end sparse-switch
:pswitch_data_48
.packed-switch 0x1
:pswitch_31
:pswitch_31
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_2c
:pswitch_24
:pswitch_24
:pswitch_24
:pswitch_24
:pswitch_24
:pswitch_2c
:pswitch_28
:pswitch_28
:pswitch_28
.end packed-switch
.end method