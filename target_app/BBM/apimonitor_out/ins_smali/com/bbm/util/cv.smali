.class public final Lcom/bbm/util/cv;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneState.java"
.field public final a:Lcom/bbm/j/t;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V
new-instance v0, Lcom/bbm/j/t;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/cv;->a:Lcom/bbm/j/t;
return-void
.end method
.method public final a()Z
.registers 2
iget-object v0, p0, Lcom/bbm/util/cv;->a:Lcom/bbm/j/t;
invoke-virtual {v0}, Lcom/bbm/j/t;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
.end method
.method public final onCallStateChanged(ILjava/lang/String;)V
.registers 5
packed-switch p1, :pswitch_data_1a
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/util/cv;->a:Lcom/bbm/j/t;
const/4 v1, 0x1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
goto :goto_3
:pswitch_f
iget-object v0, p0, Lcom/bbm/util/cv;->a:Lcom/bbm/j/t;
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
goto :goto_3
:pswitch_data_1a
.packed-switch 0x0
:pswitch_f
:pswitch_4
:pswitch_4
.end packed-switch
.end method