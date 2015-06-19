.class public final Lcom/google/zxing/e/q;
.super Lcom/google/zxing/e/p;
.source "UPCEReader.java"
.field private static final a:[I
.field private static final f:[[I
.field private final g:[I
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0xa
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_20
sput-object v0, Lcom/google/zxing/e/q;->a:[I
const/4 v0, 0x2
new-array v0, v0, [[I
const/4 v1, 0x0
new-array v2, v3, [I
fill-array-data v2, :array_30
aput-object v2, v0, v1
const/4 v1, 0x1
new-array v2, v3, [I
fill-array-data v2, :array_48
aput-object v2, v0, v1
sput-object v0, Lcom/google/zxing/e/q;->f:[[I
return-void
:array_20
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
:array_48
.array-data 0x4
0x7t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xdt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
0x13t 0x0t 0x0t 0x0t
0x19t 0x0t 0x0t 0x0t
0x1ct 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x16t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
.end array-data
:array_30
.array-data 0x4
0x38t 0x0t 0x0t 0x0t
0x34t 0x0t 0x0t 0x0t
0x32t 0x0t 0x0t 0x0t
0x31t 0x0t 0x0t 0x0t
0x2ct 0x0t 0x0t 0x0t
0x26t 0x0t 0x0t 0x0t
0x23t 0x0t 0x0t 0x0t
0x2at 0x0t 0x0t 0x0t
0x29t 0x0t 0x0t 0x0t
0x25t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/zxing/e/p;-><init>()V
const/4 v0, 0x4
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/q;->g:[I
return-void
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const/4 v7, 0x5
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x0
const/4 v0, 0x6
new-array v0, v0, [C
const/4 v1, 0x1
const/4 v2, 0x7
invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0xc
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
aget-char v2, v0, v7
packed-switch v2, :pswitch_data_62
invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string v0, "0000"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_2b
const/4 v0, 0x7
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:pswitch_38
invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-string v2, "0000"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
goto :goto_2b
:pswitch_47
invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string v2, "00000"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
goto :goto_2b
:pswitch_53
invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
const-string v2, "00000"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aget-char v0, v0, v6
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_2b
nop
:pswitch_data_62
.packed-switch 0x30
:pswitch_38
:pswitch_38
:pswitch_38
:pswitch_47
:pswitch_53
.end packed-switch
.end method
.method protected final a(Lcom/google/zxing/b/a;[ILjava/lang/StringBuilder;)I
.registers 16
const/16 v11, 0xa
const/4 v10, 0x1
const/4 v2, 0x0
iget-object v6, p0, Lcom/google/zxing/e/q;->g:[I
aput v2, v6, v2
aput v2, v6, v10
const/4 v0, 0x2
aput v2, v6, v0
const/4 v0, 0x3
aput v2, v6, v0
iget v7, p1, Lcom/google/zxing/b/a;->b:I
aget v4, p2, v10
move v5, v2
move v0, v2
:goto_16
const/4 v1, 0x6
if-ge v5, v1, :cond_40
if-ge v4, v7, :cond_40
sget-object v1, Lcom/google/zxing/e/q;->e:[[I
invoke-static {p1, v6, v4, v1}, Lcom/google/zxing/e/q;->a(Lcom/google/zxing/b/a;[II[[I)I
move-result v8
rem-int/lit8 v1, v8, 0xa
add-int/lit8 v1, v1, 0x30
int-to-char v1, v1
invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
array-length v9, v6
move v1, v2
move v3, v4
:goto_2c
if-ge v1, v9, :cond_34
aget v4, v6, v1
add-int/2addr v3, v4
add-int/lit8 v1, v1, 0x1
goto :goto_2c
:cond_34
if-lt v8, v11, :cond_3b
rsub-int/lit8 v1, v5, 0x5
shl-int v1, v10, v1
or-int/2addr v0, v1
:cond_3b
add-int/lit8 v1, v5, 0x1
move v5, v1
move v4, v3
goto :goto_16
:cond_40
move v3, v2
:goto_41
if-gt v3, v10, :cond_62
move v1, v2
:goto_44
if-ge v1, v11, :cond_5e
sget-object v5, Lcom/google/zxing/e/q;->f:[[I
aget-object v5, v5, v3
aget v5, v5, v1
if-ne v0, v5, :cond_5b
add-int/lit8 v0, v3, 0x30
int-to-char v0, v0
invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x30
int-to-char v0, v0
invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
return v4
:cond_5b
add-int/lit8 v1, v1, 0x1
goto :goto_44
:cond_5e
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_41
:cond_62
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method protected final a(Ljava/lang/String;)Z
.registers 3
invoke-static {p1}, Lcom/google/zxing/e/q;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-super {p0, v0}, Lcom/google/zxing/e/p;->a(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method protected final a(Lcom/google/zxing/b/a;I)[I
.registers 5
const/4 v0, 0x1
sget-object v1, Lcom/google/zxing/e/q;->a:[I
invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/e/q;->a(Lcom/google/zxing/b/a;IZ[I)[I
move-result-object v0
return-object v0
.end method
.method final b()Lcom/google/zxing/a;
.registers 2
sget-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;
return-object v0
.end method