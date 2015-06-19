.class public final Lcom/bbm/util/h;
.super Landroid/os/Handler;
.source "AsyncTask.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/bbm/util/h;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
const/4 v3, 0x0
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/bbm/util/g;
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_34
:goto_a
return-void
:pswitch_b
:try_start_b
iget-object v1, v0, Lcom/bbm/util/g;->a:Lcom/bbm/util/b;
iget-object v0, v0, Lcom/bbm/util/g;->b:[Ljava/lang/Object;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-static {v1, v0}, Lcom/bbm/util/b;->c(Lcom/bbm/util/b;Ljava/lang/Object;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16
goto :goto_a
:catch_16
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error finishing task: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_a
:pswitch_2c
iget-object v1, v0, Lcom/bbm/util/g;->a:Lcom/bbm/util/b;
iget-object v0, v0, Lcom/bbm/util/g;->b:[Ljava/lang/Object;
invoke-virtual {v1, v0}, Lcom/bbm/util/b;->b([Ljava/lang/Object;)V
goto :goto_a
:pswitch_data_34
.packed-switch 0x1
:pswitch_b
:pswitch_2c
.end packed-switch
.end method