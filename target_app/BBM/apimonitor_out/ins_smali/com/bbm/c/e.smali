.class final Lcom/bbm/c/e;
.super Ljava/lang/Object;
.source "EventTracker.java"
.implements Lcom/bbm/f/ac;
.field final synthetic a:Lcom/bbm/c/c;
.method constructor <init>(Lcom/bbm/c/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/c/e;->a:Lcom/bbm/c/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 4
const-string v0, "messageRecallResult"
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
:try_start_a
iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "recallStatus"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/fi;->a(Ljava/lang/String;)Lcom/bbm/d/fi;
move-result-object v0
sget-object v1, Lcom/bbm/c/j;->a:[I
invoke-virtual {v0}, Lcom/bbm/d/fi;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_34
:goto_21
:cond_21
return-void
:pswitch_22
iget-object v0, p0, Lcom/bbm/c/e;->a:Lcom/bbm/c/c;
invoke-static {v0}, Lcom/bbm/c/c;->a(Lcom/bbm/c/c;)I
:try_end_27
.catch Lorg/json/JSONException; {:try_start_a .. :try_end_27} :catch_28
goto :goto_21
:catch_28
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_21
:pswitch_2d
:try_start_2d
iget-object v0, p0, Lcom/bbm/c/e;->a:Lcom/bbm/c/c;
invoke-static {v0}, Lcom/bbm/c/c;->b(Lcom/bbm/c/c;)I
:try_end_32
.catch Lorg/json/JSONException; {:try_start_2d .. :try_end_32} :catch_28
goto :goto_21
nop
:pswitch_data_34
.packed-switch 0x1
:pswitch_22
:pswitch_2d
.end packed-switch
.end method