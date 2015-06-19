.class public Lcom/igexin/push/core/c/q;
.super Ljava/lang/Object;
.field private static a:I
.field private static b:I
.field private static c:Ljava/util/List;
.field private static d:Lcom/igexin/push/core/c/s;
.field private static e:I
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
sput v1, Lcom/igexin/push/core/c/q;->a:I
sput v1, Lcom/igexin/push/core/c/q;->b:I
sget-object v0, Lcom/igexin/push/core/c/s;->a:Lcom/igexin/push/core/c/s;
sput-object v0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
sput v1, Lcom/igexin/push/core/c/q;->e:I
return-void
.end method
.method public static a()V
.registers 2
invoke-static {}, Lcom/igexin/push/core/c/q;->e()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_22
sget-boolean v0, Lcom/igexin/push/a/j;->j:Z
if-eqz v0, :cond_38
sget-object v0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
sget-object v1, Lcom/igexin/push/core/c/s;->b:Lcom/igexin/push/core/c/s;
if-ne v0, v1, :cond_25
sget v0, Lcom/igexin/push/core/c/q;->a:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v1, Lcom/igexin/push/a/j;->c:[Ljava/lang/String;
array-length v1, v1
rem-int/2addr v0, v1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v0, Lcom/igexin/push/a/j;->c:[Ljava/lang/String;
sget v1, Lcom/igexin/push/core/c/q;->a:I
aget-object v0, v0, v1
:cond_22
:goto_22
sput-object v0, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
return-void
:cond_25
sget v0, Lcom/igexin/push/core/c/q;->a:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v1, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
array-length v1, v1
rem-int/2addr v0, v1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v0, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
sget v1, Lcom/igexin/push/core/c/q;->a:I
aget-object v0, v0, v1
goto :goto_22
:cond_38
sget v0, Lcom/igexin/push/core/c/q;->a:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v1, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
array-length v1, v1
rem-int/2addr v0, v1
sput v0, Lcom/igexin/push/core/c/q;->a:I
sget-object v0, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
sget v1, Lcom/igexin/push/core/c/q;->a:I
aget-object v0, v0, v1
goto :goto_22
.end method
.method private static a(Lcom/igexin/push/core/c/s;)V
.registers 5
const/4 v3, 0x0
sget-boolean v0, Lcom/igexin/push/a/j;->j:Z
if-eqz v0, :cond_1a
sget-object v0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
if-eq v0, p0, :cond_d
const/4 v0, 0x0
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Ljava/util/List;)V
:cond_d
sget-object v0, Lcom/igexin/push/core/c/r;->a:[I
invoke-virtual {p0}, Lcom/igexin/push/core/c/s;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_46
:goto_18
sput-object p0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
:cond_1a
return-void
:pswitch_1b
sget-object v0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
if-eq v0, p0, :cond_21
sput v3, Lcom/igexin/push/core/c/q;->e:I
:cond_21
:pswitch_21
sget-object v0, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
aget-object v0, v0, v3
sput-object v0, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
sget-object v0, Lcom/igexin/push/a/j;->b:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/g;->b:Ljava/lang/String;
goto :goto_18
:pswitch_2c
sget-object v0, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
if-eq v0, p0, :cond_3b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->d(J)Z
:cond_3b
sget-object v0, Lcom/igexin/push/a/j;->c:[Ljava/lang/String;
aget-object v0, v0, v3
sput-object v0, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
sget-object v0, Lcom/igexin/push/a/j;->d:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/g;->b:Ljava/lang/String;
goto :goto_18
:pswitch_data_46
.packed-switch 0x1
:pswitch_21
:pswitch_2c
:pswitch_1b
.end packed-switch
.end method
.method public static a(Ljava/util/List;)V
.registers 2
sput-object p0, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
const/4 v0, 0x0
sput v0, Lcom/igexin/push/core/c/q;->b:I
return-void
.end method
.method public static b()V
.registers 4
sget-object v0, Lcom/igexin/push/core/c/r;->a:[I
sget-object v1, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
invoke-virtual {v1}, Lcom/igexin/push/core/c/s;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_22
:cond_d
:goto_d
return-void
:pswitch_e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->T:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
cmp-long v0, v0, v2
if-lez v0, :cond_d
sget-object v0, Lcom/igexin/push/core/c/s;->c:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_d
:pswitch_data_22
.packed-switch 0x2
:pswitch_e
.end packed-switch
.end method
.method public static c()V
.registers 3
sget-object v0, Lcom/igexin/push/core/c/r;->a:[I
sget-object v1, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
invoke-virtual {v1}, Lcom/igexin/push/core/c/s;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
:pswitch_d
:goto_d
return-void
:pswitch_e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->b(J)Z
goto :goto_d
:pswitch_1a
sget-object v0, Lcom/igexin/push/core/c/s;->a:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_d
:pswitch_data_20
.packed-switch 0x1
:pswitch_e
:pswitch_d
:pswitch_1a
.end packed-switch
.end method
.method public static d()V
.registers 3
invoke-static {}, Lcom/igexin/push/core/c/q;->f()V
sget-boolean v0, Lcom/igexin/push/core/g;->o:Z
if-eqz v0, :cond_12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/igexin/push/core/c/f;->b(J)Z
:cond_12
sget-object v0, Lcom/igexin/push/core/c/r;->a:[I
sget-object v1, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
invoke-virtual {v1}, Lcom/igexin/push/core/c/s;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_30
:goto_1f
:pswitch_1f
:cond_1f
return-void
:pswitch_20
sget v0, Lcom/igexin/push/core/c/q;->e:I
add-int/lit8 v0, v0, 0x1
sput v0, Lcom/igexin/push/core/c/q;->e:I
const/16 v1, 0xa
if-lt v0, v1, :cond_1f
sget-object v0, Lcom/igexin/push/core/c/s;->b:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_1f
:pswitch_data_30
.packed-switch 0x1
:pswitch_1f
:pswitch_1f
:pswitch_20
.end packed-switch
.end method
.method private static e()Ljava/lang/String;
.registers 5
sget-object v0, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
if-eqz v0, :cond_3c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
:goto_8
sget-object v0, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_3c
sget v0, Lcom/igexin/push/core/c/q;->b:I
sget-object v3, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_1d
const/4 v0, 0x0
sput v0, Lcom/igexin/push/core/c/q;->b:I
:cond_1d
sget-object v0, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
sget v3, Lcom/igexin/push/core/c/q;->b:I
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/igexin/push/core/c/t;
iget-wide v3, v0, Lcom/igexin/push/core/c/t;->b:J
cmp-long v3, v3, v1
if-gez v3, :cond_33
sget-object v3, Lcom/igexin/push/core/c/q;->c:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_8
:cond_33
sget v1, Lcom/igexin/push/core/c/q;->b:I
add-int/lit8 v1, v1, 0x1
sput v1, Lcom/igexin/push/core/c/q;->b:I
iget-object v0, v0, Lcom/igexin/push/core/c/t;->a:Ljava/lang/String;
:goto_3b
return-object v0
:cond_3c
const/4 v0, 0x0
goto :goto_3b
.end method
.method private static f()V
.registers 8
const-wide/32 v6, 0x5265c00
sget-object v0, Lcom/igexin/push/core/c/r;->a:[I
sget-object v1, Lcom/igexin/push/core/c/q;->d:Lcom/igexin/push/core/c/s;
invoke-virtual {v1}, Lcom/igexin/push/core/c/s;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_44
:cond_10
:goto_10
return-void
:pswitch_11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->S:J
sub-long v2, v0, v2
const-wide/32 v4, 0x4d3f6400
cmp-long v2, v2, v4
if-lez v2, :cond_10
sget-wide v2, Lcom/igexin/push/core/g;->T:J
sub-long/2addr v0, v2
cmp-long v0, v0, v6
if-lez v0, :cond_2d
sget-object v0, Lcom/igexin/push/core/c/s;->c:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_10
:cond_2d
sget-object v0, Lcom/igexin/push/core/c/s;->b:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_10
:pswitch_33
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
sget-wide v2, Lcom/igexin/push/core/g;->T:J
sub-long/2addr v0, v2
cmp-long v0, v0, v6
if-lez v0, :cond_10
sget-object v0, Lcom/igexin/push/core/c/s;->c:Lcom/igexin/push/core/c/s;
invoke-static {v0}, Lcom/igexin/push/core/c/q;->a(Lcom/igexin/push/core/c/s;)V
goto :goto_10
:pswitch_data_44
.packed-switch 0x1
:pswitch_11
:pswitch_33
.end packed-switch
.end method