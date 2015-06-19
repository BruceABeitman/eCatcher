.class public final Landroid/support/v4/c/e;
.super Ljava/lang/Object;
.source "TimeUtils.java"
.field private static final a:Ljava/lang/Object;
.field private static b:[C
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
const/16 v0, 0x18
new-array v0, v0, [C
sput-object v0, Landroid/support/v4/c/e;->b:[C
return-void
.end method
.method private static a(JI)I
.registers 13
sget-object v0, Landroid/support/v4/c/e;->b:[C
array-length v0, v0
if-gez v0, :cond_a
const/4 v0, 0x0
new-array v0, v0, [C
sput-object v0, Landroid/support/v4/c/e;->b:[C
:cond_a
sget-object v0, Landroid/support/v4/c/e;->b:[C
const-wide/16 v1, 0x0
cmp-long v1, p0, v1
if-nez v1, :cond_19
const/4 v1, 0x0
const/16 v2, 0x30
aput-char v2, v0, v1
const/4 v0, 0x1
:goto_18
return v0
:cond_19
const-wide/16 v1, 0x0
cmp-long v1, p0, v1
if-lez v1, :cond_99
const/16 v1, 0x2b
move v2, v1
:goto_22
const-wide/16 v3, 0x3e8
rem-long v3, p0, v3
long-to-int v9, v3
const-wide/16 v3, 0x3e8
div-long v3, p0, v3
long-to-double v3, v3
invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D
move-result-wide v3
double-to-int v5, v3
const/4 v1, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
const v6, 0x15180
if-le v5, v6, :cond_43
const v1, 0x15180
div-int v1, v5, v1
const v6, 0x15180
mul-int/2addr v6, v1
sub-int/2addr v5, v6
:cond_43
const/16 v6, 0xe10
if-le v5, v6, :cond_a7
div-int/lit16 v4, v5, 0xe10
mul-int/lit16 v6, v4, 0xe10
sub-int/2addr v5, v6
move v8, v4
move v4, v5
:goto_4e
const/16 v5, 0x3c
if-le v4, v5, :cond_a4
div-int/lit8 v3, v4, 0x3c
mul-int/lit8 v5, v3, 0x3c
sub-int/2addr v4, v5
move v6, v3
move v7, v4
:goto_59
const/4 v3, 0x0
aput-char v2, v0, v3
const/16 v2, 0x64
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Landroid/support/v4/c/e;->a([CICIZI)I
move-result v3
const/16 v2, 0x68
const/4 v1, 0x1
if-eq v3, v1, :cond_9e
const/4 v4, 0x1
:goto_6b
const/4 v5, 0x0
move v1, v8
invoke-static/range {v0 .. v5}, Landroid/support/v4/c/e;->a([CICIZI)I
move-result v3
const/16 v2, 0x6d
const/4 v1, 0x1
if-eq v3, v1, :cond_a0
const/4 v4, 0x1
:goto_77
const/4 v5, 0x0
move v1, v6
invoke-static/range {v0 .. v5}, Landroid/support/v4/c/e;->a([CICIZI)I
move-result v3
const/16 v2, 0x73
const/4 v1, 0x1
if-eq v3, v1, :cond_a2
const/4 v4, 0x1
:goto_83
const/4 v5, 0x0
move v1, v7
invoke-static/range {v0 .. v5}, Landroid/support/v4/c/e;->a([CICIZI)I
move-result v3
const/16 v2, 0x6d
const/4 v4, 0x1
const/4 v5, 0x0
move v1, v9
invoke-static/range {v0 .. v5}, Landroid/support/v4/c/e;->a([CICIZI)I
move-result v1
const/16 v2, 0x73
aput-char v2, v0, v1
add-int/lit8 v0, v1, 0x1
goto :goto_18
:cond_99
const/16 v1, 0x2d
neg-long p0, p0
move v2, v1
goto :goto_22
:cond_9e
const/4 v4, 0x0
goto :goto_6b
:cond_a0
const/4 v4, 0x0
goto :goto_77
:cond_a2
const/4 v4, 0x0
goto :goto_83
:cond_a4
move v6, v3
move v7, v4
goto :goto_59
:cond_a7
move v8, v4
move v4, v5
goto :goto_4e
.end method
.method private static a([CICIZI)I
.registers 10
if-nez p4, :cond_4
if-lez p1, :cond_3c
:cond_4
if-eqz p4, :cond_9
const/4 v0, 0x3
if-ge p5, v0, :cond_d
:cond_9
const/16 v0, 0x63
if-le p1, v0, :cond_3d
:cond_d
div-int/lit8 v1, p1, 0x64
add-int/lit8 v0, v1, 0x30
int-to-char v0, v0
aput-char v0, p0, p3
add-int/lit8 v0, p3, 0x1
mul-int/lit8 v1, v1, 0x64
sub-int v1, p1, v1
:goto_1a
if-eqz p4, :cond_1f
const/4 v2, 0x2
if-ge p5, v2, :cond_25
:cond_1f
const/16 v2, 0x9
if-gt v1, v2, :cond_25
if-eq p3, v0, :cond_31
:cond_25
div-int/lit8 v2, v1, 0xa
add-int/lit8 v3, v2, 0x30
int-to-char v3, v3
aput-char v3, p0, v0
add-int/lit8 v0, v0, 0x1
mul-int/lit8 v2, v2, 0xa
sub-int/2addr v1, v2
:cond_31
add-int/lit8 v1, v1, 0x30
int-to-char v1, v1
aput-char v1, p0, v0
add-int/lit8 v0, v0, 0x1
aput-char p2, p0, v0
add-int/lit8 p3, v0, 0x1
:cond_3c
return p3
:cond_3d
move v0, p3
move v1, p1
goto :goto_1a
.end method
.method public static a(JJLjava/io/PrintWriter;)V
.registers 7
const-wide/16 v0, 0x0
cmp-long v0, p0, v0
if-nez v0, :cond_c
const-string v0, "--"
invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:goto_b
return-void
:cond_c
sub-long v0, p0, p2
invoke-static {v0, v1, p4}, Landroid/support/v4/c/e;->b(JLjava/io/PrintWriter;)V
goto :goto_b
.end method
.method public static a(JLjava/io/PrintWriter;)V
.registers 3
invoke-static {p0, p1, p2}, Landroid/support/v4/c/e;->b(JLjava/io/PrintWriter;)V
return-void
.end method
.method private static b(JLjava/io/PrintWriter;)V
.registers 8
sget-object v1, Landroid/support/v4/c/e;->a:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
invoke-static {p0, p1, v0}, Landroid/support/v4/c/e;->a(JI)I
move-result v0
new-instance v2, Ljava/lang/String;
sget-object v3, Landroid/support/v4/c/e;->b:[C
const/4 v4, 0x0
invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
monitor-exit v1
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_15
return-void
:catchall_15
move-exception v0
monitor-exit v1
throw v0
.end method