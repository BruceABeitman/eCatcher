.class public final Lcom/c/ak;
.super Ljava/lang/Object;
.implements Lcom/c/ap;
.implements Lcom/c/q;
.implements Ljava/lang/Comparable;
.field static final synthetic b:Z
.field public static c:I
.field private static final j:[Ljava/lang/String;
.field private final d:Lcom/c/l;
.field private final e:I
.field private final g:I
.field private final h:J
.field private final i:Lcom/c/ba;
.method static constructor <clinit>()V
.registers 14
const/16 v9, 0x10
const/4 v10, 0x6
const/4 v8, 0x4
const/4 v0, 0x1
const/4 v1, 0x0
const/4 v2, 0x2
new-array v11, v2, [Ljava/lang/String;
const-string v2, "twe\u0008i`p0G`5f\u007f]hqw*\u0008"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_92
move v4, v1
:cond_13
move-object v5, v2
move v6, v4
move v13, v3
move-object v3, v2
move v2, v13
:goto_18
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_94
move v7, v10
:goto_20
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_2c
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_18
:cond_2c
move v3, v2
move-object v2, v5
:goto_2e
if-gt v3, v4, :cond_13
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v1
const-string v2, "xwM"
invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C
move-result-object v2
array-length v3, v2
if-gt v3, v0, :cond_90
move v4, v1
:cond_45
move-object v5, v2
move v6, v4
move v13, v3
move-object v3, v2
move v2, v13
:goto_4a
aget-char v12, v3, v4
rem-int/lit8 v7, v6, 0x5
packed-switch v7, :pswitch_data_a0
move v7, v10
:goto_52
xor-int/2addr v7, v12
int-to-char v7, v7
aput-char v7, v3, v4
add-int/lit8 v4, v6, 0x1
if-nez v2, :cond_5e
move-object v3, v5
move v6, v4
move v4, v2
goto :goto_4a
:cond_5e
move v3, v2
move-object v2, v5
:goto_60
if-gt v3, v4, :cond_45
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v2
aput-object v2, v11, v0
sput-object v11, Lcom/c/ak;->j:[Ljava/lang/String;
const-class v2, Lcom/c/ak;
invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v2
if-nez v2, :cond_7a
:goto_77
sput-boolean v0, Lcom/c/ak;->b:Z
return-void
:cond_7a
move v0, v1
goto :goto_77
:pswitch_7c
const/16 v7, 0x15
goto :goto_20
:pswitch_7f
move v7, v8
goto :goto_20
:pswitch_81
move v7, v9
goto :goto_20
:pswitch_83
const/16 v7, 0x28
goto :goto_20
:pswitch_86
const/16 v7, 0x15
goto :goto_52
:pswitch_89
move v7, v8
goto :goto_52
:pswitch_8b
move v7, v9
goto :goto_52
:pswitch_8d
const/16 v7, 0x28
goto :goto_52
:cond_90
move v4, v1
goto :goto_60
:cond_92
move v4, v1
goto :goto_2e
:pswitch_data_94
.packed-switch 0x0
:pswitch_7c
:pswitch_7f
:pswitch_81
:pswitch_83
.end packed-switch
:pswitch_data_a0
.packed-switch 0x0
:pswitch_86
:pswitch_89
:pswitch_8b
:pswitch_8d
.end packed-switch
.end method
.method public constructor <init>(Lcom/c/l;IIJLcom/c/ba;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/c/ak;->d:Lcom/c/l;
iput p2, p0, Lcom/c/ak;->e:I
iput p3, p0, Lcom/c/ak;->g:I
iput-wide p4, p0, Lcom/c/ak;->h:J
iput-object p6, p0, Lcom/c/ak;->i:Lcom/c/ba;
return-void
.end method
.method static a(I)I
.registers 3
const/4 v0, 0x0
const/16 v1, 0x1f
invoke-static {p0, v0, v1}, Lcom/c/ak;->a(III)I
move-result v0
mul-int/lit8 v0, v0, 0x2
add-int/lit8 v0, v0, -0x71
return v0
.end method
.method private static a(III)I
.registers 7
const/4 v1, 0x0
sget-boolean v0, Lcom/c/ak;->b:Z
if-nez v0, :cond_d
if-le p1, p2, :cond_d
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_d
if-gt p1, p0, :cond_33
if-gt p0, p2, :cond_33
const/4 v0, 0x1
:goto_12
sget-boolean v2, Lcom/c/ak;->b:Z
if-nez v2, :cond_35
if-nez v0, :cond_35
new-instance v0, Ljava/lang/AssertionError;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
sget-object v3, Lcom/c/ak;->j:[Ljava/lang/String;
aget-object v1, v3, v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_33
move v0, v1
goto :goto_12
:cond_35
if-eqz v0, :cond_38
:goto_37
return p0
:cond_38
move p0, p1
goto :goto_37
.end method
.method static b(I)I
.registers 3
const/4 v0, 0x0
const/16 v1, 0x5b
invoke-static {p0, v0, v1}, Lcom/c/ak;->a(III)I
move-result v0
add-int/lit8 v0, v0, -0x74
return v0
.end method
.method public a(Lcom/c/ak;)I
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x1
:cond_3
:goto_3
return v0
:cond_4
iget-object v0, p0, Lcom/c/ak;->d:Lcom/c/l;
iget-object v1, p1, Lcom/c/ak;->d:Lcom/c/l;
invoke-virtual {v0, v1}, Lcom/c/l;->a(Lcom/c/l;)I
move-result v0
if-nez v0, :cond_3
iget-object v0, p0, Lcom/c/ak;->i:Lcom/c/ba;
iget-object v1, p1, Lcom/c/ak;->i:Lcom/c/ba;
invoke-virtual {v0, v1}, Lcom/c/ba;->c(Lcom/c/ba;)I
move-result v0
if-nez v0, :cond_3
iget v0, p0, Lcom/c/ak;->g:I
iget v1, p1, Lcom/c/ak;->g:I
sub-int/2addr v0, v1
if-nez v0, :cond_3
iget v0, p0, Lcom/c/ak;->e:I
iget v1, p1, Lcom/c/ak;->e:I
sub-int/2addr v0, v1
goto :goto_3
.end method
.method public a()Lcom/c/l;
.registers 2
iget-object v0, p0, Lcom/c/ak;->d:Lcom/c/l;
return-object v0
.end method
.method public b()I
.registers 2
iget v0, p0, Lcom/c/ak;->e:I
return v0
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/c/ak;->g:I
return v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/c/ak;
invoke-virtual {p0, p1}, Lcom/c/ak;->a(Lcom/c/ak;)I
move-result v0
return v0
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/c/ak;->h:J
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v0
:try_start_4
:cond_4
check-cast p1, Lcom/c/ak;
iget-object v1, p0, Lcom/c/ak;->d:Lcom/c/l;
iget-object v2, p1, Lcom/c/ak;->d:Lcom/c/l;
invoke-virtual {v1, v2}, Lcom/c/l;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3
iget v1, p0, Lcom/c/ak;->e:I
iget v2, p1, Lcom/c/ak;->e:I
if-ne v1, v2, :cond_3
iget v1, p0, Lcom/c/ak;->g:I
iget v2, p1, Lcom/c/ak;->g:I
if-ne v1, v2, :cond_3
iget-object v1, p0, Lcom/c/ak;->i:Lcom/c/ba;
iget-object v2, p1, Lcom/c/ak;->i:Lcom/c/ba;
invoke-virtual {v1, v2}, Lcom/c/ba;->equals(Ljava/lang/Object;)Z
:try_end_23
.catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_23} :catch_28
move-result v1
if-eqz v1, :cond_3
const/4 v0, 0x1
goto :goto_3
:catch_28
move-exception v1
goto :goto_3
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/c/ak;->d:Lcom/c/l;
invoke-virtual {v0}, Lcom/c/l;->hashCode()I
move-result v0
iget v1, p0, Lcom/c/ak;->g:I
xor-int/2addr v0, v1
return v0
.end method
.method public n_()Lcom/c/ba;
.registers 2
iget-object v0, p0, Lcom/c/ak;->i:Lcom/c/ba;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "["
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/c/ak;->d:Lcom/c/l;
invoke-virtual {v1}, Lcom/c/l;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/c/ak;->g:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/c/ak;->h:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/c/ak;->j:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method