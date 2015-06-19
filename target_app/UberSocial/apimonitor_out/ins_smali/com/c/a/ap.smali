.class public final Lcom/c/a/ap;
.super Ljava/lang/Object;
.field private static final g:[Ljava/lang/String;
.field private final a:Lcom/c/bp;
.field private b:Lcom/c/a/j;
.field private c:Ljava/util/List;
.field private d:Lcom/c/a/be;
.field private e:Lcom/c/a/bs;
.field private f:Lcom/c/a/am;
.method static constructor <clinit>()V
.registers 15
const/16 v7, 0x62
const/16 v8, 0x2c
const/16 v9, 0x1a
const/4 v13, 0x1
const/4 v3, 0x0
const/4 v0, 0x5
new-array v10, v0, [Ljava/lang/String;
const-string v0, "\u0016E\u0014\u0006t\u0005\u000c\u0008\u000eh\u0003A\u001d\u001b\u007f\u0010_X\u000cr\u0003B\u001f\n~"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_152
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_156
move v6, v9
:goto_22
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2e
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2e
move v1, v0
move-object v0, v4
:goto_30
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "\u0016E\u0014\u0006t\u0005|\u0019\u001d{\u000f_X\u0002o\u0011XX\u0001u\u0016\u000c\u001a\n:\u000cY\u0014\u0003"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_14f
move v2, v3
:cond_47
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4c
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_162
move v6, v9
:goto_54
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_60
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4c
:cond_60
move v1, v0
move-object v0, v4
:goto_62
if-gt v1, v2, :cond_47
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "\u000bB\u000c\nh\u0010Y\u0008\u001b\u007f\u0006"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_14c
move v2, v3
:cond_7a
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_7f
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_16e
move v6, v9
:goto_87
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_93
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_7f
:cond_93
move v1, v0
move-object v0, v4
:goto_95
if-gt v1, v2, :cond_7a
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x3
const-string v0, "\u000eC\u001b\u000evBJ\u0011\u0003\u007fBY\u000b\u000e}\u0007\u000c\u0011\u001c:\u0006E\u000b\u000ex\u000eI\u001c"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_149
move v2, v3
:cond_ad
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_b2
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_17a
move v6, v9
:goto_ba
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_c6
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_b2
:cond_c6
move v1, v0
move-object v0, v4
:goto_c8
if-gt v1, v2, :cond_ad
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x4
const-string v0, "\u0016E\u0014\u0006t\u0005\u000c\u0011\u001c:\u0006E\u000b\u000ex\u000eI\u001cO2\u000cCX\u000eo\u0016D\u001d\u0001n\u000bO\u0019\u001bs\rBQ"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_fa
:cond_df
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_e4
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_186
move v5, v9
:goto_ec
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_f8
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_e4
:cond_f8
move v1, v0
move-object v0, v2
:cond_fa
if-gt v1, v3, :cond_df
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/a/ap;->g:[Ljava/lang/String;
return-void
:pswitch_10a
move v6, v7
goto/16 :goto_22
:pswitch_10d
move v6, v8
goto/16 :goto_22
:pswitch_110
const/16 v6, 0x78
goto/16 :goto_22
:pswitch_114
const/16 v6, 0x6f
goto/16 :goto_22
:pswitch_118
move v6, v7
goto/16 :goto_54
:pswitch_11b
move v6, v8
goto/16 :goto_54
:pswitch_11e
const/16 v6, 0x78
goto/16 :goto_54
:pswitch_122
const/16 v6, 0x6f
goto/16 :goto_54
:pswitch_126
move v6, v7
goto/16 :goto_87
:pswitch_129
move v6, v8
goto/16 :goto_87
:pswitch_12c
const/16 v6, 0x78
goto/16 :goto_87
:pswitch_130
const/16 v6, 0x6f
goto/16 :goto_87
:pswitch_134
move v6, v7
goto :goto_ba
:pswitch_136
move v6, v8
goto :goto_ba
:pswitch_138
const/16 v6, 0x78
goto :goto_ba
:pswitch_13b
const/16 v6, 0x6f
goto/16 :goto_ba
:pswitch_13f
move v5, v7
goto :goto_ec
:pswitch_141
move v5, v8
goto :goto_ec
:pswitch_143
const/16 v5, 0x78
goto :goto_ec
:pswitch_146
const/16 v5, 0x6f
goto :goto_ec
:cond_149
move v2, v3
goto/16 :goto_c8
:cond_14c
move v2, v3
goto/16 :goto_95
:cond_14f
move v2, v3
goto/16 :goto_62
:cond_152
move v2, v3
goto/16 :goto_30
nop
:pswitch_data_156
.packed-switch 0x0
:pswitch_10a
:pswitch_10d
:pswitch_110
:pswitch_114
.end packed-switch
:pswitch_data_16e
.packed-switch 0x0
:pswitch_126
:pswitch_129
:pswitch_12c
:pswitch_130
.end packed-switch
:pswitch_data_162
.packed-switch 0x0
:pswitch_118
:pswitch_11b
:pswitch_11e
:pswitch_122
.end packed-switch
:pswitch_data_17a
.packed-switch 0x0
:pswitch_134
:pswitch_136
:pswitch_138
:pswitch_13b
.end packed-switch
:pswitch_data_186
.packed-switch 0x0
:pswitch_13f
:pswitch_141
:pswitch_143
:pswitch_146
.end packed-switch
.end method
.method public constructor <init>(Lcom/c/a/j;Ljava/util/List;Lcom/c/a/bs;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/c/a/bs;->a:Lcom/c/a/bs;
iput-object v0, p0, Lcom/c/a/ap;->e:Lcom/c/a/bs;
const-class v0, Lcom/c/a/ap;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
iput-object v0, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
invoke-virtual {p0, p1}, Lcom/c/a/ap;->a(Lcom/c/a/j;)V
invoke-virtual {p0, p3}, Lcom/c/a/ap;->a(Lcom/c/a/bs;)V
invoke-virtual {p0, p2}, Lcom/c/a/ap;->a(Ljava/util/List;)V
return-void
.end method
.method private d()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
return-void
.end method
.method private e()V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
invoke-virtual {v0}, Lcom/c/a/am;->a()V
:try_end_9
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_d
:cond_9
:goto_9
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
return-void
:catch_d
move-exception v0
iget-object v1, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->b()Z
move-result v1
if-eqz v1, :cond_9
iget-object v1, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
sget-object v2, Lcom/c/a/ap;->g:[Ljava/lang/String;
const/4 v3, 0x2
aget-object v2, v2, v3
invoke-virtual {v1, v2, v0}, Lcom/c/bp;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public a()V
.registers 7
sget-boolean v3, Lcom/c/a/be;->b:Z
iget-object v0, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
if-nez v0, :cond_34
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
if-eqz v0, :cond_34
new-instance v0, Lcom/c/a/be;
iget-object v1, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-direct {v0, v1}, Lcom/c/a/be;-><init>(Lcom/c/a/j;)V
iput-object v0, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
const/4 v0, 0x0
iget-object v1, p0, Lcom/c/a/ap;->c:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_1f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_34
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v5, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
add-int/lit8 v2, v1, 0x1
invoke-virtual {v5, v1, v0}, Lcom/c/a/be;->a(ILjava/lang/String;)Lcom/c/a/az;
if-eqz v3, :cond_48
:cond_34
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
if-nez v0, :cond_47
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
if-eqz v0, :cond_47
new-instance v0, Lcom/c/a/am;
iget-object v1, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
iget-object v2, p0, Lcom/c/a/ap;->e:Lcom/c/a/bs;
invoke-direct {v0, v1, v2}, Lcom/c/a/am;-><init>(Lcom/c/a/j;Lcom/c/a/bs;)V
iput-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
:cond_47
return-void
:cond_48
move v1, v2
goto :goto_1f
.end method
.method public a(Lcom/c/a/bs;)V
.registers 5
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
sget-object v1, Lcom/c/a/ap;->g:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/c/a/ap;->e:Lcom/c/a/bs;
invoke-virtual {v0, p1}, Lcom/c/a/bs;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
:goto_15
return-void
:cond_16
invoke-direct {p0}, Lcom/c/a/ap;->e()V
iput-object p1, p0, Lcom/c/a/ap;->e:Lcom/c/a/bs;
iget-object v0, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/ap;->g:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
goto :goto_15
.end method
.method public a(Lcom/c/a/bv;Ljava/util/ArrayList;Z)V
.registers 8
invoke-virtual {p1}, Lcom/c/a/bv;->g()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/c/a/ap;->a()V
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
invoke-virtual {v0, p1, p2, p3}, Lcom/c/a/am;->a(Lcom/c/a/bv;Ljava/util/ArrayList;Z)V
invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_6
:cond_19
iget-object v0, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
if-eqz v0, :cond_6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/c/a/ap;->d:Lcom/c/a/be;
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v1, v2, p2, v0, v3}, Lcom/c/a/be;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/c/a/az;
goto :goto_6
.end method
.method public a(Lcom/c/a/j;)V
.registers 5
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
if-eqz v0, :cond_6
if-nez p1, :cond_14
:cond_6
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
if-eq v0, p1, :cond_22
invoke-direct {p0}, Lcom/c/a/ap;->d()V
invoke-direct {p0}, Lcom/c/a/ap;->e()V
sget-boolean v0, Lcom/c/a/be;->b:Z
if-eqz v0, :cond_22
:cond_14
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-virtual {v0, p1}, Lcom/c/a/j;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_22
invoke-direct {p0}, Lcom/c/a/ap;->d()V
invoke-direct {p0}, Lcom/c/a/ap;->e()V
:cond_22
iput-object p1, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-virtual {v0}, Lcom/c/a/j;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-virtual {v0}, Lcom/c/a/j;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-virtual {v0}, Lcom/c/a/j;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
invoke-virtual {v0}, Lcom/c/a/j;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_5d
:cond_50
iget-object v0, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/ap;->g:[Ljava/lang/String;
const/4 v2, 0x4
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/ap;->b:Lcom/c/a/j;
:cond_5d
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 5
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
if-eqz v0, :cond_6
if-nez p1, :cond_11
:cond_6
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
if-eq v0, p1, :cond_1c
invoke-direct {p0}, Lcom/c/a/ap;->d()V
sget-boolean v0, Lcom/c/a/be;->b:Z
if-eqz v0, :cond_1c
:cond_11
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1c
invoke-direct {p0}, Lcom/c/a/ap;->d()V
:cond_1c
iput-object p1, p0, Lcom/c/a/ap;->c:Ljava/util/List;
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_37
:cond_2a
iget-object v0, p0, Lcom/c/a/ap;->a:Lcom/c/bp;
sget-object v1, Lcom/c/a/ap;->g:[Ljava/lang/String;
const/4 v2, 0x3
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/a/ap;->c:Ljava/util/List;
:cond_37
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
invoke-virtual {v0}, Lcom/c/a/am;->c()V
:cond_9
return-void
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/c/a/ap;->f:Lcom/c/a/am;
invoke-virtual {v0}, Lcom/c/a/am;->b()V
:cond_9
return-void
.end method