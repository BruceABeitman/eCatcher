.class  Lorg/apache/log4j/c/s;
.super Lorg/apache/log4j/c/q;
.source "SourceFile"
.field  f:I
.method constructor <init>(Lorg/apache/log4j/c/i;I)V
.registers 3
invoke-direct {p0, p1}, Lorg/apache/log4j/c/q;-><init>(Lorg/apache/log4j/c/i;)V
iput p2, p0, Lorg/apache/log4j/c/s;->f:I
return-void
.end method
.method public a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
.registers 6
iget v0, p0, Lorg/apache/log4j/c/s;->f:I
packed-switch v0, :pswitch_data_2c
const/4 v0, 0x0
:goto_6
return-object v0
:pswitch_7
iget-wide v0, p1, Lorg/apache/log4j/k/k;->d:J
invoke-static {}, Lorg/apache/log4j/k/k;->i()J
move-result-wide v2
sub-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v0
goto :goto_6
:pswitch_13
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
move-result-object v0
goto :goto_6
:pswitch_18
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/v;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_6
:pswitch_21
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
move-result-object v0
goto :goto_6
:pswitch_26
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
move-result-object v0
goto :goto_6
nop
:pswitch_data_2c
.packed-switch 0x7d0
:pswitch_7
:pswitch_13
:pswitch_18
:pswitch_21
:pswitch_26
.end packed-switch
.end method