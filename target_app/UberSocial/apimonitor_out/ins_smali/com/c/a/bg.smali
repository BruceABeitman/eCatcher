.class final Lcom/c/a/bg;
.super Ljava/lang/Object;
.implements Lcom/c/a/at;
.field private static final e:[Ljava/lang/String;
.field private final a:Lcom/c/a/ac;
.field private final b:Lcom/c/a/bo;
.field private final c:Lcom/c/c;
.field private final d:I
.method static constructor <clinit>()V
.registers 14
const/16 v7, 0x5a
const/16 v8, 0x26
const/16 v9, 0x9
const/4 v12, 0x1
const/4 v3, 0x0
const/4 v0, 0x2
new-array v10, v0, [Ljava/lang/String;
const-string v0, "\u0017\"El\u0005\u00063IgU\u001d9E|\u0007\u0000?B3U"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_85
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
packed-switch v6, :pswitch_data_88
const/16 v6, 0x75
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
const-string v0, "\u00138I{\u0001\u0017>"
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
packed-switch v5, :pswitch_data_94
const/16 v5, 0x75
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
sput-object v10, Lcom/c/a/bg;->e:[Ljava/lang/String;
return-void
:pswitch_73
const/16 v6, 0x72
goto :goto_23
:pswitch_76
move v6, v7
goto :goto_23
:pswitch_78
move v6, v8
goto :goto_23
:pswitch_7a
move v6, v9
goto :goto_23
:pswitch_7c
const/16 v5, 0x72
goto :goto_55
:pswitch_7f
move v5, v7
goto :goto_55
:pswitch_81
move v5, v8
goto :goto_55
:pswitch_83
move v5, v9
goto :goto_55
:cond_85
move v2, v3
goto :goto_31
nop
:pswitch_data_94
.packed-switch 0x0
:pswitch_7c
:pswitch_7f
:pswitch_81
:pswitch_83
.end packed-switch
:pswitch_data_88
.packed-switch 0x0
:pswitch_73
:pswitch_76
:pswitch_78
:pswitch_7a
.end packed-switch
.end method
.method constructor <init>(Lcom/c/a/ac;Lcom/c/a/bo;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
iput-object p2, p0, Lcom/c/a/bg;->b:Lcom/c/a/bo;
invoke-static {}, Lcom/c/c;->d()Lcom/c/c;
move-result-object v0
iput-object v0, p0, Lcom/c/a/bg;->c:Lcom/c/c;
iput p3, p0, Lcom/c/a/bg;->d:I
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/c/a/bg;->c:Lcom/c/c;
invoke-virtual {v0}, Lcom/c/c;->a()V
return-void
.end method
.method public run()V
.registers 8
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
invoke-virtual {v0}, Lcom/c/a/ac;->d()Z
move-result v0
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/c/a/bg;->c:Lcom/c/c;
iget-object v2, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
invoke-virtual {v2}, Lcom/c/a/ac;->e()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
invoke-virtual {v3}, Lcom/c/a/ac;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/dd;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_9c
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_73
move-result-object v6
:goto_1b
:try_start_1b
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/c/a/bg;->b:Lcom/c/a/bo;
const/4 v1, -0x1
sget-object v2, Lcom/c/a/bg;->e:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-interface {v0, v1, v2}, Lcom/c/a/bo;->b(ILjava/lang/String;)V
:try_end_2c
.catchall {:try_start_1b .. :try_end_2c} :catchall_a7
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_aa
if-eqz v6, :cond_31
:try_start_2e
invoke-virtual {v6}, Lcom/c/dd;->f()V
:goto_31
:cond_31
:try_end_31
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_a3
return-void
:cond_32
:try_start_32
iget-object v0, p0, Lcom/c/a/bg;->c:Lcom/c/c;
iget-object v2, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
invoke-virtual {v2}, Lcom/c/a/ac;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/c/c;->a(Ljava/lang/String;)Lcom/c/dd;
:try_end_3d
.catchall {:try_start_32 .. :try_end_3d} :catchall_9c
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_73
move-result-object v6
goto :goto_1b
:try_start_3f
:cond_3f
invoke-virtual {v6}, Lcom/c/dd;->a()I
move-result v0
const/16 v1, 0xc8
if-eq v0, v1, :cond_5a
iget-object v0, p0, Lcom/c/a/bg;->b:Lcom/c/a/bo;
invoke-virtual {v6}, Lcom/c/dd;->a()I
move-result v1
const-string v2, ""
invoke-interface {v0, v1, v2}, Lcom/c/a/bo;->b(ILjava/lang/String;)V
:try_end_52
.catchall {:try_start_3f .. :try_end_52} :catchall_a7
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_52} :catch_aa
if-eqz v6, :cond_31
:try_start_54
invoke-virtual {v6}, Lcom/c/dd;->f()V
:try_end_57
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
goto :goto_31
:catch_58
move-exception v0
goto :goto_31
:cond_5a
:try_start_5a
iget-object v0, p0, Lcom/c/a/bg;->b:Lcom/c/a/bo;
iget-object v1, p0, Lcom/c/a/bg;->a:Lcom/c/a/ac;
invoke-virtual {v6}, Lcom/c/dd;->e()Ljava/io/InputStream;
move-result-object v2
invoke-virtual {v6}, Lcom/c/dd;->c()J
move-result-wide v3
iget v5, p0, Lcom/c/a/bg;->d:I
invoke-interface/range {v0 .. v5}, Lcom/c/a/bo;->a(Lcom/c/a/ac;Ljava/io/InputStream;JI)V
:try_end_6b
.catchall {:try_start_5a .. :try_end_6b} :catchall_a7
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6b} :catch_aa
if-eqz v6, :cond_31
:try_start_6d
invoke-virtual {v6}, Lcom/c/dd;->f()V
:try_end_70
.catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71
goto :goto_31
:catch_71
move-exception v0
goto :goto_31
:catch_73
move-exception v0
:goto_74
:try_start_74
iget-object v2, p0, Lcom/c/a/bg;->b:Lcom/c/a/bo;
const/4 v3, -0x1
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
sget-object v5, Lcom/c/a/bg;->e:[Ljava/lang/String;
const/4 v6, 0x0
aget-object v5, v5, v6
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v2, v3, v0}, Lcom/c/a/bo;->b(ILjava/lang/String;)V
:try_end_94
.catchall {:try_start_74 .. :try_end_94} :catchall_9c
if-eqz v1, :cond_31
:try_start_96
invoke-virtual {v1}, Lcom/c/dd;->f()V
:try_end_99
.catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a
goto :goto_31
:catch_9a
move-exception v0
goto :goto_31
:catchall_9c
move-exception v0
:goto_9d
if-eqz v1, :cond_a2
:try_start_9f
invoke-virtual {v1}, Lcom/c/dd;->f()V
:try_end_a2
.catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a5
:goto_a2
:cond_a2
throw v0
:catch_a3
move-exception v0
goto :goto_31
:catch_a5
move-exception v1
goto :goto_a2
:catchall_a7
move-exception v0
move-object v1, v6
goto :goto_9d
:catch_aa
move-exception v0
move-object v1, v6
goto :goto_74
.end method