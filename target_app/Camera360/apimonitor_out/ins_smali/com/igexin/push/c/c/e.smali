.class public abstract Lcom/igexin/push/c/c/e;
.super Lcom/igexin/a/a/d/a;
.field public i:I
.field public j:B
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V
return-void
.end method
.method protected a(Ljava/lang/String;)I
.registers 4
const/4 v0, 0x1
const-string/jumbo v1, "UTF-8"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_b
:cond_a
:goto_a
return v0
:cond_b
const-string/jumbo v1, "UTF-16"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16
const/4 v0, 0x2
goto :goto_a
:cond_16
const-string/jumbo v1, "UTF-16BE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
const/16 v0, 0x10
goto :goto_a
:cond_22
const-string/jumbo v1, "UTF-16LE"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2e
const/16 v0, 0x11
goto :goto_a
:cond_2e
const-string/jumbo v1, "GBK"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3a
const/16 v0, 0x19
goto :goto_a
:cond_3a
const-string/jumbo v1, "GB2312"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_46
const/16 v0, 0x1a
goto :goto_a
:cond_46
const-string/jumbo v1, "GB18030"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_52
const/16 v0, 0x1b
goto :goto_a
:cond_52
const-string/jumbo v1, "ISO-8859-1"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a
const/16 v0, 0x21
goto :goto_a
.end method
.method protected a(B)Ljava/lang/String;
.registers 3
and-int/lit8 v0, p1, 0x3f
sparse-switch v0, :sswitch_data_2a
const-string/jumbo v0, "UTF-8"
:goto_8
return-object v0
:sswitch_9
const-string/jumbo v0, "UTF-8"
goto :goto_8
:sswitch_d
const-string/jumbo v0, "UTF-16"
goto :goto_8
:sswitch_11
const-string/jumbo v0, "UTF-16BE"
goto :goto_8
:sswitch_15
const-string/jumbo v0, "UTF-16LE"
goto :goto_8
:sswitch_19
const-string/jumbo v0, "GBK"
goto :goto_8
:sswitch_1d
const-string/jumbo v0, "GB2312"
goto :goto_8
:sswitch_21
const-string/jumbo v0, "GB18030"
goto :goto_8
:sswitch_25
const-string/jumbo v0, "ISO-8859-1"
goto :goto_8
nop
:sswitch_data_2a
.sparse-switch
0x1 -> :sswitch_9
0x2 -> :sswitch_d
0x10 -> :sswitch_11
0x11 -> :sswitch_15
0x19 -> :sswitch_19
0x1a -> :sswitch_1d
0x1b -> :sswitch_21
0x21 -> :sswitch_25
.end sparse-switch
.end method
.method public abstract a([B)V
.end method
.method public a_()I
.registers 2
iget v0, p0, Lcom/igexin/push/c/c/e;->i:I
return v0
.end method
.method public abstract d()[B
.end method