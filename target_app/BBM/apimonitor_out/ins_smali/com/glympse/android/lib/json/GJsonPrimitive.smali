.class public Lcom/glympse/android/lib/json/GJsonPrimitive;
.super Ljava/lang/Object;
.source "GJsonPrimitive.java"
.implements Lcom/glympse/android/core/GCommon;
.field public _bool:Z
.field public _buffer:[C
.field public _end:I
.field public _processed:Z
.field public _start:I
.field public _success:Z
.field public _type:I
.field private ro:J
.field private rp:D
.field private rq:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
iput v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
const/4 v0, -0x1
iput v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_bool:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rq:Ljava/lang/String;
return-void
.end method
.method private static a(II[C)I
.registers 5
const/16 v0, 0x7f
if-gt p0, v0, :cond_9
int-to-char v0, p0
aput-char v0, p2, p1
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/16 v0, 0x7ff
if-gt p0, v0, :cond_23
add-int/lit8 v0, p1, 0x1
and-int/lit8 v1, p0, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x0
shr-int/lit8 v1, p0, 0x6
and-int/lit8 v1, v1, 0x1f
or-int/lit16 v1, v1, 0xc0
int-to-char v1, v1
aput-char v1, p2, v0
const/4 v0, 0x2
goto :goto_8
:cond_23
const v0, 0xffff
if-gt p0, v0, :cond_49
add-int/lit8 v0, p1, 0x2
and-int/lit8 v1, p0, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x1
shr-int/lit8 v1, p0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x0
shr-int/lit8 v1, p0, 0xc
and-int/lit8 v1, v1, 0xf
or-int/lit16 v1, v1, 0xe0
int-to-char v1, v1
aput-char v1, p2, v0
const/4 v0, 0x3
goto :goto_8
:cond_49
const v0, 0x10ffff
if-gt p0, v0, :cond_7a
add-int/lit8 v0, p1, 0x3
and-int/lit8 v1, p0, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x2
shr-int/lit8 v1, p0, 0x6
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x1
shr-int/lit8 v1, p0, 0xc
and-int/lit8 v1, v1, 0x3f
or-int/lit16 v1, v1, 0x80
int-to-char v1, v1
aput-char v1, p2, v0
add-int/lit8 v0, p1, 0x0
shr-int/lit8 v1, p0, 0x12
and-int/lit8 v1, v1, 0x7
or-int/lit16 v1, v1, 0xf0
int-to-char v1, v1
aput-char v1, p2, v0
const/4 v0, 0x4
goto :goto_8
:cond_7a
const/4 v0, 0x0
goto :goto_8
.end method
.method private b(II)I
.registers 10
const/4 v6, 0x4
const/4 v0, 0x0
const/4 v1, -0x1
sub-int v2, p2, p1
if-ge v2, v6, :cond_9
move v0, v1
:goto_8
:cond_8
return v0
:cond_9
move v2, v0
:goto_a
if-ge v2, v6, :cond_8
iget-object v4, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v3, p1, 0x1
aget-char v4, v4, p1
mul-int/lit8 v0, v0, 0x10
const/16 v5, 0x30
if-lt v4, v5, :cond_23
const/16 v5, 0x39
if-gt v4, v5, :cond_23
add-int/lit8 v4, v4, -0x30
add-int/2addr v0, v4
:goto_1f
add-int/lit8 v2, v2, 0x1
move p1, v3
goto :goto_a
:cond_23
const/16 v5, 0x61
if-lt v4, v5, :cond_31
const/16 v5, 0x66
if-gt v4, v5, :cond_31
add-int/lit8 v4, v4, -0x61
add-int/lit8 v4, v4, 0xa
add-int/2addr v0, v4
goto :goto_1f
:cond_31
const/16 v5, 0x41
if-lt v4, v5, :cond_3f
const/16 v5, 0x46
if-gt v4, v5, :cond_3f
add-int/lit8 v4, v4, -0x41
add-int/lit8 v4, v4, 0xa
add-int/2addr v0, v4
goto :goto_1f
:cond_3f
move v0, v1
goto :goto_8
.end method
.method private cX()Z
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
aget-char v0, v0, v1
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
const/4 v3, 0x0
aput-char v3, v1, v2
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v3, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
iget v4, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
iget v5, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
sub-int/2addr v4, v5
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
iget-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
long-to-double v1, v1
iput-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
aput-char v0, v1, v2
const/4 v0, 0x1
return v0
.end method
.method private cY()Z
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
aget-char v0, v0, v1
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
const/4 v3, 0x0
aput-char v3, v1, v2
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v3, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
iget v4, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
iget v5, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
sub-int/2addr v4, v5
invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->toDouble(Ljava/lang/String;)D
move-result-wide v1
iput-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
iget-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
double-to-long v1, v1
iput-wide v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
iget v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
aput-char v0, v1, v2
const/4 v0, 0x1
return v0
.end method
.method private cZ()Z
.registers 5
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
add-int/lit8 v0, v0, -0x1
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/4 v2, 0x0
aput-char v2, v1, v0
iget v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
add-int/lit8 v1, v1, 0x1
new-instance v2, Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
sub-int/2addr v0, v1
invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->toLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
iget-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
long-to-double v0, v0
iput-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
const/4 v0, 0x1
return v0
.end method
.method public getBool()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_bool:Z
return v0
.end method
.method public getDouble()D
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
if-eqz v0, :cond_8
iget-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
:goto_7
return-wide v0
:cond_8
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
packed-switch v0, :pswitch_data_2a
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
const-wide/high16 v0, 0x7ff8
iput-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
:goto_15
iget-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rp:D
goto :goto_7
:pswitch_18
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
invoke-direct {p0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->cY()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
goto :goto_15
:pswitch_21
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
invoke-direct {p0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->cX()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
goto :goto_15
:pswitch_data_2a
.packed-switch 0x2
:pswitch_21
:pswitch_18
.end packed-switch
.end method
.method public getLong()J
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
if-eqz v0, :cond_8
iget-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
:goto_7
return-wide v0
:cond_8
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
packed-switch v0, :pswitch_data_2c
:goto_d
iget-wide v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->ro:J
goto :goto_7
:pswitch_10
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
invoke-direct {p0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->cX()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
goto :goto_d
:pswitch_19
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
invoke-direct {p0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->cY()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
goto :goto_d
:pswitch_22
iput-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
invoke-direct {p0}, Lcom/glympse/android/lib/json/GJsonPrimitive;->cZ()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
goto :goto_d
nop
:pswitch_data_2c
.packed-switch 0x2
:pswitch_10
:pswitch_19
:pswitch_22
.end packed-switch
.end method
.method public getString(Z)Ljava/lang/String;
.registers 13
const/4 v2, 0x1
const/4 v10, -0x1
const/16 v9, 0x5c
const/4 v4, 0x0
const/4 v8, 0x0
const/4 v0, 0x4
iget v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
if-eq v0, v1, :cond_d
move-object v0, v4
:goto_c
return-object v0
:cond_d
iget-boolean v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rq:Ljava/lang/String;
goto :goto_c
:cond_14
iput-boolean v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
iput-boolean v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
add-int/lit8 v5, v0, 0x1
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
add-int/lit8 v2, v0, -0x1
if-eqz p1, :cond_38
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
aput-char v8, v0, v2
move v0, v2
:goto_27
iget-boolean v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
if-eqz v1, :cond_35
new-instance v1, Ljava/lang/String;
iget-object v2, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
sub-int/2addr v0, v5
invoke-direct {v1, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V
iput-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rq:Ljava/lang/String;
:cond_35
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rq:Ljava/lang/String;
goto :goto_c
:cond_38
iput-object v4, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->rq:Ljava/lang/String;
move v3, v5
move v1, v5
:goto_3c
if-eq v1, v2, :cond_102
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v6, v1, 0x1
aget-char v1, v0, v1
if-ne v1, v9, :cond_f8
if-ne v6, v2, :cond_4c
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto :goto_c
:cond_4c
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v1, v6, 0x1
aget-char v0, v0, v6
sparse-switch v0, :sswitch_data_10a
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto :goto_c
:sswitch_59
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0x22
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_62
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0x2f
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_6b
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
aput-char v9, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_72
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0x8
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_7b
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0xc
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_84
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0xa
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_8d
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0xd
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_96
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
const/16 v6, 0x9
aput-char v6, v0, v3
add-int/lit8 v3, v3, 0x1
goto :goto_3c
:sswitch_9f
invoke-direct {p0, v1, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->b(II)I
move-result v0
add-int/lit8 v1, v1, 0x4
if-ne v10, v0, :cond_ac
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto/16 :goto_c
:cond_ac
const v6, 0xd800
if-lt v0, v6, :cond_e4
const v6, 0xdbff
if-gt v0, v6, :cond_e4
sub-int v6, v2, v1
const/4 v7, 0x6
if-ge v6, v7, :cond_c0
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto/16 :goto_c
:cond_c0
iget-object v6, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v7, v1, 0x1
aget-char v1, v6, v1
if-ne v1, v9, :cond_f3
iget-object v1, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v6, v7, 0x1
aget-char v1, v1, v7
const/16 v7, 0x75
if-ne v1, v7, :cond_f3
invoke-direct {p0, v6, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->b(II)I
move-result v7
add-int/lit8 v1, v6, 0x4
if-eq v10, v7, :cond_ee
const/high16 v6, 0x1
and-int/lit16 v0, v0, 0x3ff
shl-int/lit8 v0, v0, 0xa
add-int/2addr v0, v6
and-int/lit16 v6, v7, 0x3ff
add-int/2addr v0, v6
:cond_e4
iget-object v7, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v6, v3, 0x1
int-to-char v0, v0
aput-char v0, v7, v3
move v3, v6
goto/16 :goto_3c
:cond_ee
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto/16 :goto_c
:cond_f3
iput-boolean v8, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_success:Z
move-object v0, v4
goto/16 :goto_c
:cond_f8
iget-object v7, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
add-int/lit8 v0, v3, 0x1
aput-char v1, v7, v3
move v3, v0
move v1, v6
goto/16 :goto_3c
:cond_102
iget-object v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
aput-char v8, v0, v3
move v0, v3
goto/16 :goto_27
nop
:sswitch_data_10a
.sparse-switch
0x22 -> :sswitch_59
0x2f -> :sswitch_62
0x5c -> :sswitch_6b
0x62 -> :sswitch_72
0x66 -> :sswitch_7b
0x6e -> :sswitch_84
0x72 -> :sswitch_8d
0x74 -> :sswitch_96
0x75 -> :sswitch_9f
.end sparse-switch
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
return v0
.end method
.method public ownString(Z)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
goto :goto_7
.end method