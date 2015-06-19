.class public Lb/a/a/a/a/a;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.field protected a:Lorg/apache/log4j/u;
.method public constructor <init>()V
.registers 3
new-instance v0, Lorg/apache/log4j/af;
const-string v1, "%m%n"
invoke-direct {v0, v1}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Lb/a/a/a/a/a;-><init>(Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;)V
.registers 4
new-instance v0, Lorg/apache/log4j/af;
const-string v1, "%c"
invoke-direct {v0, v1}, Lorg/apache/log4j/af;-><init>(Ljava/lang/String;)V
invoke-direct {p0, p1, v0}, Lb/a/a/a/a/a;-><init>(Lorg/apache/log4j/u;Lorg/apache/log4j/u;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/u;Lorg/apache/log4j/u;)V
.registers 3
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
iput-object p2, p0, Lb/a/a/a/a/a;->a:Lorg/apache/log4j/u;
invoke-virtual {p0, p1}, Lb/a/a/a/a/a;->b(Lorg/apache/log4j/u;)V
return-void
.end method
.method public a()V
.registers 1
return-void
.end method
.method protected a(Lorg/apache/log4j/k/k;)V
.registers 5
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->b()Lorg/apache/log4j/v;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/log4j/v;->c()I
move-result v0
sparse-switch v0, :sswitch_data_158
:goto_b
return-void
:sswitch_c
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_2e
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_b
:cond_2e
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
:sswitch_42
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_64
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_b
:cond_64
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_b
:sswitch_78
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_9b
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_b
:cond_9b
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b
:sswitch_b0
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_d3
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_b
:cond_d3
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b
:sswitch_e8
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_10b
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_b
:cond_10b
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b
:sswitch_120
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v0
if-eqz v0, :cond_143
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->k()Lorg/apache/log4j/k/t;
move-result-object v2
invoke-virtual {v2}, Lorg/apache/log4j/k/t;->a()Ljava/lang/Throwable;
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_b
:cond_143
invoke-virtual {p0}, Lb/a/a/a/a/a;->c()Lorg/apache/log4j/u;
move-result-object v0
invoke-virtual {v0, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lb/a/a/a/a/a;->h()Lorg/apache/log4j/u;
move-result-object v1
invoke-virtual {v1, p1}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_b
:sswitch_data_158
.sparse-switch
0x1388 -> :sswitch_c
0x2710 -> :sswitch_42
0x4e20 -> :sswitch_78
0x7530 -> :sswitch_b0
0x9c40 -> :sswitch_e8
0xc350 -> :sswitch_120
.end sparse-switch
.end method
.method public a(Lorg/apache/log4j/u;)V
.registers 2
iput-object p1, p0, Lb/a/a/a/a/a;->a:Lorg/apache/log4j/u;
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public c()Lorg/apache/log4j/u;
.registers 2
iget-object v0, p0, Lb/a/a/a/a/a;->a:Lorg/apache/log4j/u;
return-object v0
.end method