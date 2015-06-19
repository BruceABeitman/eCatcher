.class final Lcom/c/bf;
.super Lcom/c/bb;
.field private static final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const-string v0, "\u001bX\u00132i\u0002D\u00197i\u0014I\u001e.b\u0010_"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
const/4 v3, 0x1
if-gt v1, v3, :cond_27
:cond_b
move-object v3, v0
move v4, v2
move v7, v1
move-object v1, v0
move v0, v7
:goto_10
aget-char v6, v1, v2
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_42
const/16 v5, 0x36
:goto_19
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v2
add-int/lit8 v2, v4, 0x1
if-nez v0, :cond_25
move-object v1, v3
move v4, v2
move v2, v0
goto :goto_10
:cond_25
move v1, v0
move-object v0, v3
:cond_27
if-gt v1, v2, :cond_b
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/c/bf;->c:Ljava/lang/String;
return-void
:pswitch_35
const/16 v5, 0x55
goto :goto_19
:pswitch_38
const/16 v5, 0xd
goto :goto_19
:pswitch_3b
const/16 v5, 0x5f
goto :goto_19
:pswitch_3e
const/16 v5, 0x7e
goto :goto_19
nop
:pswitch_data_42
.packed-switch 0x0
:pswitch_35
:pswitch_38
:pswitch_3b
:pswitch_3e
.end packed-switch
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/c/bb;-><init>()V
return-void
.end method
.method protected a(Lcom/c/b;)Lcom/c/bb;
.registers 2
return-object p0
.end method
.method public a(Ljava/util/ArrayList;)V
.registers 2
return-void
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public c()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()V
.registers 1
return-void
.end method
.method public f()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public g()V
.registers 1
return-void
.end method
.method public h()V
.registers 1
return-void
.end method
.method public i()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/c/bf;->c:Ljava/lang/String;
return-object v0
.end method
.method public j()Z
.registers 2
const/4 v0, 0x0
return v0
.end method