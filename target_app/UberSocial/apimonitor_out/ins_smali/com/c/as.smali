.class public final Lcom/c/as;
.super Ljava/util/AbstractList;
.field private static final d:[Ljava/lang/String;
.field private a:I
.field private b:I
.field private final c:[Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 14
const/16 v8, 0x56
const/16 v7, 0x45
const/16 v9, 0x27
const/4 v12, 0x1
const/4 v3, 0x0
const/4 v0, 0x2
new-array v10, v0, [Ljava/lang/String;
const-string v0, "L{k\u0007"
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
const/16 v6, 0x61
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
const-string v0, "L+9SA\u0005+v|Q@"
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
const/16 v5, 0x61
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
sput-object v10, Lcom/c/as;->d:[Ljava/lang/String;
return-void
:pswitch_73
const/16 v6, 0x6c
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
const/16 v5, 0x6c
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
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V
new-array v0, p1, [Ljava/lang/Object;
iput-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
const/4 v0, 0x0
iput v0, p0, Lcom/c/as;->a:I
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v0, v0
iput v0, p0, Lcom/c/as;->b:I
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
iget v1, p0, Lcom/c/as;->b:I
iget v2, p0, Lcom/c/as;->a:I
add-int/2addr v1, v2
iget-object v2, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v2, v2
rem-int/2addr v1, v2
aget-object v0, v0, v1
return-object v0
.end method
.method public add(Ljava/lang/Object;)Z
.registers 4
iget v0, p0, Lcom/c/as;->b:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/c/as;->b:I
if-gez v0, :cond_f
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v0, v0
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/c/as;->b:I
:cond_f
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
iget v1, p0, Lcom/c/as;->b:I
aput-object p1, v0, v1
iget v0, p0, Lcom/c/as;->a:I
iget-object v1, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v1, v1
if-ge v0, v1, :cond_22
iget v0, p0, Lcom/c/as;->a:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/c/as;->a:I
:cond_22
const/4 v0, 0x1
return v0
.end method
.method public b()I
.registers 2
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v0, v0
return v0
.end method
.method public clear()V
.registers 6
const/4 v1, 0x0
sget v2, Lcom/c/co;->g:I
move v0, v1
:cond_4
iget-object v3, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v3, v3
if-ge v0, v3, :cond_12
iget-object v3, p0, Lcom/c/as;->c:[Ljava/lang/Object;
const/4 v4, 0x0
aput-object v4, v3, v0
add-int/lit8 v0, v0, 0x1
if-eqz v2, :cond_4
:cond_12
iput v1, p0, Lcom/c/as;->a:I
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v0, v0
iput v0, p0, Lcom/c/as;->b:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
sget v2, Lcom/c/co;->g:I
if-nez p1, :cond_6
:goto_5
:cond_5
return v0
:try_start_6
:cond_6
check-cast p1, Lcom/c/as;
iget v1, p0, Lcom/c/as;->a:I
iget v3, p1, Lcom/c/as;->a:I
if-ne v1, v3, :cond_5
move v1, v0
:cond_f
iget v3, p0, Lcom/c/as;->a:I
if-ge v1, v3, :cond_25
invoke-virtual {p0, v1}, Lcom/c/as;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p1, v1}, Lcom/c/as;->get(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
:try_end_1e
.catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_1e} :catch_27
move-result v3
if-eqz v3, :cond_5
add-int/lit8 v1, v1, 0x1
if-eqz v2, :cond_f
:cond_25
const/4 v0, 0x1
goto :goto_5
:catch_27
move-exception v1
goto :goto_5
.end method
.method public get(I)Ljava/lang/Object;
.registers 6
iget v0, p0, Lcom/c/as;->a:I
if-ge p1, v0, :cond_6
if-gez p1, :cond_28
:cond_6
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/as;->d:[Ljava/lang/String;
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/c/as;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
iget v1, p0, Lcom/c/as;->b:I
add-int/2addr v1, p1
iget-object v2, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v2, v2
rem-int/2addr v1, v2
aget-object v0, v0, v1
return-object v0
.end method
.method public hashCode()I
.registers 3
iget v0, p0, Lcom/c/as;->a:I
if-gtz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/c/as;->c:[Ljava/lang/Object;
iget v1, p0, Lcom/c/as;->b:I
aget-object v0, v0, v1
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public set(ILjava/lang/Object;)Ljava/lang/Object;
.registers 7
iget v0, p0, Lcom/c/as;->a:I
if-gt p1, v0, :cond_6
if-gez p1, :cond_2e
:cond_6
new-instance v0, Ljava/lang/IndexOutOfBoundsException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/as;->d:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/c/as;->a:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
iget v0, p0, Lcom/c/as;->b:I
add-int/2addr v0, p1
iget-object v1, p0, Lcom/c/as;->c:[Ljava/lang/Object;
array-length v1, v1
rem-int/2addr v0, v1
iget-object v1, p0, Lcom/c/as;->c:[Ljava/lang/Object;
aget-object v1, v1, v0
iget-object v2, p0, Lcom/c/as;->c:[Ljava/lang/Object;
aput-object p2, v2, v0
return-object v1
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/c/as;->a:I
return v0
.end method