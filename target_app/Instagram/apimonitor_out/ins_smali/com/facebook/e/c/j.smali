.class  Lcom/facebook/e/c/j;
.super Ljava/lang/Object;
.source "TraceFormatter.java"
.field private static final a:Ljava/lang/Class;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/e/c/j;
sput-object v0, Lcom/facebook/e/c/j;->a:Ljava/lang/Class;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(ILjava/util/List;Landroid/support/v4/c/d;)Ljava/lang/String;
.registers 22
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-wide/16 v5, -0x1
invoke-static {}, Lcom/facebook/e/c/n;->a()J
move-result-wide v10
new-instance v12, Ljava/util/LinkedList;
invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V
const/4 v4, 0x0
const-wide/16 v2, -0x1
const/4 v1, 0x0
move v7, v1
move/from16 v16, v4
move-wide/from16 v17, v5
move-wide/from16 v4, v17
move/from16 v6, v16
:goto_1d
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v1
if-ge v7, v1, :cond_aa
move-object/from16 v0, p1
invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/e/c/g;
if-eqz v1, :cond_fd
if-nez v6, :cond_106
invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I
move-result v8
move/from16 v0, p0
if-ne v8, v0, :cond_fd
const/4 v6, 0x1
invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J
move-result-wide v2
move v8, v6
:goto_3d
invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()I
move-result v13
sget v6, Lcom/facebook/e/c/i;->f:I
if-eq v13, v6, :cond_94
sget v6, Lcom/facebook/e/c/i;->b:I
if-eq v13, v6, :cond_4d
sget v6, Lcom/facebook/e/c/i;->d:I
if-ne v13, v6, :cond_69
:cond_4d
invoke-virtual {v12}, Ljava/util/LinkedList;->size()I
move-result v6
if-nez v6, :cond_a6
sget-object v6, Lcom/facebook/e/c/j;->a:Ljava/lang/Class;
new-instance v14, Ljava/lang/StringBuilder;
const-string v15, "Trace contains a stop event without a corresponding start: "
invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p1
invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v6, v14}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
:cond_69
:goto_69
const-string v6, " "
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v12}, Lcom/facebook/e/c/j;->a(Ljava/util/List;)Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v1 .. v6}, Lcom/facebook/e/c/g;->a(JJLjava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, " "
invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J
move-result-wide v4
const-string v1, "\n"
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget v1, Lcom/facebook/e/c/i;->a:I
if-eq v13, v1, :cond_8f
sget v1, Lcom/facebook/e/c/i;->c:I
if-ne v13, v1, :cond_94
:cond_8f
const-string v1, "|  "
invoke-virtual {v12, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_94
move-wide/from16 v16, v4
move-wide/from16 v5, v16
move v4, v8
:goto_99
add-int/lit8 v1, v7, 0x1
move v7, v1
move/from16 v16, v4
move-wide/from16 v17, v5
move-wide/from16 v4, v17
move/from16 v6, v16
goto/16 :goto_1d
:cond_a6
invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
goto :goto_69
:cond_aa
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/c/d;->a()I
move-result v1
if-eqz v1, :cond_f8
const-string v1, " Unstopped timers:\n"
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/c/d;->a()I
move-result v3
const/4 v1, 0x0
move v2, v1
:goto_bb
if-ge v2, v3, :cond_f8
move-object/from16 v0, p2
invoke-virtual {v0, v2}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/e/c/g;
invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J
move-result-wide v4
const-string v6, "  "
invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const-string v1, " ("
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sub-long v6, v10, v4
const-wide/32 v12, 0xf4240
div-long/2addr v6, v12
invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, " ms, started at "
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-wide/32 v6, 0xf4240
div-long/2addr v4, v6
invoke-static {v4, v5}, Lcom/facebook/e/c/g;->a(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\n"
invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_bb
:cond_f8
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_fd
move/from16 v16, v6
move-wide/from16 v17, v4
move-wide/from16 v5, v17
move/from16 v4, v16
goto :goto_99
:cond_106
move v8, v6
goto/16 :goto_3d
.end method
.method private static a(Ljava/util/List;)Ljava/lang/String;
.registers 4
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_9
:cond_19
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static a(IILjava/lang/String;Ljava/util/List;Landroid/support/v4/c/d;)V
.registers 16
const/16 v10, 0xfa0
const/4 v5, 0x0
const/4 v2, 0x0
invoke-static {p1}, Lcom/facebook/e/a/a;->b(I)Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-static {p0, p3, p4}, Lcom/facebook/e/c/j;->a(ILjava/util/List;Landroid/support/v4/c/d;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-le v1, v10, :cond_75
const-string v1, "\n"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v7, v2, v5, v5}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I
move-result v0
move v1, v2
move v3, v2
:goto_2f
array-length v4, v6
if-ge v3, v4, :cond_6b
if-eqz v3, :cond_55
add-int/lit8 v4, v3, -0x1
aget-object v4, v6, v4
:goto_38
aget-object v8, v6, v3
if-eqz v0, :cond_43
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v9
add-int/2addr v9, v0
if-ge v9, v10, :cond_57
:cond_43
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, "\n"
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v4
add-int/lit8 v4, v4, 0x1
add-int/2addr v0, v4
add-int/lit8 v3, v3, 0x1
goto :goto_2f
:cond_55
move-object v4, v5
goto :goto_38
:cond_57
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->setLength(I)V
add-int/lit8 v1, v1, 0x1
invoke-static {v7, v1, v4, v8}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I
move-result v0
goto :goto_2f
:cond_6b
if-lez v0, :cond_a
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_a
:cond_75
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v1}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, p2, v0}, Lcom/facebook/e/a/a;->a(ILjava/lang/String;Ljava/lang/String;)V
goto :goto_a
.end method
.method private static a(Ljava/lang/StringBuilder;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {p0, v0, v1, v1}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private static a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V
.registers 6
const-string v0, "Thread trace:("
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v0, 0xa
if-ge p1, v0, :cond_33
const-string v0, "    "
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_18
:cond_18
const-string v0, "                 "
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0, p2, p3}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, " .                   TOTAL   THREAD  "
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0, p2, p3}, Lcom/facebook/e/c/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "\n"
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
return-void
:cond_33
const/16 v0, 0x64
if-ge p1, v0, :cond_3d
const-string v0, "   "
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
:cond_3d
const/16 v0, 0x3e8
if-ge p1, v0, :cond_18
const-string v0, "  "
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
.end method
.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
const/16 v10, 0x7c
const/4 v4, 0x2
const/4 v1, 0x0
const/4 v3, 0x1
if-eqz p1, :cond_9
if-nez p2, :cond_a
:cond_9
return-void
:cond_a
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v8
move v7, v1
move v2, v1
move v5, v1
:goto_19
if-ge v7, v8, :cond_9
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-ge v7, v0, :cond_66
invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C
move-result v0
:goto_25
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v6
if-ge v7, v6, :cond_64
invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C
move-result v6
:goto_2f
if-nez v5, :cond_46
if-ne v0, v10, :cond_46
move v5, v3
:goto_34
:cond_34
if-nez v2, :cond_52
if-ne v6, v10, :cond_52
move v2, v3
:cond_39
:goto_39
if-ne v5, v4, :cond_3d
if-eq v2, v4, :cond_9
:cond_3d
if-ne v5, v3, :cond_5e
invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_42
:cond_42
add-int/lit8 v0, v7, 0x1
move v7, v0
goto :goto_19
:cond_46
if-ne v5, v3, :cond_34
invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v9
if-nez v9, :cond_34
if-eq v0, v10, :cond_34
move v5, v4
goto :goto_34
:cond_52
if-ne v2, v3, :cond_39
invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v9
if-nez v9, :cond_39
if-eq v6, v10, :cond_39
move v2, v4
goto :goto_39
:cond_5e
if-ne v2, v3, :cond_42
invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_42
:cond_64
move v6, v1
goto :goto_2f
:cond_66
move v0, v1
goto :goto_25
.end method