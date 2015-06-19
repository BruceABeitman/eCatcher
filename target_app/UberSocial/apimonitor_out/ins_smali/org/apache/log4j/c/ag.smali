.class public Lorg/apache/log4j/c/ag;
.super Lorg/apache/log4j/v;
.source "SourceFile"
.field public static final A:I = 0x55f0
.field public static final B:I = 0x5208
.field public static final C:I = 0x36b0
.field public static final D:I = 0x32c8
.field public static final E:I = 0x2ee0
.field public static final F:I = 0x2af8
.field public static final G:I = 0x2710
.field public static final H:Lorg/apache/log4j/c/ag; = null
.field public static final I:Lorg/apache/log4j/c/ag; = null
.field public static final J:Lorg/apache/log4j/c/ag; = null
.field public static final K:Lorg/apache/log4j/c/ag; = null
.field public static final L:Lorg/apache/log4j/c/ag; = null
.field public static final M:Lorg/apache/log4j/c/ag; = null
.field public static final N:Lorg/apache/log4j/c/ag; = null
.field private static final O:J = 0xc9e7c96f753c6b3L
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x55f0
const-string v2, "SEVERE"
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->H:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x5208
const-string v2, "WARNING"
const/4 v3, 0x4
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->I:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x4e20
const-string v2, "INFO"
const/4 v3, 0x5
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->J:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x36b0
const-string v2, "CONFIG"
const/4 v3, 0x6
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->K:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x32c8
const-string v2, "FINE"
const/4 v3, 0x7
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->L:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x2ee0
const-string v2, "FINER"
const/16 v3, 0x8
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->M:Lorg/apache/log4j/c/ag;
new-instance v0, Lorg/apache/log4j/c/ag;
const/16 v1, 0x2af8
const-string v2, "FINEST"
const/16 v3, 0x9
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/c/ag;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/c/ag;->N:Lorg/apache/log4j/c/ag;
return-void
.end method
.method protected constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
return-void
.end method
.method public static a(ILorg/apache/log4j/c/ag;)Lorg/apache/log4j/c/ag;
.registers 2
sparse-switch p0, :sswitch_data_1a
:goto_3
return-object p1
:sswitch_4
sget-object p1, Lorg/apache/log4j/c/ag;->H:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_7
sget-object p1, Lorg/apache/log4j/c/ag;->I:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_a
sget-object p1, Lorg/apache/log4j/c/ag;->J:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_d
sget-object p1, Lorg/apache/log4j/c/ag;->K:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_10
sget-object p1, Lorg/apache/log4j/c/ag;->L:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_13
sget-object p1, Lorg/apache/log4j/c/ag;->M:Lorg/apache/log4j/c/ag;
goto :goto_3
:sswitch_16
sget-object p1, Lorg/apache/log4j/c/ag;->N:Lorg/apache/log4j/c/ag;
goto :goto_3
nop
:sswitch_data_1a
.sparse-switch
0x2af8 -> :sswitch_16
0x2ee0 -> :sswitch_13
0x32c8 -> :sswitch_10
0x36b0 -> :sswitch_d
0x4e20 -> :sswitch_a
0x5208 -> :sswitch_7
0x55f0 -> :sswitch_4
.end sparse-switch
.end method
.method public static b(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
.registers 4
if-nez p0, :cond_3
:goto_2
:cond_2
return-object p1
:cond_3
invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
const-string v1, "SEVERE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
sget-object p1, Lorg/apache/log4j/c/ag;->H:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_12
const-string v1, "WARNING"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
sget-object p1, Lorg/apache/log4j/c/ag;->I:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_1d
const-string v1, "INFO"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
sget-object p1, Lorg/apache/log4j/c/ag;->J:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_28
const-string v1, "CONFI"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_33
sget-object p1, Lorg/apache/log4j/c/ag;->K:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_33
const-string v1, "FINE"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3e
sget-object p1, Lorg/apache/log4j/c/ag;->L:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_3e
const-string v1, "FINER"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_49
sget-object p1, Lorg/apache/log4j/c/ag;->M:Lorg/apache/log4j/c/ag;
goto :goto_2
:cond_49
const-string v1, "FINEST"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2
sget-object p1, Lorg/apache/log4j/c/ag;->N:Lorg/apache/log4j/c/ag;
goto :goto_2
.end method
.method public static c(I)Lorg/apache/log4j/v;
.registers 2
sget-object v0, Lorg/apache/log4j/c/ag;->N:Lorg/apache/log4j/c/ag;
invoke-static {p0, v0}, Lorg/apache/log4j/c/ag;->a(ILorg/apache/log4j/c/ag;)Lorg/apache/log4j/c/ag;
move-result-object v0
return-object v0
.end method
.method public static d()Ljava/util/List;
.registers 2
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sget-object v1, Lorg/apache/log4j/c/ag;->L:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->M:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->N:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->J:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->K:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->I:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v1, Lorg/apache/log4j/c/ag;->H:Lorg/apache/log4j/c/ag;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object v0
.end method
.method public static d(Ljava/lang/String;)Lorg/apache/log4j/v;
.registers 2
sget-object v0, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-static {p0, v0}, Lorg/apache/log4j/c/ag;->b(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method