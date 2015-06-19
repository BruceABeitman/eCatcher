.class final Lcom/c/bt;
.super Lcom/c/bp;
.field private static c:Ljava/io/FileWriter;
.field private static final d:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 14
const/16 v9, 0x3b
const/16 v8, 0x37
const/16 v7, 0x1e
const/4 v3, 0x0
const/4 v12, 0x1
const/4 v0, 0x2
new-array v10, v0, [Ljava/lang/String;
const-string v0, ";T\u0013O93@\u0006\u001f zE\u0012\npj1\u0019\u001ee:\u0011{\u001b"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_97
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v13, v1
move-object v1, v0
move v0, v13
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_9a
const/16 v6, 0x54
:goto_23
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "1\u0016SX5l\u0001\u0018L$m\tX\\zj\u001dC"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_63
:cond_47
move-object v2, v0
move v4, v3
move v13, v1
move-object v1, v0
move v0, v13
:goto_4c
aget-char v6, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_a6
const/16 v5, 0x54
:goto_55
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_61
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_4c
:cond_61
move v1, v0
move-object v0, v2
:cond_63
if-gt v1, v3, :cond_47
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v12
sput-object v10, Lcom/c/bt;->d:[Ljava/lang/String;
:try_start_72
new-instance v0, Ljava/io/FileWriter;
sget-object v1, Lcom/c/bt;->d:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
sput-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
:try_end_7f
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7f} :catch_80
:goto_7f
return-void
:catch_80
move-exception v0
const/4 v0, 0x0
sput-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
goto :goto_7f
:pswitch_85
move v6, v7
goto :goto_23
:pswitch_87
const/16 v6, 0x65
goto :goto_23
:pswitch_8a
move v6, v8
goto :goto_23
:pswitch_8c
move v6, v9
goto :goto_23
:pswitch_8e
move v5, v7
goto :goto_55
:pswitch_90
const/16 v5, 0x65
goto :goto_55
:pswitch_93
move v5, v8
goto :goto_55
:pswitch_95
move v5, v9
goto :goto_55
:cond_97
move v2, v3
goto :goto_31
nop
:pswitch_data_9a
.packed-switch 0x0
:pswitch_85
:pswitch_87
:pswitch_8a
:pswitch_8c
.end packed-switch
:pswitch_data_a6
.packed-switch 0x0
:pswitch_8e
:pswitch_90
:pswitch_93
:pswitch_95
.end packed-switch
.end method
.method public constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/c/bp;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected a(Ljava/lang/Class;)Lcom/c/bp;
.registers 3
new-instance v0, Lcom/c/bt;
invoke-direct {v0, p1}, Lcom/c/bt;-><init>(Ljava/lang/Class;)V
return-object v0
.end method
.method protected a(Lcom/c/bc;Ljava/lang/String;)V
.registers 11
:try_start_0
const-class v1, Lcom/c/bt;
monitor-enter v1
:try_start_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3a
sget-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
if-eqz v0, :cond_35
sget-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
sget-object v2, Lcom/c/bt;->d:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
new-instance v5, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
sget-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
sget-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
const-string v2, "\n"
invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
sget-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
:cond_35
monitor-exit v1
:goto_36
return-void
:catchall_37
move-exception v0
monitor-exit v1
:try_start_39
:try_end_39
.catchall {:try_start_3 .. :try_end_39} :catchall_37
throw v0
:try_end_3a
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_3a
:catch_3a
move-exception v0
const/4 v0, 0x0
sput-object v0, Lcom/c/bt;->c:Ljava/io/FileWriter;
goto :goto_36
.end method