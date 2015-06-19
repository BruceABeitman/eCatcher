.class public final Landroid/support/v4/c/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/Object;
.field private static b:[C
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v4/c/o;->a:Ljava/lang/Object;
const/16 v0, 0x18
new-array v0, v0, [C
sput-object v0, Landroid/support/v4/c/o;->b:[C
return-void
.end method
.method private static a([CICIZ)I
.registers 9
if-nez p4, :cond_4
if-lez p1, :cond_32
:cond_4
const/16 v0, 0x63
if-le p1, v0, :cond_33
div-int/lit8 v1, p1, 0x64
add-int/lit8 v0, v1, 0x30
int-to-char v0, v0
aput-char v0, p0, p3
add-int/lit8 v0, p3, 0x1
mul-int/lit8 v1, v1, 0x64
sub-int v1, p1, v1
:goto_15
const/16 v2, 0x9
if-gt v1, v2, :cond_1b
if-eq p3, v0, :cond_27
:cond_1b
div-int/lit8 v2, v1, 0xa
add-int/lit8 v3, v2, 0x30
int-to-char v3, v3
aput-char v3, p0, v0
add-int/lit8 v0, v0, 0x1
mul-int/lit8 v2, v2, 0xa
sub-int/2addr v1, v2
:cond_27
add-int/lit8 v1, v1, 0x30
int-to-char v1, v1
aput-char v1, p0, v0
add-int/lit8 v0, v0, 0x1
aput-char p2, p0, v0
add-int/lit8 p3, v0, 0x1
:cond_32
return p3
:cond_33
move v0, p3
move v1, p1
goto :goto_15
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
invoke-static {v0, v1, p4}, Landroid/support/v4/c/o;->b(JLjava/io/PrintWriter;)V
goto :goto_b
.end method
.method public static a(JLjava/io/PrintWriter;)V
.registers 3
invoke-static {p0, p1, p2}, Landroid/support/v4/c/o;->b(JLjava/io/PrintWriter;)V
return-void
.end method
.method private static b(JLjava/io/PrintWriter;)V
.registers 15
const v4, 0x15180
const/4 v0, 0x1
const/4 v1, 0x0
sget-object v8, Landroid/support/v4/c/o;->a:Ljava/lang/Object;
monitor-enter v8
:try_start_8
sget-object v2, Landroid/support/v4/c/o;->b:[C
array-length v2, v2
if-gez v2, :cond_12
const/4 v2, 0x0
new-array v2, v2, [C
sput-object v2, Landroid/support/v4/c/o;->b:[C
:cond_12
sget-object v9, Landroid/support/v4/c/o;->b:[C
const-wide/16 v2, 0x0
cmp-long v2, p0, v2
if-nez v2, :cond_2c
const/4 v1, 0x0
const/16 v2, 0x30
aput-char v2, v9, v1
:goto_1f
new-instance v1, Ljava/lang/String;
sget-object v2, Landroid/support/v4/c/o;->b:[C
const/4 v3, 0x0
invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
monitor-exit v8
return-void
:cond_2c
const-wide/16 v2, 0x0
cmp-long v2, p0, v2
if-lez v2, :cond_96
const/16 v2, 0x2b
move v7, v2
:goto_35
const-wide/16 v2, 0x3e8
rem-long v2, p0, v2
long-to-int v10, v2
const-wide/16 v2, 0x3e8
div-long v2, p0, v2
long-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
double-to-int v3, v2
if-le v3, v4, :cond_a9
const v2, 0x15180
div-int v2, v3, v2
mul-int/2addr v4, v2
sub-int/2addr v3, v4
move v6, v2
:goto_4e
const/16 v2, 0xe10
if-le v3, v2, :cond_a7
div-int/lit16 v2, v3, 0xe10
mul-int/lit16 v4, v2, 0xe10
sub-int/2addr v3, v4
move v5, v2
:goto_58
const/16 v2, 0x3c
if-le v3, v2, :cond_a4
div-int/lit8 v2, v3, 0x3c
mul-int/lit8 v4, v2, 0x3c
sub-int/2addr v3, v4
move v4, v3
move v3, v2
:goto_63
const/4 v2, 0x0
aput-char v7, v9, v2
const/16 v2, 0x64
const/4 v7, 0x1
const/4 v11, 0x0
invoke-static {v9, v6, v2, v7, v11}, Landroid/support/v4/c/o;->a([CICIZ)I
move-result v6
const/16 v7, 0x68
if-eq v6, v0, :cond_9b
move v2, v0
:goto_73
invoke-static {v9, v5, v7, v6, v2}, Landroid/support/v4/c/o;->a([CICIZ)I
move-result v5
const/16 v6, 0x6d
if-eq v5, v0, :cond_9d
move v2, v0
:goto_7c
invoke-static {v9, v3, v6, v5, v2}, Landroid/support/v4/c/o;->a([CICIZ)I
move-result v2
const/16 v3, 0x73
if-eq v2, v0, :cond_9f
:goto_84
invoke-static {v9, v4, v3, v2, v0}, Landroid/support/v4/c/o;->a([CICIZ)I
move-result v0
const/16 v1, 0x6d
const/4 v2, 0x1
invoke-static {v9, v10, v1, v0, v2}, Landroid/support/v4/c/o;->a([CICIZ)I
move-result v0
const/16 v1, 0x73
aput-char v1, v9, v0
:try_end_93
.catchall {:try_start_8 .. :try_end_93} :catchall_a1
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_96
const/16 v2, 0x2d
neg-long p0, p0
move v7, v2
goto :goto_35
:cond_9b
move v2, v1
goto :goto_73
:cond_9d
move v2, v1
goto :goto_7c
:cond_9f
move v0, v1
goto :goto_84
:catchall_a1
move-exception v0
monitor-exit v8
throw v0
:cond_a4
move v4, v3
move v3, v1
goto :goto_63
:cond_a7
move v5, v1
goto :goto_58
:cond_a9
move v6, v1
goto :goto_4e
.end method