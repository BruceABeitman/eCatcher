.class public final Lcom/tencent/a/a/f;
.super Lcom/tencent/a/a/g;
.source "ProGuard"
.field public static final a:Lcom/tencent/a/a/f;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/tencent/a/a/f;
invoke-direct {v0}, Lcom/tencent/a/a/f;-><init>()V
sput-object v0, Lcom/tencent/a/a/f;->a:Lcom/tencent/a/a/f;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/tencent/a/a/g;-><init>()V
return-void
.end method
.method protected a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 8
sparse-switch p1, :sswitch_data_1c
:goto_3
return-void
:sswitch_4
invoke-static {p5, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_8
invoke-static {p5, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_c
invoke-static {p5, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_10
invoke-static {p5, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_14
invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_18
invoke-static {p5, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
:sswitch_data_1c
.sparse-switch
0x1 -> :sswitch_4
0x2 -> :sswitch_8
0x4 -> :sswitch_c
0x8 -> :sswitch_10
0x10 -> :sswitch_14
0x20 -> :sswitch_18
.end sparse-switch
.end method