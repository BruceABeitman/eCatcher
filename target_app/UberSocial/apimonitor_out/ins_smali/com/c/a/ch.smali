.class  Lcom/c/a/ch;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private static final g:Lcom/c/bp;
.field private static final h:[Ljava/lang/String;
.field private final b:Lcom/c/a/cl;
.field private final c:Lcom/c/a/cz;
.field private d:Ljava/lang/Double;
.field private e:Ljava/lang/Double;
.field private f:Ljava/lang/Double;
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0x4c
const/16 v10, 0x44
const/4 v0, 0x1
const/4 v1, 0x0
const/16 v9, 0x56
const/4 v2, 0x4
new-array v11, v2, [Ljava/lang/String;
const-string v2, "\"9\u0016v!\"9\u00171,l\u00172v7-;\u0012:!?vJs ev\u000b8d$?\u0011\"+>/"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_123
move v4, v1
:cond_15
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_1a
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_126
move v7, v10
:goto_22
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_2e
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_1a
:cond_2e
move v3, v2
move-object v2, v5
:goto_30
if-gt v3, v4, :cond_15
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v1
const-string v2, "\"9\u0016v!\"9\u00171,l&\r!!>v\u00117)<:\u0007%dds\u0006\u007fd89B2!83\u0001\"d?\"\u0003\"-#8\u0003$="
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_120
move v4, v1
:cond_47
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_4c
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_132
move v7, v10
:goto_54
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_60
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_4c
:cond_60
move v3, v2
move-object v2, v5
:goto_62
if-gt v3, v4, :cond_47
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v0
const/4 v12, 0x2
const-string v2, "89\u00167(l7\u00015! 3\u001070%9\u000cv2-$\u000b7*/3B?7ls\u0004vl# \u0007$di2B%%!&\u000e37l?\u000cv,%%\u0016965\u007f"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_11d
move v4, v1
:cond_7a
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_7f
aget-char v13, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_13e
move v7, v10
:goto_87
xor-int/2addr v7, v13
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_93
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_7f
:cond_93
move v3, v2
move-object v2, v5
:goto_95
if-gt v3, v4, :cond_7a
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v12
const/4 v12, 0x3
const-string v2, "\"9\u0016v!\"9\u00171,l7\u00015! 3\u001070%9\u000cv7-;\u0012:!?vJs ev\u000b8d$?\u0011\"+>/"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_11b
move v4, v1
:cond_ad
move-object v5, v2
move v6, v4
move v14, v3
move-object v3, v2
move v2, v14
:goto_b2
aget-char v13, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_14a
move v7, v10
:goto_ba
xor-int/2addr v7, v13
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_c6
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_b2
:cond_c6
move v3, v2
move-object v2, v5
:goto_c8
if-gt v3, v4, :cond_ad
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v12
sput-object v11, Lcom/c/a/ch;->h:[Ljava/lang/String;
const-class v2, Lcom/c/a/ch;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_ea
:goto_df
sput-boolean v0, Lcom/c/a/ch;->a:Z
const-class v0, Lcom/c/a/ch;
invoke-static {v0}, Lcom/c/bp;->b(Ljava/lang/Class;)Lcom/c/bp;
move-result-object v0
sput-object v0, Lcom/c/a/ch;->g:Lcom/c/bp;
return-void
:cond_ea
move v0, v1
goto :goto_df
:pswitch_ec
move v7, v8
goto/16 :goto_22
:pswitch_ef
move v7, v9
goto/16 :goto_22
:pswitch_f2
const/16 v7, 0x62
goto/16 :goto_22
:pswitch_f6
move v7, v9
goto/16 :goto_22
:pswitch_f9
move v7, v8
goto/16 :goto_54
:pswitch_fc
move v7, v9
goto/16 :goto_54
:pswitch_ff
const/16 v7, 0x62
goto/16 :goto_54
:pswitch_103
move v7, v9
goto/16 :goto_54
:pswitch_106
move v7, v8
goto :goto_87
:pswitch_108
move v7, v9
goto/16 :goto_87
:pswitch_10b
const/16 v7, 0x62
goto/16 :goto_87
:pswitch_10f
move v7, v9
goto/16 :goto_87
:pswitch_112
move v7, v8
goto :goto_ba
:pswitch_114
move v7, v9
goto :goto_ba
:pswitch_116
const/16 v7, 0x62
goto :goto_ba
:pswitch_119
move v7, v9
goto :goto_ba
:cond_11b
move v4, v1
goto :goto_c8
:cond_11d
move v4, v1
goto/16 :goto_95
:cond_120
move v4, v1
goto/16 :goto_62
:cond_123
move v4, v1
goto/16 :goto_30
:pswitch_data_14a
.packed-switch 0x0
:pswitch_112
:pswitch_114
:pswitch_116
:pswitch_119
.end packed-switch
:pswitch_data_132
.packed-switch 0x0
:pswitch_f9
:pswitch_fc
:pswitch_ff
:pswitch_103
.end packed-switch
:pswitch_data_126
.packed-switch 0x0
:pswitch_ec
:pswitch_ef
:pswitch_f2
:pswitch_f6
.end packed-switch
:pswitch_data_13e
.packed-switch 0x0
:pswitch_106
:pswitch_108
:pswitch_10b
:pswitch_10f
.end packed-switch
.end method
.method constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/c/a/cl;
invoke-static {}, Lcom/c/a/ci;->u()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Lcom/c/a/cl;-><init>(J)V
iput-object v0, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
new-instance v0, Lcom/c/a/cz;
invoke-static {}, Lcom/c/a/ci;->w()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Lcom/c/a/cz;-><init>(J)V
iput-object v0, p0, Lcom/c/a/ch;->c:Lcom/c/a/cz;
return-void
.end method
.method private a(Lcom/c/ba;)Ljava/lang/Double;
.registers 15
sget-boolean v4, Lcom/c/a/d;->h_:Z
const/4 v2, 0x0
const-wide/16 v0, 0x0
iget-object v3, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-static {}, Lcom/c/a/ci;->v()J
move-result-wide v5
invoke-virtual {v3, v5, v6, p1}, Lcom/c/a/cl;->a(JLcom/c/ba;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move v3, v2
move-wide v11, v0
move-wide v1, v11
:goto_16
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v6
const/4 v7, 0x1
if-le v6, v7, :cond_68
invoke-static {v0}, Lcom/c/ad;->c(Ljava/util/Collection;)Ljava/lang/Double;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
int-to-double v9, v6
mul-double/2addr v7, v9
add-double v0, v1, v7
add-int v2, v3, v6
:goto_3b
if-eqz v4, :cond_64
:goto_3d
invoke-static {}, Lcom/c/a/ci;->x()I
move-result v3
if-ge v2, v3, :cond_5d
sget-object v0, Lcom/c/a/ch;->g:Lcom/c/bp;
sget-object v1, Lcom/c/a/ch;->h:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v1, v1, v3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v3, v4
invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/bp;->b(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_5c
return-object v0
:cond_5d
int-to-double v2, v2
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_5c
:cond_64
move v3, v2
move-wide v11, v0
move-wide v1, v11
goto :goto_16
:cond_68
move-wide v11, v1
move-wide v0, v11
move v2, v3
goto :goto_3b
:cond_6c
move-wide v11, v1
move-wide v0, v11
move v2, v3
goto :goto_3d
.end method
.method private b(Lcom/c/ba;)Ljava/lang/Double;
.registers 8
const/4 v4, 0x0
iget-object v0, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-virtual {v0}, Lcom/c/a/cl;->c()I
move-result v0
iget-object v1, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-virtual {v1}, Lcom/c/a/cl;->d()I
move-result v1
invoke-static {}, Lcom/c/a/ci;->y()I
move-result v2
if-ge v0, v2, :cond_33
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->b()Z
move-result v1
if-eqz v1, :cond_31
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
sget-object v2, Lcom/c/a/ch;->h:[Ljava/lang/String;
aget-object v2, v2, v4
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_31
const/4 v0, 0x0
:goto_32
return-object v0
:cond_33
int-to-double v2, v0
iget-object v0, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-virtual {v0}, Lcom/c/a/cl;->b()I
move-result v0
int-to-double v4, v0
div-double/2addr v2, v4
int-to-double v0, v1
div-double v0, v2, v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_32
.end method
.method private g()Ljava/lang/Double;
.registers 24
sget-boolean v10, Lcom/c/a/d;->h_:Z
invoke-static {}, Lcom/c/a/ci;->z()I
move-result v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/c/a/ch;->c:Lcom/c/a/cz;
invoke-virtual {v2}, Lcom/c/a/cz;->a()I
move-result v11
if-ge v11, v1, :cond_32
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->b()Z
move-result v1
if-eqz v1, :cond_30
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
sget-object v2, Lcom/c/a/ch;->h:[Ljava/lang/String;
const/4 v3, 0x3
aget-object v2, v2, v3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_30
const/4 v1, 0x0
:goto_31
return-object v1
:cond_32
const-wide/16 v5, 0x0
const-wide/16 v3, 0x0
const-wide/16 v1, 0x0
move-object/from16 v0, p0
iget-object v7, v0, Lcom/c/a/ch;->c:Lcom/c/a/cz;
invoke-virtual {v7}, Lcom/c/a/cz;->iterator()Ljava/util/Iterator;
move-result-object v12
move-wide/from16 v17, v1
move-wide/from16 v19, v3
move-wide/from16 v2, v17
move-wide/from16 v21, v5
move-wide/from16 v6, v21
move-wide/from16 v4, v19
:goto_4c
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_ae
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/c/r;
invoke-virtual {v1}, Lcom/c/r;->e()D
move-result-wide v13
const-wide/16 v8, 0x1
add-long/2addr v8, v6
sub-double v6, v13, v4
long-to-double v15, v8
div-double/2addr v6, v15
add-double/2addr v6, v4
sub-double v4, v13, v4
sub-double/2addr v13, v6
mul-double/2addr v4, v13
add-double v1, v2, v4
if-eqz v10, :cond_a7
:goto_6c
const-wide/16 v3, 0x1
cmp-long v3, v8, v3
if-lez v3, :cond_a4
const-wide/16 v3, 0x1
sub-long v3, v8, v3
long-to-double v3, v3
div-double/2addr v1, v3
:goto_78
sget-object v3, Lcom/c/a/ch;->g:Lcom/c/bp;
invoke-virtual {v3}, Lcom/c/bp;->b()Z
move-result v3
if-eqz v3, :cond_9f
sget-object v3, Lcom/c/a/ch;->g:Lcom/c/bp;
sget-object v4, Lcom/c/a/ch;->h:[Ljava/lang/String;
const/4 v5, 0x2
aget-object v4, v4, v5
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/c/bp;->b(Ljava/lang/String;)V
:cond_9f
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
goto :goto_31
:cond_a4
const-wide/16 v1, 0x0
goto :goto_78
:cond_a7
move-wide v4, v6
move-wide v6, v8
move-wide/from16 v17, v1
move-wide/from16 v2, v17
goto :goto_4c
:cond_ae
move-wide v8, v6
move-wide/from16 v17, v2
move-wide/from16 v1, v17
goto :goto_6c
.end method
.method  a(Ljava/util/List;Ljava/util/List;Lcom/c/ba;Ljava/util/List;)I
.registers 8
iget-object v0, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-virtual {v0, p1, p3, p4}, Lcom/c/a/cl;->a(Ljava/util/List;Lcom/c/ba;Ljava/util/List;)I
move-result v0
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
invoke-virtual {v1}, Lcom/c/bp;->a()Z
move-result v1
if-eqz v1, :cond_19
sget-object v1, Lcom/c/a/ch;->g:Lcom/c/bp;
iget-object v2, p0, Lcom/c/a/ch;->b:Lcom/c/a/cl;
invoke-virtual {v2}, Lcom/c/a/cl;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/bp;->a(Ljava/lang/String;)V
:cond_19
if-eqz p2, :cond_20
iget-object v1, p0, Lcom/c/a/ch;->c:Lcom/c/a/cz;
invoke-virtual {v1, p2}, Lcom/c/a/cz;->a(Ljava/util/Collection;)V
:cond_20
iget-object v1, p0, Lcom/c/a/ch;->c:Lcom/c/a/cz;
invoke-virtual {v1, p3}, Lcom/c/a/cz;->a(Lcom/c/ba;)I
invoke-direct {p0, p3}, Lcom/c/a/ch;->a(Lcom/c/ba;)Ljava/lang/Double;
move-result-object v1
iput-object v1, p0, Lcom/c/a/ch;->d:Ljava/lang/Double;
invoke-direct {p0, p3}, Lcom/c/a/ch;->b(Lcom/c/ba;)Ljava/lang/Double;
move-result-object v1
iput-object v1, p0, Lcom/c/a/ch;->e:Ljava/lang/Double;
invoke-direct {p0}, Lcom/c/a/ch;->g()Ljava/lang/Double;
move-result-object v1
iput-object v1, p0, Lcom/c/a/ch;->f:Ljava/lang/Double;
return v0
.end method
.method  a()Z
.registers 2
iget-object v0, p0, Lcom/c/a/ch;->d:Ljava/lang/Double;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/c/a/ch;->e:Ljava/lang/Double;
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method  b()Z
.registers 2
invoke-virtual {p0}, Lcom/c/a/ch;->a()Z
move-result v0
return v0
.end method
.method  c()Z
.registers 2
iget-object v0, p0, Lcom/c/a/ch;->f:Ljava/lang/Double;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method  d()Z
.registers 6
const/4 v0, 0x0
sget-boolean v1, Lcom/c/a/ch;->a:Z
if-nez v1, :cond_11
invoke-virtual {p0}, Lcom/c/a/ch;->a()Z
move-result v1
if-nez v1, :cond_11
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_11
invoke-virtual {p0}, Lcom/c/a/ch;->c()Z
move-result v1
if-eqz v1, :cond_1e
invoke-virtual {p0}, Lcom/c/a/ch;->f()Z
move-result v1
if-eqz v1, :cond_1e
:goto_1d
:cond_1d
return v0
:cond_1e
iget-object v1, p0, Lcom/c/a/ch;->d:Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
const-wide/high16 v3, 0x4000
cmpg-double v1, v1, v3
if-ltz v1, :cond_39
iget-object v1, p0, Lcom/c/a/ch;->e:Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
const-wide v3, 0x3fd8618618618618L
cmpl-double v1, v1, v3
if-lez v1, :cond_1d
:cond_39
const/4 v0, 0x1
goto :goto_1d
.end method
.method  e()Z
.registers 5
sget-boolean v0, Lcom/c/a/ch;->a:Z
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/c/a/ch;->b()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
iget-object v0, p0, Lcom/c/a/ch;->e:Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
const-wide v2, 0x3fd6db6db6db6db7L
cmpl-double v0, v0, v2
if-lez v0, :cond_21
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method  f()Z
.registers 5
sget-boolean v0, Lcom/c/a/ch;->a:Z
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/c/a/ch;->c()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
iget-object v0, p0, Lcom/c/a/ch;->f:Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
const-wide/high16 v2, 0x3ff0
cmpl-double v0, v0, v2
if-lez v0, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method