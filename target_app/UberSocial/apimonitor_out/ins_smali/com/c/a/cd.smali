.class public final Lcom/c/a/cd;
.super Ljava/lang/Object;
.implements Ljava/lang/Iterable;
.field static final synthetic a:Z
.field private static final g:[Ljava/lang/String;
.field private final b:Ljava/util/List;
.field private c:I
.field private d:I
.field private e:I
.field private final f:I
.method static constructor <clinit>()V
.registers 15
const/16 v10, 0x47
const/16 v8, 0x10
const/4 v0, 0x1
const/4 v1, 0x0
const/16 v9, 0x11
const/4 v2, 0x3
new-array v11, v2, [Ljava/lang/String;
const-string v2, "]db\u0008g~~e\\%u1r\u001d+|tu\\0xt\u007f\\3xt1\u0014.ce~\u000e>0xb\\\"}ae\u0005"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_d4
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
packed-switch v7, :pswitch_data_d8
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
const-string v2, "Dyt\\*qiB\u0015=u1|\t4d1s\u0019gwct\u001d3uc1\u0008/q\u007f1\u0006\"b~+\\"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_d2
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
packed-switch v7, :pswitch_data_e4
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
const-string v2, "Dyt\\4sp\u007f\\*ebe\\$\u007f\u007fe\u001d.~1p\u0008g|tp\u000f30~\u007f\u0019gQA1\u001350rt\u0010+0e~\u000b\"b"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_d0
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
packed-switch v7, :pswitch_data_f0
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
sput-object v11, Lcom/c/a/cd;->g:[Ljava/lang/String;
const-class v2, Lcom/c/a/cd;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_af
:goto_ac
sput-boolean v0, Lcom/c/a/cd;->a:Z
return-void
:cond_af
move v0, v1
goto :goto_ac
:pswitch_b1
move v7, v8
goto/16 :goto_22
:pswitch_b4
move v7, v9
goto/16 :goto_22
:pswitch_b7
move v7, v9
goto/16 :goto_22
:pswitch_ba
const/16 v7, 0x7c
goto/16 :goto_22
:pswitch_be
move v7, v8
goto :goto_54
:pswitch_c0
move v7, v9
goto :goto_54
:pswitch_c2
move v7, v9
goto :goto_54
:pswitch_c4
const/16 v7, 0x7c
goto :goto_54
:pswitch_c7
move v7, v8
goto :goto_87
:pswitch_c9
move v7, v9
goto :goto_87
:pswitch_cb
move v7, v9
goto :goto_87
:pswitch_cd
const/16 v7, 0x7c
goto :goto_87
:cond_d0
move v4, v1
goto :goto_95
:cond_d2
move v4, v1
goto :goto_62
:cond_d4
move v4, v1
goto/16 :goto_30
nop
:pswitch_data_f0
.packed-switch 0x0
:pswitch_c7
:pswitch_c9
:pswitch_cb
:pswitch_cd
.end packed-switch
:pswitch_data_d8
.packed-switch 0x0
:pswitch_b1
:pswitch_b4
:pswitch_b7
:pswitch_ba
.end packed-switch
:pswitch_data_e4
.packed-switch 0x0
:pswitch_be
:pswitch_c0
:pswitch_c2
:pswitch_c4
.end packed-switch
.end method
.method public constructor <init>(I)V
.registers 6
const/4 v3, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
iput p1, p0, Lcom/c/a/cd;->f:I
invoke-virtual {p0}, Lcom/c/a/cd;->g()V
iget v0, p0, Lcom/c/a/cd;->f:I
if-ge v0, v3, :cond_31
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/c/a/cd;->g:[Ljava/lang/String;
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/c/a/cd;->f:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_31
return-void
.end method
.method private static a(Lcom/c/a/cg;Lcom/c/a/cg;)I
.registers 5
if-nez p0, :cond_6
if-nez p1, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
if-eqz p0, :cond_37
if-eqz p1, :cond_37
invoke-virtual {p0}, Lcom/c/a/cg;->p()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p1}, Lcom/c/a/cg;->b()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/c/t;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/c/t;
move-result-object v0
invoke-virtual {p1}, Lcom/c/a/cg;->p()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0}, Lcom/c/a/cg;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-static {v1, v2}, Lcom/c/t;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/c/t;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/c/t;->b(Lcom/c/o;)I
move-result v0
goto :goto_5
:cond_37
if-eqz p0, :cond_3b
const/4 v0, 0x1
goto :goto_5
:cond_3b
const/4 v0, -0x1
goto :goto_5
.end method
.method private a(Ljava/util/ListIterator;Lcom/c/a/bv;)Ljava/util/ListIterator;
.registers 4
:cond_0
invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_13
invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
invoke-virtual {p2, v0}, Lcom/c/a/bv;->a(Lcom/c/a/bv;)Z
move-result v0
if-eqz v0, :cond_0
:goto_12
return-object p1
:cond_13
const/4 p1, 0x0
goto :goto_12
.end method
.method private a(Ljava/util/Iterator;)V
.registers 3
sget-boolean v0, Lcom/c/a/cd;->a:Z
if-nez v0, :cond_10
invoke-virtual {p0}, Lcom/c/a/cd;->a()Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
sget-boolean v0, Lcom/c/a/cd;->a:Z
if-nez v0, :cond_20
invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_20
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_20
invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
invoke-direct {p0, v0}, Lcom/c/a/cd;->f(Lcom/c/a/bv;)V
invoke-interface {p1}, Ljava/util/Iterator;->remove()V
return-void
.end method
.method private a(Ljava/util/ListIterator;)V
.registers 3
sget-boolean v0, Lcom/c/a/cd;->a:Z
if-nez v0, :cond_10
invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_10
invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/c/a/cd;->a(Ljava/util/Iterator;)V
return-void
.end method
.method private b(Lcom/c/a/bv;)V
.registers 4
invoke-direct {p0, p1}, Lcom/c/a/cd;->e(Lcom/c/a/bv;)V
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
return-void
.end method
.method private c(Lcom/c/a/bv;)V
.registers 6
sget-boolean v0, Lcom/c/a/d;->h_:Z
invoke-virtual {p1}, Lcom/c/a/bv;->f()I
move-result v1
:cond_6
invoke-virtual {p0}, Lcom/c/a/cd;->b()I
move-result v2
add-int/2addr v2, v1
iget v3, p0, Lcom/c/a/cd;->f:I
if-le v2, v3, :cond_14
invoke-direct {p0}, Lcom/c/a/cd;->j()V
if-eqz v0, :cond_6
:cond_14
return-void
.end method
.method private d(Lcom/c/a/bv;)V
.registers 7
sget-boolean v1, Lcom/c/a/d;->h_:Z
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v2
:cond_8
invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
invoke-virtual {v0}, Lcom/c/a/bv;->f()I
move-result v3
invoke-virtual {p1}, Lcom/c/a/bv;->f()I
move-result v4
if-ge v3, v4, :cond_27
invoke-virtual {v0, p1}, Lcom/c/a/bv;->a(Lcom/c/a/bv;)Z
move-result v0
if-eqz v0, :cond_27
invoke-direct {p0, v2}, Lcom/c/a/cd;->a(Ljava/util/ListIterator;)V
:cond_27
if-eqz v1, :cond_8
:cond_29
return-void
.end method
.method private e(Lcom/c/a/bv;)V
.registers 4
iget v0, p0, Lcom/c/a/cd;->c:I
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->c:I
iget v0, p0, Lcom/c/a/cd;->d:I
invoke-virtual {p1}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->d:I
iget v0, p0, Lcom/c/a/cd;->e:I
invoke-virtual {p1}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->e:I
return-void
.end method
.method private f(Lcom/c/a/bv;)V
.registers 4
iget v0, p0, Lcom/c/a/cd;->c:I
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->c:I
iget v0, p0, Lcom/c/a/cd;->d:I
invoke-virtual {p1}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->d:I
iget v0, p0, Lcom/c/a/cd;->e:I
invoke-virtual {p1}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
sub-int/2addr v0, v1
iput v0, p0, Lcom/c/a/cd;->e:I
return-void
.end method
.method private i()V
.registers 2
invoke-virtual {p0}, Lcom/c/a/cd;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-direct {p0, v0}, Lcom/c/a/cd;->a(Ljava/util/Iterator;)V
return-void
.end method
.method private j()V
.registers 2
invoke-virtual {p0}, Lcom/c/a/cd;->h()Ljava/util/ListIterator;
move-result-object v0
invoke-direct {p0, v0}, Lcom/c/a/cd;->a(Ljava/util/ListIterator;)V
return-void
.end method
.method private k()V
.registers 11
const/4 v3, 0x0
const/4 v9, 0x0
sget-boolean v4, Lcom/c/a/d;->h_:Z
invoke-virtual {p0}, Lcom/c/a/cd;->a()Z
move-result v0
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v0
invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
invoke-virtual {p0}, Lcom/c/a/cd;->f()Lcom/c/a/bv;
move-result-object v5
invoke-direct {p0, v0, v5}, Lcom/c/a/cd;->a(Ljava/util/ListIterator;Lcom/c/a/bv;)Ljava/util/ListIterator;
move-result-object v6
if-eqz v6, :cond_a
invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
invoke-virtual {v0}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v5}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v7
invoke-virtual {v0}, Lcom/c/a/bv;->f()I
move-result v2
invoke-virtual {v5}, Lcom/c/a/bv;->f()I
move-result v8
if-ne v2, v8, :cond_5f
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_73
invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/c/a/cg;
move-object v2, v1
:goto_43
invoke-interface {v7}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_75
invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/c/a/cg;
:goto_4f
invoke-static {v2, v1}, Lcom/c/a/cd;->a(Lcom/c/a/cg;Lcom/c/a/cg;)I
move-result v1
if-lez v1, :cond_5a
invoke-direct {p0}, Lcom/c/a/cd;->i()V
if-eqz v4, :cond_a
:cond_5a
invoke-direct {p0, v6}, Lcom/c/a/cd;->a(Ljava/util/Iterator;)V
if-eqz v4, :cond_a
:cond_5f
sget-boolean v1, Lcom/c/a/cd;->a:Z
if-nez v1, :cond_77
invoke-virtual {v0}, Lcom/c/a/bv;->f()I
move-result v0
invoke-virtual {v5}, Lcom/c/a/bv;->f()I
move-result v1
if-gt v0, v1, :cond_77
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_73
move-object v2, v3
goto :goto_43
:cond_75
move-object v1, v3
goto :goto_4f
:cond_77
invoke-direct {p0}, Lcom/c/a/cd;->i()V
goto :goto_a
.end method
.method public a(Lcom/c/a/bv;)V
.registers 5
invoke-virtual {p1}, Lcom/c/a/bv;->g()Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Ljava/lang/IllegalArgumentException;
sget-object v1, Lcom/c/a/cd;->g:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
invoke-direct {p0}, Lcom/c/a/cd;->k()V
invoke-direct {p0, p1}, Lcom/c/a/cd;->d(Lcom/c/a/bv;)V
invoke-direct {p0, p1}, Lcom/c/a/cd;->c(Lcom/c/a/bv;)V
invoke-direct {p0, p1}, Lcom/c/a/cd;->b(Lcom/c/a/bv;)V
return-void
.end method
.method public a()Z
.registers 2
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public b()I
.registers 3
invoke-virtual {p0}, Lcom/c/a/cd;->c()I
move-result v0
invoke-virtual {p0}, Lcom/c/a/cd;->d()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0}, Lcom/c/a/cd;->e()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/c/a/cd;->c:I
return v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/c/a/cd;->d:I
return v0
.end method
.method public e()I
.registers 2
iget v0, p0, Lcom/c/a/cd;->e:I
return v0
.end method
.method public f()Lcom/c/a/bv;
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_13
new-instance v0, Ljava/lang/IllegalStateException;
sget-object v1, Lcom/c/a/cd;->g:[Ljava/lang/String;
aget-object v1, v1, v2
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
return-object v0
.end method
.method public g()V
.registers 2
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
const/4 v0, 0x0
iput v0, p0, Lcom/c/a/cd;->e:I
iput v0, p0, Lcom/c/a/cd;->d:I
iput v0, p0, Lcom/c/a/cd;->c:I
return-void
.end method
.method public h()Ljava/util/ListIterator;
.registers 3
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
iget-object v1, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;
move-result-object v0
return-object v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/c/a/cd;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method