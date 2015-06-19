.class public final Lcom/c/bq;
.super Ljava/lang/Object;
.implements Ljava/lang/Comparable;
.field public static a:I
.field private static final b:[C
.field private static final d:[Ljava/lang/String;
.field private c:J
.method static constructor <clinit>()V
.registers 14
const/16 v8, 0x2b
const/16 v7, 0x21
const/16 v9, 0xe
const/4 v12, 0x1
const/4 v3, 0x0
const/4 v0, 0x2
new-array v10, v0, [Ljava/lang/String;
const-string v0, "l!\u0008X.B\u0001%EaU@)N.O\u0005,JzH\u0016."
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_8e
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
packed-switch v6, :pswitch_data_90
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
const-string v0, "\u0001\t8\u000bgO\u0016*GgE@\'N`F\u0014#"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v12, :cond_61
:cond_46
move-object v2, v0
move v4, v3
move v13, v1
move-object v1, v0
move v0, v13
:goto_4b
aget-char v6, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_9c
move v5, v9
:goto_53
xor-int/2addr v5, v6
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_5f
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_4b
:cond_5f
move v1, v0
move-object v0, v2
:cond_61
if-gt v1, v3, :cond_46
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v12
sput-object v10, Lcom/c/bq;->d:[Ljava/lang/String;
const/16 v0, 0x10
new-array v0, v0, [C
fill-array-data v0, :array_a8
sput-object v0, Lcom/c/bq;->b:[C
return-void
:pswitch_7a
move v6, v7
goto :goto_22
:pswitch_7c
const/16 v6, 0x60
goto :goto_22
:pswitch_7f
const/16 v6, 0x4b
goto :goto_22
:pswitch_82
move v6, v8
goto :goto_22
:pswitch_84
move v5, v7
goto :goto_53
:pswitch_86
const/16 v5, 0x60
goto :goto_53
:pswitch_89
const/16 v5, 0x4b
goto :goto_53
:pswitch_8c
move v5, v8
goto :goto_53
:cond_8e
move v2, v3
goto :goto_30
:pswitch_data_9c
.packed-switch 0x0
:pswitch_84
:pswitch_86
:pswitch_89
:pswitch_8c
.end packed-switch
:array_a8
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
0x45t 0x0t
0x46t 0x0t
.end array-data
:pswitch_data_90
.packed-switch 0x0
:pswitch_7a
:pswitch_7c
:pswitch_7f
:pswitch_82
.end packed-switch
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 9
const/4 v1, 0x0
const/16 v6, 0xc
sget v2, Lcom/c/bq;->a:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-eq v0, v6, :cond_47
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V
move v0, v1
:cond_14
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v4
if-ge v0, v4, :cond_3d
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x30
if-lt v4, v5, :cond_26
const/16 v5, 0x39
if-le v4, v5, :cond_36
:cond_26
const/16 v5, 0x61
if-lt v4, v5, :cond_2e
const/16 v5, 0x66
if-le v4, v5, :cond_36
:cond_2e
const/16 v5, 0x41
if-lt v4, v5, :cond_39
const/16 v5, 0x46
if-gt v4, v5, :cond_39
:cond_36
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_39
add-int/lit8 v0, v0, 0x1
if-eqz v2, :cond_14
:cond_3d
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-ne v0, v6, :cond_47
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:cond_47
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-eq v0, v6, :cond_6d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/c/bq;->d:[Ljava/lang/String;
const/4 v3, 0x1
aget-object v2, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6d
const/16 v0, 0x10
invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
move-result-wide v2
iput-wide v2, p0, Lcom/c/bq;->c:J
iget-wide v2, p0, Lcom/c/bq;->c:J
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-gez v0, :cond_87
new-instance v0, Ljava/lang/IllegalArgumentException;
sget-object v2, Lcom/c/bq;->d:[Ljava/lang/String;
aget-object v1, v2, v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_87
return-void
.end method
.method public a(Lcom/c/bq;)I
.registers 6
iget-wide v0, p0, Lcom/c/bq;->c:J
iget-wide v2, p1, Lcom/c/bq;->c:J
cmp-long v0, v0, v2
if-gez v0, :cond_a
const/4 v0, -0x1
:goto_9
return v0
:cond_a
iget-wide v0, p1, Lcom/c/bq;->c:J
iget-wide v2, p0, Lcom/c/bq;->c:J
cmp-long v0, v0, v2
if-gez v0, :cond_14
const/4 v0, 0x1
goto :goto_9
:cond_14
const/4 v0, 0x0
goto :goto_9
.end method
.method public a()J
.registers 3
iget-wide v0, p0, Lcom/c/bq;->c:J
return-wide v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/bq;
invoke-virtual {p0, p1}, Lcom/c/bq;->a(Lcom/c/bq;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:try_start_4
:cond_4
iget-wide v1, p0, Lcom/c/bq;->c:J
check-cast p1, Lcom/c/bq;
iget-wide v3, p1, Lcom/c/bq;->c:J
:try_end_a
.catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_a} :catch_10
cmp-long v1, v1, v3
if-nez v1, :cond_3
const/4 v0, 0x1
goto :goto_3
:catch_10
move-exception v1
goto :goto_3
.end method
.method public hashCode()I
.registers 3
iget-wide v0, p0, Lcom/c/bq;->c:J
long-to-int v0, v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 9
sget v1, Lcom/c/bq;->a:I
new-instance v2, Ljava/lang/StringBuilder;
const/16 v0, 0xc
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v0, 0xb
:cond_b
if-ltz v0, :cond_21
sget-object v3, Lcom/c/bq;->b:[C
iget-wide v4, p0, Lcom/c/bq;->c:J
mul-int/lit8 v6, v0, 0x4
shr-long/2addr v4, v6
const-wide/16 v6, 0xf
and-long/2addr v4, v6
long-to-int v4, v4
aget-char v3, v3, v4
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, -0x1
if-eqz v1, :cond_b
:cond_21
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method