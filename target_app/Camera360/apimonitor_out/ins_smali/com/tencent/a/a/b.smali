.class public final Lcom/tencent/a/a/b;
.super Ljava/lang/Object;
.source "ProGuard"
.field public static final a:Lcom/tencent/a/a/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tencent/a/a/b;
invoke-direct {v0}, Lcom/tencent/a/a/b;-><init>()V
sput-object v0, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)Ljava/lang/String;
.registers 3
sparse-switch p1, :sswitch_data_20
const-string/jumbo v0, "-"
:goto_6
return-object v0
:sswitch_7
const-string/jumbo v0, "D"
goto :goto_6
:sswitch_b
const-string/jumbo v0, "I"
goto :goto_6
:sswitch_f
const-string/jumbo v0, "W"
goto :goto_6
:sswitch_13
const-string/jumbo v0, "E"
goto :goto_6
:sswitch_17
const-string/jumbo v0, "V"
goto :goto_6
:sswitch_1b
const-string/jumbo v0, "A"
goto :goto_6
nop
:sswitch_data_20
.sparse-switch
0x1 -> :sswitch_17
0x2 -> :sswitch_7
0x4 -> :sswitch_b
0x8 -> :sswitch_f
0x10 -> :sswitch_13
0x20 -> :sswitch_1b
.end sparse-switch
.end method
.method public a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
.registers 14
const-wide/16 v0, 0x3e8
rem-long v0, p3, v0
new-instance v2, Landroid/text/format/Time;
invoke-direct {v2}, Landroid/text/format/Time;-><init>()V
invoke-virtual {v2, p3, p4}, Landroid/text/format/Time;->set(J)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0, p1}, Lcom/tencent/a/a/b;->a(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const/16 v5, 0x2f
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, "%Y-%m-%d %H:%M:%S"
invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/16 v4, 0x2e
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-wide/16 v4, 0xa
cmp-long v2, v0, v4
if-gez v2, :cond_92
const-string/jumbo v2, "00"
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_3b
:cond_3b
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
if-nez p2, :cond_9e
const-string/jumbo v0, "N/A"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_52
const/16 v0, 0x5d
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
if-eqz p7, :cond_8d
const-string/jumbo v0, "* Exception : \n"
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_8d
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_92
const-wide/16 v4, 0x64
cmp-long v2, v0, v4
if-gez v2, :cond_3b
const/16 v2, 0x30
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_3b
:cond_9e
invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_52
.end method